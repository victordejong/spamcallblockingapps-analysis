package androidx.media2.exoplayer.external.mediacodec;

import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$$Lambda$1.class */
public final /* synthetic */ class MediaCodecUtil$$Lambda$1 implements MediaCodecUtil.ScoreProvider {
    public static final MediaCodecUtil.ScoreProvider $instance = new MediaCodecUtil$$Lambda$1();

    @Override // androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.ScoreProvider
    public int getScore(Object obj) {
        return MediaCodecUtil.lambda$applyWorkarounds$1$MediaCodecUtil((MediaCodecInfo) obj);
    }
}
