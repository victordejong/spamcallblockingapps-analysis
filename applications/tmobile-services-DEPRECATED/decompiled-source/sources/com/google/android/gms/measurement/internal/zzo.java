package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzo.class */
public final class zzo extends zzkj {

    /* renamed from: d */
    private String f9746d;

    /* renamed from: e */
    private Set<Integer> f9747e;

    /* renamed from: f */
    private Map<Integer, zzq> f9748f;

    /* renamed from: g */
    private Long f9749g;

    /* renamed from: h */
    private Long f9750h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzki zzkiVar) {
        super(zzkiVar);
    }

    /* renamed from: t */
    private final zzq m10927t(int i) {
        if (this.f9748f.containsKey(Integer.valueOf(i))) {
            return this.f9748f.get(Integer.valueOf(i));
        }
        zzq zzqVar = new zzq(this, this.f9746d, null);
        this.f9748f.put(Integer.valueOf(i), zzqVar);
        return zzqVar;
    }

    /* renamed from: v */
    private final boolean m10925v(int i, int i2) {
        if (this.f9748f.get(Integer.valueOf(i)) == null) {
            return false;
        }
        return zzq.m10918b(this.f9748f.get(Integer.valueOf(i))).get(i2);
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x06a6, code lost:
        if (m11311l().m10873y(r19.f9746d, com.google.android.gms.measurement.internal.zzat.f8898F0) == false) goto L_0x06a9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0836, code lost:
        if (m11311l().m10873y(r19.f9746d, com.google.android.gms.measurement.internal.zzat.f8898F0) == false) goto L_0x0839;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x098b, code lost:
        r0 = mo11081c().m11557G();
        r0 = com.google.android.gms.measurement.internal.zzer.m11546v(r19.f9746d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x09a2, code lost:
        if (r0.m13327D() == false) goto L_0x09b1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x09a5, code lost:
        r21 = java.lang.Integer.valueOf(r0.m13326E());
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x09b1, code lost:
        r21 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x09b3, code lost:
        r0.m11538c("Invalid property filter ID. appId, id", r0, java.lang.String.valueOf(r21));
        r40 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0473 A[SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzcd.zza> m10926u(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.zzcd.zzc> r21, java.util.List<com.google.android.gms.internal.measurement.zzcd.zzk> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 2770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzo.m10926u(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
