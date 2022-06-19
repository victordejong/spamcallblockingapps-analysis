package com.google.android.gms.internal.firebase_perf;

import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzca;
import com.google.android.gms.internal.firebase-perf.zzch;
import com.google.android.gms.internal.firebase_perf.zzca;
import com.google.firebase.perf.FirebasePerformance;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.internal.zza;
import com.google.firebase.perf.internal.zzb;
import com.google.firebase.perf.internal.zzf;
import com.google.firebase.perf.internal.zzt;
import com.google.firebase.perf.internal.zzx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import okhttp3.C2089s;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzam.class */
public final class zzam extends zzb implements zzx {
    private final List<zzt> zzbk;
    private final GaugeManager zzbl;
    private zzf zzbm;
    private final zzca.zzb zzbn;
    private boolean zzbo;
    private boolean zzbp;
    private final WeakReference<zzx> zzbq;

    private zzam(zzf zzfVar) {
        this(zzfVar, zza.zzq(), GaugeManager.zzap());
    }

    private zzam(zzf zzfVar, zza zzaVar, GaugeManager gaugeManager) {
        super(zzaVar);
        this.zzbn = zzca.zzea();
        this.zzbq = new WeakReference<>(this);
        this.zzbm = zzfVar;
        this.zzbl = gaugeManager;
        this.zzbk = new ArrayList();
        zzaa();
    }

    public static com.google.android.gms.internal.firebase-perf.zzam zzb(zzf zzfVar) {
        return new zzam(zzfVar);
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zza(String str) {
        C2089s m1936e;
        int lastIndexOf;
        if (str != null) {
            C2089s m1936e2 = C2089s.m1936e(str);
            if (m1936e2 != null) {
                str = m1936e2.m1926o().m1918b("").m1915c("").m1910e(null).m1906g(null).toString();
            }
            zzca.zzb zzbVar = this.zzbn;
            if (str.length() > 2000) {
                str = (str.charAt(2000) == '/' || (m1936e = C2089s.m1936e(str)) == null || m1936e.m1932i().lastIndexOf(47) < 0 || (lastIndexOf = str.lastIndexOf(47, 1999)) < 0) ? str.substring(0, 2000) : str.substring(0, lastIndexOf);
            }
            zzbVar.zzz(str);
        }
        return this;
    }

    public final zzam zza(Map<String, String> map) {
        this.zzbn.zzee().zzc(map);
        return this;
    }

    @Override // com.google.firebase.perf.internal.zzx
    public final void zza(zzt zztVar) {
        if (!this.zzbn.zzdr() || this.zzbn.zzdx()) {
            return;
        }
        this.zzbk.add(zztVar);
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzb(String str) {
        zzca.zzc zzcVar;
        if (str != null) {
            String upperCase = str.toUpperCase();
            boolean z = true;
            switch (upperCase.hashCode()) {
                case -531492226:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.OPTIONS)) {
                        z = true;
                        break;
                    }
                    break;
                case 70454:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.GET)) {
                        z = false;
                        break;
                    }
                    break;
                case 79599:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.PUT)) {
                        z = true;
                        break;
                    }
                    break;
                case 2213344:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.HEAD)) {
                        z = true;
                        break;
                    }
                    break;
                case 2461856:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.POST)) {
                        z = true;
                        break;
                    }
                    break;
                case 75900968:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.PATCH)) {
                        z = true;
                        break;
                    }
                    break;
                case 80083237:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.TRACE)) {
                        z = true;
                        break;
                    }
                    break;
                case 1669334218:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.CONNECT)) {
                        z = true;
                        break;
                    }
                    break;
                case 2012838315:
                    if (upperCase.equals(FirebasePerformance.HttpMethod.DELETE)) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    zzcVar = zzca.zzc.zzkh;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzki;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkj;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkk;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkl;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkm;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkn;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzko;
                    break;
                case true:
                    zzcVar = zzca.zzc.zzkp;
                    break;
                default:
                    zzcVar = zzca.zzc.zzkg;
                    break;
            }
            this.zzbn.zzb(zzcVar);
        }
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzc(int i) {
        this.zzbn.zzl(i);
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzc(String str) {
        boolean z;
        if (str == null) {
            this.zzbn.zzed();
            return this;
        }
        if (str.length() <= 128) {
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char charAt = str.charAt(i);
                z = false;
                if (charAt <= 31) {
                    break;
                } else if (charAt > 127) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            this.zzbn.zzaa(str);
        } else {
            String valueOf = String.valueOf(str);
            Log.i("FirebasePerformance", valueOf.length() != 0 ? "The content type of the response is not a valid content-type:".concat(valueOf) : new String("The content type of the response is not a valid content-type:"));
        }
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzd(long j) {
        this.zzbn.zzab(j);
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zze(long j) {
        zzt zzbm = SessionManager.zzbl().zzbm();
        SessionManager.zzbl().zzc(this.zzbq);
        this.zzbn.zzad(j);
        this.zzbk.add(zzbm);
        if (zzbm.zzax()) {
            this.zzbl.zzj(zzbm.zzaw());
        }
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzf(long j) {
        this.zzbn.zzae(j);
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzg(long j) {
        this.zzbn.zzaf(j);
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzh(long j) {
        this.zzbn.zzag(j);
        if (SessionManager.zzbl().zzbm().zzax()) {
            this.zzbl.zzj(SessionManager.zzbl().zzbm().zzaw());
        }
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzi(long j) {
        this.zzbn.zzac(j);
        return this;
    }

    public final void zzv() {
        this.zzbp = true;
    }

    public final boolean zzw() {
        return this.zzbn.zzw();
    }

    public final long zzx() {
        return this.zzbn.zzdw();
    }

    public final com.google.android.gms.internal.firebase-perf.zzam zzy() {
        this.zzbn.zzb(zzca.zzd.zzks);
        return this;
    }

    public final com.google.android.gms.internal.firebase-perf.zzca zzz() {
        SessionManager.zzbl().zzd(this.zzbq);
        zzab();
        zzch[] zza = zzt.zza(this.zzbk);
        if (zza != null) {
            this.zzbn.zzb(Arrays.asList(zza));
        }
        com.google.android.gms.internal.firebase-perf.zzca zzcaVar = (zzca) ((zzeh) this.zzbn.zzgm());
        if (!this.zzbo) {
            zzf zzfVar = this.zzbm;
            if (zzfVar != null) {
                zzfVar.zza(zzcaVar, zzs());
            }
            this.zzbo = true;
        } else if (this.zzbp) {
            Log.i("FirebasePerformance", "This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response");
        }
        return zzcaVar;
    }
}
