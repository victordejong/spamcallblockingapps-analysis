package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lf.class */
public final class lf implements le {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29222a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29223b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Boolean> f29224c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<Boolean> f29225d;
    public static final ec<Long> e;

    static {
        ea eaVar = new ea(ds.a());
        f29222a = eaVar.a("measurement.sdk.collection.enable_extend_user_property_size", true);
        f29223b = eaVar.a("measurement.sdk.collection.last_deep_link_referrer2", true);
        f29224c = eaVar.a("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f29225d = eaVar.a("measurement.sdk.collection.last_gclid_from_referrer2", false);
        e = eaVar.a("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.le
    public final boolean a() {
        return f29222a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.le
    public final boolean b() {
        return f29223b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.le
    public final boolean c() {
        return f29224c.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.le
    public final boolean d() {
        return f29225d.b().booleanValue();
    }
}
