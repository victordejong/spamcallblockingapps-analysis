package com.google.android.gms.measurement.internal;

import java.util.BitSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.kf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kf.class */
public final class C4434kf extends AbstractC4412jl {

    /* renamed from: b */
    private String f19326b;

    /* renamed from: c */
    private Set<Integer> f19327c;

    /* renamed from: d */
    private Map<Integer, C4436kh> f19328d;

    /* renamed from: e */
    private Long f19329e;

    /* renamed from: f */
    private Long f19330f;

    public C4434kf(C4415jo c4415jo) {
        super(c4415jo);
    }

    /* renamed from: a */
    private final C4436kh m4067a(int i) {
        C4436kh c4436kh;
        if (this.f19328d.containsKey(Integer.valueOf(i))) {
            c4436kh = this.f19328d.get(Integer.valueOf(i));
        } else {
            c4436kh = new C4436kh(this, this.f19326b, null);
            this.f19328d.put(Integer.valueOf(i), c4436kh);
        }
        return c4436kh;
    }

    /* renamed from: a */
    private final boolean m4066a(int i, int i2) {
        BitSet bitSet;
        boolean z;
        if (this.f19328d.get(Integer.valueOf(i)) == null) {
            z = false;
        } else {
            bitSet = this.f19328d.get(Integer.valueOf(i)).f19338d;
            z = bitSet.get(i2);
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:197:0x08c3, code lost:
        r0 = mo4030v().m4662e();
        r0 = com.google.android.gms.measurement.internal.C4263dy.m4669a(r19.f19326b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x08da, code lost:
        if (r0.m6432a() == false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x08dd, code lost:
        r21 = java.lang.Integer.valueOf(r0.m6429b());
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x08e6, code lost:
        r0.m4652a("Invalid property filter ID. appId, id", r0, java.lang.String.valueOf(r21));
        r41 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0913, code lost:
        r21 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v318, types: [long] */
    /* JADX WARN: Type inference failed for: r0v332, types: [long] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0262 -> B:22:0x00da). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.C3776ao.C3777a> m4065a(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.C3776ao.C3781c> r21, java.util.List<com.google.android.gms.internal.measurement.C3776ao.C3798k> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 2694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4434kf.m4065a(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4412jl
    /* renamed from: a */
    protected final boolean mo4068a() {
        return false;
    }
}
