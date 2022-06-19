package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcof.class */
public final class zzcof extends zzcky implements zzdx, zzld {
    public static final /* synthetic */ int zzc = 0;
    private final Context zzd;
    private final zzcnr zze;
    private final zzsp zzf;
    private final zzclg zzg;
    private final WeakReference<zzclh> zzh;
    private final zzrc zzi;
    private zziu zzj;
    private ByteBuffer zzk;
    private boolean zzl;
    private zzckx zzm;
    private int zzn;
    private int zzo;
    private long zzp;
    private final String zzq;
    private final int zzr;
    @GuardedBy("httpDataSourcesLock")
    private final ArrayList<zzdv> zzt;
    private volatile zzcnt zzu;
    private final Object zzs = new Object();
    private final Set<WeakReference<zzcnq>> zzv = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0180, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzbgq.zzc().zzb(com.google.android.gms.internal.ads.zzblj.zzbr)).booleanValue() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0187, code lost:
        if (r9.zzj == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x018a, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0191, code lost:
        if (r9.zzi <= 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0194, code lost:
        r4 = r15;
        r8 = new com.google.android.gms.internal.ads.zzcnx();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x01a3, code lost:
        r4 = r15;
        r8 = new com.google.android.gms.internal.ads.zzcny();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x01b3, code lost:
        if (r9.zzj == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01b6, code lost:
        r3 = r8;
        r9 = new com.google.android.gms.internal.ads.zzcnw();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01c3, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01c5, code lost:
        r0 = r7.zzk;
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01cd, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01d0, code lost:
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01d6, code lost:
        if (r0.limit() <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01d9, code lost:
        r0 = new byte[r7.zzk.limit()];
        r7.zzk.get(r0);
        r2 = r9;
        r8 = new com.google.android.gms.internal.ads.zzcnv();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcof(android.content.Context r8, com.google.android.gms.internal.ads.zzclg r9, com.google.android.gms.internal.ads.zzclh r10) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcof.<init>(android.content.Context, com.google.android.gms.internal.ads.zzclg, com.google.android.gms.internal.ads.zzclh):void");
    }

    private final boolean zzU() {
        return this.zzu != null && this.zzu.zzq();
    }

    public final void finalize() {
        zzcky.zza.decrementAndGet();
        if (zze.zzc()) {
            zze.zza("OfficialSimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzA(Uri[] uriArr, String str) {
        zzB(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzB(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzqp zzqpVar;
        if (this.zzj == null) {
            return;
        }
        this.zzk = byteBuffer;
        this.zzl = z;
        int length = uriArr.length;
        if (length == 1) {
            zzqpVar = zzR(uriArr[0]);
        } else {
            zzqb[] zzqbVarArr = new zzqb[length];
            for (int i = 0; i < uriArr.length; i++) {
                zzqbVarArr[i] = zzR(uriArr[i]);
            }
            zzqpVar = new zzqp(false, false, zzqbVarArr);
        }
        this.zzj.zzT(zzqpVar);
        this.zzj.zzQ();
        zzcky.zzb.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzC() {
        zziu zziuVar = this.zzj;
        if (zziuVar != null) {
            zziuVar.zzS(this);
            this.zzj.zzR();
            this.zzj = null;
            zzcky.zzb.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzD(long j) {
        zziu zziuVar = this.zzj;
        zziuVar.zzn(zziuVar.zzg(), j);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzE(int i) {
        this.zze.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzF(int i) {
        this.zze.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzG(zzckx zzckxVar) {
        this.zzm = zzckxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzH(int i) {
        this.zze.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzI(int i) {
        this.zze.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzJ(boolean z) {
        this.zzj.zzU(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzK(boolean z) {
        if (this.zzj != null) {
            int i = 0;
            while (true) {
                this.zzj.zzs();
                if (i >= 2) {
                    return;
                }
                zzsp zzspVar = this.zzf;
                zzsk zzd = zzspVar.zzc().zzd();
                zzd.zzo(i, !z);
                zzspVar.zzg(zzd);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzL(int i) {
        for (WeakReference<zzcnq> weakReference : this.zzv) {
            zzcnq zzcnqVar = weakReference.get();
            if (zzcnqVar != null) {
                zzcnqVar.zzm(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzM(Surface surface, boolean z) {
        zziu zziuVar = this.zzj;
        if (zziuVar == null) {
            return;
        }
        zziuVar.zzW(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzN(float f, boolean z) {
        zziu zziuVar = this.zzj;
        if (zziuVar == null) {
            return;
        }
        zziuVar.zzX(f);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzO() {
        this.zzj.zzY(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final boolean zzP() {
        return this.zzj != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final boolean zzQ() {
        return this.zzj.zzaa();
    }

    @VisibleForTesting
    public final zzqb zzR(Uri uri) {
        zzaf zzafVar = new zzaf();
        zzafVar.zzb(uri);
        zzaz zzc2 = zzafVar.zzc();
        zzrc zzrcVar = this.zzi;
        zzrcVar.zza(this.zzg.zzg);
        return zzrcVar.zzb(zzc2);
    }

    public final /* synthetic */ void zzS(boolean z, long j) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            zzckxVar.zzi(z, j);
        }
    }

    public final /* synthetic */ zzil[] zzT(Handler handler, zzvp zzvpVar, zzlt zzltVar, zzrv zzrvVar, zzpb zzpbVar) {
        Context context = this.zzd;
        zzol zzolVar = zzol.zzb;
        zzmr zzmrVar = new zzmr(null, new zzlh[0], false);
        zzoe zzoeVar = zzoe.zza;
        return new zzil[]{new zzmv(context, zzoeVar, zzolVar, false, handler, zzltVar, zzmrVar), new zzuv(this.zzd, zzoeVar, zzolVar, 0L, false, handler, zzvpVar, -1)};
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zza(zzdi zzdiVar, zzdm zzdmVar, boolean z, int i) {
        this.zzn += i;
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzb(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzc(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzdx
    public final void zzd(zzdi zzdiVar, zzdm zzdmVar, boolean z) {
        if (zzdiVar instanceof zzdv) {
            synchronized (this.zzs) {
                this.zzt.add((zzdv) zzdiVar);
            }
        } else if (!(zzdiVar instanceof zzcnt)) {
        } else {
            this.zzu = (zzcnt) zzdiVar;
            final zzclh zzclhVar = this.zzh.get();
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || !this.zzu.zzn()) {
                return;
            }
            final HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.zzu.zzp()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.zzu.zzo()));
            zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcoe
                @Override // java.lang.Runnable
                public final void run() {
                    zzclh zzclhVar2 = zzclh.this;
                    Map<String, ?> map = hashMap;
                    int i = zzcof.zzc;
                    zzclhVar2.zzd("onGcacheInfoEvent", map);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zze(zzlc zzlcVar, zzab zzabVar, zzfz zzfzVar) {
        zzclh zzclhVar = this.zzh.get();
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || zzabVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzabVar.zzl);
        hashMap.put("audioSampleMime", zzabVar.zzm);
        hashMap.put("audioCodec", zzabVar.zzj);
        zzclhVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzf(zzlc zzlcVar, int i, long j) {
        this.zzo += i;
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzg(zzlc zzlcVar, zzpr zzprVar, zzpw zzpwVar, IOException iOException, boolean z) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            if (this.zzg.zzl) {
                zzckxVar.zzl("onLoadException", iOException);
            } else {
                zzckxVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzh(zzlc zzlcVar, int i) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            zzckxVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzi(zzlc zzlcVar, zzbl zzblVar) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            zzckxVar.zzk("onPlayerError", zzblVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzj(zzlc zzlcVar, Object obj, long j) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            zzckxVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzk(zzlc zzlcVar, zzab zzabVar, zzfz zzfzVar) {
        zzclh zzclhVar = this.zzh.get();
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue() || zzclhVar == null || zzabVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzabVar.zzt));
        hashMap.put("bitRate", String.valueOf(zzabVar.zzi));
        int i = zzabVar.zzr;
        int i2 = zzabVar.zzs;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", zzabVar.zzl);
        hashMap.put("videoSampleMime", zzabVar.zzm);
        hashMap.put("videoCodec", zzabVar.zzj);
        zzclhVar.zzd("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzld
    public final void zzl(zzlc zzlcVar, zzct zzctVar) {
        zzckx zzckxVar = this.zzm;
        if (zzckxVar != null) {
            zzckxVar.zzC(zzctVar.zzc, zzctVar.zzd);
        }
    }

    public final /* synthetic */ zzdi zzm(String str, boolean z) {
        zzcof zzcofVar = true != z ? null : this;
        zzclg zzclgVar = this.zzg;
        zzcnq zzcnqVar = new zzcnq(str, zzcofVar, zzclgVar.zzd, zzclgVar.zzf, zzclgVar.zzi);
        this.zzv.add(new WeakReference<>(zzcnqVar));
        return zzcnqVar;
    }

    public final /* synthetic */ zzdi zzn(String str, boolean z) {
        zzdn zzdnVar = new zzdn();
        zzdnVar.zzf(str);
        zzdnVar.zze(true != z ? null : this);
        zzdnVar.zzc(this.zzg.zzd);
        zzdnVar.zzd(this.zzg.zzf);
        zzdnVar.zzb(true);
        return zzdnVar.zza();
    }

    public final /* synthetic */ zzdi zzo(zzdh zzdhVar) {
        return new zzcnt(this.zzd, zzdhVar.zza(), this.zzq, this.zzr, this, new zzcod(this), null);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final int zzp() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final int zzr() {
        return this.zzj.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzt() {
        return this.zzj.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzu() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzv() {
        if (zzU() && this.zzu.zzp()) {
            return Math.min(this.zzn, this.zzu.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzw() {
        return this.zzj.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzx() {
        return this.zzj.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final long zzy() {
        if (!zzU()) {
            return this.zzn;
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
        if (!zzU()) {
            synchronized (this.zzs) {
                while (!this.zzt.isEmpty()) {
                    long j = this.zzp;
                    Map<String, List<String>> zza = this.zzt.remove(0).zza();
                    ?? r13 = false;
                    if (zza != null) {
                        Iterator<Map.Entry<String, List<String>>> it2 = zza.entrySet().iterator();
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
                    this.zzp = j + (r13 == true ? 1L : 0L);
                }
            }
            return this.zzp;
        }
        return this.zzu.zzl();
    }
}
