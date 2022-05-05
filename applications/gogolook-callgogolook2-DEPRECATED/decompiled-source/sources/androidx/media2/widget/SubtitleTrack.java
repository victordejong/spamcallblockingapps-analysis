package androidx.media2.widget;

import android.graphics.Canvas;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.LongSparseArray;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.common.SubtitleData;
import androidx.media2.widget.MediaTimeProvider;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack.class */
public abstract class SubtitleTrack implements MediaTimeProvider.OnMediaTimeListener {
    public static final String TAG = "SubtitleTrack";
    public MediaFormat mFormat;
    public long mLastUpdateTimeMs;
    public Runnable mRunnable;
    public MediaTimeProvider mTimeProvider;
    public boolean mVisible;
    public final LongSparseArray<Run> mRunsByEndTime = new LongSparseArray<>();
    public final LongSparseArray<Run> mRunsByID = new LongSparseArray<>();
    public final ArrayList<Cue> mActiveCues = new ArrayList<>();
    public boolean DEBUG = false;
    public Handler mHandler = new Handler();
    public long mNextScheduledTimeMs = -1;
    public CueList mCues = new CueList();
    public long mLastTimeMs = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$Cue.class */
    public static class Cue {
        public long mEndTimeMs;
        @Nullable
        public long[] mInnerTimesMs;
        @Nullable
        public Cue mNextInRun;
        public long mRunID;
        public long mStartTimeMs;

        public void onTime(long j) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$CueList.class */
    public static class CueList {
        public static final String TAG = "CueList";
        public boolean DEBUG = false;
        public SortedMap<Long, ArrayList<Cue>> mCues = new TreeMap();

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$CueList$EntryIterator.class */
        public class EntryIterator implements Iterator<Pair<Long, Cue>> {
            public long mCurrentTimeMs;
            public boolean mDone;
            public Pair<Long, Cue> mLastEntry;
            public Iterator<Cue> mLastListIterator;
            public Iterator<Cue> mListIterator;
            public SortedMap<Long, ArrayList<Cue>> mRemainingCues;

            public EntryIterator(SortedMap<Long, ArrayList<Cue>> sortedMap) {
                if (CueList.this.DEBUG) {
                    String str = sortedMap + "";
                }
                this.mRemainingCues = sortedMap;
                this.mLastListIterator = null;
                nextKey();
            }

            private void nextKey() {
                do {
                    try {
                        if (this.mRemainingCues != null) {
                            this.mCurrentTimeMs = this.mRemainingCues.firstKey().longValue();
                            this.mListIterator = this.mRemainingCues.get(Long.valueOf(this.mCurrentTimeMs)).iterator();
                            try {
                                this.mRemainingCues = this.mRemainingCues.tailMap(Long.valueOf(this.mCurrentTimeMs + 1));
                            } catch (IllegalArgumentException e) {
                                this.mRemainingCues = null;
                            }
                            this.mDone = false;
                        } else {
                            throw new NoSuchElementException("");
                        }
                    } catch (NoSuchElementException e2) {
                        this.mDone = true;
                        this.mRemainingCues = null;
                        this.mListIterator = null;
                        return;
                    }
                    this.mDone = true;
                    this.mRemainingCues = null;
                    this.mListIterator = null;
                    return;
                } while (!this.mListIterator.hasNext());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return !this.mDone;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public Pair<Long, Cue> next() {
                if (!this.mDone) {
                    this.mLastEntry = new Pair<>(Long.valueOf(this.mCurrentTimeMs), this.mListIterator.next());
                    Iterator<Cue> it = this.mListIterator;
                    this.mLastListIterator = it;
                    if (!it.hasNext()) {
                        nextKey();
                    }
                    return this.mLastEntry;
                }
                throw new NoSuchElementException("");
            }

            @Override // java.util.Iterator
            public void remove() {
                if (this.mLastListIterator != null) {
                    Pair<Long, Cue> pair = this.mLastEntry;
                    if (((Cue) pair.second).mEndTimeMs == ((Long) pair.first).longValue()) {
                        this.mLastListIterator.remove();
                        this.mLastListIterator = null;
                        if (CueList.this.mCues.get(this.mLastEntry.first).size() == 0) {
                            CueList.this.mCues.remove(this.mLastEntry.first);
                        }
                        Cue cue = (Cue) this.mLastEntry.second;
                        CueList.this.removeEvent(cue, cue.mStartTimeMs);
                        long[] jArr = cue.mInnerTimesMs;
                        if (jArr != null) {
                            for (long j : jArr) {
                                CueList.this.removeEvent(cue, j);
                            }
                            return;
                        }
                        return;
                    }
                }
                throw new IllegalStateException("");
            }
        }

        private boolean addEvent(Cue cue, long j) {
            ArrayList<Cue> arrayList;
            ArrayList<Cue> arrayList2 = this.mCues.get(Long.valueOf(j));
            if (arrayList2 == null) {
                arrayList = new ArrayList<>(2);
                this.mCues.put(Long.valueOf(j), arrayList);
            } else {
                arrayList = arrayList2;
                if (arrayList2.contains(cue)) {
                    return false;
                }
            }
            arrayList.add(cue);
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long[]] */
        /* JADX WARN: Type inference failed for: r5v0, types: [androidx.media2.widget.SubtitleTrack$CueList] */
        /* JADX WARN: Type inference failed for: r7v2, types: [long] */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r7v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void add(androidx.media2.widget.SubtitleTrack.Cue r6) {
            /*
                r5 = this;
                r0 = r6
                long r0 = r0.mStartTimeMs
                r7 = r0
                r0 = r7
                r1 = r6
                long r1 = r1.mEndTimeMs
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x000f
                return
            L_0x000f:
                r0 = r5
                r1 = r6
                r2 = r7
                boolean r0 = r0.addEvent(r1, r2)
                if (r0 != 0) goto L_0x0019
                return
            L_0x0019:
                r0 = r6
                long r0 = r0.mStartTimeMs
                r7 = r0
                r0 = r6
                long[] r0 = r0.mInnerTimesMs
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L_0x006b
                r0 = r9
                int r0 = r0.length
                r10 = r0
                r0 = 0
                r11 = r0
            L_0x0031:
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006b
                r0 = r9
                r1 = r11
                r0 = r0[r1]
                r12 = r0
                r0 = r7
                r14 = r0
                r0 = r12
                r1 = r7
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0062
                r0 = r7
                r14 = r0
                r0 = r12
                r1 = r6
                long r1 = r1.mEndTimeMs
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0062
                r0 = r5
                r1 = r6
                r2 = r12
                boolean r0 = r0.addEvent(r1, r2)
                r0 = r12
                r14 = r0
            L_0x0062:
                int r11 = r11 + 1
                r0 = r14
                r7 = r0
                goto L_0x0031
            L_0x006b:
                r0 = r5
                r1 = r6
                r2 = r6
                long r2 = r2.mEndTimeMs
                boolean r0 = r0.addEvent(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.SubtitleTrack.CueList.add(androidx.media2.widget.SubtitleTrack$Cue):void");
        }

        public Iterable<Pair<Long, Cue>> entriesBetween(final long j, final long j2) {
            return new Iterable<Pair<Long, Cue>>() { // from class: androidx.media2.widget.SubtitleTrack.CueList.1
                @Override // java.lang.Iterable
                public Iterator<Pair<Long, Cue>> iterator() {
                    if (CueList.this.DEBUG) {
                        String str = "slice (" + j + UserProfile.CARD_CATE_SEPARATOR + j2 + "]=";
                    }
                    try {
                        return new EntryIterator(CueList.this.mCues.subMap(Long.valueOf(j + 1), Long.valueOf(j2 + 1)));
                    } catch (IllegalArgumentException e) {
                        return new EntryIterator(null);
                    }
                }
            };
        }

        public long nextTimeAfter(long j) {
            try {
                SortedMap<Long, ArrayList<Cue>> tailMap = this.mCues.tailMap(Long.valueOf(j + 1));
                if (tailMap != null) {
                    return tailMap.firstKey().longValue();
                }
                return -1L;
            } catch (IllegalArgumentException | NoSuchElementException e) {
                return -1L;
            }
        }

        public void remove(Cue cue) {
            removeEvent(cue, cue.mStartTimeMs);
            long[] jArr = cue.mInnerTimesMs;
            if (jArr != null) {
                for (long j : jArr) {
                    removeEvent(cue, j);
                }
            }
            removeEvent(cue, cue.mEndTimeMs);
        }

        public void removeEvent(Cue cue, long j) {
            ArrayList<Cue> arrayList = this.mCues.get(Long.valueOf(j));
            if (arrayList != null) {
                arrayList.remove(cue);
                if (arrayList.size() == 0) {
                    this.mCues.remove(Long.valueOf(j));
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$RenderingWidget.class */
    public interface RenderingWidget {

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$RenderingWidget$OnChangedListener.class */
        public interface OnChangedListener {
            void onChanged(@NonNull RenderingWidget renderingWidget);
        }

        void draw(Canvas canvas);

        void onAttachedToWindow();

        void onDetachedFromWindow();

        void setOnChangedListener(OnChangedListener onChangedListener);

        void setSize(int i, int i2);

        void setVisible(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleTrack$Run.class */
    public static class Run {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public Cue mFirstCue;
        public Run mNextRunAtEndTimeMs;
        public Run mPrevRunAtEndTimeMs;
        public long mEndTimeMs = -1;
        public long mRunID = 0;
        public long mStoredEndTimeMs = -1;

        public void removeAtEndTimeMs() {
            Run run = this.mPrevRunAtEndTimeMs;
            if (run != null) {
                run.mNextRunAtEndTimeMs = this.mNextRunAtEndTimeMs;
                this.mPrevRunAtEndTimeMs = null;
            }
            Run run2 = this.mNextRunAtEndTimeMs;
            if (run2 != null) {
                run2.mPrevRunAtEndTimeMs = run;
                this.mNextRunAtEndTimeMs = null;
            }
        }

        public void storeByEndTimeMs(LongSparseArray<Run> longSparseArray) {
            int indexOfKey = longSparseArray.indexOfKey(this.mStoredEndTimeMs);
            if (indexOfKey >= 0) {
                if (this.mPrevRunAtEndTimeMs == null) {
                    Run run = this.mNextRunAtEndTimeMs;
                    if (run == null) {
                        longSparseArray.removeAt(indexOfKey);
                    } else {
                        longSparseArray.setValueAt(indexOfKey, run);
                    }
                }
                removeAtEndTimeMs();
            }
            long j = this.mEndTimeMs;
            if (j >= 0) {
                this.mPrevRunAtEndTimeMs = null;
                this.mNextRunAtEndTimeMs = longSparseArray.get(j);
                Run run2 = this.mNextRunAtEndTimeMs;
                if (run2 != null) {
                    run2.mPrevRunAtEndTimeMs = this;
                }
                longSparseArray.put(this.mEndTimeMs, this);
                this.mStoredEndTimeMs = this.mEndTimeMs;
            }
        }
    }

    public SubtitleTrack(MediaFormat mediaFormat) {
        this.mFormat = mediaFormat;
        clearActiveCues();
    }

    private void removeRunsByEndTimeIndex(int i) {
        Run valueAt = this.mRunsByEndTime.valueAt(i);
        while (valueAt != null) {
            Cue cue = valueAt.mFirstCue;
            while (cue != null) {
                this.mCues.remove(cue);
                cue = cue.mNextInRun;
                cue.mNextInRun = null;
            }
            this.mRunsByID.remove(valueAt.mRunID);
            valueAt = valueAt.mNextRunAtEndTimeMs;
            valueAt.mPrevRunAtEndTimeMs = null;
            valueAt.mNextRunAtEndTimeMs = null;
        }
        this.mRunsByEndTime.removeAt(i);
    }

    private void takeTime(long j) {
        synchronized (this) {
            this.mLastTimeMs = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean addCue(androidx.media2.widget.SubtitleTrack.Cue r7) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.SubtitleTrack.addCue(androidx.media2.widget.SubtitleTrack$Cue):boolean");
    }

    public void clearActiveCues() {
        synchronized (this) {
            if (this.DEBUG) {
                String str = "Clearing " + this.mActiveCues.size() + " active cues";
            }
            this.mActiveCues.clear();
            this.mLastUpdateTimeMs = -1L;
        }
    }

    public void finalize() throws Throwable {
        for (int size = this.mRunsByEndTime.size() - 1; size >= 0; size--) {
            removeRunsByEndTimeIndex(size);
        }
        super.finalize();
    }

    public void finishedRun(long j) {
        Run run;
        if (j != 0 && j != -1 && (run = this.mRunsByID.get(j)) != null) {
            run.storeByEndTimeMs(this.mRunsByEndTime);
        }
    }

    public final MediaFormat getFormat() {
        return this.mFormat;
    }

    public abstract RenderingWidget getRenderingWidget();

    public int getTrackType() {
        return getRenderingWidget() == null ? 3 : 4;
    }

    public void hide() {
        if (this.mVisible) {
            MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
            if (mediaTimeProvider != null) {
                mediaTimeProvider.cancelNotifications(this);
            }
            RenderingWidget renderingWidget = getRenderingWidget();
            if (renderingWidget != null) {
                renderingWidget.setVisible(false);
            }
            this.mVisible = false;
        }
    }

    public void onData(SubtitleData subtitleData) {
        long startTimeUs = subtitleData.getStartTimeUs() + 1;
        onData(subtitleData.getData(), true, startTimeUs);
        setRunDiscardTimeMs(startTimeUs, (subtitleData.getStartTimeUs() + subtitleData.getDurationUs()) / 1000);
    }

    public abstract void onData(byte[] bArr, boolean z, long j);

    @Override // androidx.media2.widget.MediaTimeProvider.OnMediaTimeListener
    public void onSeek(long j) {
        if (this.DEBUG) {
            String str = "onSeek " + j;
        }
        synchronized (this) {
            long j2 = j / 1000;
            updateActiveCues(true, j2);
            takeTime(j2);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    @Override // androidx.media2.widget.MediaTimeProvider.OnMediaTimeListener
    public void onStop() {
        synchronized (this) {
            boolean z = this.DEBUG;
            clearActiveCues();
            this.mLastTimeMs = -1L;
        }
        updateView(this.mActiveCues);
        this.mNextScheduledTimeMs = -1L;
        this.mTimeProvider.notifyAt(-1L, this);
    }

    @Override // androidx.media2.widget.MediaTimeProvider.OnMediaTimeListener
    public void onTimedEvent(long j) {
        if (this.DEBUG) {
            String str = "onTimedEvent " + j;
        }
        synchronized (this) {
            long j2 = j / 1000;
            updateActiveCues(false, j2);
            takeTime(j2);
        }
        updateView(this.mActiveCues);
        scheduleTimedEvents();
    }

    public void scheduleTimedEvents() {
        if (this.mTimeProvider != null) {
            this.mNextScheduledTimeMs = this.mCues.nextTimeAfter(this.mLastTimeMs);
            if (this.DEBUG) {
                String str = "sched @" + this.mNextScheduledTimeMs + " after " + this.mLastTimeMs;
            }
            MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
            long j = this.mNextScheduledTimeMs;
            mediaTimeProvider.notifyAt(j >= 0 ? j * 1000 : -1L, this);
        }
    }

    public void setRunDiscardTimeMs(long j, long j2) {
        Run run;
        if (j != 0 && j != -1 && (run = this.mRunsByID.get(j)) != null) {
            run.mEndTimeMs = j2;
            run.storeByEndTimeMs(this.mRunsByEndTime);
        }
    }

    public void setTimeProvider(MediaTimeProvider mediaTimeProvider) {
        synchronized (this) {
            if (this.mTimeProvider != mediaTimeProvider) {
                if (this.mTimeProvider != null) {
                    this.mTimeProvider.cancelNotifications(this);
                }
                this.mTimeProvider = mediaTimeProvider;
                if (this.mTimeProvider != null) {
                    this.mTimeProvider.scheduleUpdate(this);
                }
            }
        }
    }

    public void show() {
        if (!this.mVisible) {
            this.mVisible = true;
            RenderingWidget renderingWidget = getRenderingWidget();
            if (renderingWidget != null) {
                renderingWidget.setVisible(true);
            }
            MediaTimeProvider mediaTimeProvider = this.mTimeProvider;
            if (mediaTimeProvider != null) {
                mediaTimeProvider.scheduleUpdate(this);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
        if (r6.mLastUpdateTimeMs > r8) goto L_0x000f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateActiveCues(boolean r7, long r8) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.SubtitleTrack.updateActiveCues(boolean, long):void");
    }

    public abstract void updateView(ArrayList<Cue> arrayList);
}
