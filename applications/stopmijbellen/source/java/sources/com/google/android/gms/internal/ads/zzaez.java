package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaez.class */
public final class zzaez implements zzwp {
    public static final zzww zza = zzaew.zza;
    private final List<zzfk> zzb;
    private final zzfd zzc;
    private final SparseIntArray zzd;
    private final zzafc zze;
    private final SparseArray<zzafe> zzf;
    private final SparseBooleanArray zzg;
    private final SparseBooleanArray zzh;
    private final zzaev zzi;
    private zzaeu zzj;
    private zzws zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;

    public zzaez() {
        this(0);
    }

    public zzaez(int i) {
        this(1, 0, 112800);
    }

    public zzaez(int i, int i2, int i3) {
        zzfk zzfkVar = new zzfk(0L);
        this.zze = new zzado(0);
        this.zzb = Collections.singletonList(zzfkVar);
        this.zzc = new zzfd(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzg = sparseBooleanArray;
        this.zzh = new SparseBooleanArray();
        SparseArray<zzafe> sparseArray = new SparseArray<>();
        this.zzf = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzi = new zzaev(112800);
        this.zzk = zzws.zza;
        this.zzq = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzf.put(sparseArray2.keyAt(i4), (zzafe) sparseArray2.valueAt(i4));
        }
        this.zzf.put(0, new zzaer(new zzaex(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x02e0, code lost:
        if (r0 == false) goto L83;
     */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzwq r11, com.google.android.gms.internal.ads.zzxm r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaez.zza(com.google.android.gms.internal.ads.zzwq, com.google.android.gms.internal.ads.zzxm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzk = zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        zzaeu zzaeuVar;
        int size = this.zzb.size();
        for (int i = 0; i < size; i++) {
            zzfk zzfkVar = this.zzb.get(i);
            if (zzfkVar.zze() != -9223372036854775807L) {
                long zzc = zzfkVar.zzc();
                if (zzc != -9223372036854775807L) {
                    if (zzc != 0) {
                        if (zzc == j2) {
                        }
                    }
                }
            }
            zzfkVar.zzf(j2);
        }
        if (j2 != 0 && (zzaeuVar = this.zzj) != null) {
            zzaeuVar.zzd(j2);
        }
        this.zzc.zzC(0);
        this.zzd.clear();
        for (int i2 = 0; i2 < this.zzf.size(); i2++) {
            this.zzf.valueAt(i2).zzc();
        }
        this.zzp = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
        r9 = r9 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzwp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(com.google.android.gms.internal.ads.zzwq r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.zzfd r0 = r0.zzc
            byte[] r0 = r0.zzH()
            r8 = r0
            r0 = r7
            com.google.android.gms.internal.ads.zzwk r0 = (com.google.android.gms.internal.ads.zzwk) r0
            r7 = r0
            r0 = r7
            r1 = r8
            r2 = 0
            r3 = 940(0x3ac, float:1.317E-42)
            r4 = 0
            boolean r0 = r0.zzm(r1, r2, r3, r4)
            r0 = 0
            r9 = r0
        L1a:
            r0 = r9
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 >= r1) goto L4e
            r0 = 0
            r10 = r0
        L24:
            r0 = r10
            r1 = 5
            if (r0 >= r1) goto L45
            r0 = r8
            r1 = r10
            r2 = 188(0xbc, float:2.63E-43)
            int r1 = r1 * r2
            r2 = r9
            int r1 = r1 + r2
            r0 = r0[r1]
            r1 = 71
            if (r0 == r1) goto L3f
            int r9 = r9 + 1
            goto L1a
        L3f:
            int r10 = r10 + 1
            goto L24
        L45:
            r0 = r7
            r1 = r9
            r2 = 0
            boolean r0 = r0.zzo(r1, r2)
            r0 = 1
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaez.zzd(com.google.android.gms.internal.ads.zzwq):boolean");
    }
}
