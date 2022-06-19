package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtm.class */
public final class zzbtm implements zzagl {
    private volatile zzbsz zza;
    private final Context zzb;

    public zzbtm(Context context) {
        this.zzb = context;
    }

    public static /* bridge */ /* synthetic */ void zzc(zzbtm zzbtmVar) {
        if (zzbtmVar.zza == null) {
            return;
        }
        zzbtmVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.zzagl
    public final zzago zza(zzags<?> zzagsVar) throws zzahb {
        Parcelable.Creator<zzbta> creator = zzbta.CREATOR;
        Map<String, String> zzl = zzagsVar.zzl();
        int size = zzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : zzl.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        zzbta zzbtaVar = new zzbta(zzagsVar.zzk(), strArr, strArr2);
        long elapsedRealtime = zzt.zzA().elapsedRealtime();
        zzago zzagoVar = null;
        try {
            zzcjr zzcjrVar = new zzcjr();
            this.zza = new zzbsz(this.zzb, zzt.zzt().zzb(), new zzbtk(this, zzcjrVar), new zzbtl(this, zzcjrVar));
            this.zza.checkAvailabilityAndConnect();
            zzbti zzbtiVar = new zzbti(this, zzbtaVar);
            zzfxb zzfxbVar = zzcjm.zza;
            zzfxa zzo = zzfwq.zzo(zzfwq.zzn(zzcjrVar, zzbtiVar, zzfxbVar), ((Integer) zzbgq.zzc().zzb(zzblj.zzcZ)).intValue(), TimeUnit.MILLISECONDS, zzcjm.zzd);
            zzo.zzc(new zzbtj(this), zzfxbVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzo.get();
            long elapsedRealtime2 = zzt.zzA().elapsedRealtime();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(elapsedRealtime2 - elapsedRealtime);
            sb.append("ms");
            zze.zza(sb.toString());
            zzbtc zzbtcVar = (zzbtc) new zzcdo(parcelFileDescriptor).zza(zzbtc.CREATOR);
            if (zzbtcVar == null) {
                return null;
            }
            if (zzbtcVar.zza) {
                throw new zzahb(zzbtcVar.zzb);
            }
            if (zzbtcVar.zze.length == zzbtcVar.zzf.length) {
                HashMap hashMap = new HashMap();
                int i2 = 0;
                while (true) {
                    String[] strArr3 = zzbtcVar.zze;
                    if (i2 >= strArr3.length) {
                        break;
                    }
                    hashMap.put(strArr3[i2], zzbtcVar.zzf[i2]);
                    i2++;
                }
                zzagoVar = new zzago(zzbtcVar.zzc, zzbtcVar.zzd, hashMap, zzbtcVar.zzg, zzbtcVar.zzh);
            }
            return zzagoVar;
        } catch (InterruptedException | ExecutionException e) {
            long elapsedRealtime3 = zzt.zzA().elapsedRealtime();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(elapsedRealtime3 - elapsedRealtime);
            sb2.append("ms");
            zze.zza(sb2.toString());
            return null;
        } catch (Throwable th) {
            long elapsedRealtime4 = zzt.zzA().elapsedRealtime();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(elapsedRealtime4 - elapsedRealtime);
            sb3.append("ms");
            zze.zza(sb3.toString());
            throw th;
        }
    }
}
