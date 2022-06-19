package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.lf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lf.class */
public final class C13655lf implements AbstractC13654le {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50981a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50982b;

    /* renamed from: c */
    public static final AbstractC13463ec<Boolean> f50983c;

    /* renamed from: d */
    public static final AbstractC13463ec<Boolean> f50984d;

    /* renamed from: e */
    public static final AbstractC13463ec<Long> f50985e;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50981a = c13461ea.m12907a("measurement.sdk.collection.enable_extend_user_property_size", true);
        f50982b = c13461ea.m12907a("measurement.sdk.collection.last_deep_link_referrer2", true);
        f50983c = c13461ea.m12907a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f50984d = c13461ea.m12907a("measurement.sdk.collection.last_gclid_from_referrer2", false);
        f50985e = c13461ea.m12909a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13654le
    /* renamed from: a */
    public final boolean mo12359a() {
        return f50981a.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13654le
    /* renamed from: b */
    public final boolean mo12358b() {
        return f50982b.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13654le
    /* renamed from: c */
    public final boolean mo12357c() {
        return f50983c.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13654le
    /* renamed from: d */
    public final boolean mo12356d() {
        return f50984d.m12901b().booleanValue();
    }
}
