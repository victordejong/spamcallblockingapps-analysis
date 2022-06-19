package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fk3.class */
public final class fk3 extends ak3 {

    /* renamed from: d */
    public static final Object f22941d = new Object();

    /* renamed from: e */
    private final Object f22942e;

    /* renamed from: f */
    private final Object f22943f;

    private fk3(AbstractC6839p7 abstractC6839p7, Object obj, Object obj2) {
        super(abstractC6839p7);
        this.f22942e = obj;
        this.f22943f = obj2;
    }

    /* renamed from: p */
    public static /* synthetic */ Object m15154p(fk3 fk3Var) {
        return fk3Var.f22943f;
    }

    /* renamed from: q */
    public static fk3 m15153q(C6615j5 c6615j5) {
        return new fk3(new hk3(c6615j5), C6802o7.f27450a, f22941d);
    }

    /* renamed from: r */
    public static fk3 m15152r(AbstractC6839p7 abstractC6839p7, Object obj, Object obj2) {
        return new fk3(abstractC6839p7, obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: f */
    public final C6802o7 mo12368f(int i, C6802o7 c6802o7, long j) {
        this.f19985c.mo12368f(i, c6802o7, j);
        if (C7101wa.m9720H(c6802o7.f27454e, this.f22942e)) {
            c6802o7.f27454e = C6802o7.f27450a;
        }
        return c6802o7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: h */
    public final C6728m7 mo12367h(int i, C6728m7 c6728m7, boolean z) {
        this.f19985c.mo12367h(i, c6728m7, z);
        if (C7101wa.m9720H(c6728m7.f26452c, this.f22943f) && z) {
            c6728m7.f26452c = f22941d;
        }
        return c6728m7;
    }

    @Override // com.google.android.gms.internal.ads.ak3, com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: i */
    public final int mo12366i(Object obj) {
        AbstractC6839p7 abstractC6839p7 = this.f19985c;
        Object obj2 = obj;
        if (f22941d.equals(obj)) {
            obj2 = this.f22943f;
            if (obj2 == null) {
                obj2 = obj;
            }
        }
        return abstractC6839p7.mo12366i(obj2);
    }

    @Override // com.google.android.gms.internal.ads.ak3, com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: j */
    public final Object mo12365j(int i) {
        Object mo12365j = this.f19985c.mo12365j(i);
        Object obj = mo12365j;
        if (C7101wa.m9720H(mo12365j, this.f22943f)) {
            obj = f22941d;
        }
        return obj;
    }

    /* renamed from: s */
    public final fk3 m15151s(AbstractC6839p7 abstractC6839p7) {
        return new fk3(abstractC6839p7, this.f22942e, this.f22943f);
    }
}
