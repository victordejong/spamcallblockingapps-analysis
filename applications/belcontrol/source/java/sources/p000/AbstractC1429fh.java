package p000;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
/* renamed from: fh */
/* loaded from: classes-dex2jar.jar:fh.class */
public interface AbstractC1429fh {

    /* renamed from: fh$b */
    /* loaded from: classes-dex2jar.jar:fh$b.class */
    public interface AbstractC1430b {
        /* renamed from: a */
        void m1752a(C1362eh c1362eh);

        /* renamed from: d */
        void m1751d(ph phVar, Object obj, int i);

        /* renamed from: n */
        void m1750n(C1428fg c1428fg);

        void onLoadingChanged(boolean z);

        void onPlayerStateChanged(boolean z, int i);

        void onPositionDiscontinuity(int i);

        void onSeekProcessed();

        /* renamed from: s */
        void m1749s(TrackGroupArray trackGroupArray, zr zrVar);
    }

    /* renamed from: a */
    long m1753a();

    long getBufferedPosition();

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    long getCurrentPosition();

    ph getCurrentTimeline();

    zr getCurrentTrackSelections();

    int getCurrentWindowIndex();

    long getDuration();

    void seekTo(int i, long j);
}
