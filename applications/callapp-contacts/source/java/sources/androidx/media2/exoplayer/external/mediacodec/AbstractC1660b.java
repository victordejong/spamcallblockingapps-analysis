package androidx.media2.exoplayer.external.mediacodec;

import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.mediacodec.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/b.class */
public interface AbstractC1660b {

    /* renamed from: a */
    public static final AbstractC1660b f6658a = new AbstractC1660b() { // from class: androidx.media2.exoplayer.external.mediacodec.b.1
        @Override // androidx.media2.exoplayer.external.mediacodec.AbstractC1660b
        /* renamed from: a */
        public final C1659a mo42415a() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m42452a();
        }

        @Override // androidx.media2.exoplayer.external.mediacodec.AbstractC1660b
        /* renamed from: a */
        public final List<C1659a> mo42414a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m42443a(str, z, z2);
        }
    };

    /* renamed from: a */
    C1659a mo42415a() throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    List<C1659a> mo42414a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException;
}
