package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/mn.class */
public final class mn implements mm {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29271a = new ea(ds.a()).a("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.mm
    public final boolean a() {
        return f29271a.b().booleanValue();
    }
}
