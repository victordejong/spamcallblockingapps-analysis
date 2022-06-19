package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.qa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/qa.class */
public final class C7523qa implements AbstractC7509pa {

    /* renamed from: a */
    public static final AbstractC7607x3<Long> f34649a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34650b;

    /* renamed from: c */
    public static final AbstractC7607x3<Boolean> f34651c;

    /* renamed from: d */
    public static final AbstractC7607x3<Boolean> f34652d;

    /* renamed from: e */
    public static final AbstractC7607x3<Long> f34653e;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34649a = c7581v3.m6835a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f34650b = c7581v3.m6834b("measurement.lifecycle.app_backgrounded_engagement", false);
        f34651c = c7581v3.m6834b("measurement.lifecycle.app_backgrounded_tracking", true);
        f34652d = c7581v3.m6834b("measurement.lifecycle.app_in_background_parameter", false);
        f34653e = c7581v3.m6835a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7509pa
    /* renamed from: b */
    public final boolean mo6992b() {
        return f34652d.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7509pa
    public final boolean zza() {
        return f34650b.m6771e().booleanValue();
    }
}
