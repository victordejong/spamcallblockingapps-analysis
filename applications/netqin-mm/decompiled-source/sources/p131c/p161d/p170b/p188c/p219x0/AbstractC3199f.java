package p131c.p161d.p170b.p188c.p219x0;

import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.util.List;
/* renamed from: c.d.b.c.x0.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/x0/f.class */
public interface AbstractC3199f {

    /* renamed from: a */
    public static final AbstractC3199f f11807a = new C3200a();

    /* renamed from: c.d.b.c.x0.f$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/x0/f$a.class */
    public static final class C3200a implements AbstractC3199f {
        @Override // p131c.p161d.p170b.p188c.p219x0.AbstractC3199f
        /* renamed from: a */
        public C3198e mo27505a() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m18556a();
        }

        @Override // p131c.p161d.p170b.p188c.p219x0.AbstractC3199f
        /* renamed from: a */
        public List<C3198e> mo27504a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.m18536b(str, z, z2);
        }
    }

    /* renamed from: a */
    C3198e mo27505a() throws MediaCodecUtil.DecoderQueryException;

    /* renamed from: a */
    List<C3198e> mo27504a(String str, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException;
}
