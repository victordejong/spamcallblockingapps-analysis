package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ka.class */
public final class ka implements jz {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29180a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29181b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Boolean> f29182c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<Long> f29183d;
    public static final ec<Long> e;

    static {
        ea eaVar = new ea(ds.a());
        f29180a = eaVar.a("measurement.client.consent_state_v1", true);
        f29181b = eaVar.a("measurement.client.3p_consent_state_v1", true);
        f29182c = eaVar.a("measurement.service.consent_state_v1_W36", true);
        f29183d = eaVar.a("measurement.id.service.consent_state_v1_W36", 0L);
        e = eaVar.a("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.jz
    public final boolean a() {
        return f29180a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.jz
    public final boolean b() {
        return f29181b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.jz
    public final boolean c() {
        return f29182c.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.jz
    public final long d() {
        return e.b().longValue();
    }
}
