package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ih.class */
public final class ih implements ehl {

    /* renamed from: a  reason: collision with root package name */
    volatile ia f28059a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28060b;

    public ih(Context context) {
        this.f28060b = context;
    }

    @Override // com.google.android.gms.internal.ads.ehl
    public final emg zza(z<?> zVar) throws zzap {
        zzaiy zzh = zzaiy.zzh(zVar);
        long b2 = zzr.zzlc().b();
        try {
            zp zpVar = new zp();
            this.f28059a = new ia(this.f28060b, zzr.zzlj().zzaai(), new il(this, zpVar), new in(this, zpVar));
            this.f28059a.checkAvailabilityAndConnect();
            dbt a2 = dbh.a(daj.a(zpVar, new ik(this, zzh), zd.f28573a), ((Integer) ekb.e().a(aq.cv)).intValue(), TimeUnit.MILLISECONDS, zd.f28576d);
            a2.addListener(new im(this), zd.f28573a);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) a2.get();
            long b3 = zzr.zzlc().b();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(b3 - b2);
            sb.append("ms");
            zzd.zzed(sb.toString());
            zzaja zzajaVar = (zzaja) new zzaue(parcelFileDescriptor).zza(zzaja.CREATOR);
            if (zzajaVar == null) {
                return null;
            }
            if (zzajaVar.zzdjw) {
                throw new zzap(zzajaVar.zzchs);
            } else if (zzajaVar.zzdju.length != zzajaVar.zzdjv.length) {
                return null;
            } else {
                HashMap hashMap = new HashMap();
                for (int i = 0; i < zzajaVar.zzdju.length; i++) {
                    hashMap.put(zzajaVar.zzdju[i], zzajaVar.zzdjv[i]);
                }
                return new emg(zzajaVar.statusCode, zzajaVar.data, hashMap, zzajaVar.zzak, zzajaVar.zzal);
            }
        } catch (InterruptedException | ExecutionException e) {
            long b4 = zzr.zzlc().b();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(b4 - b2);
            sb2.append("ms");
            zzd.zzed(sb2.toString());
            return null;
        } catch (Throwable th) {
            long b5 = zzr.zzlc().b();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(b5 - b2);
            sb3.append("ms");
            zzd.zzed(sb3.toString());
            throw th;
        }
    }
}
