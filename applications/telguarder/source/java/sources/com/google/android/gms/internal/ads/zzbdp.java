package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdp.class */
public final class zzbdp extends zzbdd implements zzpd<zzon> {
    private String url;
    private ByteBuffer zzamk;
    private final String zzbvs;
    private final int zzbvt;
    private final zzbbl zzenf;
    private boolean zzeqe;
    private boolean zzeqh;
    private boolean zzeqj;
    private final zzbdq zzeqf = new zzbdq();
    private final zzbcv zzeqg = new zzbcv();
    private final Object zzeqi = new Object();

    public zzbdp(zzbbo zzbboVar, zzbbl zzbblVar) {
        super(zzbboVar);
        this.zzenf = zzbblVar;
        this.zzbvs = zzbboVar != null ? zzbboVar.zzabg() : "";
        this.zzbvt = zzbboVar != null ? zzbboVar.zzabh() : 0;
    }

    private final void zzaas() {
        int zzacn = (int) this.zzeqf.zzacn();
        int zzq = (int) this.zzeqg.zzq(this.zzamk);
        int position = this.zzamk.position();
        int round = Math.round(zzq * (position / zzacn));
        boolean z = round > 0;
        int zzacj = zzbck.zzacj();
        int zzack = zzbck.zzack();
        String str = this.url;
        zza(str, zzfh(str), position, zzacn, round, zzq, z, zzacj, zzack);
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final void abort() {
        this.zzeqe = true;
    }

    public final ByteBuffer getByteBuffer() {
        synchronized (this.zzeqi) {
            ByteBuffer byteBuffer = this.zzamk;
            if (byteBuffer != null && !this.zzeqh) {
                byteBuffer.flip();
                this.zzeqh = true;
            }
            this.zzeqe = true;
        }
        return this.zzamk;
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zza(zzon zzonVar, zzos zzosVar) {
        zzon zzonVar2 = zzonVar;
        if (zzonVar2 instanceof zzou) {
            this.zzeqf.zza((zzou) zzonVar2);
        }
    }

    public final boolean zzacm() {
        return this.zzeqj;
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zzc(zzon zzonVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zze(zzon zzonVar) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ae, code lost:
        return true;
     */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:148:? -> B:139:0x02c3). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzbdd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzfg(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdp.zzfg(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzbdd
    public final String zzfh(String str) {
        String valueOf = String.valueOf(super.zzfh(str));
        return valueOf.length() != 0 ? "cache:".concat(valueOf) : new String("cache:");
    }
}
