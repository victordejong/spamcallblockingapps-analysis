package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabg.class */
public final class zzabg implements zzwp {
    public static final zzww zza = zzabe.zza;
    private static final zzzr zzb = zzabf.zza;
    private final zzfd zzc;
    private final zzxj zzd;
    private final zzxf zze;
    private final zzxh zzf;
    private final zzxt zzg;
    private zzws zzh;
    private zzxt zzi;
    private zzxt zzj;
    private int zzk;
    private zzdd zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzabi zzq;
    private boolean zzr;

    public zzabg() {
        this(0);
    }

    public zzabg(int i) {
        this.zzc = new zzfd(10);
        this.zzd = new zzxj();
        this.zze = new zzxf();
        this.zzm = -9223372036854775807L;
        this.zzf = new zzxh();
        zzwo zzwoVar = new zzwo();
        this.zzg = zzwoVar;
        this.zzj = zzwoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x028f  */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzf(com.google.android.gms.internal.ads.zzwq r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabg.zzf(com.google.android.gms.internal.ads.zzwq):int");
    }

    private final long zzg(long j) {
        return ((j * 1000000) / this.zzd.zzd) + this.zzm;
    }

    private final zzabi zzh(zzwq zzwqVar, boolean z) throws IOException {
        ((zzwk) zzwqVar).zzm(this.zzc.zzH(), 0, 4, false);
        this.zzc.zzF(0);
        this.zzd.zza(this.zzc.zze());
        return new zzabb(zzwqVar.zzc(), zzwqVar.zze(), this.zzd, false);
    }

    private static boolean zzi(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzj(zzwq zzwqVar) throws IOException {
        zzabi zzabiVar = this.zzq;
        if (zzabiVar != null) {
            long zzb2 = zzabiVar.zzb();
            if (zzb2 != -1 && zzwqVar.zzd() > zzb2 - 4) {
                return true;
            }
        }
        try {
            return !zzwqVar.zzm(this.zzc.zzH(), 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0122, code lost:
        if (r7 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0125, code lost:
        ((com.google.android.gms.internal.ads.zzwk) r6).zzo(r10 + r13, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
        r6.zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013c, code lost:
        r5.zzk = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0143, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzk(com.google.android.gms.internal.ads.zzwq r6, boolean r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabg.zzk(com.google.android.gms.internal.ads.zzwq, boolean):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        zzdy.zzb(this.zzi);
        int i = zzfn.zza;
        int zzf = zzf(zzwqVar);
        if (zzf == -1 && (this.zzq instanceof zzabc)) {
            if (this.zzq.zze() != zzg(this.zzn)) {
                zzabc zzabcVar = (zzabc) this.zzq;
                throw null;
            }
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzh = zzwsVar;
        zzxt zzv = zzwsVar.zzv(0, 1);
        this.zzi = zzv;
        this.zzj = zzv;
        this.zzh.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzk = 0;
        this.zzm = -9223372036854775807L;
        this.zzn = 0L;
        this.zzp = 0;
        zzabi zzabiVar = this.zzq;
        if (!(zzabiVar instanceof zzabc)) {
            return;
        }
        zzabc zzabcVar = (zzabc) zzabiVar;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        return zzk(zzwqVar, true);
    }

    public final void zze() {
        this.zzr = true;
    }
}
