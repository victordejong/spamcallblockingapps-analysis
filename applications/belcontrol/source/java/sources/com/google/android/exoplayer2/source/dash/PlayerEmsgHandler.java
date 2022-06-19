package com.google.android.exoplayer2.source.dash;

import android.os.Handler;
import android.os.Message;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.Util;
import com.millennialmedia.internal.PlayList;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/PlayerEmsgHandler.class */
public final class PlayerEmsgHandler implements Handler.Callback {
    private static final int EMSG_MANIFEST_EXPIRED = 2;
    private static final int EMSG_MEDIA_PRESENTATION_ENDED = 1;
    private final Allocator allocator;
    private boolean dynamicMediaPresentationEnded;
    private long expiredManifestPublishTimeUs;
    private boolean isWaitingForManifestRefresh;
    private DashManifest manifest;
    private final PlayerEmsgCallback playerEmsgCallback;
    private boolean released;
    private final TreeMap<Long, Long> manifestPublishTimeToExpiryTimeUs = new TreeMap<>();
    private final Handler handler = new Handler(this);
    private final EventMessageDecoder decoder = new EventMessageDecoder();
    private long lastLoadedChunkEndTimeUs = C0515C.TIME_UNSET;
    private long lastLoadedChunkEndTimeBeforeRefreshUs = C0515C.TIME_UNSET;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo.class */
    public static final class ManifestExpiryEventInfo {
        public final long eventTimeUs;
        public final long manifestPublishTimeMsInEmsg;

        public ManifestExpiryEventInfo(long j, long j2) {
            this.eventTimeUs = j;
            this.manifestPublishTimeMsInEmsg = j2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback.class */
    public interface PlayerEmsgCallback {
        void onDashLiveMediaPresentationEndSignalEncountered();

        void onDashManifestPublishTimeExpired(long j);

        void onDashManifestRefreshRequested();
    }

    public PlayerEmsgHandler(DashManifest dashManifest, PlayerEmsgCallback playerEmsgCallback, Allocator allocator) {
        this.manifest = dashManifest;
        this.playerEmsgCallback = playerEmsgCallback;
        this.allocator = allocator;
    }

    private Map.Entry<Long, Long> ceilingExpiryEntryForPublishTime(long j) {
        return this.manifestPublishTimeToExpiryTimeUs.ceilingEntry(Long.valueOf(j));
    }

    public static long getManifestPublishTimeMsInEmsg(EventMessage eventMessage) {
        try {
            return Util.parseXsDateTime(new String(eventMessage.messageData));
        } catch (ParserException e) {
            return C0515C.TIME_UNSET;
        }
    }

    private void handleManifestExpiredMessage(long j, long j2) {
        Long l = this.manifestPublishTimeToExpiryTimeUs.get(Long.valueOf(j2));
        if (l != null && l.longValue() <= j) {
            return;
        }
        this.manifestPublishTimeToExpiryTimeUs.put(Long.valueOf(j2), Long.valueOf(j));
    }

    private void handleMediaPresentationEndedMessageEncountered() {
        this.dynamicMediaPresentationEnded = true;
        notifySourceMediaPresentationEnded();
    }

    public static boolean isMessageSignalingMediaPresentationEnded(EventMessage eventMessage) {
        return eventMessage.presentationTimeUs == 0 && eventMessage.durationMs == 0;
    }

    public static boolean isPlayerEmsgEvent(String str, String str2) {
        return "urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || PlayList.VERSION.equals(str2) || "3".equals(str2));
    }

    private void maybeNotifyDashManifestRefreshNeeded() {
        long j = this.lastLoadedChunkEndTimeBeforeRefreshUs;
        if (j == C0515C.TIME_UNSET || j != this.lastLoadedChunkEndTimeUs) {
            this.isWaitingForManifestRefresh = true;
            this.lastLoadedChunkEndTimeBeforeRefreshUs = this.lastLoadedChunkEndTimeUs;
            this.playerEmsgCallback.onDashManifestRefreshRequested();
        }
    }

    private void notifyManifestPublishTimeExpired() {
        this.playerEmsgCallback.onDashManifestPublishTimeExpired(this.expiredManifestPublishTimeUs);
    }

    private void notifySourceMediaPresentationEnded() {
        this.playerEmsgCallback.onDashLiveMediaPresentationEndSignalEncountered();
    }

    private void removePreviouslyExpiredManifestPublishTimeValues() {
        Iterator<Map.Entry<Long, Long>> it = this.manifestPublishTimeToExpiryTimeUs.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().longValue() < this.manifest.publishTimeMs) {
                it.remove();
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.released) {
            return true;
        }
        int i = message.what;
        if (i == 1) {
            handleMediaPresentationEndedMessageEncountered();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            ManifestExpiryEventInfo manifestExpiryEventInfo = (ManifestExpiryEventInfo) message.obj;
            handleManifestExpiredMessage(manifestExpiryEventInfo.eventTimeUs, manifestExpiryEventInfo.manifestPublishTimeMsInEmsg);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean maybeRefreshManifestBeforeLoadingNextChunk(long r6) {
        /*
            r5 = this;
            r0 = r5
            com.google.android.exoplayer2.source.dash.manifest.DashManifest r0 = r0.manifest
            r8 = r0
            r0 = r8
            boolean r0 = r0.dynamic
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L15
            r0 = 0
            return r0
        L15:
            r0 = r5
            boolean r0 = r0.isWaitingForManifestRefresh
            if (r0 == 0) goto L1e
            r0 = 1
            return r0
        L1e:
            r0 = r5
            boolean r0 = r0.dynamicMediaPresentationEnded
            if (r0 == 0) goto L2b
        L25:
            r0 = 1
            r9 = r0
            goto L68
        L2b:
            r0 = r5
            r1 = r8
            long r1 = r1.publishTimeMs
            java.util.Map$Entry r0 = r0.ceilingExpiryEntryForPublishTime(r1)
            r8 = r0
            r0 = r10
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L68
            r0 = r10
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L68
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            r0.expiredManifestPublishTimeUs = r1
            r0 = r5
            r0.notifyManifestPublishTimeExpired()
            goto L25
        L68:
            r0 = r9
            if (r0 == 0) goto L71
            r0 = r5
            r0.maybeNotifyDashManifestRefreshNeeded()
        L71:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.maybeRefreshManifestBeforeLoadingNextChunk(long):boolean");
    }

    public boolean maybeRefreshManifestOnLoadingError(Chunk chunk) {
        if (!this.manifest.dynamic) {
            return false;
        }
        if (this.isWaitingForManifestRefresh) {
            return true;
        }
        long j = this.lastLoadedChunkEndTimeUs;
        if (!(j != C0515C.TIME_UNSET && j < chunk.startTimeUs)) {
            return false;
        }
        maybeNotifyDashManifestRefreshNeeded();
        return true;
    }

    public PlayerTrackEmsgHandler newPlayerTrackEmsgHandler() {
        return new PlayerTrackEmsgHandler(this, new SampleQueue(this.allocator));
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        long j = this.lastLoadedChunkEndTimeUs;
        if (j != C0515C.TIME_UNSET || chunk.endTimeUs > j) {
            this.lastLoadedChunkEndTimeUs = chunk.endTimeUs;
        }
    }

    public void release() {
        this.released = true;
        this.handler.removeCallbacksAndMessages(null);
    }

    public void updateManifest(DashManifest dashManifest) {
        this.isWaitingForManifestRefresh = false;
        this.expiredManifestPublishTimeUs = C0515C.TIME_UNSET;
        this.manifest = dashManifest;
        removePreviouslyExpiredManifestPublishTimeValues();
    }
}
