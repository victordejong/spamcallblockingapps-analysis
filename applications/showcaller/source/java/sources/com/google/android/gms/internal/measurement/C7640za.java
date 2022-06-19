package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.za */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/za.class */
public final class C7640za implements AbstractC7627ya {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34809a;

    /* renamed from: b */
    public static final AbstractC7607x3<Long> f34810b;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34809a = c7581v3.m6834b("measurement.validation.internal_limits_internal_event_params", false);
        f34810b = c7581v3.m6835a("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7627ya
    public final boolean zza() {
        return f34809a.m6771e().booleanValue();
    }
}
