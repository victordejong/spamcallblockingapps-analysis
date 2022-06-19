package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.kl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/kl.class */
public final class C4080kl implements AbstractC4077ki {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18441a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18442b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18443c;

    /* renamed from: d */
    private static final AbstractC3821bj<Boolean> f18444d;

    /* renamed from: e */
    private static final AbstractC3821bj<Long> f18445e;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18441a = c3827bp.m5858a("measurement.sdk.collection.enable_extend_user_property_size", true);
        f18442b = c3827bp.m5858a("measurement.sdk.collection.last_deep_link_referrer2", true);
        f18443c = c3827bp.m5858a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f18444d = c3827bp.m5858a("measurement.sdk.collection.last_gclid_from_referrer2", false);
        f18445e = c3827bp.m5860a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4077ki
    /* renamed from: a */
    public final boolean mo5005a() {
        return f18441a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4077ki
    /* renamed from: b */
    public final boolean mo5004b() {
        return f18442b.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4077ki
    /* renamed from: c */
    public final boolean mo5003c() {
        return f18443c.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4077ki
    /* renamed from: d */
    public final boolean mo5002d() {
        return f18444d.m5866c().booleanValue();
    }
}
