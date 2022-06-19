package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.s8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s8.class */
public final class C7547s8 implements AbstractC7534r8 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34682a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34683b;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34682a = c7581v3.m6834b("measurement.androidId.delete_feature", true);
        f34683b = c7581v3.m6834b("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7534r8
    public final boolean zza() {
        return f34682a.m6771e().booleanValue();
    }
}
