package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhu.class */
public final class zzfhu implements zzfgz {
    private static final zzfhu zza = new zzfhu();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzj = new zzfhq();
    private static final Runnable zzk = new zzfhr();
    private int zze;
    private long zzi;
    private final List<zzfht> zzd = new ArrayList();
    private final zzfhn zzg = new zzfhn();
    private final zzfhb zzf = new zzfhb();
    private final zzfho zzh = new zzfho(new zzfhx());

    public static zzfhu zzf() {
        return zza;
    }

    public static /* synthetic */ void zzj(zzfhu zzfhuVar) {
        zzfhuVar.zze = 0;
        zzfhuVar.zzi = System.nanoTime();
        zzfhuVar.zzg.zzd();
        long nanoTime = System.nanoTime();
        zzfha zza2 = zzfhuVar.zzf.zza();
        if (zzfhuVar.zzg.zzb().size() > 0) {
            Iterator<String> it = zzfhuVar.zzg.zzb().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject zzb2 = zzfhi.zzb(0, 0, 0, 0);
                View zzh = zzfhuVar.zzg.zzh(next);
                zzfha zzb3 = zzfhuVar.zzf.zzb();
                String zzc2 = zzfhuVar.zzg.zzc(next);
                if (zzc2 != null) {
                    JSONObject zza3 = zzb3.zza(zzh);
                    zzfhi.zzd(zza3, next);
                    zzfhi.zze(zza3, zzc2);
                    zzfhi.zzg(zzb2, zza3);
                }
                zzfhi.zzh(zzb2);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                zzfhuVar.zzh.zzb(zzb2, hashSet, nanoTime);
            }
        }
        if (zzfhuVar.zzg.zza().size() > 0) {
            JSONObject zzb4 = zzfhi.zzb(0, 0, 0, 0);
            zzfhuVar.zzk(null, zza2, zzb4, 1);
            zzfhi.zzh(zzb4);
            zzfhuVar.zzh.zza(zzb4, zzfhuVar.zzg.zza(), nanoTime);
        } else {
            zzfhuVar.zzh.zzc();
        }
        zzfhuVar.zzg.zze();
        long nanoTime2 = System.nanoTime();
        long j = zzfhuVar.zzi;
        if (zzfhuVar.zzd.size() > 0) {
            for (zzfht zzfhtVar : zzfhuVar.zzd) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2 - j);
                zzfhtVar.zzb();
                if (zzfhtVar instanceof zzfhs) {
                    ((zzfhs) zzfhtVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzfha zzfhaVar, JSONObject jSONObject, int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        zzfhaVar.zzb(view, jSONObject, this, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zzk);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgz
    public final void zza(View view, zzfha zzfhaVar, JSONObject jSONObject) {
        int zzj2;
        if (zzfhl.zzb(view) != null || (zzj2 = this.zzg.zzj(view)) == 3) {
            return;
        }
        JSONObject zza2 = zzfhaVar.zza(view);
        zzfhi.zzg(jSONObject, zza2);
        String zzg = this.zzg.zzg(view);
        if (zzg != null) {
            zzfhi.zzd(zza2, zzg);
            this.zzg.zzf();
        } else {
            zzfhm zzi = this.zzg.zzi(view);
            if (zzi != null) {
                zzfhi.zzf(zza2, zzi);
            }
            zzk(view, zzfhaVar, zza2, zzj2);
        }
        this.zze++;
    }

    public final void zzg() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzj);
            zzc.postDelayed(zzk, 200L);
        }
    }

    public final void zzh() {
        zzl();
        this.zzd.clear();
        zzb.post(new zzfhp(this));
    }

    public final void zzi() {
        zzl();
    }
}
