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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrk.class */
public final class zzbrk implements zzvv {
    private volatile zzbqx zza;
    private final Context zzb;

    public zzbrk(Context context) {
        this.zzb = context;
    }

    public static /* synthetic */ void zzc(zzbrk zzbrkVar) {
        if (zzbrkVar.zza == null) {
            return;
        }
        zzbrkVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.zzvv
    public final zzvy zza(zzwc<?> zzwcVar) throws zzwl {
        Parcelable.Creator<zzbqy> creator = zzbqy.CREATOR;
        Map<String, String> zzn = zzwcVar.zzn();
        int size = zzn.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : zzn.entrySet()) {
            strArr[i] = entry.getKey();
            strArr2[i] = entry.getValue();
            i++;
        }
        zzbqy zzbqyVar = new zzbqy(zzwcVar.zzi(), strArr, strArr2);
        long mo38789a = zzt.zzj().mo38789a();
        zzvy zzvyVar = null;
        try {
            zzchl zzchlVar = new zzchl();
            this.zza = new zzbqx(this.zzb, zzt.zzq().zza(), new zzbri(this, zzchlVar), new zzbrj(this, zzchlVar));
            this.zza.checkAvailabilityAndConnect();
            zzbrg zzbrgVar = new zzbrg(this, zzbqyVar);
            zzfsn zzfsnVar = zzchg.zza;
            zzfsm zzh = zzfsd.zzh(zzfsd.zzi(zzchlVar, zzbrgVar, zzfsnVar), ((Integer) zzbet.zzc().zzc(zzbjl.zzcS)).intValue(), TimeUnit.MILLISECONDS, zzchg.zzd);
            zzh.zze(new zzbrh(this), zzfsnVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzh.get();
            long mo38789a2 = zzt.zzj().mo38789a();
            StringBuilder m8554x = C22128a.m8554x(52, "Http assets remote cache took ");
            m8554x.append(mo38789a2 - mo38789a);
            m8554x.append("ms");
            zze.zza(m8554x.toString());
            zzbra zzbraVar = (zzbra) new zzcbh(parcelFileDescriptor).zza(zzbra.CREATOR);
            if (zzbraVar == null) {
                return null;
            }
            if (zzbraVar.zza) {
                throw new zzwl(zzbraVar.zzb);
            }
            if (zzbraVar.zze.length == zzbraVar.zzf.length) {
                HashMap hashMap = new HashMap();
                int i2 = 0;
                while (true) {
                    String[] strArr3 = zzbraVar.zze;
                    if (i2 >= strArr3.length) {
                        break;
                    }
                    hashMap.put(strArr3[i2], zzbraVar.zzf[i2]);
                    i2++;
                }
                zzvyVar = new zzvy(zzbraVar.zzc, zzbraVar.zzd, hashMap, zzbraVar.zzg, zzbraVar.zzh);
            }
            return zzvyVar;
        } catch (InterruptedException | ExecutionException e) {
            long mo38789a3 = zzt.zzj().mo38789a();
            StringBuilder m8554x2 = C22128a.m8554x(52, "Http assets remote cache took ");
            m8554x2.append(mo38789a3 - mo38789a);
            m8554x2.append("ms");
            zze.zza(m8554x2.toString());
            return null;
        } catch (Throwable th) {
            long mo38789a4 = zzt.zzj().mo38789a();
            StringBuilder m8554x3 = C22128a.m8554x(52, "Http assets remote cache took ");
            m8554x3.append(mo38789a4 - mo38789a);
            m8554x3.append("ms");
            zze.zza(m8554x3.toString());
            throw th;
        }
    }
}
