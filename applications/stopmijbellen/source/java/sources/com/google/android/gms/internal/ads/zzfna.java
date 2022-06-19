package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfna.class */
public final class zzfna {
    private final Context zza;
    private final Executor zzb;
    private final zzfmh zzc;
    private final zzfmj zzd;
    private final zzfmz zze;
    private final zzfmz zzf;
    private Task<zzajp> zzg;
    private Task<zzajp> zzh;

    @VisibleForTesting
    public zzfna(Context context, Executor executor, zzfmh zzfmhVar, zzfmj zzfmjVar, zzfmx zzfmxVar, zzfmy zzfmyVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfmhVar;
        this.zzd = zzfmjVar;
        this.zze = zzfmxVar;
        this.zzf = zzfmyVar;
    }

    public static zzfna zze(Context context, Executor executor, zzfmh zzfmhVar, zzfmj zzfmjVar) {
        zzfna zzfnaVar = new zzfna(context, executor, zzfmhVar, zzfmjVar, new zzfmx(), new zzfmy());
        if (zzfnaVar.zzd.zzd()) {
            zzfnaVar.zzg = zzfnaVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfmv
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzfna.this.zzc();
                }
            });
        } else {
            zzfnaVar.zzg = Tasks.forResult(zzfnaVar.zze.zza());
        }
        zzfnaVar.zzh = zzfnaVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfmw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfna.this.zzd();
            }
        });
        return zzfnaVar;
    }

    private static zzajp zzg(Task<zzajp> task, zzajp zzajpVar) {
        return !task.isSuccessful() ? zzajpVar : task.getResult();
    }

    private final Task<zzajp> zzh(Callable<zzajp> callable) {
        return Tasks.call(this.zzb, callable).addOnFailureListener(this.zzb, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfmu
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                zzfna.this.zzf(exc);
            }
        });
    }

    public final zzajp zza() {
        return zzg(this.zzg, this.zze.zza());
    }

    public final zzajp zzb() {
        return zzg(this.zzh, this.zzf.zza());
    }

    public final /* synthetic */ zzajp zzc() throws Exception {
        Context context = this.zza;
        zzaiz zza = zzajp.zza();
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
        String id = advertisingIdInfo.getId();
        String str = id;
        if (id != null) {
            str = id;
            if (id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                UUID fromString = UUID.fromString(id);
                byte[] bArr = new byte[16];
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                wrap.putLong(fromString.getMostSignificantBits());
                wrap.putLong(fromString.getLeastSignificantBits());
                str = Base64.encodeToString(bArr, 11);
            }
        }
        if (str != null) {
            zza.zzq(str);
            zza.zzp(advertisingIdInfo.isLimitAdTrackingEnabled());
            zza.zzW(6);
        }
        return zza.zzah();
    }

    public final /* synthetic */ zzajp zzd() throws Exception {
        Context context = this.zza;
        return zzfmp.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public final /* synthetic */ void zzf(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }
}
