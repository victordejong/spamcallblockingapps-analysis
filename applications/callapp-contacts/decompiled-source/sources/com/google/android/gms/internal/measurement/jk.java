package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jk.class */
public final class jk implements jj {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29155a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29156b;

    static {
        ea eaVar = new ea(ds.a());
        f29155a = eaVar.a("measurement.androidId.delete_feature", true);
        f29156b = eaVar.a("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.jj
    public final boolean a() {
        return f29155a.b().booleanValue();
    }
}
