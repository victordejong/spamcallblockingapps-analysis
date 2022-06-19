package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajb.class */
public final class zzajb implements zzu {
    private final Context context;
    private volatile zzaiq zzdir;

    public zzajb(Context context) {
        this.context = context;
    }

    public final void disconnect() {
        if (this.zzdir == null) {
            return;
        }
        this.zzdir.disconnect();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final zzz zza(zzab<?> zzabVar) throws zzap {
        zzait zzh = zzait.zzh(zzabVar);
        long elapsedRealtime = zzr.zzky().elapsedRealtime();
        try {
            zzbaa zzbaaVar = new zzbaa();
            this.zzdir = new zzaiq(this.context, zzr.zzlf().zzzp(), new zzajf(this, zzbaaVar), new zzaje(this, zzbaaVar));
            this.zzdir.checkAvailabilityAndConnect();
            zzdzw zza = zzdzk.zza(zzdzk.zzb(zzbaaVar, new zzaja(this, zzh), zzazp.zzeic), ((Integer) zzwr.zzqr().zzd(zzabp.zzcuo)).intValue(), TimeUnit.MILLISECONDS, zzazp.zzeif);
            zza.addListener(new zzajc(this), zzazp.zzeic);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zza.get();
            long elapsedRealtime2 = zzr.zzky().elapsedRealtime();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(elapsedRealtime2 - elapsedRealtime);
            sb.append("ms");
            zzd.zzeb(sb.toString());
            zzaiv zzaivVar = (zzaiv) new zzatp(parcelFileDescriptor).zza(zzaiv.CREATOR);
            if (zzaivVar == null) {
                return null;
            }
            if (zzaivVar.zzdip) {
                throw new zzap(zzaivVar.zzchg);
            }
            if (zzaivVar.zzdin.length != zzaivVar.zzdio.length) {
                return null;
            }
            HashMap hashMap = new HashMap();
            for (int i = 0; i < zzaivVar.zzdin.length; i++) {
                hashMap.put(zzaivVar.zzdin[i], zzaivVar.zzdio[i]);
            }
            return new zzz(zzaivVar.statusCode, zzaivVar.data, hashMap, zzaivVar.zzak, zzaivVar.zzal);
        } catch (InterruptedException | ExecutionException e) {
            long elapsedRealtime3 = zzr.zzky().elapsedRealtime();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(elapsedRealtime3 - elapsedRealtime);
            sb2.append("ms");
            zzd.zzeb(sb2.toString());
            return null;
        } catch (Throwable th) {
            long elapsedRealtime4 = zzr.zzky().elapsedRealtime();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(elapsedRealtime4 - elapsedRealtime);
            sb3.append("ms");
            zzd.zzeb(sb3.toString());
            throw th;
        }
    }
}
