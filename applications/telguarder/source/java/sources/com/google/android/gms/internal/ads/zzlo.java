package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlo.class */
public final class zzlo implements zzka, zzkf {
    private static final zzkb zzapk = new zzln();
    private static final int zzazz = zzpt.zzbh("qt  ");
    private long zzaip;
    private int zzarg;
    private int zzarh;
    private zzkc zzark;
    private int zzaxv;
    private int zzaxw;
    private long zzaxx;
    private int zzaxy;
    private zzpn zzaxz;
    private zzlq[] zzbaa;
    private boolean zzbab;
    private final zzpn zzaxr = new zzpn(16);
    private final Stack<zzkv> zzaxt = new Stack<>();
    private final zzpn zzapr = new zzpn(zzpm.zzbjt);
    private final zzpn zzaps = new zzpn(4);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    private final void zzeb(long j) throws zzhw {
        char c;
        zzls zza;
        while (!this.zzaxt.isEmpty() && this.zzaxt.peek().zzasu == j) {
            zzkv pop = this.zzaxt.pop();
            if (pop.type == zzkw.zzaty) {
                char c2 = 1;
                ArrayList arrayList = new ArrayList();
                char c3 = 65535;
                zzmh zzmhVar = null;
                zzke zzkeVar = new zzke();
                zzky zzap = pop.zzap(zzkw.zzavx);
                if (zzap != null) {
                    zzmh zza2 = zzkx.zza(zzap, this.zzbab);
                    zzmhVar = zza2;
                    if (zza2 != null) {
                        zzkeVar.zzb(zza2);
                        zzmhVar = zza2;
                    }
                }
                int i = 0;
                zzmh zzmhVar2 = zzmhVar;
                while (i < pop.zzasw.size()) {
                    zzkv zzkvVar = pop.zzasw.get(i);
                    if (zzkvVar.type == zzkw.zzaua && (zza = zzkx.zza(zzkvVar, pop.zzap(zzkw.zzatz), -9223372036854775807L, (zzjo) null, this.zzbab)) != null) {
                        zzlt zza3 = zzkx.zza(zza, zzkvVar.zzaq(zzkw.zzaub).zzaq(zzkw.zzauc).zzaq(zzkw.zzaud), zzkeVar);
                        if (zza3.zzaxc != 0) {
                            zzlq zzlqVar = new zzlq(zza, zza3, this.zzark.zzc(i, zza.type));
                            zzht zzv = zza.zzahz.zzv(zza3.zzayj + 30);
                            zzht zzhtVar = zzv;
                            if (zza.type == 1) {
                                zzht zzhtVar2 = zzv;
                                if (zzkeVar.zzgt()) {
                                    zzhtVar2 = zzv.zzb(zzkeVar.zzahr, zzkeVar.zzahs);
                                }
                                zzhtVar = zzhtVar2;
                                if (zzmhVar2 != null) {
                                    zzhtVar = zzhtVar2.zza(zzmhVar2);
                                }
                            }
                            zzlqVar.zzbae.zze(zzhtVar);
                            ?? max = Math.max((long) c2, zza.zzaip);
                            arrayList.add(zzlqVar);
                            ?? r0 = zza3.zzaov[0];
                            c2 = max;
                            c = c3;
                            if (r0 < c3) {
                                c = r0;
                                c2 = max;
                            }
                            i++;
                            c3 = c;
                        }
                    }
                    c = c3;
                    i++;
                    c3 = c;
                }
                this.zzaip = c2;
                this.zzbaa = (zzlq[]) arrayList.toArray(new zzlq[arrayList.size()]);
                this.zzark.zzgs();
                this.zzark.zza(this);
                this.zzaxt.clear();
                this.zzaxv = 2;
            } else if (!this.zzaxt.isEmpty()) {
                this.zzaxt.peek().zza(pop);
            }
        }
        if (this.zzaxv != 2) {
            zzhb();
        }
    }

    private final void zzhb() {
        this.zzaxv = 0;
        this.zzaxy = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final long getDurationUs() {
        return this.zzaip;
    }

    @Override // com.google.android.gms.internal.ads.zzkf
    public final boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void release() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0331 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0519 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzka
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzjz r9, com.google.android.gms.internal.ads.zzkg r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlo.zza(com.google.android.gms.internal.ads.zzjz, com.google.android.gms.internal.ads.zzkg):int");
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zza(zzkc zzkcVar) {
        this.zzark = zzkcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final boolean zza(zzjz zzjzVar) throws IOException, InterruptedException {
        return zzlp.zze(zzjzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzka
    public final void zzc(long j, long j2) {
        this.zzaxt.clear();
        this.zzaxy = 0;
        this.zzarh = 0;
        this.zzarg = 0;
        if (j == 0) {
            zzhb();
            return;
        }
        zzlq[] zzlqVarArr = this.zzbaa;
        if (zzlqVarArr == null) {
            return;
        }
        for (zzlq zzlqVar : zzlqVarArr) {
            zzlt zzltVar = zzlqVar.zzbad;
            int zzec = zzltVar.zzec(j2);
            int i = zzec;
            if (zzec == -1) {
                i = zzltVar.zzed(j2);
            }
            zzlqVar.zzaxg = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzkf
    public final long zzdz(long j) {
        zzlq[] zzlqVarArr = this.zzbaa;
        int length = zzlqVarArr.length;
        char c = 65535;
        int i = 0;
        while (i < length) {
            zzlt zzltVar = zzlqVarArr[i].zzbad;
            int zzec = zzltVar.zzec(j);
            int i2 = zzec;
            if (zzec == -1) {
                i2 = zzltVar.zzed(j);
            }
            ?? r0 = zzltVar.zzaov[i2];
            char c2 = c;
            if (r0 < c) {
                c2 = r0;
            }
            i++;
            c = c2;
        }
        return c;
    }
}
