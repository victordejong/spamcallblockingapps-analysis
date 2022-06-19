package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.AbstractC10936f;
import com.google.android.exoplayer2.decoder.AbstractC10938g;
import com.google.android.exoplayer2.util.C11593a;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.text.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/c.class */
public abstract class AbstractC11370c extends AbstractC10938g<C11402h, AbstractC11405i, SubtitleDecoderException> implements AbstractC11386f {

    /* renamed from: a */
    private final String f37502a;

    public AbstractC11370c(String str) {
        super(new C11402h[2], new AbstractC11405i[2]);
        this.f37502a = str;
        m21911e();
    }

    /* renamed from: a */
    public SubtitleDecoderException mo20730a(C11402h c11402h, AbstractC11405i abstractC11405i, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) C11593a.m20020b(c11402h.f35336c);
            abstractC11405i.m20662a(c11402h.f35338e, mo20622a(byteBuffer.array(), byteBuffer.limit(), z), c11402h.f37633g);
            abstractC11405i.f35344a &= Integer.MAX_VALUE;
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10938g
    /* renamed from: a */
    public final /* synthetic */ SubtitleDecoderException mo20728a(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    /* renamed from: a */
    protected abstract AbstractC11379e mo20622a(byte[] bArr, int i, boolean z) throws SubtitleDecoderException;

    @Override // com.google.android.exoplayer2.text.AbstractC11386f
    /* renamed from: a */
    public final void mo20704a(long j) {
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10938g
    /* renamed from: g */
    public final /* synthetic */ C11402h mo20727g() {
        return new C11402h();
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10938g
    /* renamed from: h */
    public final /* synthetic */ AbstractC11405i mo20726h() {
        return new C11374d(new AbstractC10936f.AbstractC10937a() { // from class: com.google.android.exoplayer2.text._$$Lambda$c$MjAfje3fZVm34KjRCGu1_GKlZqc
            @Override // com.google.android.exoplayer2.decoder.AbstractC10936f.AbstractC10937a
            public final void releaseOutputBuffer(AbstractC10936f abstractC10936f) {
                AbstractC11370c.this.m21912a((AbstractC11370c) ((AbstractC11405i) abstractC10936f));
            }
        });
    }
}
