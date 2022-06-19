package com.google.android.gms.ads.nonagon.signalgeneration;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcch;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzfjs;
import com.google.android.gms.internal.ads.zzfwm;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzt.class */
final class zzt implements zzfwm<Uri> {
    public final /* synthetic */ zzcch zza;
    public final /* synthetic */ zzv zzb;

    public zzt(zzv zzvVar, zzcch zzcchVar) {
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
    public final /* bridge */ /* synthetic */ void zzb(@Nonnull Uri uri) {
        AtomicInteger atomicInteger;
        boolean z;
        String str;
        Uri zzL;
        zzfjs zzfjsVar;
        Uri uri2 = uri;
        try {
            atomicInteger = this.zzb.zzz;
            atomicInteger.getAndIncrement();
            this.zza.zzf(Collections.singletonList(uri2));
            z = this.zzb.zzu;
            if (!z) {
                return;
            }
            str = this.zzb.zzC;
            zzL = zzv.zzL(uri2, str, "1");
            zzfjsVar = this.zzb.zzs;
            zzfjsVar.zzb(zzL.toString());
        } catch (RemoteException e) {
            zzciz.zzh("", e);
        }
    }
}
