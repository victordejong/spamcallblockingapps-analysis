package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bxd.class */
final class bxd extends AbstractBinderC12959ui {

    /* renamed from: a */
    private final /* synthetic */ atj f45008a;

    /* renamed from: b */
    private final /* synthetic */ arj f45009b;

    /* renamed from: c */
    private final /* synthetic */ asp f45010c;

    /* renamed from: d */
    private final /* synthetic */ ays f45011d;

    public bxd(bwz bwzVar, atj atjVar, arj arjVar, asp aspVar, ays aysVar) {
        this.f45008a = atjVar;
        this.f45009b = arjVar;
        this.f45010c = aspVar;
        this.f45011d = aysVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14117a(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14116a(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14115a(AbstractC12126b abstractC12126b, int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14114a(AbstractC12126b abstractC12126b, zzavy zzavyVar) {
        this.f45011d.mo14603a(zzavyVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: b */
    public final void mo14113b(AbstractC12126b abstractC12126b) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: b */
    public final void mo14112b(AbstractC12126b abstractC12126b, int i) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: c */
    public final void mo14111c(AbstractC12126b abstractC12126b) {
        this.f45008a.zzvz();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: d */
    public final void mo14110d(AbstractC12126b abstractC12126b) {
        this.f45011d.mo14604a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: e */
    public final void mo14109e(AbstractC12126b abstractC12126b) {
        this.f45008a.zza(zzl.OTHER);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: f */
    public final void mo14108f(AbstractC12126b abstractC12126b) {
        this.f45009b.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: g */
    public final void mo14107g(AbstractC12126b abstractC12126b) {
        this.f45010c.m18426b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: h */
    public final void mo14106h(AbstractC12126b abstractC12126b) throws RemoteException {
        this.f45010c.m18423e();
    }
}
