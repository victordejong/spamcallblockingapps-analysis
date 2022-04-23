package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cjd.class */
public final class cjd implements dsi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final cja f25932a;

    public cjd(cja cjaVar) {
        this.f25932a = cjaVar;
    }

    public static String a(cja cjaVar) {
        return (String) dso.b(cjaVar.f25926a.packageName);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25932a);
    }
}
