package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bck.class */
public final class bck implements eeg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f24169a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ bcf f24170b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bck(bcf bcfVar, String str) {
        this.f24170b = bcfVar;
        this.f24169a = str;
    }

    @Override // com.google.android.gms.internal.ads.eeg
    public final void a(eeh eehVar) {
        if (eehVar.j) {
            this.f24170b.r.put(this.f24169a, Boolean.TRUE);
            bcf bcfVar = this.f24170b;
            bcfVar.a(bcfVar.p.c(), this.f24170b.p.e(), this.f24170b.p.f(), true);
        }
    }
}
