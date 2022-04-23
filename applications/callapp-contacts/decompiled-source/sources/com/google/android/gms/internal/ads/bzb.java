package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzb.class */
public final class bzb implements cal<alq> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ byy f25441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bzb(byy byyVar) {
        this.f25441a = byyVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f25441a) {
            this.f25441a.g = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(alq alqVar) {
        alq alqVar2;
        alq alqVar3;
        alq alqVar4;
        alq alqVar5 = alqVar;
        synchronized (this.f25441a) {
            alqVar2 = this.f25441a.g;
            if (alqVar2 != null) {
                alqVar4 = this.f25441a.g;
                alqVar4.a();
            }
            this.f25441a.g = alqVar5;
            alqVar3 = this.f25441a.g;
            alqVar3.h();
        }
    }
}
