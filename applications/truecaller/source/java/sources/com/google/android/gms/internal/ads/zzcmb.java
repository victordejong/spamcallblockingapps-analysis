package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.common.util.VisibleForTesting;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmb.class */
public final class zzcmb extends zzcis implements zzay, zzda {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzclm zze;
    private final zzjt zzf;
    private final zzcja zzg;
    private final WeakReference<zzcjb> zzh;
    private final zzij zzi;
    private zzaie zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private zzcir zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private final String zzq;
    private final int zzr;
    private final ArrayList<zzaw> zzt;
    private volatile zzclp zzu;
    private final Object zzs = new Object();
    private final Set<WeakReference<zzcll>> zzv = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:26:0x017f, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzbet.zzc().zzc(com.google.android.gms.internal.ads.zzbjl.zzbl)).booleanValue() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0186, code lost:
        if (r9.zzj == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0189, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0190, code lost:
        if (r9.zzi <= 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0193, code lost:
        r8 = new com.google.android.gms.internal.ads.zzclt(r7, r0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01a2, code lost:
        r8 = new com.google.android.gms.internal.ads.zzclu(r7, r0, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01b2, code lost:
        if (r9.zzj == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01b5, code lost:
        r9 = new com.google.android.gms.internal.ads.zzclv(r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01c2, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01c4, code lost:
        r0 = r7.zzk;
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01cc, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01cf, code lost:
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01d5, code lost:
        if (r0.limit() <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01d8, code lost:
        r0 = new byte[r7.zzk.limit()];
        r7.zzk.get(r0);
        r8 = new com.google.android.gms.internal.ads.zzclw(r9, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcmb(android.content.Context r8, com.google.android.gms.internal.ads.zzcja r9, com.google.android.gms.internal.ads.zzcjb r10) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcmb.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcja, com.google.android.gms.internal.ads.zzcjb):void");
    }

    private final boolean zzU() {
        return this.zzu != null && this.zzu.zzl();
    }

    public final void finalize() {
        zzcis.zza.decrementAndGet();
        if (zze.zzc()) {
            zze.zza("OfficialSimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final boolean zzA() {
        return this.zzj != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final int zzB() {
        return this.zzj.zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzC() {
        return this.zzj.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final boolean zzD() {
        return this.zzj.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzE(boolean z) {
        this.zzj.zzL(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzF(int i) {
        this.zze.zzj(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzG(int i) {
        this.zze.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzH() {
        return this.zzj.zzP();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzI() {
        if (!zzU()) {
            return this.zzn;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzJ() {
        if (zzU() && this.zzu.zzm()) {
            return Math.min(this.zzn, this.zzu.zzo());
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
        if (!zzU()) {
            synchronized (this.zzs) {
                while (!this.zzt.isEmpty()) {
                    long j = this.zzp;
                    Map<String, List<String>> zzf = this.zzt.remove(0).zzf();
                    ?? r13 = false;
                    if (zzf != null) {
                        Iterator<Map.Entry<String, List<String>>> it = zzf.entrySet().iterator();
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
                    this.zzp = j + (r13 == true ? 1L : 0L);
                }
            }
            return this.zzp;
        }
        return this.zzu.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final int zzL() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzM(boolean z) {
        if (this.zzj != null) {
            int i = 0;
            while (true) {
                this.zzj.zzO();
                if (i >= 2) {
                    return;
                }
                zzjt zzjtVar = this.zzf;
                zzjo zzg = zzjtVar.zzc().zzg();
                zzg.zzs(i, !z);
                zzjtVar.zzd(zzg);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzN() {
        return this.zzj.zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final long zzO() {
        return this.zzn;
    }

    public final /* synthetic */ void zzR(boolean z, long j) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            zzcirVar.zza(z, j);
        }
    }

    public final /* synthetic */ zzaj zzS(String str, boolean z) {
        zzao zzaoVar = new zzao();
        zzaoVar.zzb(str);
        zzaoVar.zzf(true != z ? null : this);
        zzaoVar.zzc(this.zzg.zzd);
        zzaoVar.zzd(this.zzg.zzf);
        zzaoVar.zze(true);
        return zzaoVar.zza();
    }

    public final /* synthetic */ zzaj zzT(String str, boolean z) {
        zzcmb zzcmbVar = true != z ? null : this;
        zzcja zzcjaVar = this.zzg;
        zzcll zzcllVar = new zzcll(str, zzcmbVar, zzcjaVar.zzd, zzcjaVar.zzf, zzcjaVar.zzi);
        this.zzv.add(new WeakReference<>(zzcllVar));
        return zzcllVar;
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zza(zzaj zzajVar, zzan zzanVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzb(zzaj zzajVar, zzan zzanVar, boolean z) {
        if (zzajVar instanceof zzaw) {
            synchronized (this.zzs) {
                this.zzt.add((zzaw) zzajVar);
            }
        } else if (!(zzajVar instanceof zzclp)) {
        } else {
            this.zzu = (zzclp) zzajVar;
            zzcjb zzcjbVar = this.zzh.get();
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || !this.zzu.zzk()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.zzu.zzm()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.zzu.zzn()));
            zzs.zza.post(new Runnable(zzcjbVar, hashMap) { // from class: com.google.android.gms.internal.ads.zzclr
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
                    int i = zzcmb.zzc;
                    zzcjbVar2.zze("onGcacheInfoEvent", map);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzc(zzaj zzajVar, zzan zzanVar, boolean z, int i) {
        this.zzn += i;
    }

    @Override // com.google.android.gms.internal.ads.zzay
    public final void zzd(zzaj zzajVar, zzan zzanVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zze(zzcz zzczVar, int i) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            zzcirVar.zzb(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzf(zzcz zzczVar, zzahc zzahcVar) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            zzcirVar.zzu("onPlayerError", zzahcVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzg(zzcz zzczVar, zzgx zzgxVar, zzhc zzhcVar, IOException iOException, boolean z) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            if (this.zzg.zzl) {
                zzcirVar.zzv("onLoadException", iOException);
            } else {
                zzcirVar.zzu("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzh(zzcz zzczVar, zzafv zzafvVar, zzba zzbaVar) {
        zzcjb zzcjbVar = this.zzh.get();
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || zzafvVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzafvVar.zzk);
        hashMap.put("audioSampleMime", zzafvVar.zzl);
        hashMap.put("audioCodec", zzafvVar.zzi);
        zzcjbVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzi(zzcz zzczVar, zzafv zzafvVar, zzba zzbaVar) {
        zzcjb zzcjbVar = this.zzh.get();
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue() || zzcjbVar == null || zzafvVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzafvVar.zzs));
        hashMap.put("bitRate", String.valueOf(zzafvVar.zzh));
        int i = zzafvVar.zzq;
        int i2 = zzafvVar.zzr;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put(CommonCode.MapKey.HAS_RESOLUTION, sb.toString());
        hashMap.put("videoMime", zzafvVar.zzk);
        hashMap.put("videoSampleMime", zzafvVar.zzl);
        hashMap.put("videoCodec", zzafvVar.zzi);
        zzcjbVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzj(zzcz zzczVar, int i, long j) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzk(zzcz zzczVar, Object obj, long j) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            zzcirVar.zzC();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final void zzl(zzcz zzczVar, zzy zzyVar) {
        zzcir zzcirVar = this.zzm;
        if (zzcirVar != null) {
            zzcirVar.zzc(zzyVar.zzb, zzyVar.zzc);
        }
    }

    @VisibleForTesting
    public final zzhh zzm(Uri uri) {
        zzagb zzagbVar = new zzagb();
        zzagbVar.zzb(uri);
        zzagk zzc2 = zzagbVar.zzc();
        zzij zzijVar = this.zzi;
        zzijVar.zza(this.zzg.zzg);
        return zzijVar.zzb(zzc2);
    }

    public final /* synthetic */ zzahv[] zzn(Handler handler, zzmu zzmuVar, zzdq zzdqVar, zzakr zzakrVar, zzaiw zzaiwVar) {
        Context context = this.zzd;
        zzfs zzfsVar = zzfs.zzb;
        zzen zzenVar = new zzen(null, new zzde[0], false);
        zzfm zzfmVar = zzfm.zza;
        return new zzahv[]{new zzer(context, zzfmVar, zzfsVar, false, handler, zzdqVar, zzenVar), new zzlz(this.zzd, zzfmVar, zzfsVar, 0L, false, handler, zzmuVar, -1)};
    }

    public final /* synthetic */ zzaj zzo(zzai zzaiVar) {
        return new zzclp(this.zzd, zzaiVar.zza(), this.zzq, this.zzr, this, new zzclo(this) { // from class: com.google.android.gms.internal.ads.zzcma
            private final zzcmb zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzclo
            public final void zza(boolean z, long j) {
                this.zza.zzR(z, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzp(Uri[] uriArr, String str) {
        zzq(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzq(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzhv zzhvVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzhvVar = zzm(uriArr[0]);
        } else {
            zzhh[] zzhhVarArr = new zzhh[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzhhVarArr[i] = zzm(uriArr[i]);
            }
            zzhvVar = new zzhv(false, false, zzhhVarArr);
        }
        this.zzj.zzK(zzhvVar);
        this.zzj.zzJ();
        zzcis.zzb.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzr(zzcir zzcirVar) {
        this.zzm = zzcirVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzs() {
        zzaie zzaieVar = this.zzj;
        if (zzaieVar != null) {
            zzaieVar.zzH(this);
            this.zzj.zzN();
            this.zzj = null;
            zzcis.zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzt(Surface surface, boolean z) {
        zzaie zzaieVar = this.zzj;
        if (zzaieVar == null) {
            return;
        }
        zzaieVar.zzy(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzu(float f, boolean z) {
        zzaie zzaieVar = this.zzj;
        if (zzaieVar == null) {
            return;
        }
        zzaieVar.zzE(f);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzv() {
        this.zzj.zzq(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzw(long j) {
        zzaie zzaieVar = this.zzj;
        zzaieVar.zzp(zzaieVar.zzv(), j);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzx(int i) {
        this.zze.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzy(int i) {
        this.zze.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcis
    public final void zzz(int i) {
        for (WeakReference<zzcll> weakReference : this.zzv) {
            zzcll zzcllVar = weakReference.get();
            if (zzcllVar != null) {
                zzcllVar.zzl(i);
            }
        }
    }
}
