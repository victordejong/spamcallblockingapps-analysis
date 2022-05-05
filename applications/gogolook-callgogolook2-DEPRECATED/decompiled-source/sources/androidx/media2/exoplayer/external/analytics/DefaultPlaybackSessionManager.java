package androidx.media2.exoplayer.external.analytics;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.analytics.PlaybackSessionManager;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager.class */
public final class DefaultPlaybackSessionManager implements PlaybackSessionManager {
    public static final Random RANDOM = new Random();
    public static final int SESSION_ID_LENGTH = 12;
    @Nullable
    public String activeSessionId;
    @Nullable
    public MediaSource.MediaPeriodId currentMediaPeriodId;
    public PlaybackSessionManager.Listener listener;
    public final Timeline.Window window = new Timeline.Window();
    public final Timeline.Period period = new Timeline.Period();
    public final HashMap<String, SessionDescriptor> sessions = new HashMap<>();
    public Timeline currentTimeline = Timeline.EMPTY;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/analytics/DefaultPlaybackSessionManager$SessionDescriptor.class */
    public final class SessionDescriptor {
        public MediaSource.MediaPeriodId adMediaPeriodId;
        public boolean isActive;
        public boolean isCreated;
        public final String sessionId;
        public int windowIndex;
        public long windowSequenceNumber;

        public SessionDescriptor(String str, int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            this.sessionId = str;
            this.windowIndex = i;
            this.windowSequenceNumber = mediaPeriodId == null ? -1L : mediaPeriodId.windowSequenceNumber;
            if (mediaPeriodId != null && mediaPeriodId.isAd()) {
                this.adMediaPeriodId = mediaPeriodId;
            }
        }

        private int resolveWindowIndexToNewTimeline(Timeline timeline, Timeline timeline2, int i) {
            if (i >= timeline.getWindowCount()) {
                if (i >= timeline2.getWindowCount()) {
                    i = -1;
                }
                return i;
            }
            timeline.getWindow(i, DefaultPlaybackSessionManager.this.window);
            for (int i2 = DefaultPlaybackSessionManager.this.window.firstPeriodIndex; i2 <= DefaultPlaybackSessionManager.this.window.lastPeriodIndex; i2++) {
                int indexOfPeriod = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(i2));
                if (indexOfPeriod != -1) {
                    return timeline2.getPeriod(indexOfPeriod, DefaultPlaybackSessionManager.this.period).windowIndex;
                }
            }
            return -1;
        }

        public boolean belongsToSession(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            boolean z = true;
            boolean z2 = true;
            boolean z3 = true;
            if (mediaPeriodId == null) {
                if (i != this.windowIndex) {
                    z3 = false;
                }
                return z3;
            }
            MediaSource.MediaPeriodId mediaPeriodId2 = this.adMediaPeriodId;
            if (mediaPeriodId2 == null) {
                if (mediaPeriodId.isAd() || mediaPeriodId.windowSequenceNumber != this.windowSequenceNumber) {
                    z = false;
                }
                return z;
            }
            if (mediaPeriodId.windowSequenceNumber != mediaPeriodId2.windowSequenceNumber || mediaPeriodId.adGroupIndex != mediaPeriodId2.adGroupIndex || mediaPeriodId.adIndexInAdGroup != mediaPeriodId2.adIndexInAdGroup) {
                z2 = false;
            }
            return z2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00d8, code lost:
            if (r0 > r0.adIndexInAdGroup) goto L_0x00db;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00fd, code lost:
            if (r0 > r5.adMediaPeriodId.adGroupIndex) goto L_0x0100;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean isFinishedAtEventTime(androidx.media2.exoplayer.external.analytics.AnalyticsListener.EventTime r6) {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor.isFinishedAtEventTime(androidx.media2.exoplayer.external.analytics.AnalyticsListener$EventTime):boolean");
        }

        public void maybeSetWindowSequenceNumber(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (this.windowSequenceNumber == -1 && i == this.windowIndex && mediaPeriodId != null && !mediaPeriodId.isAd()) {
                this.windowSequenceNumber = mediaPeriodId.windowSequenceNumber;
            }
        }

        public boolean tryResolvingToNewTimeline(Timeline timeline, Timeline timeline2) {
            this.windowIndex = resolveWindowIndexToNewTimeline(timeline, timeline2, this.windowIndex);
            boolean z = false;
            if (this.windowIndex == -1) {
                return false;
            }
            MediaSource.MediaPeriodId mediaPeriodId = this.adMediaPeriodId;
            if (mediaPeriodId == null) {
                return true;
            }
            if (timeline2.getIndexOfPeriod(mediaPeriodId.periodUid) != -1) {
                z = true;
            }
            return z;
        }
    }

    public static String generateSessionId() {
        byte[] bArr = new byte[12];
        RANDOM.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor getOrAddSession(int r8, @androidx.annotation.Nullable androidx.media2.exoplayer.external.source.MediaSource.MediaPeriodId r9) {
        /*
            r7 = this;
            r0 = r7
            java.util.HashMap<java.lang.String, androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor> r0 = r0.sessions
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r0
        L_0x0015:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0086
            r0 = r10
            java.lang.Object r0 = r0.next()
            androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor r0 = (androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor) r0
            r14 = r0
            r0 = r14
            r1 = r8
            r2 = r9
            r0.maybeSetWindowSequenceNumber(r1, r2)
            r0 = r14
            r1 = r8
            r2 = r9
            boolean r0 = r0.belongsToSession(r1, r2)
            if (r0 == 0) goto L_0x0015
            r0 = r14
            long r0 = androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor.access$200(r0)
            r15 = r0
            r0 = r15
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007b
            r0 = r15
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r17 = r0
            r0 = r17
            if (r0 >= 0) goto L_0x0059
            goto L_0x007b
        L_0x0059:
            r0 = r17
            if (r0 != 0) goto L_0x0015
            r0 = r11
            java.lang.Object r0 = androidx.media2.exoplayer.external.util.Util.castNonNull(r0)
            androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor r0 = (androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor) r0
            androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId r0 = androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor.access$300(r0)
            if (r0 == 0) goto L_0x0015
            r0 = r14
            androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId r0 = androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.SessionDescriptor.access$300(r0)
            if (r0 == 0) goto L_0x0015
            r0 = r14
            r11 = r0
            goto L_0x0015
        L_0x007b:
            r0 = r14
            r11 = r0
            r0 = r15
            r12 = r0
            goto L_0x0015
        L_0x0086:
            r0 = r11
            r14 = r0
            r0 = r11
            if (r0 != 0) goto L_0x00ae
            java.lang.String r0 = generateSessionId()
            r11 = r0
            androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor r0 = new androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor
            r1 = r0
            r2 = r7
            r3 = r11
            r4 = r8
            r5 = r9
            r1.<init>(r3, r4, r5)
            r14 = r0
            r0 = r7
            java.util.HashMap<java.lang.String, androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor> r0 = r0.sessions
            r1 = r11
            r2 = r14
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x00ae:
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager.getOrAddSession(int, androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId):androidx.media2.exoplayer.external.analytics.DefaultPlaybackSessionManager$SessionDescriptor");
    }

    private void updateActiveSession(AnalyticsListener.EventTime eventTime, SessionDescriptor sessionDescriptor) {
        this.currentMediaPeriodId = eventTime.mediaPeriodId;
        if (sessionDescriptor.isCreated) {
            this.activeSessionId = sessionDescriptor.sessionId;
            if (!sessionDescriptor.isActive) {
                sessionDescriptor.isActive = true;
                this.listener.onSessionActive(eventTime, sessionDescriptor.sessionId);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public boolean belongsToSession(AnalyticsListener.EventTime eventTime, String str) {
        synchronized (this) {
            SessionDescriptor sessionDescriptor = this.sessions.get(str);
            if (sessionDescriptor == null) {
                return false;
            }
            sessionDescriptor.maybeSetWindowSequenceNumber(eventTime.windowIndex, eventTime.mediaPeriodId);
            return sessionDescriptor.belongsToSession(eventTime.windowIndex, eventTime.mediaPeriodId);
        }
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public String getSessionForMediaPeriodId(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        String str;
        synchronized (this) {
            str = getOrAddSession(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId).sessionId;
        }
        return str;
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public void handlePositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i) {
        synchronized (this) {
            Assertions.checkNotNull(this.listener);
            boolean z = i == 0 || i == 3;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (next.isFinishedAtEventTime(eventTime)) {
                    it.remove();
                    if (next.isCreated) {
                        boolean equals = next.sessionId.equals(this.activeSessionId);
                        boolean z2 = z && equals;
                        if (equals) {
                            this.activeSessionId = null;
                        }
                        this.listener.onSessionFinished(eventTime, next.sessionId, z2);
                    }
                }
            }
            SessionDescriptor orAddSession = getOrAddSession(eventTime.windowIndex, eventTime.mediaPeriodId);
            if (!(eventTime.mediaPeriodId == null || !eventTime.mediaPeriodId.isAd() || (this.currentMediaPeriodId != null && this.currentMediaPeriodId.windowSequenceNumber == eventTime.mediaPeriodId.windowSequenceNumber && this.currentMediaPeriodId.adGroupIndex == eventTime.mediaPeriodId.adGroupIndex && this.currentMediaPeriodId.adIndexInAdGroup == eventTime.mediaPeriodId.adIndexInAdGroup))) {
                SessionDescriptor orAddSession2 = getOrAddSession(eventTime.windowIndex, new MediaSource.MediaPeriodId(eventTime.mediaPeriodId.periodUid, eventTime.mediaPeriodId.windowSequenceNumber));
                if (orAddSession2.isCreated && orAddSession.isCreated) {
                    this.listener.onAdPlaybackStarted(eventTime, orAddSession2.sessionId, orAddSession.sessionId);
                }
            }
            updateActiveSession(eventTime, orAddSession);
        }
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public void handleTimelineUpdate(AnalyticsListener.EventTime eventTime) {
        synchronized (this) {
            Assertions.checkNotNull(this.listener);
            Timeline timeline = this.currentTimeline;
            this.currentTimeline = eventTime.timeline;
            Iterator<SessionDescriptor> it = this.sessions.values().iterator();
            while (it.hasNext()) {
                SessionDescriptor next = it.next();
                if (!next.tryResolvingToNewTimeline(timeline, this.currentTimeline)) {
                    it.remove();
                    if (next.isCreated) {
                        if (next.sessionId.equals(this.activeSessionId)) {
                            this.activeSessionId = null;
                        }
                        this.listener.onSessionFinished(eventTime, next.sessionId, false);
                    }
                }
            }
            handlePositionDiscontinuity(eventTime, 4);
        }
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public void setListener(PlaybackSessionManager.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media2.exoplayer.external.analytics.PlaybackSessionManager
    public void updateSessions(AnalyticsListener.EventTime eventTime) {
        synchronized (this) {
            if (!((eventTime.mediaPeriodId == null || this.currentMediaPeriodId == null || eventTime.mediaPeriodId.windowSequenceNumber >= this.currentMediaPeriodId.windowSequenceNumber) ? false : true)) {
                SessionDescriptor orAddSession = getOrAddSession(eventTime.windowIndex, eventTime.mediaPeriodId);
                if (!orAddSession.isCreated) {
                    orAddSession.isCreated = true;
                    ((PlaybackSessionManager.Listener) Assertions.checkNotNull(this.listener)).onSessionCreated(eventTime, orAddSession.sessionId);
                    if (this.activeSessionId == null) {
                        updateActiveSession(eventTime, orAddSession);
                    }
                }
            }
        }
    }
}
