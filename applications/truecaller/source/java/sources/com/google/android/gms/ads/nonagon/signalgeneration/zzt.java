package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzffu;
import com.google.android.gms.internal.ads.zzfrz;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzt.class */
public final class zzt implements zzfrz<Uri> {
    public final /* synthetic */ zzcaf zza;
    public final /* synthetic */ zzv zzb;

    public zzt(zzv zzvVar, zzcaf zzcafVar) {
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
    public final /* bridge */ /* synthetic */ void zzb(Uri uri) {
        AtomicInteger atomicInteger;
        boolean z;
        String str;
        Uri zzL;
        zzffu zzffuVar;
        Uri uri2 = uri;
        try {
            atomicInteger = this.zzb.zzz;
            atomicInteger.getAndIncrement();
            this.zza.zze(Collections.singletonList(uri2));
            z = this.zzb.zzu;
            if (!z) {
                return;
            }
            str = this.zzb.zzC;
            zzL = zzv.zzL(uri2, str, "1");
            zzffuVar = this.zzb.zzs;
            zzffuVar.zzb(zzL.toString());
        } catch (RemoteException e) {
            zzcgt.zzg("", e);
        }
    }
}
