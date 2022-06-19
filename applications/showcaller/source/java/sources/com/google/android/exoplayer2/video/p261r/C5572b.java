package com.google.android.exoplayer2.video.p261r;

import com.google.android.exoplayer2.AbstractC5415u;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.video.r.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/r/b.class */
public class C5572b extends AbstractC5415u {

    /* renamed from: o */
    private final C4858e f18096o = new C4858e(1);

    /* renamed from: p */
    private final C5536v f18097p = new C5536v();

    /* renamed from: q */
    private long f18098q;

    /* renamed from: r */
    private AbstractC5571a f18099r;

    /* renamed from: s */
    private long f18100s;

    public C5572b() {
        super(5);
    }

    /* renamed from: Q */
    private float[] m18509Q(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f18097p.m18682K(byteBuffer.array(), byteBuffer.limit());
        this.f18097p.m18680M(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.f18097p.m18665n());
        }
        return fArr;
    }

    /* renamed from: R */
    private void m18508R() {
        this.f18100s = 0L;
        AbstractC5571a abstractC5571a = this.f18099r;
        if (abstractC5571a != null) {
            abstractC5571a.mo18513b();
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: G */
    protected void mo18512G() {
        m18508R();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: I */
    protected void mo18511I(long j, boolean z) {
        m18508R();
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u
    /* renamed from: M */
    public void mo18510M(Format[] formatArr, long j) {
        this.f18098q = j;
    }

    @Override // com.google.android.exoplayer2.AbstractC5315t0
    /* renamed from: b */
    public int mo18507b(Format format) {
        return "application/x-camera-motion".equals(format.f14461l) ? C5191s0.m20194a(4) : C5191s0.m20194a(0);
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: c */
    public boolean mo18506c() {
        return mo19257j();
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: e */
    public boolean mo18505e() {
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC5187r0
    /* renamed from: q */
    public void mo18504q(long j, long j2) {
        float[] m18509Q;
        while (!mo19257j() && this.f18100s < 100000 + j) {
            this.f18096o.clear();
            if (m19264N(m19269B(), this.f18096o, false) != -4 || this.f18096o.isEndOfStream()) {
                return;
            }
            this.f18096o.m21427i();
            C4858e c4858e = this.f18096o;
            this.f18100s = c4858e.f14776f;
            if (this.f18099r != null && (m18509Q = m18509Q((ByteBuffer) C5515h0.m18833g(c4858e.f14775e))) != null) {
                ((AbstractC5571a) C5515h0.m18833g(this.f18099r)).mo18514a(this.f18100s - this.f18098q, m18509Q);
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5415u, com.google.android.exoplayer2.C5179p0.AbstractC5181b
    /* renamed from: r */
    public void mo18503r(int i, Object obj) {
        if (i == 7) {
            this.f18099r = (AbstractC5571a) obj;
        } else {
            super.mo18503r(i, obj);
        }
    }
}
