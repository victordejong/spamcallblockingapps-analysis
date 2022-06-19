package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.na */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/na.class */
public final class C7481na implements AbstractC7467ma {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34607a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34608b;

    /* renamed from: c */
    public static final AbstractC7607x3<Boolean> f34609c;

    /* renamed from: d */
    public static final AbstractC7607x3<Boolean> f34610d;

    /* renamed from: e */
    public static final AbstractC7607x3<Long> f34611e;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34607a = c7581v3.m6834b("measurement.sdk.collection.enable_extend_user_property_size", true);
        f34608b = c7581v3.m6834b("measurement.sdk.collection.last_deep_link_referrer2", true);
        f34609c = c7581v3.m6834b("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f34610d = c7581v3.m6834b("measurement.sdk.collection.last_gclid_from_referrer2", false);
        f34611e = c7581v3.m6835a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7467ma
    /* renamed from: b */
    public final boolean mo7070b() {
        return f34608b.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7467ma
    /* renamed from: c */
    public final boolean mo7069c() {
        return f34609c.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7467ma
    /* renamed from: e */
    public final boolean mo7068e() {
        return f34610d.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7467ma
    public final boolean zza() {
        return f34607a.m6771e().booleanValue();
    }
}
