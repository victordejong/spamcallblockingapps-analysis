package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/li.class */
public final class li implements lh {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Long> f29228a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29229b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Boolean> f29230c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<Boolean> f29231d;
    public static final ec<Long> e;

    static {
        ea eaVar = new ea(ds.a());
        f29228a = eaVar.a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f29229b = eaVar.a("measurement.lifecycle.app_backgrounded_engagement", false);
        f29230c = eaVar.a("measurement.lifecycle.app_backgrounded_tracking", true);
        f29231d = eaVar.a("measurement.lifecycle.app_in_background_parameter", false);
        e = eaVar.a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.lh
    public final boolean a() {
        return f29229b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.lh
    public final boolean b() {
        return f29231d.b().booleanValue();
    }
}
