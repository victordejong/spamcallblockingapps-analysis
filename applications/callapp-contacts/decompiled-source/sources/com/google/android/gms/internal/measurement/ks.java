package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ks.class */
public final class ks implements kr {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29204a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29205b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Boolean> f29206c;

    static {
        ea eaVar = new ea(ds.a());
        f29204a = eaVar.a("measurement.client.sessions.check_on_reset_and_enable2", true);
        f29205b = eaVar.a("measurement.client.sessions.check_on_startup", true);
        f29206c = eaVar.a("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.kr
    public final boolean a() {
        return f29204a.b().booleanValue();
    }
}
