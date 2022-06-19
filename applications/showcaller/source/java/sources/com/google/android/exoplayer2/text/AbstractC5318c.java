package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.p242b1.AbstractC4860g;
import com.google.android.exoplayer2.util.C5508e;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.text.c */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/c.class */
public abstract class AbstractC5318c extends AbstractC4860g<C5324h, AbstractC5325i, SubtitleDecoderException> implements AbstractC5321f {

    /* renamed from: n */
    private final String f16918n;

    public AbstractC5318c(String str) {
        super(new C5324h[2], new AbstractC5325i[2]);
        this.f16918n = str;
        m21410v(1024);
    }

    /* renamed from: A */
    public final SubtitleDecoderException mo19684k(C5324h c5324h, AbstractC5325i abstractC5325i, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c5324h.f14775e);
            abstractC5325i.m19678g(c5324h.f14776f, mo19377z(byteBuffer.array(), byteBuffer.limit(), z), c5324h.f16921i);
            abstractC5325i.clearFlag(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    /* renamed from: B */
    public final void m19688B(AbstractC5325i abstractC5325i) {
        super.m21413s(abstractC5325i);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5321f
    /* renamed from: a */
    public void mo19590a(long j) {
    }

    /* renamed from: w */
    public final C5324h mo19687h() {
        return new C5324h();
    }

    /* renamed from: x */
    public final AbstractC5325i mo19686i() {
        return new C5319d(this);
    }

    /* renamed from: y */
    public final SubtitleDecoderException mo19685j(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    /* renamed from: z */
    protected abstract AbstractC5320e mo19377z(byte[] bArr, int i, boolean z);
}
