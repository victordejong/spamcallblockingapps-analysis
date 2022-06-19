package com.google.android.exoplayer2.source.chunk;

import android.util.Log;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.HttpDataSource;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/chunk/ChunkedTrackBlacklistUtil.class */
public final class ChunkedTrackBlacklistUtil {
    public static final long DEFAULT_TRACK_BLACKLIST_MS = 60000;
    private static final String TAG = "ChunkedTrackBlacklist";

    private ChunkedTrackBlacklistUtil() {
    }

    public static boolean maybeBlacklistTrack(TrackSelection trackSelection, int i, Exception exc) {
        return maybeBlacklistTrack(trackSelection, i, exc, DEFAULT_TRACK_BLACKLIST_MS);
    }

    public static boolean maybeBlacklistTrack(TrackSelection trackSelection, int i, Exception exc, long j) {
        String str;
        if (shouldBlacklist(exc)) {
            boolean blacklist = trackSelection.blacklist(i, j);
            int i2 = ((HttpDataSource.InvalidResponseCodeException) exc).responseCode;
            if (blacklist) {
                str = "Blacklisted: duration=" + j + ", responseCode=" + i2 + ", format=" + trackSelection.getFormat(i);
            } else {
                str = "Blacklisting failed (cannot blacklist last enabled track): responseCode=" + i2 + ", format=" + trackSelection.getFormat(i);
            }
            Log.w(TAG, str);
            return blacklist;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
        if (r0 == 410) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean shouldBlacklist(java.lang.Exception r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L2a
            r0 = r3
            com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException r0 = (com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) r0
            int r0 = r0.responseCode
            r7 = r0
            r0 = r7
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L28
            r0 = r5
            r6 = r0
            r0 = r7
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 != r1) goto L2a
        L28:
            r0 = 1
            r6 = r0
        L2a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil.shouldBlacklist(java.lang.Exception):boolean");
    }
}
