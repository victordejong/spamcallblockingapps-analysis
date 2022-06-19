package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.ih */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ih.class */
public final class C12633ih implements ehl {

    /* renamed from: a */
    volatile C12626ia f49368a;

    /* renamed from: b */
    private final Context f49369b;

    public C12633ih(Context context) {
        this.f49369b = context;
    }

    @Override // com.google.android.gms.internal.ads.ehl
    public final emg zza(AbstractC13087z<?> abstractC13087z) throws zzap {
        zzaiy zzh = zzaiy.zzh(abstractC13087z);
        long mo19038b = zzr.zzlc().mo19038b();
        try {
            C13103zp c13103zp = new C13103zp();
            this.f49368a = new C12626ia(this.f49369b, zzr.zzlj().zzaai(), new C12637il(this, c13103zp), new C12639in(this, c13103zp));
            this.f49368a.checkAvailabilityAndConnect();
            dbt m16902a = dbh.m16902a(daj.m16941a(c13103zp, new C12636ik(this, zzh), C13091zd.f50118a), ((Integer) ekb.m14831e().m18571a(C12187aq.f42791cv)).intValue(), TimeUnit.MILLISECONDS, C13091zd.f50121d);
            m16902a.addListener(new RunnableC12638im(this), C13091zd.f50118a);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) m16902a.get();
            long mo19038b2 = zzr.zzlc().mo19038b();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Http assets remote cache took ");
            sb.append(mo19038b2 - mo19038b);
            sb.append("ms");
            zzd.zzed(sb.toString());
            zzaja zzajaVar = (zzaja) new zzaue(parcelFileDescriptor).zza(zzaja.CREATOR);
            if (zzajaVar == null) {
                return null;
            }
            if (zzajaVar.zzdjw) {
                throw new zzap(zzajaVar.zzchs);
            }
            if (zzajaVar.zzdju.length != zzajaVar.zzdjv.length) {
                return null;
            }
            HashMap hashMap = new HashMap();
            for (int i = 0; i < zzajaVar.zzdju.length; i++) {
                hashMap.put(zzajaVar.zzdju[i], zzajaVar.zzdjv[i]);
            }
            return new emg(zzajaVar.statusCode, zzajaVar.data, hashMap, zzajaVar.zzak, zzajaVar.zzal);
        } catch (InterruptedException | ExecutionException e) {
            long mo19038b3 = zzr.zzlc().mo19038b();
            StringBuilder sb2 = new StringBuilder(52);
            sb2.append("Http assets remote cache took ");
            sb2.append(mo19038b3 - mo19038b);
            sb2.append("ms");
            zzd.zzed(sb2.toString());
            return null;
        } catch (Throwable th) {
            long mo19038b4 = zzr.zzlc().mo19038b();
            StringBuilder sb3 = new StringBuilder(52);
            sb3.append("Http assets remote cache took ");
            sb3.append(mo19038b4 - mo19038b);
            sb3.append("ms");
            zzd.zzed(sb3.toString());
            throw th;
        }
    }
}
