package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqq.class */
public final class zzqq implements zznu {
    public static final zzoa zza = zzqo.zza;
    private static final zzaju zzb = zzqp.zza;
    private final zzamf zzc;
    private final zzon zzd;
    private final zzoj zze;
    private final zzol zzf;
    private final zzox zzg;
    private zznx zzh;
    private zzox zzi;
    private zzox zzj;
    private int zzk;
    private zzaiv zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzqs zzq;
    private boolean zzr;

    public zzqq() {
        this(0);
    }

    public zzqq(int i) {
        this.zzc = new zzamf(10);
        this.zzd = new zzon();
        this.zze = new zzoj();
        this.zzm = -9223372036854775807L;
        this.zzf = new zzol();
        zznt zzntVar = new zznt();
        this.zzg = zzntVar;
        this.zzj = zzntVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0294  */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzf(com.google.android.gms.internal.ads.zznv r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqq.zzf(com.google.android.gms.internal.ads.zznv):int");
    }

    private final long zzg(long j) {
        return ((j * 1000000) / this.zzd.zzd) + this.zzm;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0124, code lost:
        if (r7 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0127, code lost:
        ((com.google.android.gms.internal.ads.zznp) r6).zzd(r10 + r13, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0138, code lost:
        r6.zzl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013e, code lost:
        r5.zzk = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0145, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzh(com.google.android.gms.internal.ads.zznv r6, boolean r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqq.zzh(com.google.android.gms.internal.ads.zznv, boolean):boolean");
    }

    private final boolean zzi(zznv zznvVar) throws IOException {
        zzqs zzqsVar = this.zzq;
        if (zzqsVar != null) {
            long zzc = zzqsVar.zzc();
            if (zzc != -1 && zznvVar.zzm() > zzc - 4) {
                return true;
            }
        }
        try {
            return !zznvVar.zzh(this.zzc.zzi(), 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    private final zzqs zzj(zznv zznvVar, boolean z) throws IOException {
        ((zznp) zznvVar).zzh(this.zzc.zzi(), 0, 4, false);
        this.zzc.zzh(0);
        this.zzd.zza(this.zzc.zzv());
        return new zzql(zznvVar.zzo(), zznvVar.zzn(), this.zzd, false);
    }

    private static boolean zzk(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zza(zznv zznvVar) throws IOException {
        return zzh(zznvVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzb(zznx zznxVar) {
        this.zzh = zznxVar;
        zzox zzB = zznxVar.zzB(0, 1);
        this.zzi = zzB;
        this.zzj = zzB;
        this.zzh.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final int zzc(zznv zznvVar, zzoq zzoqVar) throws IOException {
        zzakt.zze(this.zzi);
        int i = zzamq.zza;
        int zzf = zzf(zznvVar);
        if (zzf == -1 && (this.zzq instanceof zzqm)) {
            if (this.zzq.zzg() != zzg(this.zzn)) {
                zzqm zzqmVar = (zzqm) this.zzq;
                throw null;
            }
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final void zzd(long j, long j2) {
        this.zzk = 0;
        this.zzm = -9223372036854775807L;
        this.zzn = 0L;
        this.zzp = 0;
        zzqs zzqsVar = this.zzq;
        if (!(zzqsVar instanceof zzqm)) {
            return;
        }
        zzqm zzqmVar = (zzqm) zzqsVar;
        throw null;
    }

    public final void zze() {
        this.zzr = true;
    }
}
