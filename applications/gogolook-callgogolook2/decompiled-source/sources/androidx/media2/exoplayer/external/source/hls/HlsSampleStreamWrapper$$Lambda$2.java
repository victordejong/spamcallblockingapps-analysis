package androidx.media2.exoplayer.external.source.hls;

import androidx.media2.exoplayer.external.source.hls.HlsSampleStreamWrapper;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$$Lambda$2.class */
public final /* synthetic */ class HlsSampleStreamWrapper$$Lambda$2 implements Runnable {
    public final HlsSampleStreamWrapper.Callback arg$1;

    public HlsSampleStreamWrapper$$Lambda$2(HlsSampleStreamWrapper.Callback callback) {
        this.arg$1 = callback;
    }

    public static Runnable get$Lambda(HlsSampleStreamWrapper.Callback callback) {
        return new HlsSampleStreamWrapper$$Lambda$2(callback);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.arg$1.onPrepared();
    }
}
