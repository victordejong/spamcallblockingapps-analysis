package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ll.class */
public final class ll implements lk {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29234a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29235b;

    static {
        ea eaVar = new ea(ds.a());
        f29234a = eaVar.a("measurement.sdk.screen.manual_screen_view_logging", true);
        f29235b = eaVar.a("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.lk
    public final boolean a() {
        return f29234a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.lk
    public final boolean b() {
        return f29235b.b().booleanValue();
    }
}
