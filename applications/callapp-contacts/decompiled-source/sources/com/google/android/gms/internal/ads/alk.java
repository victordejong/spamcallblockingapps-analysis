package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/alk.class */
public final class alk extends ega {

    /* renamed from: a  reason: collision with root package name */
    private final all f23525a;

    /* renamed from: b  reason: collision with root package name */
    private final ekw f23526b;

    /* renamed from: c  reason: collision with root package name */
    private final ckb f23527c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f23528d = false;

    public alk(all allVar, ekw ekwVar, ckb ckbVar) {
        this.f23525a = allVar;
        this.f23526b = ekwVar;
        this.f23527c = ckbVar;
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final ekw a() {
        return this.f23526b;
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(b bVar, egi egiVar) {
        try {
            this.f23527c.f25970b.set(egiVar);
            this.f23525a.a((Activity) d.a(bVar), egiVar, this.f23528d);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(egh eghVar) {
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(emd emdVar) {
        o.b("setOnPaidEventListener must be called on the main UI thread.");
        ckb ckbVar = this.f23527c;
        if (ckbVar != null) {
            ckbVar.e.set(emdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final void a(boolean z) {
        this.f23528d = z;
    }

    @Override // com.google.android.gms.internal.ads.egb
    public final emj b() {
        if (!((Boolean) ekb.e().a(aq.em)).booleanValue()) {
            return null;
        }
        return this.f23525a.l;
    }
}
