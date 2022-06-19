package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.huawei.hms.adapter.internal.CommonCode;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcki.class */
public final class zzcki extends zzcis implements zzauo, zzasm, zzavy, zzaoj, zzamz {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzcjy zze;
    private final zzanr zzf;
    private final zzanr zzg;
    private final zzatq zzh;
    private final zzcja zzi;
    private zzanc zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private final WeakReference<zzcjb> zzm;
    private zzcir zzn;
    private int zzo;
    private int zzp;
    private long zzq;
    private final String zzr;
    private final int zzs;
    private final ArrayList<zzaui> zzu;
    private volatile zzcjx zzv;
    private final Object zzt = new Object();
    private final Set<WeakReference<zzcju>> zzw = new HashSet();

    public zzcki(Context context, zzcja zzcjaVar, zzcjb zzcjbVar) {
        this.zzd = context;
        this.zzi = zzcjaVar;
        this.zzm = new WeakReference<>(zzcjbVar);
        zzcjy zzcjyVar = new zzcjy();
        this.zze = zzcjyVar;
        zzark zzarkVar = zzark.zza;
        zzfla zzflaVar = zzs.zza;
        zzavn zzavnVar = new zzavn(context, zzarkVar, 0L, zzflaVar, this, -1);
        this.zzf = zzavnVar;
        zzaox zzaoxVar = new zzaox(zzarkVar, null, true, zzflaVar, this);
        this.zzg = zzaoxVar;
        zzatm zzatmVar = new zzatm(null);
        this.zzh = zzatmVar;
        if (zze.zzc()) {
            zze.zza("ForkedExoPlayerAdapter initialize ".concat(toString()));
        }
        zzcis.zza.incrementAndGet();
        int i = 0;
        zzanc zza = zzand.zza(new zzanr[]{zzaoxVar, zzavnVar}, zzatmVar, zzcjyVar);
        this.zzj = zza;
        zza.zza(this);
        this.zzo = 0;
        this.zzq = 0L;
        this.zzp = 0;
        this.zzu = new ArrayList<>();
        this.zzv = null;
        this.zzr = (zzcjbVar == null || zzcjbVar.zzn() == null) ? "" : zzcjbVar.zzn();
        this.zzs = zzcjbVar != null ? zzcjbVar.zzp() : i;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzn)).booleanValue()) {
            this.zzj.zzo();
        }
        if (zzcjbVar != null && zzcjbVar.zzD() > 0) {
            this.zzj.zzp(zzcjbVar.zzD());
        }
        if (zzcjbVar == null || zzcjbVar.zzE() <= 0) {
            return;
        }
        this.zzj.zzq(zzcjbVar.zzE());
    }

    private final boolean zzY() {
        return this.zzv != null && this.zzv.zzf();
    }

    public final void finalize() throws Throwable {
        zzcis.zza.decrementAndGet();
        if (zze.zzc()) {
            zze.zza("ForkedExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final boolean zzA() {
        return this.zzj != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final int zzB() {
        return this.zzj.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzC() {
        return this.zzj.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final boolean zzD() {
        return this.zzj.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzE(boolean z) {
        this.zzj.zze(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzF(int i) {
        this.zze.zzg(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzG(int i) {
        this.zze.zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzH() {
        return this.zzj.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzI() {
        if (!zzY()) {
            return this.zzo;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzJ() {
        if (zzY() && this.zzv.zzg()) {
            return Math.min(this.zzo, this.zzv.zzi());
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
    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzK() {
        if (!zzY()) {
            synchronized (this.zzt) {
                while (!this.zzu.isEmpty()) {
                    long j = this.zzq;
                    Map<String, List<String>> zze = this.zzu.remove(0).zze();
                    ?? r13 = false;
                    if (zze != null) {
                        Iterator<Map.Entry<String, List<String>>> it = zze.entrySet().iterator();
                        while (true) {
                            r13 = false;
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry<String, List<String>> next = it.next();
                            if (next != null) {
                                try {
                                    if (next.getKey() != null && zzflf.zze("content-length", next.getKey()) && next.getValue() != null && next.getValue().get(0) != null) {
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
        return this.zzv.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final int zzL() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzM(boolean z) {
        if (this.zzj != null) {
            for (int i = 0; i < 2; i++) {
                this.zzh.zzc(i, !z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzN() {
        return this.zzj.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzO() {
        return this.zzo;
    }

    /* renamed from: zzR */
    public final void zzj(zzatz zzatzVar, zzaub zzaubVar) {
        if (zzatzVar instanceof zzaui) {
            synchronized (this.zzt) {
                this.zzu.add((zzaui) zzatzVar);
            }
        } else if (!(zzatzVar instanceof zzcjx)) {
        } else {
            this.zzv = (zzcjx) zzatzVar;
            zzcjb zzcjbVar = this.zzm.get();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || !this.zzv.zze()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.zzv.zzg()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.zzv.zzh()));
            zzs.zza.post(new Runnable(zzcjbVar, hashMap) { // from class: com.google.android.gms.internal.ads.zzcjz
                private final zzcjb zza;
                private final Map zzb;

                {
                    this.zza = zzcjbVar;
                    this.zzb = hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzcjb zzcjbVar2 = this.zza;
                    Map<String, ?> map = this.zzb;
                    int i = zzcki.zzc;
                    zzcjbVar2.zze("onGcacheInfoEvent", map);
                }
            });
        }
    }

    public final void zzS(zzatz zzatzVar, int i) {
        this.zzo += i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0062, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzbet.zzc().zzc(com.google.android.gms.internal.ads.zzbjl.zzbl)).booleanValue() == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0103  */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzasr zzT(android.net.Uri r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcki.zzT(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.zzasr");
    }

    public final /* synthetic */ zzatz zzU(zzaty zzatyVar) {
        return new zzcjx(this.zzd, zzatyVar.zza(), this.zzr, this.zzs, this, new zzcjw(this) { // from class: com.google.android.gms.internal.ads.zzckh
            private final zzcki zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcjw
            public final void zza(boolean z, long j) {
                this.zza.zzV(z, j);
            }
        });
    }

    public final /* synthetic */ void zzV(boolean z, long j) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            zzcirVar.zza(z, j);
        }
    }

    public final /* synthetic */ zzatz zzW(String str, boolean z) {
        zzcki zzckiVar = true != z ? null : this;
        zzcja zzcjaVar = this.zzi;
        return new zzaud(str, null, zzckiVar, zzcjaVar.zzd, zzcjaVar.zzf, true, null);
    }

    public final /* synthetic */ zzatz zzX(String str, boolean z) {
        zzcki zzckiVar = true != z ? null : this;
        zzcja zzcjaVar = this.zzi;
        zzcju zzcjuVar = new zzcju(str, zzckiVar, zzcjaVar.zzd, zzcjaVar.zzf, zzcjaVar.zzi);
        this.zzw.add(new WeakReference<>(zzcjuVar));
        return zzcjuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzanx zzanxVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzatg zzatgVar, zzats zzatsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(boolean z, int i) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            zzcirVar.zzb(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze(zzamy zzamyVar) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            zzcirVar.zzu("onPlayerError", zzamyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzg(zzanq zzanqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaoj
    public final void zzh(zzanm zzanmVar) {
        zzcjb zzcjbVar = this.zzm.get();
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || zzanmVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzanmVar.zze);
        hashMap.put("audioSampleMime", zzanmVar.zzf);
        hashMap.put("audioCodec", zzanmVar.zzc);
        zzcjbVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzasm
    public final void zzi(IOException iOException) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            if (this.zzi.zzl) {
                zzcirVar.zzv("onLoadException", iOException);
            } else {
                zzcirVar.zzu("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final /* bridge */ /* synthetic */ void zzk(Object obj, int i) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzavy
    public final void zzl(zzanm zzanmVar) {
        zzcjb zzcjbVar = this.zzm.get();
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || zzanmVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzanmVar.zzl));
        hashMap.put("bitRate", String.valueOf(zzanmVar.zzb));
        int i = zzanmVar.zzj;
        int i2 = zzanmVar.zzk;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put(CommonCode.MapKey.HAS_RESOLUTION, sb.toString());
        hashMap.put("videoMime", zzanmVar.zze);
        hashMap.put("videoSampleMime", zzanmVar.zzf);
        hashMap.put("videoCodec", zzanmVar.zzc);
        zzcjbVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzavy
    public final void zzm(int i, long j) {
        this.zzp += i;
    }

    @Override // com.google.android.gms.internal.ads.zzavy
    public final void zzn(int i, int i2, int i3, float f) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            zzcirVar.zzc(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavy
    public final void zzo(Surface surface) {
        zzcir zzcirVar = this.zzn;
        if (zzcirVar != null) {
            zzcirVar.zzC();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzp(Uri[] uriArr, String str) {
        zzq(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzq(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzasv zzasvVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzasvVar = zzT(uriArr[0], str);
        } else {
            zzasr[] zzasrVarArr = new zzasr[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzasrVarArr[i] = zzT(uriArr[i], str);
            }
            zzasvVar = new zzasv(zzasrVarArr);
        }
        this.zzj.zzd(zzasvVar);
        zzcis.zzb.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzr(zzcir zzcirVar) {
        this.zzn = zzcirVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzs() {
        zzanc zzancVar = this.zzj;
        if (zzancVar != null) {
            zzancVar.zzb(this);
            this.zzj.zzi();
            this.zzj = null;
            zzcis.zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzt(Surface surface, boolean z) {
        if (this.zzj == null) {
            return;
        }
        zzanb zzanbVar = new zzanb(this.zzf, 1, surface);
        if (z) {
            this.zzj.zzk(zzanbVar);
        } else {
            this.zzj.zzj(zzanbVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzu(float f, boolean z) {
        if (this.zzj == null) {
            return;
        }
        zzanb zzanbVar = new zzanb(this.zzg, 2, Float.valueOf(f));
        if (z) {
            this.zzj.zzk(zzanbVar);
        } else {
            this.zzj.zzj(zzanbVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzv() {
        this.zzj.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzw(long j) {
        this.zzj.zzg(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzx(int i) {
        this.zze.zzi(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzy(int i) {
        this.zze.zzj(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzz(int i) {
        for (WeakReference<zzcju> weakReference : this.zzw) {
            zzcju zzcjuVar = weakReference.get();
            if (zzcjuVar != null) {
                zzcjuVar.zzg(i);
            }
        }
    }
}
