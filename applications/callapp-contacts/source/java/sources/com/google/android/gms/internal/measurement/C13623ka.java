package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ka */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ka.class */
public final class C13623ka implements AbstractC13621jz {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50938a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50939b;

    /* renamed from: c */
    public static final AbstractC13463ec<Boolean> f50940c;

    /* renamed from: d */
    public static final AbstractC13463ec<Long> f50941d;

    /* renamed from: e */
    public static final AbstractC13463ec<Long> f50942e;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50938a = c13461ea.m12907a("measurement.client.consent_state_v1", true);
        f50939b = c13461ea.m12907a("measurement.client.3p_consent_state_v1", true);
        f50940c = c13461ea.m12907a("measurement.service.consent_state_v1_W36", true);
        f50941d = c13461ea.m12909a("measurement.id.service.consent_state_v1_W36", 0L);
        f50942e = c13461ea.m12909a("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13621jz
    /* renamed from: a */
    public final boolean mo12405a() {
        return f50938a.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13621jz
    /* renamed from: b */
    public final boolean mo12404b() {
        return f50939b.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13621jz
    /* renamed from: c */
    public final boolean mo12403c() {
        return f50940c.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13621jz
    /* renamed from: d */
    public final long mo12402d() {
        return f50942e.m12901b().longValue();
    }
}
