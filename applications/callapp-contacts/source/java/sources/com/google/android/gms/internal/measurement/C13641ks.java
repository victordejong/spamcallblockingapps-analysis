package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ks */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ks.class */
public final class C13641ks implements AbstractC13640kr {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50963a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50964b;

    /* renamed from: c */
    public static final AbstractC13463ec<Boolean> f50965c;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50963a = c13461ea.m12907a("measurement.client.sessions.check_on_reset_and_enable2", true);
        f50964b = c13461ea.m12907a("measurement.client.sessions.check_on_startup", true);
        f50965c = c13461ea.m12907a("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13640kr
    /* renamed from: a */
    public final boolean mo12375a() {
        return f50963a.m12901b().booleanValue();
    }
}
