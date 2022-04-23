package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lu.class */
public final class lu implements zr {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zp f28172a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ kv f28173b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lu(ls lsVar, zp zpVar, kv kvVar) {
        this.f28172a = zpVar;
        this.f28173b = kvVar;
    }

    @Override // com.google.android.gms.internal.ads.zr
    public final void a() {
        this.f28172a.setException(new zzamh("Unable to obtain a JavascriptEngine."));
        this.f28173b.a();
    }
}
