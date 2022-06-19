package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.db */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/db.class */
public final class C7342db implements AbstractC7314bb {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34406a;

    /* renamed from: b */
    public static final AbstractC7607x3<Long> f34407b;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34406a = c7581v3.m6834b("measurement.config.persist_last_modified", false);
        f34407b = c7581v3.m6835a("measurement.id.config.persist_last_modified", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7314bb
    /* renamed from: b */
    public final boolean mo7569b() {
        return f34406a.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7314bb
    public final boolean zza() {
        return true;
    }
}
