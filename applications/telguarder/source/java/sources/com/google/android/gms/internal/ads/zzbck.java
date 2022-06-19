package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbck.class */
public final class zzbck implements zzhg, zzil, zzmz, zzpd<zzon>, zzqk {
    private static int zzeom;
    private static int zzeon;
    private int bytesTransferred;
    private final Context context;
    private int zzbls;
    private final String zzbvs;
    private final int zzbvt;
    private final zzbbl zzenf;
    private final zzbch zzeoo;
    private final zzhy zzeop;
    private final zzhy zzeoq;
    private final zzob zzeor;
    private zzhh zzeos;
    private ByteBuffer zzeot;
    private boolean zzeou;
    private final WeakReference<zzbbo> zzeov;
    private zzbcu zzeow;
    private long zzeox;
    private final ArrayList<zzot> zzeoy;
    private volatile zzbcg zzeoz;
    private Set<WeakReference<zzbce>> zzepa = new HashSet();

    public zzbck(Context context, zzbbl zzbblVar, zzbbo zzbboVar) {
        this.context = context;
        this.zzenf = zzbblVar;
        this.zzeov = new WeakReference<>(zzbboVar);
        zzbch zzbchVar = new zzbch();
        this.zzeoo = zzbchVar;
        zzqe zzqeVar = new zzqe(context, zzlx.zzbcu, 0L, zzj.zzeen, this, -1);
        this.zzeop = zzqeVar;
        zzjc zzjcVar = new zzjc(zzlx.zzbcu, zzj.zzeen, this);
        this.zzeoq = zzjcVar;
        zzoa zzoaVar = new zzoa();
        this.zzeor = zzoaVar;
        if (zzd.zzyg()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzd.zzeb(sb.toString());
        }
        zzeom++;
        int i = 0;
        zzhh zza = zzhl.zza(new zzhy[]{zzjcVar, zzqeVar}, zzoaVar, zzbchVar);
        this.zzeos = zza;
        zza.zza(this);
        this.bytesTransferred = 0;
        this.zzeox = 0L;
        this.zzbls = 0;
        this.zzeoy = new ArrayList<>();
        this.zzeoz = null;
        this.zzbvs = (zzbboVar == null || zzbboVar.zzabg() == null) ? "" : zzbboVar.zzabg();
        this.zzbvt = zzbboVar != null ? zzbboVar.zzabh() : i;
    }

    private final boolean zzace() {
        return this.zzeoz != null && this.zzeoz.zzace();
    }

    public static int zzacj() {
        return zzeom;
    }

    public static int zzack() {
        return zzeon;
    }

    private final zzne zzb(Uri uri, String str) {
        zzoq zzoqVar;
        if (!this.zzeou || this.zzeot.limit() <= 0) {
            zzoq zzoqVar2 = this.zzenf.zzeln > 0 ? new zzoq(this, str) { // from class: com.google.android.gms.internal.ads.zzbcl
                private final String zzdjf;
                private final zzbck zzepb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzepb = this;
                    this.zzdjf = str;
                }

                @Override // com.google.android.gms.internal.ads.zzoq
                public final zzon zzip() {
                    return this.zzepb.zzff(this.zzdjf);
                }
            } : new zzoq(this, str) { // from class: com.google.android.gms.internal.ads.zzbco
                private final String zzdjf;
                private final zzbck zzepb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzepb = this;
                    this.zzdjf = str;
                }

                @Override // com.google.android.gms.internal.ads.zzoq
                public final zzon zzip() {
                    return this.zzepb.zzfe(this.zzdjf);
                }
            };
            zzoq zzoqVar3 = zzoqVar2;
            if (this.zzenf.zzelo) {
                zzoqVar3 = new zzoq(this, zzoqVar2) { // from class: com.google.android.gms.internal.ads.zzbcn
                    private final zzbck zzepb;
                    private final zzoq zzepc;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzepb = this;
                        this.zzepc = zzoqVar2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzoq
                    public final zzon zzip() {
                        return this.zzepb.zza(this.zzepc);
                    }
                };
            }
            zzoqVar = zzoqVar3;
            if (this.zzeot.limit() > 0) {
                byte[] bArr = new byte[this.zzeot.limit()];
                this.zzeot.get(bArr);
                zzoqVar = new zzoq(zzoqVar3, bArr) { // from class: com.google.android.gms.internal.ads.zzbcq
                    private final byte[] zzdxe;
                    private final zzoq zzepe;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzepe = zzoqVar3;
                        this.zzdxe = bArr;
                    }

                    @Override // com.google.android.gms.internal.ads.zzoq
                    public final zzon zzip() {
                        zzoq zzoqVar6 = this.zzepe;
                        byte[] bArr2 = this.zzdxe;
                        return new zzbct(new zzoo(bArr2), bArr2.length, zzoqVar6.zzip());
                    }
                };
            }
        } else {
            byte[] bArr2 = new byte[this.zzeot.limit()];
            this.zzeot.get(bArr2);
            zzoqVar = new zzoq(bArr2) { // from class: com.google.android.gms.internal.ads.zzbcm
                private final byte[] zzehv;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzehv = bArr2;
                }

                @Override // com.google.android.gms.internal.ads.zzoq
                public final zzon zzip() {
                    return new zzoo(this.zzehv);
                }
            };
        }
        return new zzna(uri, zzoqVar, ((Boolean) zzwr.zzqr().zzd(zzabp.zzcmw)).booleanValue() ? zzbcp.zzepd : zzbcs.zzepd, this.zzenf.zzelp, zzj.zzeen, this, null, this.zzenf.zzell);
    }

    private static long zzk(Map<String, List<String>> map) {
        if (map != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                if (entry != null) {
                    try {
                        if (entry.getKey() != null && zzdvr.zza("content-length", entry.getKey()) && entry.getValue() != null && entry.getValue().get(0) != null) {
                            return Long.parseLong(entry.getValue().get(0));
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
            return 0L;
        }
        return 0L;
    }

    public final void finalize() throws Throwable {
        zzeom--;
        if (zzd.zzyg()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzd.zzeb(sb.toString());
        }
    }

    public final long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public final long getTotalBytes() {
        if (!zzace()) {
            while (!this.zzeoy.isEmpty()) {
                this.zzeox += zzk(this.zzeoy.remove(0).getResponseHeaders());
            }
            return this.zzeox;
        }
        return this.zzeoz.getContentLength();
    }

    public final void release() {
        zzhh zzhhVar = this.zzeos;
        if (zzhhVar != null) {
            zzhhVar.zzb(this);
            this.zzeos.release();
            this.zzeos = null;
            zzeon--;
        }
    }

    public final /* synthetic */ zzon zza(zzoq zzoqVar) {
        return new zzbcg(this.context, zzoqVar.zzip(), this.zzbvs, this.zzbvt, this, new zzbci(this) { // from class: com.google.android.gms.internal.ads.zzbcr
            private final zzbck zzepb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzepb = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbci
            public final void zzb(boolean z, long j) {
                this.zzepb.zzd(z, j);
            }
        });
    }

    public final void zza(Surface surface, boolean z) {
        if (this.zzeos == null) {
            return;
        }
        zzhi zzhiVar = new zzhi(this.zzeop, 1, surface);
        if (z) {
            this.zzeos.zzb(zzhiVar);
        } else {
            this.zzeos.zza(zzhiVar);
        }
    }

    public final void zza(zzbcu zzbcuVar) {
        this.zzeow = zzbcuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzhe zzheVar) {
        zzbcu zzbcuVar = this.zzeow;
        if (zzbcuVar != null) {
            zzbcuVar.zza("onPlayerError", zzheVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzhz zzhzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzid zzidVar, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zznu zznuVar, zzoi zzoiVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zza(zzon zzonVar, zzos zzosVar) {
        zzon zzonVar2 = zzonVar;
        if (zzonVar2 instanceof zzot) {
            this.zzeoy.add((zzot) zzonVar2);
        } else if (!(zzonVar2 instanceof zzbcg)) {
        } else {
            this.zzeoz = (zzbcg) zzonVar2;
            zzbbo zzbboVar = this.zzeov.get();
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() || zzbboVar == null || !this.zzeoz.zzmz()) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.zzeoz.zznc()));
            hashMap.put("gcacheDownloaded", String.valueOf(this.zzeoz.zzacf()));
            zzj.zzeen.post(new Runnable(zzbboVar, hashMap) { // from class: com.google.android.gms.internal.ads.zzbcj
                private final Map zzehx;
                private final zzbbo zzeol;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzeol = zzbboVar;
                    this.zzehx = hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzeol.zza("onGcacheInfoEvent", this.zzehx);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(boolean z, int i) {
        zzbcu zzbcuVar = this.zzeow;
        if (zzbcuVar != null) {
            zzbcuVar.zzdq(i);
        }
    }

    public final void zza(Uri[] uriArr, String str) {
        zza(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void zza(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zznf zznfVar;
        if (this.zzeos == null) {
            return;
        }
        this.zzeot = byteBuffer;
        this.zzeou = z;
        if (uriArr.length == 1) {
            zznfVar = zzb(uriArr[0], str);
        } else {
            zzne[] zzneVarArr = new zzne[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                zzneVarArr[i] = zzb(uriArr[i], str);
            }
            zznfVar = new zznf(zzneVarArr);
        }
        this.zzeos.zza(zznfVar);
        zzeon++;
    }

    public final long zzaah() {
        if (!zzace()) {
            return this.bytesTransferred;
        }
        return 0L;
    }

    public final int zzaai() {
        return this.zzbls;
    }

    public final zzhh zzaci() {
        return this.zzeos;
    }

    public final zzbch zzacl() {
        return this.zzeoo;
    }

    public final void zzax(boolean z) {
        if (this.zzeos == null) {
            return;
        }
        for (int i = 0; i < this.zzeos.zzem(); i++) {
            this.zzeor.zzf(i, !z);
        }
    }

    public final void zzb(float f, boolean z) {
        if (this.zzeos == null) {
            return;
        }
        zzhi zzhiVar = new zzhi(this.zzeoq, 2, Float.valueOf(f));
        if (z) {
            this.zzeos.zzb(zzhiVar);
        } else {
            this.zzeos.zza(zzhiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzb(int i, int i2, int i3, float f) {
        zzbcu zzbcuVar = this.zzeow;
        if (zzbcuVar != null) {
            zzbcuVar.zzn(i, i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzb(int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzb(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    public final void zzb(IOException iOException) {
        zzbcu zzbcuVar = this.zzeow;
        if (zzbcuVar != null) {
            zzbcuVar.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzb(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzc(zzht zzhtVar) {
        zzbbo zzbboVar = this.zzeov.get();
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() || zzbboVar == null || zzhtVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzhtVar.zzahd);
        hashMap.put("audioSampleMime", zzhtVar.zzahe);
        hashMap.put("audioCodec", zzhtVar.zzahb);
        zzbboVar.zza("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzc(zzjm zzjmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zzc(zzon zzonVar, int i) {
        this.bytesTransferred += i;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzd(zzjm zzjmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzd(String str, long j, long j2) {
    }

    public final /* synthetic */ void zzd(boolean z, long j) {
        zzbcu zzbcuVar = this.zzeow;
        if (zzbcuVar != null) {
            zzbcuVar.zzb(z, j);
        }
    }

    public final void zzdo(int i) {
        for (WeakReference<zzbce> weakReference : this.zzepa) {
            zzbce zzbceVar = weakReference.get();
            if (zzbceVar != null) {
                zzbceVar.setReceiveBufferSize(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zze(zzjm zzjmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zze(zzon zzonVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzek() {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzf(zzjm zzjmVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzf(boolean z) {
    }

    public final /* synthetic */ zzon zzfe(String str) {
        return new zzou(str, null, this.zzenf.zzelo ? null : this, this.zzenf.zzeli, this.zzenf.zzelk, true, null);
    }

    public final /* synthetic */ zzon zzff(String str) {
        zzbce zzbceVar = new zzbce(str, this.zzenf.zzelo ? null : this, this.zzenf.zzeli, this.zzenf.zzelk, this.zzenf.zzeln);
        this.zzepa.add(new WeakReference<>(zzbceVar));
        return zzbceVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzg(int i, long j) {
        this.zzbls += i;
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzk(zzht zzhtVar) {
        zzbbo zzbboVar = this.zzeov.get();
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() || zzbboVar == null || zzhtVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzhtVar.zzahi));
        hashMap.put("bitRate", String.valueOf(zzhtVar.zzaha));
        int i = zzhtVar.width;
        int i2 = zzhtVar.height;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", zzhtVar.zzahd);
        hashMap.put("videoSampleMime", zzhtVar.zzahe);
        hashMap.put("videoCodec", zzhtVar.zzahb);
        zzbboVar.zza("onMetadataEvent", hashMap);
    }

    public final long zznb() {
        if (zzace() && this.zzeoz.zznc()) {
            return Math.min(this.bytesTransferred, this.zzeoz.zznb());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzx(int i) {
    }
}
