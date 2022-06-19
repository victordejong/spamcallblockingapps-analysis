package com.android.mms.dom.smil;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import org.w3c.dom.NodeList;
import org.w3c.dom.events.DocumentEvent;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventTarget;
import org.w3c.dom.smil.ElementParallelTimeContainer;
import org.w3c.dom.smil.ElementSequentialTimeContainer;
import org.w3c.dom.smil.ElementTime;
import org.w3c.dom.smil.Time;
import org.w3c.dom.smil.TimeList;
/* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/SmilPlayer.class */
public class SmilPlayer implements Runnable {
    private static final boolean DEBUG = false;
    private static final boolean LOCAL_LOGV = false;
    public static final String MEDIA_TIME_UPDATED_EVENT = "mediaTimeUpdated";
    private static final String TAG = "Mms/smil";
    private static final int TIMESLICE = 200;
    private static SmilPlayer sPlayer;
    private static final Comparator<TimelineEntry> sTimelineEntryComparator = new Comparator<TimelineEntry>() { // from class: com.android.mms.dom.smil.SmilPlayer.1
        public int compare(TimelineEntry timelineEntry, TimelineEntry timelineEntry2) {
            return Double.compare(timelineEntry.getOffsetTime(), timelineEntry2.getOffsetTime());
        }
    };
    private ArrayList<ElementTime> mActiveElements;
    private ArrayList<TimelineEntry> mAllEntries;
    private int mCurrentElement;
    private int mCurrentSlide;
    private long mCurrentTime;
    private Event mMediaTimeUpdatedEvent;
    private Thread mPlayerThread;
    private ElementTime mRoot;
    private SmilPlayerState mState = SmilPlayerState.INITIALIZED;
    private SmilPlayerAction mAction = SmilPlayerAction.NO_ACTIVE_ACTION;

    /* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/SmilPlayer$SmilPlayerAction.class */
    public enum SmilPlayerAction {
        NO_ACTIVE_ACTION,
        RELOAD,
        STOP,
        PAUSE,
        START,
        NEXT,
        PREV
    }

    /* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/SmilPlayer$SmilPlayerState.class */
    public enum SmilPlayerState {
        INITIALIZED,
        PLAYING,
        PLAYED,
        PAUSED,
        STOPPED
    }

    /* loaded from: classes-dex2jar.jar:com/android/mms/dom/smil/SmilPlayer$TimelineEntry.class */
    public static final class TimelineEntry {
        public static final int ACTION_BEGIN = 0;
        public static final int ACTION_END = 1;
        private final int mAction;
        private final ElementTime mElement;
        private final double mOffsetTime;

        public TimelineEntry(double d, ElementTime elementTime, int i) {
            this.mOffsetTime = d;
            this.mElement = elementTime;
            this.mAction = i;
        }

        public int getAction() {
            return this.mAction;
        }

        public ElementTime getElement() {
            return this.mElement;
        }

        public double getOffsetTime() {
            return this.mOffsetTime;
        }

        public String toString() {
            return "Type = " + this.mElement + " offset = " + getOffsetTime() + " action = " + getAction();
        }
    }

    private SmilPlayer() {
    }

    private void actionEntry(TimelineEntry timelineEntry) {
        synchronized (this) {
            int action = timelineEntry.getAction();
            if (action == 0) {
                timelineEntry.getElement().beginElement();
                this.mActiveElements.add(timelineEntry.getElement());
            } else if (action == 1) {
                timelineEntry.getElement().endElement();
                this.mActiveElements.remove(timelineEntry.getElement());
            }
        }
    }

    private TimelineEntry actionNext() {
        TimelineEntry loadNextSlide;
        synchronized (this) {
            stopCurrentSlide();
            loadNextSlide = loadNextSlide();
        }
        return loadNextSlide;
    }

    private void actionPause() {
        synchronized (this) {
            pauseActiveElements();
            this.mState = SmilPlayerState.PAUSED;
            this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
        }
    }

    private TimelineEntry actionPrev() {
        TimelineEntry loadPrevSlide;
        synchronized (this) {
            stopCurrentSlide();
            loadPrevSlide = loadPrevSlide();
        }
        return loadPrevSlide;
    }

    private void actionReload() {
        synchronized (this) {
            reloadActiveSlide();
            this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
        }
    }

    private void actionStop() {
        synchronized (this) {
            endActiveElements();
            this.mCurrentTime = 0L;
            this.mCurrentElement = 0;
            this.mCurrentSlide = 0;
            this.mState = SmilPlayerState.STOPPED;
            this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
        }
    }

    private void beginSmilDocument() {
        synchronized (this) {
            actionEntry(this.mAllEntries.get(0));
        }
    }

    private void dumpAllEntries() {
    }

    private void endActiveElements() {
        synchronized (this) {
            for (int size = this.mActiveElements.size() - 1; size >= 0; size--) {
                this.mActiveElements.get(size).endElement();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        r9 = r0.getOffsetTime() * 1000.0d;
     */
    /* JADX WARN: Type inference failed for: r0v18, types: [double] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private double getOffsetTime(org.w3c.dom.smil.ElementTime r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            int r0 = r0.mCurrentSlide     // Catch: java.lang.Throwable -> L47
            r7 = r0
        L7:
            r0 = r7
            r1 = r5
            int r1 = r1.mCurrentElement     // Catch: java.lang.Throwable -> L47
            if (r0 >= r1) goto L3f
            r0 = r5
            java.util.ArrayList<com.android.mms.dom.smil.SmilPlayer$TimelineEntry> r0 = r0.mAllEntries     // Catch: java.lang.Throwable -> L47
            r1 = r7
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L47
            com.android.mms.dom.smil.SmilPlayer$TimelineEntry r0 = (com.android.mms.dom.smil.SmilPlayer.TimelineEntry) r0     // Catch: java.lang.Throwable -> L47
            r8 = r0
            r0 = r6
            r1 = r8
            org.w3c.dom.smil.ElementTime r1 = r1.getElement()     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L39
            r0 = r8
            double r0 = r0.getOffsetTime()     // Catch: java.lang.Throwable -> L47
            r9 = r0
            r0 = r9
            r1 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r0 = r0 * r1
            r9 = r0
        L34:
            r0 = r5
            monitor-exit(r0)
            r0 = r9
            return r0
        L39:
            int r7 = r7 + 1
            goto L7
        L3f:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            r9 = r0
            goto L34
        L47:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.mms.dom.smil.SmilPlayer.getOffsetTime(org.w3c.dom.smil.ElementTime):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    private static ArrayList<TimelineEntry> getParTimeline(ElementParallelTimeContainer elementParallelTimeContainer, double d, double d2) {
        ArrayList<TimelineEntry> arrayList = new ArrayList<>();
        double resolvedOffset = elementParallelTimeContainer.getBegin().item(0).getResolvedOffset() + d;
        if (resolvedOffset > d2) {
            return arrayList;
        }
        arrayList.add(new TimelineEntry(resolvedOffset, elementParallelTimeContainer, 0));
        ?? resolvedOffset2 = elementParallelTimeContainer.getEnd().item(0).getResolvedOffset() + d;
        int i = (resolvedOffset2 > d2 ? 1 : (resolvedOffset2 == d2 ? 0 : -1));
        ?? r11 = d2;
        if (i <= 0) {
            r11 = resolvedOffset2;
        }
        TimelineEntry timelineEntry = new TimelineEntry(r11, elementParallelTimeContainer, 1);
        NodeList timeChildren = elementParallelTimeContainer.getTimeChildren();
        for (int i2 = 0; i2 < timeChildren.getLength(); i2++) {
            arrayList.addAll(getTimeline((ElementTime) timeChildren.item(i2), d, r11));
        }
        Collections.sort(arrayList, sTimelineEntryComparator);
        NodeList activeChildrenAt = elementParallelTimeContainer.getActiveChildrenAt(((float) (r11 - d)) * 1000.0f);
        for (int i3 = 0; i3 < activeChildrenAt.getLength(); i3++) {
            arrayList.add(new TimelineEntry(r11, (ElementTime) activeChildrenAt.item(i3), 1));
        }
        arrayList.add(timelineEntry);
        return arrayList;
    }

    public static SmilPlayer getPlayer() {
        if (sPlayer == null) {
            sPlayer = new SmilPlayer();
        }
        return sPlayer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [double] */
    private static ArrayList<TimelineEntry> getSeqTimeline(ElementSequentialTimeContainer elementSequentialTimeContainer, double d, double d2) {
        ArrayList<TimelineEntry> arrayList = new ArrayList<>();
        double resolvedOffset = elementSequentialTimeContainer.getBegin().item(0).getResolvedOffset() + d;
        if (resolvedOffset > d2) {
            return arrayList;
        }
        arrayList.add(new TimelineEntry(resolvedOffset, elementSequentialTimeContainer, 0));
        ?? resolvedOffset2 = elementSequentialTimeContainer.getEnd().item(0).getResolvedOffset() + d;
        int i = (resolvedOffset2 > d2 ? 1 : (resolvedOffset2 == d2 ? 0 : -1));
        ?? r11 = d2;
        if (i <= 0) {
            r11 = resolvedOffset2;
        }
        TimelineEntry timelineEntry = new TimelineEntry(r11, elementSequentialTimeContainer, 1);
        NodeList timeChildren = elementSequentialTimeContainer.getTimeChildren();
        char c = d;
        for (int i2 = 0; i2 < timeChildren.getLength(); i2++) {
            ArrayList<TimelineEntry> timeline = getTimeline((ElementTime) timeChildren.item(i2), c, r11);
            arrayList.addAll(timeline);
            c = timeline.get(timeline.size() - 1).getOffsetTime();
        }
        NodeList activeChildrenAt = elementSequentialTimeContainer.getActiveChildrenAt((float) (r11 - d));
        for (int i3 = 0; i3 < activeChildrenAt.getLength(); i3++) {
            arrayList.add(new TimelineEntry(r11, (ElementTime) activeChildrenAt.item(i3), 1));
        }
        arrayList.add(timelineEntry);
        return arrayList;
    }

    private static ArrayList<TimelineEntry> getTimeline(ElementTime elementTime, double d, double d2) {
        if (elementTime instanceof ElementParallelTimeContainer) {
            return getParTimeline((ElementParallelTimeContainer) elementTime, d, d2);
        }
        if (elementTime instanceof ElementSequentialTimeContainer) {
            return getSeqTimeline((ElementSequentialTimeContainer) elementTime, d, d2);
        }
        ArrayList<TimelineEntry> arrayList = new ArrayList<>();
        TimeList begin = elementTime.getBegin();
        for (int i = 0; i < begin.getLength(); i++) {
            Time item = begin.item(i);
            if (item.getResolved()) {
                double resolvedOffset = item.getResolvedOffset() + d;
                if (resolvedOffset <= d2) {
                    arrayList.add(new TimelineEntry(resolvedOffset, elementTime, 0));
                }
            }
        }
        TimeList end = elementTime.getEnd();
        for (int i2 = 0; i2 < end.getLength(); i2++) {
            Time item2 = end.item(i2);
            if (item2.getResolved()) {
                double resolvedOffset2 = item2.getResolvedOffset() + d;
                if (resolvedOffset2 <= d2) {
                    arrayList.add(new TimelineEntry(resolvedOffset2, elementTime, 1));
                }
            }
        }
        Collections.sort(arrayList, sTimelineEntryComparator);
        return arrayList;
    }

    private boolean isBeginOfSlide(TimelineEntry timelineEntry) {
        boolean z;
        synchronized (this) {
            if (timelineEntry.getAction() == 0) {
                if (timelineEntry.getElement() instanceof SmilParElementImpl) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    private boolean isNextAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.NEXT;
        }
        return z;
    }

    private boolean isPauseAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.PAUSE;
        }
        return z;
    }

    private boolean isPrevAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.PREV;
        }
        return z;
    }

    private boolean isReloadAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.RELOAD;
        }
        return z;
    }

    private boolean isStartAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.START;
        }
        return z;
    }

    private boolean isStopAction() {
        boolean z;
        synchronized (this) {
            z = this.mAction == SmilPlayerAction.STOP;
        }
        return z;
    }

    private TimelineEntry loadNextSlide() {
        int size = this.mAllEntries.size();
        for (int i = this.mCurrentElement; i < size; i++) {
            TimelineEntry timelineEntry = this.mAllEntries.get(i);
            if (isBeginOfSlide(timelineEntry)) {
                this.mCurrentElement = i;
                this.mCurrentSlide = i;
                this.mCurrentTime = (long) (timelineEntry.getOffsetTime() * 1000.0d);
                return timelineEntry;
            }
        }
        int i2 = this.mCurrentElement + 1;
        this.mCurrentElement = i2;
        TimelineEntry timelineEntry2 = null;
        if (i2 < size) {
            timelineEntry2 = this.mAllEntries.get(i2);
            this.mCurrentTime = (long) (timelineEntry2.getOffsetTime() * 1000.0d);
        }
        return timelineEntry2;
    }

    private TimelineEntry loadPrevSlide() {
        int i = this.mCurrentSlide;
        int i2 = 1;
        int i3 = -1;
        while (i >= 0) {
            TimelineEntry timelineEntry = this.mAllEntries.get(i);
            int i4 = i2;
            if (isBeginOfSlide(timelineEntry)) {
                if (i2 == 0) {
                    this.mCurrentElement = i;
                    this.mCurrentSlide = i;
                    this.mCurrentTime = (long) (timelineEntry.getOffsetTime() * 1000.0d);
                    return timelineEntry;
                }
                i4 = i2 - 1;
                i3 = i;
            }
            i--;
            i2 = i4;
        }
        if (i3 != -1) {
            this.mCurrentElement = i3;
            this.mCurrentSlide = i3;
            return this.mAllEntries.get(i3);
        }
        return null;
    }

    private void pauseActiveElements() {
        synchronized (this) {
            for (int size = this.mActiveElements.size() - 1; size >= 0; size--) {
                this.mActiveElements.get(size).pauseElement();
            }
        }
    }

    private void reloadActiveSlide() {
        synchronized (this) {
            this.mActiveElements.clear();
            beginSmilDocument();
            for (int i = this.mCurrentSlide; i < this.mCurrentElement; i++) {
                actionEntry(this.mAllEntries.get(i));
            }
            seekActiveMedia();
        }
    }

    private TimelineEntry reloadCurrentEntry() {
        synchronized (this) {
            if (this.mCurrentElement < this.mAllEntries.size()) {
                return this.mAllEntries.get(this.mCurrentElement);
            }
            return null;
        }
    }

    private void resumeActiveElements() {
        synchronized (this) {
            int size = this.mActiveElements.size();
            for (int i = 0; i < size; i++) {
                this.mActiveElements.get(i).resumeElement();
            }
        }
    }

    private void seekActiveMedia() {
        synchronized (this) {
            for (int size = this.mActiveElements.size() - 1; size >= 0; size--) {
                ElementTime elementTime = this.mActiveElements.get(size);
                if (elementTime instanceof SmilParElementImpl) {
                    return;
                }
                double offsetTime = getOffsetTime(elementTime);
                if (offsetTime >= 0.0d) {
                    long j = this.mCurrentTime;
                    if (offsetTime <= j) {
                        elementTime.seekElement((float) (j - offsetTime));
                    }
                }
            }
        }
    }

    private void stopCurrentSlide() {
        HashSet hashSet = new HashSet();
        int size = this.mAllEntries.size();
        for (int i = this.mCurrentElement; i < size; i++) {
            TimelineEntry timelineEntry = this.mAllEntries.get(i);
            int action = timelineEntry.getAction();
            if ((timelineEntry.getElement() instanceof SmilParElementImpl) && action == 1) {
                actionEntry(timelineEntry);
                this.mCurrentElement = i;
                return;
            }
            if (action == 1 && !hashSet.contains(timelineEntry)) {
                actionEntry(timelineEntry);
            } else if (action == 0) {
                hashSet.add(timelineEntry);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    private void waitForEntry(long j) {
        boolean z;
        synchronized (this) {
            ?? r0 = 0;
            ?? r7 = j;
            while (true) {
                char c = r0;
                if (r7 <= 0) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                ?? min = Math.min((long) r7, 200L);
                if (c < min) {
                    wait(min - c);
                    this.mCurrentTime += min;
                    z = min;
                } else {
                    this.mCurrentTime += c;
                    z = false;
                }
                if (isStopAction() || isReloadAction() || isPauseAction() || isNextAction() || isPrevAction()) {
                    break;
                }
                ((EventTarget) this.mRoot).dispatchEvent(this.mMediaTimeUpdatedEvent);
                r7 -= 200;
                r0 = (System.currentTimeMillis() - currentTimeMillis) - (z ? 1L : 0L);
            }
        }
    }

    private void waitForWakeUp() {
        synchronized (this) {
            while (!isStartAction() && !isStopAction() && !isReloadAction() && !isNextAction() && !isPrevAction()) {
                try {
                    wait(200L);
                } catch (InterruptedException e) {
                    Log.e(TAG, "Unexpected InterruptedException.", e);
                }
            }
            if (isStartAction()) {
                this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
                this.mState = SmilPlayerState.PLAYING;
            }
        }
    }

    public int getCurrentPosition() {
        int i;
        synchronized (this) {
            i = (int) this.mCurrentTime;
        }
        return i;
    }

    public int getDuration() {
        int i;
        synchronized (this) {
            ArrayList<TimelineEntry> arrayList = this.mAllEntries;
            if (arrayList == null || arrayList.isEmpty()) {
                i = 0;
            } else {
                ArrayList<TimelineEntry> arrayList2 = this.mAllEntries;
                i = ((int) arrayList2.get(arrayList2.size() - 1).mOffsetTime) * 1000;
            }
        }
        return i;
    }

    public void init(ElementTime elementTime) {
        synchronized (this) {
            this.mRoot = elementTime;
            this.mAllEntries = getTimeline(elementTime, 0.0d, 9.223372036854776E18d);
            Event createEvent = ((DocumentEvent) this.mRoot).createEvent("Event");
            this.mMediaTimeUpdatedEvent = createEvent;
            createEvent.initEvent(MEDIA_TIME_UPDATED_EVENT, false, false);
            this.mActiveElements = new ArrayList<>();
        }
    }

    public boolean isPausedState() {
        boolean z;
        synchronized (this) {
            z = this.mState == SmilPlayerState.PAUSED;
        }
        return z;
    }

    public boolean isPlayedState() {
        boolean z;
        synchronized (this) {
            z = this.mState == SmilPlayerState.PLAYED;
        }
        return z;
    }

    public boolean isPlayingState() {
        boolean z;
        synchronized (this) {
            z = this.mState == SmilPlayerState.PLAYING;
        }
        return z;
    }

    public boolean isStoppedState() {
        boolean z;
        synchronized (this) {
            z = this.mState == SmilPlayerState.STOPPED;
        }
        return z;
    }

    public void next() {
        synchronized (this) {
            if (isPlayingState() || isPausedState()) {
                this.mAction = SmilPlayerAction.NEXT;
                notifyAll();
            }
        }
    }

    public void pause() {
        synchronized (this) {
            if (isPlayingState()) {
                this.mAction = SmilPlayerAction.PAUSE;
                notifyAll();
            } else {
                Log.w(TAG, "Error State: Playback is not playing!");
            }
        }
    }

    public void play() {
        synchronized (this) {
            if (!isPlayingState()) {
                this.mCurrentTime = 0L;
                this.mCurrentElement = 0;
                this.mCurrentSlide = 0;
                Thread thread = new Thread(this, "SmilPlayer thread");
                this.mPlayerThread = thread;
                this.mState = SmilPlayerState.PLAYING;
                thread.start();
            } else {
                Log.w(TAG, "Error State: Playback is playing!");
            }
        }
    }

    public void prev() {
        synchronized (this) {
            if (isPlayingState() || isPausedState()) {
                this.mAction = SmilPlayerAction.PREV;
                notifyAll();
            }
        }
    }

    public void reload() {
        synchronized (this) {
            if (!isPlayingState() && !isPausedState()) {
                if (isPlayedState()) {
                    actionReload();
                }
            }
            this.mAction = SmilPlayerAction.RELOAD;
            notifyAll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        TimelineEntry timelineEntry;
        char offsetTime;
        TimelineEntry timelineEntry2;
        char c;
        if (isStoppedState()) {
            return;
        }
        int size = this.mAllEntries.size();
        int i = 0;
        while (true) {
            this.mCurrentElement = i;
            int i2 = this.mCurrentElement;
            if (i2 >= size) {
                this.mState = SmilPlayerState.PLAYED;
                return;
            }
            timelineEntry = this.mAllEntries.get(i2);
            if (isBeginOfSlide(timelineEntry)) {
                this.mCurrentSlide = this.mCurrentElement;
            }
            offsetTime = (long) (timelineEntry.getOffsetTime() * 1000.0d);
            while (true) {
                long j = this.mCurrentTime;
                if (offsetTime > j) {
                    try {
                        waitForEntry(offsetTime - j);
                        timelineEntry2 = timelineEntry;
                        c = offsetTime;
                    } catch (InterruptedException e) {
                        Log.e(TAG, "Unexpected InterruptedException.", e);
                        c = offsetTime;
                        timelineEntry2 = timelineEntry;
                    }
                    while (true) {
                        if (!isPauseAction() && !isStopAction() && !isReloadAction() && !isNextAction()) {
                            timelineEntry = timelineEntry2;
                            offsetTime = c;
                            if (!isPrevAction()) {
                                break;
                            }
                        }
                        if (isPauseAction()) {
                            actionPause();
                            waitForWakeUp();
                        }
                        if (isStopAction()) {
                            actionStop();
                            return;
                        }
                        if (isReloadAction()) {
                            actionReload();
                            TimelineEntry reloadCurrentEntry = reloadCurrentEntry();
                            if (reloadCurrentEntry == null) {
                                return;
                            }
                            timelineEntry2 = reloadCurrentEntry;
                            if (isPausedState()) {
                                this.mAction = SmilPlayerAction.PAUSE;
                                timelineEntry2 = reloadCurrentEntry;
                            }
                        }
                        TimelineEntry timelineEntry3 = timelineEntry2;
                        if (isNextAction()) {
                            TimelineEntry actionNext = actionNext();
                            if (actionNext != null) {
                                timelineEntry2 = actionNext;
                            }
                            if (this.mState == SmilPlayerState.PAUSED) {
                                this.mAction = SmilPlayerAction.PAUSE;
                                actionEntry(timelineEntry2);
                            } else {
                                this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
                            }
                            c = this.mCurrentTime;
                            timelineEntry3 = timelineEntry2;
                        }
                        timelineEntry2 = timelineEntry3;
                        if (isPrevAction()) {
                            TimelineEntry actionPrev = actionPrev();
                            timelineEntry2 = timelineEntry3;
                            if (actionPrev != null) {
                                timelineEntry2 = actionPrev;
                            }
                            if (this.mState == SmilPlayerState.PAUSED) {
                                this.mAction = SmilPlayerAction.PAUSE;
                                actionEntry(timelineEntry2);
                            } else {
                                this.mAction = SmilPlayerAction.NO_ACTIVE_ACTION;
                            }
                            c = this.mCurrentTime;
                        }
                    }
                }
            }
            this.mCurrentTime = offsetTime;
            actionEntry(timelineEntry);
            i = this.mCurrentElement + 1;
        }
    }

    public void start() {
        synchronized (this) {
            if (isPausedState()) {
                resumeActiveElements();
                this.mAction = SmilPlayerAction.START;
                notifyAll();
            } else if (isPlayedState()) {
                play();
            } else {
                Log.w(TAG, "Error State: Playback can not be started!");
            }
        }
    }

    public void stop() {
        synchronized (this) {
            if (!isPlayingState() && !isPausedState()) {
                if (isPlayedState()) {
                    actionStop();
                }
            }
            this.mAction = SmilPlayerAction.STOP;
            notifyAll();
        }
    }

    public void stopWhenReload() {
        synchronized (this) {
            endActiveElements();
        }
    }
}
