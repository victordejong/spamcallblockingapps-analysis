package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lv.class */
public final class lv implements lt {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29247a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Long> f29248b;

    static {
        ea eaVar = new ea(ds.a());
        f29247a = eaVar.a("measurement.config.persist_last_modified", false);
        f29248b = eaVar.a("measurement.id.config.persist_last_modified", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.lt
    public final boolean a() {
        return f29247a.b().booleanValue();
    }
}
