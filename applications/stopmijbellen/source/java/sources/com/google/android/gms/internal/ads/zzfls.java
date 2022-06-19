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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfls.class */
public final class zzfls implements zzfkx {
    private static final zzfls zza = new zzfls();
    private static final Handler zzb = new Handler(Looper.getMainLooper());
    private static Handler zzc = null;
    private static final Runnable zzd = new zzflo();
    private static final Runnable zze = new zzflp();
    private int zzg;
    private long zzk;
    private final List<zzflr> zzf = new ArrayList();
    private final zzfll zzi = new zzfll();
    private final zzfkz zzh = new zzfkz();
    private final zzflm zzj = new zzflm(new zzflv());

    public static zzfls zzd() {
        return zza;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzfls zzflsVar) {
        zzflsVar.zzg = 0;
        zzflsVar.zzk = System.nanoTime();
        zzflsVar.zzi.zzi();
        long nanoTime = System.nanoTime();
        zzfky zza2 = zzflsVar.zzh.zza();
        if (zzflsVar.zzi.zze().size() > 0) {
            Iterator<String> it2 = zzflsVar.zzi.zze().iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                JSONObject zza3 = zzflg.zza(0, 0, 0, 0);
                View zza4 = zzflsVar.zzi.zza(next);
                zzfky zzb2 = zzflsVar.zzh.zzb();
                String zzc2 = zzflsVar.zzi.zzc(next);
                if (zzc2 != null) {
                    JSONObject zza5 = zzb2.zza(zza4);
                    zzflg.zzb(zza5, next);
                    zzflg.zze(zza5, zzc2);
                    zzflg.zzc(zza3, zza5);
                }
                zzflg.zzh(zza3);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                zzflsVar.zzj.zzc(zza3, hashSet, nanoTime);
            }
        }
        if (zzflsVar.zzi.zzf().size() > 0) {
            JSONObject zza6 = zzflg.zza(0, 0, 0, 0);
            zzflsVar.zzk(null, zza2, zza6, 1);
            zzflg.zzh(zza6);
            zzflsVar.zzj.zzd(zza6, zzflsVar.zzi.zzf(), nanoTime);
        } else {
            zzflsVar.zzj.zzb();
        }
        zzflsVar.zzi.zzg();
        long nanoTime2 = System.nanoTime();
        long j = zzflsVar.zzk;
        if (zzflsVar.zzf.size() > 0) {
            for (zzflr zzflrVar : zzflsVar.zzf) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2 - j);
                zzflrVar.zzb();
                if (zzflrVar instanceof zzflq) {
                    ((zzflq) zzflrVar).zza();
                }
            }
        }
    }

    private final void zzk(View view, zzfky zzfkyVar, JSONObject jSONObject, int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        zzfkyVar.zzb(view, jSONObject, this, z);
    }

    private static final void zzl() {
        Handler handler = zzc;
        if (handler != null) {
            handler.removeCallbacks(zze);
            zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfkx
    public final void zza(View view, zzfky zzfkyVar, JSONObject jSONObject) {
        int zzj;
        if (zzflj.zzb(view) != null || (zzj = this.zzi.zzj(view)) == 3) {
            return;
        }
        JSONObject zza2 = zzfkyVar.zza(view);
        zzflg.zzc(jSONObject, zza2);
        String zzd2 = this.zzi.zzd(view);
        if (zzd2 != null) {
            zzflg.zzb(zza2, zzd2);
            this.zzi.zzh();
        } else {
            zzflk zzb2 = this.zzi.zzb(view);
            if (zzb2 != null) {
                zzflg.zzd(zza2, zzb2);
            }
            zzk(view, zzfkyVar, zza2, zzj);
        }
        this.zzg++;
    }

    public final void zzh() {
        zzl();
    }

    public final void zzi() {
        if (zzc == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            zzc = handler;
            handler.post(zzd);
            zzc.postDelayed(zze, 200L);
        }
    }

    public final void zzj() {
        zzl();
        this.zzf.clear();
        zzb.post(new zzfln(this));
    }
}
