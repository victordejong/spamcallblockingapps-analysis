package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcch;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzfjs;
import com.google.android.gms.internal.ads.zzfwm;
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzs.class */
final class zzs implements zzfwm<ArrayList<Uri>> {
    public final /* synthetic */ zzcch zza;
    public final /* synthetic */ zzv zzb;

    public zzs(zzv zzvVar, zzcch zzcchVar) {
        this.zzb = zzvVar;
        this.zza = zzcchVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        try {
            zzcch zzcchVar = this.zza;
            String valueOf = String.valueOf(th.getMessage());
            zzcchVar.zze(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull ArrayList<Uri> arrayList) {
        boolean z;
        String str;
        Uri zzL;
        zzfjs zzfjsVar;
        ArrayList<Uri> arrayList2 = arrayList;
        try {
            this.zza.zzf(arrayList2);
            z = this.zzb.zzt;
            if (!z) {
                return;
            }
            Iterator<Uri> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Uri next = it2.next();
                if (zzv.zzE(next)) {
                    str = this.zzb.zzC;
                    zzL = zzv.zzL(next, str, "1");
                    zzfjsVar = this.zzb.zzs;
                    zzfjsVar.zzb(zzL.toString());
                }
            }
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }
}
