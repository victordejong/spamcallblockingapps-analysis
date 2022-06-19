package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ta */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ta.class */
public final class C7562ta implements AbstractC7549sa {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34697a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34698b;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34697a = c7581v3.m6834b("measurement.sdk.screen.manual_screen_view_logging", true);
        f34698b = c7581v3.m6834b("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7549sa
    /* renamed from: b */
    public final boolean mo6899b() {
        return f34697a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7549sa
    /* renamed from: c */
    public final boolean mo6898c() {
        return f34698b.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7549sa
    public final boolean zza() {
        return true;
    }
}
