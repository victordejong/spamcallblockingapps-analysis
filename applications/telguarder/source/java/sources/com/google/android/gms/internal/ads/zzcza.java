package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcza.class */
public final class zzcza {
    private final zzcxy zzfzw;
    private final zzcco zzgza;
    private final zzbrr zzgzb;

    public zzcza(zzcco zzccoVar, zzdrz zzdrzVar) {
        this.zzgza = zzccoVar;
        zzcxy zzcxyVar = new zzcxy(zzdrzVar);
        this.zzfzw = zzcxyVar;
        this.zzgzb = new zzbrr(zzcxyVar, zzccoVar.zzaon()) { // from class: com.google.android.gms.internal.ads.zzcyz
            private final zzcxy zzgyy;
            private final zzakb zzgyz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgyy = zzcxyVar;
                this.zzgyz = zzaon;
            }

            @Override // com.google.android.gms.internal.ads.zzbrr
            public final void zzc(zzvg zzvgVar) {
                zzcxy zzcxyVar2 = this.zzgyy;
                zzakb zzakbVar = this.zzgyz;
                zzcxyVar2.zzc(zzvgVar);
                if (zzakbVar != null) {
                    try {
                        zzakbVar.zze(zzvgVar);
                    } catch (RemoteException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
                if (zzakbVar != null) {
                    try {
                        zzakbVar.onInstreamAdFailedToLoad(zzvgVar.errorCode);
                    } catch (RemoteException e2) {
                        zzazk.zze("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }

    public final zzcaq zzaso() {
        return new zzcaq(this.zzgza, this.zzfzw.zzasj());
    }

    public final zzcxy zzasp() {
        return this.zzfzw;
    }

    public final zzbtb zzasq() {
        return this.zzfzw;
    }

    public final zzbrr zzasr() {
        return this.zzgzb;
    }

    public final void zzd(zzwx zzwxVar) {
        this.zzfzw.zzc(zzwxVar);
    }
}
