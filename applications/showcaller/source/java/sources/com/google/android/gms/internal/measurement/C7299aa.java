package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.aa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aa.class */
public final class C7299aa implements AbstractC7639z9 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34336a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34337b;

    /* renamed from: c */
    public static final AbstractC7607x3<Boolean> f34338c;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34336a = c7581v3.m6834b("measurement.client.sessions.check_on_reset_and_enable2", true);
        f34337b = c7581v3.m6834b("measurement.client.sessions.check_on_startup", true);
        f34338c = c7581v3.m6834b("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7639z9
    /* renamed from: b */
    public final boolean mo6631b() {
        return f34336a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7639z9
    public final boolean zza() {
        return true;
    }
}
