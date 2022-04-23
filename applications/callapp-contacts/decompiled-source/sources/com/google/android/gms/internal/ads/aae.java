package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aae.class */
public final class aae implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f22999a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23000b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ zzbbq f23001c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aae(zzbbq zzbbqVar, String str, String str2) {
        this.f23001c = zzbbqVar;
        this.f22999a = str;
        this.f23000b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f23001c.f28604a;
        if (aakVar != null) {
            aakVar2 = this.f23001c.f28604a;
            aakVar2.a(this.f22999a, this.f23000b);
        }
    }
}
