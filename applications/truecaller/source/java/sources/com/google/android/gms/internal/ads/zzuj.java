package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuj.class */
public final class zzuj implements zznu {
    public static final zzoa zza = zzug.zza;
    private final List<zzamn> zzb;
    private final zzamf zzc;
    private final SparseIntArray zzd;
    private final zzum zze;
    private final SparseArray<zzuo> zzf;
    private final SparseBooleanArray zzg;
    private final SparseBooleanArray zzh;
    private final zzuf zzi;
    private zzue zzj;
    private zznx zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;

    public zzuj() {
        this(0);
    }

    public zzuj(int i) {
        this(1, 0, 112800);
    }

    public zzuj(int i, int i2, int i3) {
        zzamn zzamnVar = new zzamn(0L);
        this.zze = new zzsy(0);
        this.zzb = Collections.singletonList(zzamnVar);
        this.zzc = new zzamf(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzg = sparseBooleanArray;
        this.zzh = new SparseBooleanArray();
        SparseArray<zzuo> sparseArray = new SparseArray<>();
        this.zzf = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzi = new zzuf(112800);
        this.zzk = zznx.zza;
        this.zzq = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzf.put(sparseArray2.keyAt(i4), (zzuo) sparseArray2.valueAt(i4));
        }
        this.zzf.put(0, new zzub(new zzuh(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
        r9 = r9 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zznv r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            com.google.android.gms.internal.ads.zzamf r0 = r0.zzc
            byte[] r0 = r0.zzi()
            r8 = r0
            r0 = r7
            com.google.android.gms.internal.ads.zznp r0 = (com.google.android.gms.internal.ads.zznp) r0
            r7 = r0
            r0 = r7
            r1 = r8
            r2 = 0
            r3 = 940(0x3ac, float:1.317E-42)
            r4 = 0
            boolean r0 = r0.zzh(r1, r2, r3, r4)
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
            boolean r0 = r0.zzd(r1, r2)
            r0 = 1
            return r0
        L4e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuj.zza(com.google.android.gms.internal.ads.zznv):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzk = zznxVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x02e2, code lost:
        if (r0 == false) goto L83;
     */
    @Override // com.google.android.gms.internal.ads.zznu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(com.google.android.gms.internal.ads.zznv r11, com.google.android.gms.internal.ads.zzoq r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuj.zzc(com.google.android.gms.internal.ads.zznv, com.google.android.gms.internal.ads.zzoq):int");
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        zzue zzueVar;
        int size = this.zzb.size();
        for (int i = 0; i < size; i++) {
            zzamn zzamnVar = this.zzb.get(i);
            if (zzamnVar.zzc() != -9223372036854775807L) {
                long zza2 = zzamnVar.zza();
                if (zza2 != -9223372036854775807L) {
                    if (zza2 != 0) {
                        if (zza2 == j2) {
                        }
                    }
                }
            }
            zzamnVar.zzd(j2);
        }
        if (j2 != 0 && (zzueVar = this.zzj) != null) {
            zzueVar.zzb(j2);
        }
        this.zzc.zza(0);
        this.zzd.clear();
        for (int i2 = 0; i2 < this.zzf.size(); i2++) {
            this.zzf.valueAt(i2).zzb();
        }
        this.zzp = 0;
    }
}
