package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import androidx.work.WorkRequest;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzms.class */
public final class zzms implements zzkc, zznc, zzno, zzoz<zzmv> {
    private final Uri uri;
    private final Handler zzaet;
    private boolean zzafw;
    private boolean zzags;
    private long zzaip;
    private final zzon zzaop;
    private final int zzbdm;
    private final zzmz zzbdn;
    private final zznd zzbdo;
    private final zzol zzbdp;
    private final long zzbdr;
    private final zzmy zzbdt;
    private zznb zzbdy;
    private zzkf zzbdz;
    private boolean zzbea;
    private boolean zzbeb;
    private boolean zzbec;
    private int zzbed;
    private zznu zzbee;
    private boolean[] zzbef;
    private boolean[] zzbeg;
    private boolean zzbeh;
    private long zzbei;
    private int zzbek;
    private boolean zzbel;
    private final String zzbdq = null;
    private final zzpa zzbds = new zzpa("Loader:ExtractorMediaPeriod");
    private final zzpi zzbdu = new zzpi();
    private final Runnable zzbdv = new zzmr(this);
    private final Runnable zzbdw = new zzmu(this);
    private final Handler handler = new Handler();
    private long zzbej = -9223372036854775807L;
    private final SparseArray<zznm> zzbdx = new SparseArray<>();
    private long zzco = -1;

    public zzms(Uri uri, zzon zzonVar, zzka[] zzkaVarArr, int i, Handler handler, zzmz zzmzVar, zznd zzndVar, zzol zzolVar, String str, int i2) {
        this.uri = uri;
        this.zzaop = zzonVar;
        this.zzbdm = i;
        this.zzaet = handler;
        this.zzbdn = zzmzVar;
        this.zzbdo = zzndVar;
        this.zzbdp = zzolVar;
        this.zzbdr = i2;
        this.zzbdt = new zzmy(zzkaVarArr, this);
    }

    private final void startLoading() {
        zzkf zzkfVar;
        zzmv zzmvVar = new zzmv(this, this.uri, this.zzaop, this.zzbdt, this.zzbdu);
        if (this.zzags) {
            zzpg.checkState(zzhw());
            long j = this.zzaip;
            if (j != -9223372036854775807L && this.zzbej >= j) {
                this.zzbel = true;
                this.zzbej = -9223372036854775807L;
                return;
            }
            zzmvVar.zze(this.zzbdz.zzdz(this.zzbej), this.zzbej);
            this.zzbej = -9223372036854775807L;
        }
        this.zzbek = zzhu();
        int i = this.zzbdm;
        int i2 = i;
        if (i == -1) {
            i2 = (this.zzags && this.zzco == -1 && ((zzkfVar = this.zzbdz) == null || zzkfVar.getDurationUs() == -9223372036854775807L)) ? 6 : 3;
        }
        this.zzbds.zza(zzmvVar, this, i2);
    }

    private final void zza(zzmv zzmvVar) {
        long j;
        if (this.zzco == -1) {
            j = zzmvVar.zzco;
            this.zzco = j;
        }
    }

    public final void zzht() {
        if (this.zzafw || this.zzags || this.zzbdz == null || !this.zzbea) {
            return;
        }
        int size = this.zzbdx.size();
        for (int i = 0; i < size; i++) {
            if (this.zzbdx.valueAt(i).zzif() == null) {
                return;
            }
        }
        this.zzbdu.zziu();
        zznr[] zznrVarArr = new zznr[size];
        this.zzbeg = new boolean[size];
        this.zzbef = new boolean[size];
        this.zzaip = this.zzbdz.getDurationUs();
        for (int i2 = 0; i2 < size; i2++) {
            zzht zzif = this.zzbdx.valueAt(i2).zzif();
            zznrVarArr[i2] = new zznr(zzif);
            String str = zzif.zzahe;
            boolean z = true;
            if (!zzpj.zzbd(str)) {
                z = zzpj.zzbc(str);
            }
            this.zzbeg[i2] = z;
            this.zzbeh = z | this.zzbeh;
        }
        this.zzbee = new zznu(zznrVarArr);
        this.zzags = true;
        this.zzbdo.zzb(new zzns(this.zzaip, this.zzbdz.isSeekable()), null);
        this.zzbdy.zza((zznc) this);
    }

    private final int zzhu() {
        int size = this.zzbdx.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.zzbdx.valueAt(i2).zzid();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    private final long zzhv() {
        int size = this.zzbdx.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.zzbdx.valueAt(i).zzhv());
        }
        return c;
    }

    private final boolean zzhw() {
        return this.zzbej != -9223372036854775807L;
    }

    public final void release() {
        this.zzbds.zza(new zzmt(this, this.zzbdt));
        this.handler.removeCallbacksAndMessages(null);
        this.zzafw = true;
    }

    public final int zza(int i, zzhv zzhvVar, zzjp zzjpVar, boolean z) {
        if (this.zzbec || zzhw()) {
            return -3;
        }
        return this.zzbdx.valueAt(i).zza(zzhvVar, zzjpVar, z, this.zzbel, this.zzbei);
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ int zza(zzmv zzmvVar, long j, long j2, IOException iOException) {
        zzkf zzkfVar;
        zzmv zzmvVar2 = zzmvVar;
        zza(zzmvVar2);
        Handler handler = this.zzaet;
        if (handler != null && this.zzbdn != null) {
            handler.post(new zzmw(this, iOException));
        }
        if (iOException instanceof zznt) {
            return 3;
        }
        boolean z = zzhu() > this.zzbek;
        if (this.zzco == -1 && ((zzkfVar = this.zzbdz) == null || zzkfVar.getDurationUs() == -9223372036854775807L)) {
            this.zzbei = 0L;
            this.zzbec = this.zzags;
            int size = this.zzbdx.size();
            for (int i = 0; i < size; i++) {
                this.zzbdx.valueAt(i).zzk(!this.zzags || this.zzbef[i]);
            }
            zzmvVar2.zze(0L, 0L);
        }
        this.zzbek = zzhu();
        return z ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x017f, code lost:
        if (r15 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018d, code lost:
        if (r12 != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0190, code lost:
        r0 = zzeg(r12);
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x019c, code lost:
        r19 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a4, code lost:
        if (r15 >= r10.length) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ab, code lost:
        if (r10[r15] == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ae, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b4, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzog[] r8, boolean[] r9, com.google.android.gms.internal.ads.zznn[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzms.zza(com.google.android.gms.internal.ads.zzog[], boolean[], com.google.android.gms.internal.ads.zznn[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zza(zzkf zzkfVar) {
        this.zzbdz = zzkfVar;
        this.handler.post(this.zzbdv);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zza(zznb zznbVar, long j) {
        this.zzbdy = zznbVar;
        this.zzbdu.open();
        startLoading();
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ void zza(zzmv zzmvVar, long j, long j2) {
        zza(zzmvVar);
        this.zzbel = true;
        if (this.zzaip == -9223372036854775807L) {
            long zzhv = zzhv();
            this.zzaip = zzhv == Long.MIN_VALUE ? (char) 0 : zzhv + WorkRequest.MIN_BACKOFF_MILLIS;
            this.zzbdo.zzb(new zzns(this.zzaip, this.zzbdz.isSeekable()), null);
        }
        this.zzbdy.zza((zznb) this);
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final /* synthetic */ void zza(zzmv zzmvVar, long j, long j2, boolean z) {
        zza(zzmvVar);
        if (z || this.zzbed <= 0) {
            return;
        }
        int size = this.zzbdx.size();
        for (int i = 0; i < size; i++) {
            this.zzbdx.valueAt(i).zzk(this.zzbef[i]);
        }
        this.zzbdy.zza((zznb) this);
    }

    public final boolean zzaz(int i) {
        if (!this.zzbel) {
            return !zzhw() && this.zzbdx.valueAt(i).zzie();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final zzkh zzc(int i, int i2) {
        zznm zznmVar = this.zzbdx.get(i);
        zznm zznmVar2 = zznmVar;
        if (zznmVar == null) {
            zznmVar2 = new zznm(this.zzbdp);
            zznmVar2.zza(this);
            this.zzbdx.put(i, zznmVar2);
        }
        return zznmVar2;
    }

    public final void zze(int i, long j) {
        zznm valueAt = this.zzbdx.valueAt(i);
        if (!this.zzbel || j <= valueAt.zzhv()) {
            valueAt.zze(j, true);
        } else {
            valueAt.zzii();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final boolean zzee(long j) {
        if (!this.zzbel) {
            if (this.zzags && this.zzbed == 0) {
                return false;
            }
            boolean open = this.zzbdu.open();
            if (!this.zzbds.isLoading()) {
                startLoading();
                open = true;
            }
            return open;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzef(long j) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.internal.ads.zznm] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzeg(long j) {
        ?? r6 = j;
        if (!this.zzbdz.isSeekable()) {
            r6 = 0;
        }
        this.zzbei = r6;
        int size = this.zzbdx.size();
        boolean z = !zzhw();
        for (int i = 0; z && i < size; i++) {
            if (this.zzbef[i]) {
                z = this.zzbdx.valueAt(i).zze(r6, false);
            }
        }
        if (!z) {
            this.zzbej = r6;
            this.zzbel = false;
            if (this.zzbds.isLoading()) {
                this.zzbds.zzit();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.zzbdx.valueAt(i2).zzk(this.zzbef[i2]);
                }
            }
        }
        this.zzbec = false;
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.zzno
    public final void zzf(zzht zzhtVar) {
        this.handler.post(this.zzbdv);
    }

    @Override // com.google.android.gms.internal.ads.zzkc
    public final void zzgs() {
        this.zzbea = true;
        this.handler.post(this.zzbdv);
    }

    @Override // com.google.android.gms.internal.ads.zznc, com.google.android.gms.internal.ads.zznq
    public final long zzhn() {
        if (this.zzbed == 0) {
            return Long.MIN_VALUE;
        }
        return zzhr();
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final void zzho() throws IOException {
        this.zzbds.zzbg(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final zznu zzhp() {
        return this.zzbee;
    }

    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhq() {
        if (this.zzbec) {
            this.zzbec = false;
            return this.zzbei;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.gms.internal.ads.zznc
    public final long zzhr() {
        char c;
        if (this.zzbel) {
            return Long.MIN_VALUE;
        }
        if (zzhw()) {
            return this.zzbej;
        }
        if (this.zzbeh) {
            char c2 = 65535;
            int size = this.zzbdx.size();
            int i = 0;
            while (true) {
                c = c2;
                if (i >= size) {
                    break;
                }
                char c3 = c2;
                if (this.zzbeg[i]) {
                    c3 = Math.min((long) c2, this.zzbdx.valueAt(i).zzhv());
                }
                i++;
                c2 = c3;
            }
        } else {
            c = zzhv();
        }
        return c == Long.MIN_VALUE ? this.zzbei : c;
    }

    public final void zzhs() throws IOException {
        this.zzbds.zzbg(Integer.MIN_VALUE);
    }
}
