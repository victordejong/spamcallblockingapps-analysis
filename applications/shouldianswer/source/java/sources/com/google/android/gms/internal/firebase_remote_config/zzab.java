package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzab.class */
public final class zzab {
    private zzv zzao;
    private zzx zzbb;
    private zzs zzbi;
    private zzt zzbj;
    private zzah zzbm;
    private zzci zzk;
    private String zzp;
    private final zzag zzx;
    private zzw zzbc = new zzw();
    private zzw zzbd = new zzw();
    private int zzbe = 10;
    private int zzbf = 16384;
    private boolean zzbg = true;
    private boolean zzbh = true;
    private int zzbk = 20000;
    private int zzbl = 20000;
    private boolean zzbn = true;
    private boolean zzbo = true;
    @Deprecated
    private boolean zzbp = false;
    private zzck zzbq = zzck.zzgf;

    public zzab(zzag zzagVar, String str) {
        this.zzx = zzagVar;
        zzw(null);
    }

    public final String getRequestMethod() {
        return this.zzp;
    }

    public final zzab zza(int i) {
        if (i >= 0) {
            this.zzbk = i;
            return this;
        }
        throw new IllegalArgumentException();
    }

    public final zzab zza(zzah zzahVar) {
        this.zzbm = zzahVar;
        return this;
    }

    public final zzab zza(zzci zzciVar) {
        this.zzk = zzciVar;
        return this;
    }

    public final zzab zza(zzs zzsVar) {
        this.zzbi = zzsVar;
        return this;
    }

    public final zzab zza(zzt zztVar) {
        this.zzbj = (zzt) zzdt.checkNotNull(zztVar);
        return this;
    }

    public final zzab zza(zzv zzvVar) {
        this.zzao = zzvVar;
        return this;
    }

    public final zzab zza(zzx zzxVar) {
        this.zzbb = zzxVar;
        return this;
    }

    public final zzci zzaa() {
        return this.zzk;
    }

    public final boolean zzab() {
        return this.zzbo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x043f A[Catch: all -> 0x04fe, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x04fe, blocks: (B:90:0x03c6, B:92:0x03cc, B:105:0x041b, B:108:0x043f, B:109:0x0450, B:114:0x04a3), top: B:144:0x03c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04a3 A[Catch: all -> 0x04fe, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x04fe, blocks: (B:90:0x03c6, B:92:0x03cc, B:105:0x041b, B:108:0x043f, B:109:0x0450, B:114:0x04a3), top: B:144:0x03c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04f8 A[LOOP:0: B:9:0x002b->B:133:0x04f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03cc A[Catch: all -> 0x04fe, TryCatch #2 {all -> 0x04fe, blocks: (B:90:0x03c6, B:92:0x03cc, B:105:0x041b, B:108:0x043f, B:109:0x0450, B:114:0x04a3), top: B:144:0x03c6 }] */
    /* JADX WARN: Type inference failed for: r0v207, types: [com.google.android.gms.internal.firebase_remote_config.zzu] */
    /* JADX WARN: Type inference failed for: r0v209, types: [long] */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    /* JADX WARN: Type inference failed for: r0v214, types: [com.google.android.gms.internal.firebase_remote_config.zzcg] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.firebase_remote_config.zzac zzac() {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzab.zzac():com.google.android.gms.internal.firebase_remote_config.zzac");
    }

    public final zzab zzb(int i) {
        if (i >= 0) {
            this.zzbl = i;
            return this;
        }
        throw new IllegalArgumentException();
    }

    public final zzag zzs() {
        return this.zzx;
    }

    public final zzt zzt() {
        return this.zzbj;
    }

    public final zzs zzu() {
        return this.zzbi;
    }

    public final int zzv() {
        return this.zzbf;
    }

    public final zzab zzw(String str) {
        if (str == null || zzy.zzv(str)) {
            this.zzp = str;
            return this;
        }
        throw new IllegalArgumentException();
    }

    public final boolean zzw() {
        return this.zzbg;
    }

    public final zzw zzx() {
        return this.zzbc;
    }

    public final zzw zzy() {
        return this.zzbd;
    }

    public final zzah zzz() {
        return this.zzbm;
    }
}
