package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.v8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v8.class */
public final class C7586v8 implements AbstractC7573u8 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34734a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34735b;

    /* renamed from: c */
    public static final AbstractC7607x3<Long> f34736c;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34734a = c7581v3.m6834b("measurement.frontend.directly_maybe_log_error_events", false);
        f34735b = c7581v3.m6834b("measurement.upload.directly_maybe_log_error_events", true);
        f34736c = c7581v3.m6835a("measurement.id.frontend.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7573u8
    /* renamed from: b */
    public final boolean mo6829b() {
        return f34735b.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7573u8
    public final boolean zza() {
        return f34734a.m6771e().booleanValue();
    }
}
