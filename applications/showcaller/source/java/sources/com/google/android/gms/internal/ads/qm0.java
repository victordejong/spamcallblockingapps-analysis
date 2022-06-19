package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qm0.class */
public final class qm0 extends km0 implements AbstractC6330bi<AbstractC6886qh> {

    /* renamed from: g */
    private String f28559g;

    /* renamed from: h */
    private final jk0 f28560h;

    /* renamed from: i */
    private boolean f28561i;

    /* renamed from: l */
    private ByteBuffer f28564l;

    /* renamed from: m */
    private boolean f28565m;

    /* renamed from: o */
    private final String f28567o;

    /* renamed from: p */
    private final int f28568p;

    /* renamed from: q */
    private boolean f28569q;

    /* renamed from: j */
    private final pm0 f28562j = new pm0();

    /* renamed from: k */
    private final ul0 f28563k = new ul0();

    /* renamed from: n */
    private final Object f28566n = new Object();

    public qm0(kk0 kk0Var, jk0 jk0Var) {
        super(kk0Var);
        this.f28560h = jk0Var;
        this.f28567o = kk0Var != null ? kk0Var.mo7898m() : "";
        this.f28568p = kk0Var != null ? kk0Var.mo7900l() : 0;
    }

    /* renamed from: A */
    protected static final String m11856A(String str) {
        String valueOf = String.valueOf(xh0.m9174d(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }

    /* renamed from: B */
    private final void m11855B() {
        int m12213a = (int) this.f28562j.m12213a();
        int m10318a = (int) this.f28563k.m10318a(this.f28564l);
        int position = this.f28564l.position();
        int round = Math.round(m10318a * (position / m12213a));
        boolean z = round > 0;
        int m16582P = ak0.m16582P();
        int m16581Q = ak0.m16581Q();
        String str = this.f28559g;
        m13855q(str, m11856A(str), position, m12213a, round, m10318a, z, m16582P, m16581Q);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6330bi
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void mo11400f(AbstractC6886qh abstractC6886qh, C6923rh c6923rh) {
        this.f28562j.m12212b((C6997th) abstractC6886qh);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x014e, code lost:
        r12.f28569q = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0154, code lost:
        r16 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0156, code lost:
        m13853s(r13, r0, (int) r12.f28563k.m10318a(r12.f28564l));
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01b6, code lost:
        return true;
     */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:150:? -> B:134:0x02c0). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo10625h(java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qm0.mo10625h(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.km0
    /* renamed from: o */
    public final void mo10618o() {
        this.f28561i = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6330bi
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ void mo11386w(AbstractC6886qh abstractC6886qh, int i) {
    }

    /* renamed from: x */
    public final String m11854x() {
        return this.f28559g;
    }

    /* renamed from: y */
    public final boolean m11853y() {
        return this.f28569q;
    }

    /* renamed from: z */
    public final ByteBuffer m11852z() {
        synchronized (this.f28566n) {
            ByteBuffer byteBuffer = this.f28564l;
            if (byteBuffer != null && !this.f28565m) {
                byteBuffer.flip();
                this.f28565m = true;
            }
            this.f28561i = true;
        }
        return this.f28564l;
    }
}
