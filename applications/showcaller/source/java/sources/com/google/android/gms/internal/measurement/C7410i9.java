package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.i9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i9.class */
public final class C7410i9 implements AbstractC7396h9 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34538a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34539b;

    /* renamed from: c */
    public static final AbstractC7607x3<Boolean> f34540c;

    /* renamed from: d */
    public static final AbstractC7607x3<Long> f34541d;

    /* renamed from: e */
    public static final AbstractC7607x3<Long> f34542e;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34538a = c7581v3.m6834b("measurement.client.consent_state_v1", true);
        f34539b = c7581v3.m6834b("measurement.client.3p_consent_state_v1", true);
        f34540c = c7581v3.m6834b("measurement.service.consent_state_v1_W36", true);
        f34541d = c7581v3.m6835a("measurement.id.service.consent_state_v1_W36", 0L);
        f34542e = c7581v3.m6835a("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7396h9
    /* renamed from: a */
    public final long mo7297a() {
        return f34542e.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7396h9
    /* renamed from: b */
    public final boolean mo7296b() {
        return f34538a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7396h9
    /* renamed from: c */
    public final boolean mo7295c() {
        return f34539b.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7396h9
    /* renamed from: e */
    public final boolean mo7294e() {
        return f34540c.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7396h9
    public final boolean zza() {
        return true;
    }
}
