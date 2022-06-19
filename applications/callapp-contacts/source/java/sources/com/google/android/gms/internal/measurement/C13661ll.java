package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ll */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ll.class */
public final class C13661ll implements AbstractC13660lk {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50995a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50996b;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50995a = c13461ea.m12907a("measurement.sdk.screen.manual_screen_view_logging", true);
        f50996b = c13461ea.m12907a("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13660lk
    /* renamed from: a */
    public final boolean mo12346a() {
        return f50995a.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13660lk
    /* renamed from: b */
    public final boolean mo12345b() {
        return f50996b.m12901b().booleanValue();
    }
}
