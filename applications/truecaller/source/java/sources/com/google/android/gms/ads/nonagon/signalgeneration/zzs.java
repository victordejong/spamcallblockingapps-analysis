package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzffu;
import com.google.android.gms.internal.ads.zzfrz;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzs.class */
public final class zzs implements zzfrz<ArrayList<Uri>> {
    public final /* synthetic */ zzcaf zza;
    public final /* synthetic */ zzv zzb;

    public zzs(zzv zzvVar, zzcaf zzcafVar) {
        this.zzb = zzvVar;
        this.zza = zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        try {
            zzcaf zzcafVar = this.zza;
            String valueOf = String.valueOf(th.getMessage());
            zzcafVar.zzf(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(ArrayList<Uri> arrayList) {
        boolean z;
        String str;
        Uri zzL;
        zzffu zzffuVar;
        ArrayList<Uri> arrayList2 = arrayList;
        try {
            this.zza.zze(arrayList2);
            z = this.zzb.zzt;
            if (!z) {
                return;
            }
            Iterator<Uri> it = arrayList2.iterator();
            while (it.hasNext()) {
                Uri next = it.next();
                if (zzv.zzw(next)) {
                    str = this.zzb.zzC;
                    zzL = zzv.zzL(next, str, "1");
                    zzffuVar = this.zzb.zzs;
                    zzffuVar.zzb(zzL.toString());
                }
            }
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }
}
