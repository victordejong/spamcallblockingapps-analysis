package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.r9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r9.class */
public final class C7535r9 implements AbstractC7522q9 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34672a = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement")).m6834b("measurement.client.consent.suppress_1p_in_ga4f_install", true);

    @Override // com.google.android.gms.internal.measurement.AbstractC7522q9
    /* renamed from: b */
    public final boolean mo6959b() {
        return f34672a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7522q9
    public final boolean zza() {
        return true;
    }
}
