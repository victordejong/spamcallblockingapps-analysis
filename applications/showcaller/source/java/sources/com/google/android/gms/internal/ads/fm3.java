package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fm3.class */
public final class fm3 extends AbstractC6839p7 {

    /* renamed from: c */
    private static final Object f22982c = new Object();

    /* renamed from: d */
    private static final C6615j5 f22983d;

    /* renamed from: e */
    private final long f22984e;

    /* renamed from: f */
    private final long f22985f;

    /* renamed from: g */
    private final boolean f22986g;

    /* renamed from: h */
    private final C6615j5 f22987h;

    /* renamed from: i */
    private final C6503g5 f22988i;

    static {
        C6280a5 c6280a5 = new C6280a5();
        c6280a5.m16693a("SinglePeriodTimeline");
        c6280a5.m16692b(Uri.EMPTY);
        f22983d = c6280a5.m16691c();
    }

    public fm3(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, C6615j5 c6615j5, C6503g5 c6503g5) {
        this.f22984e = j4;
        this.f22985f = j5;
        this.f22986g = z;
        this.f22987h = c6615j5;
        this.f22988i = c6503g5;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: a */
    public final int mo11687a() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: f */
    public final C6802o7 mo12368f(int i, C6802o7 c6802o7, long j) {
        C7173y8.m8896c(i, 0, 1);
        c6802o7.m12716a(C6802o7.f27450a, this.f22987h, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.f22986g, false, this.f22988i, 0L, this.f22985f, 0, 0, 0L);
        return c6802o7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: g */
    public final int mo11686g() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: h */
    public final C6728m7 mo12367h(int i, C6728m7 c6728m7, boolean z) {
        C7173y8.m8896c(i, 0, 1);
        c6728m7.m13354a(null, z ? f22982c : null, 0, this.f22984e, 0L, t11.f29774a, false);
        return c6728m7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: i */
    public final int mo12366i(Object obj) {
        return f22982c.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: j */
    public final Object mo12365j(int i) {
        C7173y8.m8896c(i, 0, 1);
        return f22982c;
    }
}
