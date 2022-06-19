package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmn.class */
public final class zzcmn extends zzcky implements zzawl, zzauj, zzaxv, zzaqd, zzaot {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzcmd zze;
    private final zzapl zzf;
    private final zzapl zzg;
    private final zzavn zzh;
    private final zzclg zzi;
    private zzaow zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private final WeakReference<zzclh> zzm;
    private zzckx zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private final String zzr;
    private final int zzs;
    @GuardedBy("httpDataSourcesLock")
    private final ArrayList<zzawf> zzu;
    private volatile zzcmc zzv;
    private final Object zzt = new Object();
    private final Set<WeakReference<zzcma>> zzw = new HashSet();

    public zzcmn(Context context, zzclg zzclgVar, zzclh zzclhVar) {
        this.zzd = context;
        this.zzi = zzclgVar;
        this.zzm = new WeakReference<>(zzclhVar);
        zzcmd zzcmdVar = new zzcmd();
        this.zze = zzcmdVar;
        zzatg zzatgVar = zzatg.zza;
        zzfpj zzfpjVar = zzt.zza;
        zzaxk zzaxkVar = new zzaxk(context, zzatgVar, 0L, zzfpjVar, this, -1);
        this.zzf = zzaxkVar;
        zzaqs zzaqsVar = new zzaqs(zzatgVar, null, true, zzfpjVar, this);
        this.zzg = zzaqsVar;
        zzavj zzavjVar = new zzavj(null);
        this.zzh = zzavjVar;
        if (zze.zzc()) {
            zze.zza("ForkedExoPlayerAdapter initialize ".concat(toString()));
        }
        zzcky.zza.incrementAndGet();
        int i = 0;
        zzaow zza = zzaox.zza(new zzapl[]{zzaqsVar, zzaxkVar}, zzavjVar, zzcmdVar);
        this.zzj = zza;
        zza.zze(this);
        this.zzo = 0;
        this.zzq = 0L;
        this.zzp = 0;
        this.zzu = new ArrayList<>();
        this.zzv = null;
        this.zzr = (zzclhVar == null || zzclhVar.zzt() == null) ? "" : zzclhVar.zzt();
        this.zzs = zzclhVar != null ? zzclhVar.zzh() : i;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzn)).booleanValue()) {
            this.zzj.zzg();
        }
        if (zzclhVar != null && zzclhVar.zzg() > 0) {
            this.zzj.zzn(zzclhVar.zzg());
        }
        if (zzclhVar == null || zzclhVar.zzf() <= 0) {
            return;
        }
        this.zzj.zzm(zzclhVar.zzf());
    }

    private final boolean zzY() {
        return this.zzv != null && this.zzv.zzk();
    }

    public final void finalize() throws Throwable {
        zzcky.zza.decrementAndGet();
        if (zze.zzc()) {
            zze.zza("ForkedExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzA(Uri[] uriArr, String str) {
        zzB(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzB(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzaus zzausVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzausVar = zzR(uriArr[0], str);
        } else {
            zzauo[] zzauoVarArr = new zzauo[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzauoVarArr[i] = zzR(uriArr[i], str);
            }
            zzausVar = new zzaus(zzauoVarArr);
        }
        this.zzj.zzh(zzausVar);
        zzcky.zzb.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzC() {
        zzaow zzaowVar = this.zzj;
        if (zzaowVar != null) {
            zzaowVar.zzj(this);
            this.zzj.zzi();
            this.zzj = null;
            zzcky.zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzD(long j) {
        this.zzj.zzk(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzE(int i) {
        this.zze.zzf(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzF(int i) {
        this.zze.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzG(zzckx zzckxVar) {
        this.zzn = zzckxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzH(int i) {
        this.zze.zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzI(int i) {
        this.zze.zzi(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzJ(boolean z) {
        this.zzj.zzo(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzK(boolean z) {
        if (this.zzj != null) {
            for (int i = 0; i < 2; i++) {
                this.zzh.zze(i, !z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzL(int i) {
        for (WeakReference<zzcma> weakReference : this.zzw) {
            zzcma zzcmaVar = weakReference.get();
            if (zzcmaVar != null) {
                zzcmaVar.zzh(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzM(Surface surface, boolean z) {
        if (this.zzj == null) {
            return;
        }
        zzaov zzaovVar = new zzaov(this.zzf, 1, surface);
        if (z) {
            this.zzj.zzf(zzaovVar);
        } else {
            this.zzj.zzl(zzaovVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzN(float f, boolean z) {
        if (this.zzj == null) {
            return;
        }
        zzaov zzaovVar = new zzaov(this.zzg, 2, Float.valueOf(f));
        if (z) {
            this.zzj.zzf(zzaovVar);
        } else {
            this.zzj.zzl(zzaovVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzO() {
        this.zzj.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final boolean zzP() {
        return this.zzj != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final boolean zzQ() {
        return this.zzj.zzq();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzbgq.zzc().zzb(com.google.android.gms.internal.ads.zzblj.zzbr)).booleanValue() == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0103  */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzauo zzR(android.net.Uri r12, final java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmn.zzR(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.zzauo");
    }

    public final /* synthetic */ zzavw zzS(String str, boolean z) {
        zzcmn zzcmnVar = true != z ? null : this;
        zzclg zzclgVar = this.zzi;
        zzcma zzcmaVar = new zzcma(str, zzcmnVar, zzclgVar.zzd, zzclgVar.zzf, zzclgVar.zzi);
        this.zzw.add(new WeakReference<>(zzcmaVar));
        return zzcmaVar;
    }

    public final /* synthetic */ zzavw zzT(String str, boolean z) {
        zzcmn zzcmnVar = true != z ? null : this;
        zzclg zzclgVar = this.zzi;
        return new zzawa(str, null, zzcmnVar, zzclgVar.zzd, zzclgVar.zzf, true, null);
    }

    public final /* synthetic */ zzavw zzU(zzavv zzavvVar) {
        return new zzcmc(this.zzd, zzavvVar.zza(), this.zzr, this.zzs, this, new zzcml(this), null);
    }

    public final /* synthetic */ void zzV(boolean z, long j) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            zzckxVar.zzi(z, j);
        }
    }

    public final void zzW(zzavw zzavwVar, int i) {
        this.zzo += i;
    }

    /* renamed from: zzX */
    public final void zzk(zzavw zzavwVar, zzavy zzavyVar) {
        if (zzavwVar instanceof zzawf) {
            synchronized (this.zzt) {
                this.zzu.add((zzawf) zzavwVar);
            }
        } else if (!(zzavwVar instanceof zzcmc)) {
        } else {
            this.zzv = (zzcmc) zzavwVar;
            final zzclh zzclhVar = this.zzm.get();
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || !this.zzv.zzh()) {
                return;
            }
            final HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.zzv.zzj()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.zzv.zzi()));
            zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmm
                @Override // java.lang.Runnable
                public final void run() {
                    zzclh zzclhVar2 = zzclh.this;
                    Map<String, ?> map = hashMap;
                    int i = zzcmn.zzc;
                    zzclhVar2.zzd("onGcacheInfoEvent", map);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zza(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzb(zzapk zzapkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzc(zzaos zzaosVar) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            zzckxVar.zzk("onPlayerError", zzaosVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzd(boolean z, int i) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            zzckxVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzf(zzapr zzaprVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzaot
    public final void zzg(zzavd zzavdVar, zzavp zzavpVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaqd
    public final void zzh(zzapg zzapgVar) {
        zzclh zzclhVar = this.zzm.get();
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || zzapgVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzapgVar.zze);
        hashMap.put("audioSampleMime", zzapgVar.zzf);
        hashMap.put("audioCodec", zzapgVar.zzc);
        zzclhVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzauj
    public final void zzi(IOException iOException) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            if (this.zzi.zzl) {
                zzckxVar.zzl("onLoadException", iOException);
            } else {
                zzckxVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    public final /* synthetic */ void zzj(Object obj, int i) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzl(int i, long j) {
        this.zzp += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzm(Surface surface) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            zzckxVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzn(zzapg zzapgVar) {
        zzclh zzclhVar = this.zzm.get();
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || zzapgVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzapgVar.zzl));
        hashMap.put("bitRate", String.valueOf(zzapgVar.zzb));
        int i = zzapgVar.zzj;
        int i2 = zzapgVar.zzk;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", zzapgVar.zze);
        hashMap.put("videoSampleMime", zzapgVar.zzf);
        hashMap.put("videoCodec", zzapgVar.zzc);
        zzclhVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzo(int i, int i2, int i3, float f) {
        zzckx zzckxVar = this.zzn;
        if (zzckxVar != null) {
            zzckxVar.zzC(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final int zzp() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final int zzr() {
        return this.zzj.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzt() {
        return this.zzj.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzu() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzv() {
        if (zzY() && this.zzv.zzj()) {
            return Math.min(this.zzo, this.zzv.zze());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzw() {
        return this.zzj.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzx() {
        return this.zzj.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzy() {
        if (!zzY()) {
            return this.zzo;
        }
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r2v0 */
    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzz() {
        if (!zzY()) {
            synchronized (this.zzt) {
                while (!this.zzu.isEmpty()) {
                    long j = this.zzq;
                    Map<String, List<String>> zze = this.zzu.remove(0).zze();
                    ?? r13 = false;
                    if (zze != null) {
                        Iterator<Map.Entry<String, List<String>>> it2 = zze.entrySet().iterator();
                        while (true) {
                            r13 = false;
                            if (!it2.hasNext()) {
                                break;
                            }
                            Map.Entry<String, List<String>> next = it2.next();
                            if (next != null) {
                                try {
                                    if (next.getKey() != null && zzfpn.zzc("content-length", next.getKey()) && next.getValue() != null && next.getValue().get(0) != null) {
                                        r13 = Long.parseLong(next.getValue().get(0));
                                        break;
                                    }
                                } catch (NumberFormatException e) {
                                }
                            }
                        }
                    }
                    this.zzq = j + (r13 == true ? 1L : 0L);
                }
            }
            return this.zzq;
        }
        return this.zzv.zzf();
    }
}
