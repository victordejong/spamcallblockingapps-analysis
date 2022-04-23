package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dam.class */
public final class dam implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cyt f26673a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dak f26674b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dam(dak dakVar, cyt cytVar) {
        this.f26674b = dakVar;
        this.f26673a = cytVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dak.a(this.f26674b, this.f26673a);
    }
}
