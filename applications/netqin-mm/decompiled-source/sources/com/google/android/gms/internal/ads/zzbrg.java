package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrg.class */
public final class zzbrg implements zzeoy<String> {

    /* renamed from: a */
    public final zzbre f25399a;

    public zzbrg(zzbre zzbreVar) {
        this.f25399a = zzbreVar;
    }

    /* renamed from: a */
    public static zzbrg m15137a(zzbre zzbreVar) {
        return new zzbrg(zzbreVar);
    }

    /* renamed from: b */
    public static String m15136b(zzbre zzbreVar) {
        String d = zzbreVar.m15139d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15136b(this.f25399a);
    }
}
