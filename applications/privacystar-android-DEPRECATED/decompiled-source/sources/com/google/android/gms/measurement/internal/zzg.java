package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzg.class */
public final class zzg {
    private final zzbt zzadj;
    private long zzadt;
    private String zzafw;
    private String zzafx;
    private String zzafy;
    private String zzafz;
    private long zzaga;
    private long zzagb;
    private long zzagc;
    private long zzagd;
    private String zzage;
    private long zzagf;
    private boolean zzagg;
    private long zzagh;
    private boolean zzagi;
    private boolean zzagj;
    private String zzagk;
    private long zzagl;
    private long zzagm;
    private long zzagn;
    private long zzago;
    private long zzagp;
    private long zzagq;
    private String zzagr;
    private boolean zzags;
    private long zzagt;
    private long zzagu;
    private String zzts;
    private final String zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public zzg(zzbt zzbtVar, String str) {
        Preconditions.checkNotNull(zzbtVar);
        Preconditions.checkNotEmpty(str);
        this.zzadj = zzbtVar;
        this.zztt = str;
        this.zzadj.zzgn().zzaf();
    }

    @WorkerThread
    public final String getAppInstanceId() {
        this.zzadj.zzgn().zzaf();
        return this.zzafw;
    }

    @WorkerThread
    public final String getFirebaseInstanceId() {
        this.zzadj.zzgn().zzaf();
        return this.zzafz;
    }

    @WorkerThread
    public final String getGmpAppId() {
        this.zzadj.zzgn().zzaf();
        return this.zzafx;
    }

    @WorkerThread
    public final boolean isMeasurementEnabled() {
        this.zzadj.zzgn().zzaf();
        return this.zzagg;
    }

    @WorkerThread
    public final void setAppVersion(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzts, str);
        this.zzts = str;
    }

    @WorkerThread
    public final void setMeasurementEnabled(boolean z) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagg != z;
        this.zzagg = z;
    }

    @WorkerThread
    public final void zzaa(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagl != j;
        this.zzagl = j;
    }

    @WorkerThread
    public final void zzab(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagm != j;
        this.zzagm = j;
    }

    @WorkerThread
    public final void zzac(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagn != j;
        this.zzagn = j;
    }

    @WorkerThread
    public final void zzad(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzago != j;
        this.zzago = j;
    }

    @WorkerThread
    public final void zzae(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagq != j;
        this.zzagq = j;
    }

    @WorkerThread
    public final void zzaf(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagp != j;
        this.zzagp = j;
    }

    @WorkerThread
    public final void zzag(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagh != j;
        this.zzagh = j;
    }

    @WorkerThread
    public final String zzak() {
        this.zzadj.zzgn().zzaf();
        return this.zzts;
    }

    @WorkerThread
    public final String zzal() {
        this.zzadj.zzgn().zzaf();
        return this.zztt;
    }

    @WorkerThread
    public final void zzam(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzafw, str);
        this.zzafw = str;
    }

    @WorkerThread
    public final void zzan(String str) {
        this.zzadj.zzgn().zzaf();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.zzags |= !zzfk.zzu(this.zzafx, str2);
        this.zzafx = str2;
    }

    @WorkerThread
    public final void zzao(String str) {
        this.zzadj.zzgn().zzaf();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.zzags |= !zzfk.zzu(this.zzagk, str2);
        this.zzagk = str2;
    }

    @WorkerThread
    public final void zzap(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzafy, str);
        this.zzafy = str;
    }

    @WorkerThread
    public final void zzaq(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzafz, str);
        this.zzafz = str;
    }

    @WorkerThread
    public final void zzar(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzage, str);
        this.zzage = str;
    }

    @WorkerThread
    public final void zzas(String str) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= !zzfk.zzu(this.zzagr, str);
        this.zzagr = str;
    }

    @WorkerThread
    public final void zze(boolean z) {
        this.zzadj.zzgn().zzaf();
        this.zzags = this.zzagi != z;
        this.zzagi = z;
    }

    @WorkerThread
    public final void zzf(boolean z) {
        this.zzadj.zzgn().zzaf();
        this.zzags = this.zzagj != z;
        this.zzagj = z;
    }

    @WorkerThread
    public final void zzgv() {
        this.zzadj.zzgn().zzaf();
        this.zzags = false;
    }

    @WorkerThread
    public final String zzgw() {
        this.zzadj.zzgn().zzaf();
        return this.zzagk;
    }

    @WorkerThread
    public final String zzgx() {
        this.zzadj.zzgn().zzaf();
        return this.zzafy;
    }

    @WorkerThread
    public final long zzgy() {
        this.zzadj.zzgn().zzaf();
        return this.zzagb;
    }

    @WorkerThread
    public final long zzgz() {
        this.zzadj.zzgn().zzaf();
        return this.zzagc;
    }

    @WorkerThread
    public final long zzha() {
        this.zzadj.zzgn().zzaf();
        return this.zzagd;
    }

    @WorkerThread
    public final String zzhb() {
        this.zzadj.zzgn().zzaf();
        return this.zzage;
    }

    @WorkerThread
    public final long zzhc() {
        this.zzadj.zzgn().zzaf();
        return this.zzadt;
    }

    @WorkerThread
    public final long zzhd() {
        this.zzadj.zzgn().zzaf();
        return this.zzagf;
    }

    @WorkerThread
    public final long zzhe() {
        this.zzadj.zzgn().zzaf();
        return this.zzaga;
    }

    @WorkerThread
    public final long zzhf() {
        this.zzadj.zzgn().zzaf();
        return this.zzagt;
    }

    @WorkerThread
    public final long zzhg() {
        this.zzadj.zzgn().zzaf();
        return this.zzagu;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzhh() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.zzbt r0 = r0.zzadj
            com.google.android.gms.measurement.internal.zzbo r0 = r0.zzgn()
            r0.zzaf()
            r0 = r5
            long r0 = r0.zzaga
            r1 = 1
            long r0 = r0 + r1
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0033
            r0 = r5
            com.google.android.gms.measurement.internal.zzbt r0 = r0.zzadj
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjg()
            java.lang.String r1 = "Bundle index overflow. appId"
            r2 = r5
            java.lang.String r2 = r2.zztt
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzap.zzbv(r2)
            r0.zzg(r1, r2)
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r5
            r1 = 1
            r0.zzags = r1
            r0 = r5
            r1 = r8
            r0.zzaga = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzg.zzhh():void");
    }

    @WorkerThread
    public final long zzhi() {
        this.zzadj.zzgn().zzaf();
        return this.zzagl;
    }

    @WorkerThread
    public final long zzhj() {
        this.zzadj.zzgn().zzaf();
        return this.zzagm;
    }

    @WorkerThread
    public final long zzhk() {
        this.zzadj.zzgn().zzaf();
        return this.zzagn;
    }

    @WorkerThread
    public final long zzhl() {
        this.zzadj.zzgn().zzaf();
        return this.zzago;
    }

    @WorkerThread
    public final long zzhm() {
        this.zzadj.zzgn().zzaf();
        return this.zzagq;
    }

    @WorkerThread
    public final long zzhn() {
        this.zzadj.zzgn().zzaf();
        return this.zzagp;
    }

    @WorkerThread
    public final String zzho() {
        this.zzadj.zzgn().zzaf();
        return this.zzagr;
    }

    @WorkerThread
    public final String zzhp() {
        this.zzadj.zzgn().zzaf();
        String str = this.zzagr;
        zzas(null);
        return str;
    }

    @WorkerThread
    public final long zzhq() {
        this.zzadj.zzgn().zzaf();
        return this.zzagh;
    }

    @WorkerThread
    public final boolean zzhr() {
        this.zzadj.zzgn().zzaf();
        return this.zzagi;
    }

    @WorkerThread
    public final boolean zzhs() {
        this.zzadj.zzgn().zzaf();
        return this.zzagj;
    }

    @WorkerThread
    public final void zzs(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagb != j;
        this.zzagb = j;
    }

    @WorkerThread
    public final void zzt(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagc != j;
        this.zzagc = j;
    }

    @WorkerThread
    public final void zzu(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagd != j;
        this.zzagd = j;
    }

    @WorkerThread
    public final void zzv(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzadt != j;
        this.zzadt = j;
    }

    @WorkerThread
    public final void zzw(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagf != j;
        this.zzagf = j;
    }

    @WorkerThread
    public final void zzx(long j) {
        boolean z = false;
        Preconditions.checkArgument(j >= 0);
        this.zzadj.zzgn().zzaf();
        boolean z2 = this.zzags;
        if (this.zzaga != j) {
            z = true;
        }
        this.zzags = z2 | z;
        this.zzaga = j;
    }

    @WorkerThread
    public final void zzy(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagt != j;
        this.zzagt = j;
    }

    @WorkerThread
    public final void zzz(long j) {
        this.zzadj.zzgn().zzaf();
        this.zzags |= this.zzagu != j;
        this.zzagu = j;
    }
}
