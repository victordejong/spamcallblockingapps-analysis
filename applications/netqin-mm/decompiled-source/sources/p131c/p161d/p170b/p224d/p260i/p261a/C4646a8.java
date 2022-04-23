package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzkl;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.b.d.i.a.a8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/a8.class */
public final class C4646a8 extends AbstractC4750l7 {

    /* renamed from: d */
    public String f16962d;

    /* renamed from: e */
    public Set<Integer> f16963e;

    /* renamed from: f */
    public Map<Integer, C4666c8> f16964f;

    /* renamed from: g */
    public Long f16965g;

    /* renamed from: h */
    public Long f16966h;

    public C4646a8(zzkl zzklVar) {
        super(zzklVar);
    }

    /* renamed from: a */
    public final C4666c8 m25110a(int i) {
        if (this.f16964f.containsKey(Integer.valueOf(i))) {
            return this.f16964f.get(Integer.valueOf(i));
        }
        C4666c8 c8Var = new C4666c8(this, this.f16962d, null);
        this.f16964f.put(Integer.valueOf(i), c8Var);
        return c8Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x06b3, code lost:
        if (m24897h().m9344d(r19.f16962d, com.google.android.gms.measurement.internal.zzas.f29827F0) == false) goto L_0x06b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0842, code lost:
        if (m24897h().m9344d(r19.f16962d, com.google.android.gms.measurement.internal.zzas.f29827F0) == false) goto L_0x0845;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0474 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzcd.zza> m25108a(java.lang.String r20, java.util.List<com.google.android.gms.internal.measurement.zzcd.zzc> r21, java.util.List<com.google.android.gms.internal.measurement.zzcd.zzk> r22, java.lang.Long r23, java.lang.Long r24) {
        /*
            Method dump skipped, instructions count: 2782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4646a8.m25108a(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }

    /* renamed from: a */
    public final boolean m25109a(int i, int i2) {
        if (this.f16964f.get(Integer.valueOf(i)) == null) {
            return false;
        }
        return C4666c8.m25036a(this.f16964f.get(Integer.valueOf(i))).get(i2);
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        return false;
    }
}
