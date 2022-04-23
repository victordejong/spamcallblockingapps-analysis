package androidx.media2.exoplayer.external.mediacodec;

import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/b.class */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3440a = new b() { // from class: androidx.media2.exoplayer.external.mediacodec.b.1
        @Override // androidx.media2.exoplayer.external.mediacodec.b
        public final a a() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.a();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.b
        public final List<a> a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.a(str, z, z2);
        }
    };

    a a() throws MediaCodecUtil.DecoderQueryException;

    List<a> a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException;
}
