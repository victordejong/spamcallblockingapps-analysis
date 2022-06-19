package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alk.class */
public final class alk extends ega {

    /* renamed from: a */
    private final all f42353a;

    /* renamed from: b */
    private final ekw f42354b;

    /* renamed from: c */
    private final ckb f42355c;

    /* renamed from: d */
    private boolean f42356d = false;

    public alk(all allVar, ekw ekwVar, ckb ckbVar) {
        this.f42353a = allVar;
        this.f42354b = ekwVar;
        this.f42355c = ckbVar;
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final ekw mo15080a() {
        return this.f42354b;
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15079a(AbstractC12126b abstractC12126b, egi egiVar) {
        try {
            this.f42355c.f45952b.set(egiVar);
            this.f42353a.m18582a((Activity) BinderC12129d.m18980a(abstractC12126b), egiVar, this.f42356d);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15078a(egh eghVar) {
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15077a(emd emdVar) {
        C12045o.m19155b("setOnPaidEventListener must be called on the main UI thread.");
        ckb ckbVar = this.f42355c;
        if (ckbVar != null) {
            ckbVar.f45955e.set(emdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: a */
    public final void mo15076a(boolean z) {
        this.f42356d = z;
    }

    @Override // com.google.android.gms.internal.ads.egb
    /* renamed from: b */
    public final emj mo15075b() {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue()) {
            return null;
        }
        return this.f42353a.f42490l;
    }
}
