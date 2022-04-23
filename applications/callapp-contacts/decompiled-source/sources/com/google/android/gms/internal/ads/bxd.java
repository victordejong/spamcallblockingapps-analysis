package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxd.class */
final class bxd extends ui {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ atj f25320a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ arj f25321b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ asp f25322c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ays f25323d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bxd(bwz bwzVar, atj atjVar, arj arjVar, asp aspVar, ays aysVar) {
        this.f25320a = atjVar;
        this.f25321b = arjVar;
        this.f25322c = aspVar;
        this.f25323d = aysVar;
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, zzavy zzavyVar) {
        this.f25323d.a(zzavyVar);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar) {
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void c(b bVar) {
        this.f25320a.zzvz();
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void d(b bVar) {
        this.f25323d.a();
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void e(b bVar) {
        this.f25320a.zza(zzl.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void f(b bVar) {
        this.f25321b.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void g(b bVar) {
        this.f25322c.b();
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void h(b bVar) throws RemoteException {
        this.f25322c.e();
    }
}
