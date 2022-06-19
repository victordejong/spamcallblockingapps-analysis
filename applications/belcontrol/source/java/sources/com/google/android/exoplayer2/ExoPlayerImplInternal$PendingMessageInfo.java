package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ExoPlayerImplInternal$PendingMessageInfo.class */
public final class ExoPlayerImplInternal$PendingMessageInfo implements Comparable<ExoPlayerImplInternal$PendingMessageInfo> {
    public final PlayerMessage message;
    public int resolvedPeriodIndex;
    public long resolvedPeriodTimeUs;
    public Object resolvedPeriodUid;

    public ExoPlayerImplInternal$PendingMessageInfo(PlayerMessage playerMessage) {
        this.message = playerMessage;
    }

    public int compareTo(ExoPlayerImplInternal$PendingMessageInfo exoPlayerImplInternal$PendingMessageInfo) {
        Object obj = this.resolvedPeriodUid;
        if ((obj == null) != (exoPlayerImplInternal$PendingMessageInfo.resolvedPeriodUid == null)) {
            int i = 1;
            if (obj != null) {
                i = -1;
            }
            return i;
        } else if (obj == null) {
            return 0;
        } else {
            int i2 = this.resolvedPeriodIndex - exoPlayerImplInternal$PendingMessageInfo.resolvedPeriodIndex;
            return i2 != 0 ? i2 : Util.compareLong(this.resolvedPeriodTimeUs, exoPlayerImplInternal$PendingMessageInfo.resolvedPeriodTimeUs);
        }
    }

    public void setResolvedPosition(int i, long j, Object obj) {
        this.resolvedPeriodIndex = i;
        this.resolvedPeriodTimeUs = j;
        this.resolvedPeriodUid = obj;
    }
}
