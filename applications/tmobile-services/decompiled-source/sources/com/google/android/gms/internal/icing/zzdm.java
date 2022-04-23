package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdm.class */
final class zzdm implements zzhg {

    /* renamed from: a */
    private final zzdk f7981a;

    private zzdm(zzdk zzdkVar) {
        zzeb.m13802e(zzdkVar, "output");
        zzdk zzdkVar2 = zzdkVar;
        this.f7981a = zzdkVar2;
        zzdkVar2.f7974a = this;
    }

    /* renamed from: a */
    public static zzdm m13867a(zzdk zzdkVar) {
        zzdm zzdmVar = zzdkVar.f7974a;
        return zzdmVar != null ? zzdmVar : new zzdm(zzdkVar);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: A */
    public final void mo13525A(int i, int i2) throws IOException {
        this.f7981a.mo13886W(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: B */
    public final void mo13524B(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13903v(list.get(i3).floatValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.m13924f(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.m13921h(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: C */
    public final void mo13523C(int i, int i2) throws IOException {
        this.f7981a.m13933a0(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: D */
    public final void mo13522D(int i, List<String> list) throws IOException {
        if (list instanceof zzeo) {
            zzeo zzeoVar = (zzeo) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object m = zzeoVar.mo13596m(i2);
                if (m instanceof String) {
                    this.f7981a.mo13878m(i, (String) m);
                } else {
                    this.f7981a.mo13881j(i, (zzct) m);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f7981a.mo13878m(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: E */
    public final void mo13521E(int i, Object obj, zzfu zzfuVar) throws IOException {
        zzdk zzdkVar = this.f7981a;
        zzdkVar.mo13895F(i, 3);
        zzfuVar.mo13701g((zzfh) obj, zzdkVar.f7974a);
        zzdkVar.mo13895F(i, 4);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: F */
    public final void mo13520F(int i, long j) throws IOException {
        this.f7981a.mo13887R(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: G */
    public final int mo13519G() {
        return zzdx.zze.f8008k;
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: H */
    public final void mo13518H(int i) throws IOException {
        this.f7981a.mo13895F(i, 3);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: I */
    public final void mo13517I(int i, long j) throws IOException {
        this.f7981a.mo13882i(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: J */
    public final void mo13516J(int i) throws IOException {
        this.f7981a.mo13895F(i, 4);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: K */
    public final void mo13515K(int i, int i2) throws IOException {
        this.f7981a.mo13888Q(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: L */
    public final <K, V> void mo13514L(int i, zzey<K, V> zzeyVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f7981a.mo13895F(i, 2);
            this.f7981a.mo13873t0(zzds.m13852e(zzeyVar.f8030a, 1, entry.getKey()) + zzds.m13852e(zzeyVar.f8031b, 2, entry.getValue()));
            zzdk zzdkVar = this.f7981a;
            K key = entry.getKey();
            V value = entry.getValue();
            zzds.m13850g(zzdkVar, zzeyVar.f8030a, 1, key);
            zzds.m13850g(zzdkVar, zzeyVar.f8031b, 2, value);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: M */
    public final void mo13513M(int i, List<?> list, zzfu zzfuVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo13509Q(i, list.get(i2), zzfuVar);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: N */
    public final void mo13512N(int i, zzct zzctVar) throws IOException {
        this.f7981a.mo13881j(i, zzctVar);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: O */
    public final void mo13511O(int i, List<?> list, zzfu zzfuVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo13521E(i, list.get(i2), zzfuVar);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: P */
    public final void mo13510P(int i, int i2) throws IOException {
        this.f7981a.mo13883f0(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: Q */
    public final void mo13509Q(int i, Object obj, zzfu zzfuVar) throws IOException {
        this.f7981a.mo13879l(i, (zzfh) obj, zzfuVar);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: c */
    public final void mo13508c(int i, boolean z) throws IOException {
        this.f7981a.mo13877n(i, z);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: d */
    public final void mo13507d(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13925e0(list.get(i3).booleanValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.m13931b0(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13877n(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: e */
    public final void mo13506e(int i, long j) throws IOException {
        this.f7981a.m13944G(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: f */
    public final void mo13505f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13896z0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13874s0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13888Q(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: g */
    public final void mo13504g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13946E0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13874s0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13888Q(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: h */
    public final void mo13503h(int i, int i2) throws IOException {
        this.f7981a.mo13888Q(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: i */
    public final void mo13502i(int i, long j) throws IOException {
        this.f7981a.mo13887R(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: j */
    public final void mo13501j(int i, Object obj) throws IOException {
        if (obj instanceof zzct) {
            this.f7981a.mo13893H(i, (zzct) obj);
        } else {
            this.f7981a.mo13880k(i, (zzfh) obj);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: k */
    public final void mo13500k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13934Z(list.get(i3).longValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13892I(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13882i(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: l */
    public final void mo13499l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13914n0(list.get(i3).longValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13885X(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13887R(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: m */
    public final void mo13498m(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13950C0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13871x0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13883f0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: n */
    public final void mo13497n(int i, String str) throws IOException {
        this.f7981a.mo13878m(i, str);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: o */
    public final void mo13496o(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13954A0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13873t0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13886W(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: p */
    public final void mo13495p(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13948D0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13871x0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13883f0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: q */
    public final void mo13494q(int i, long j) throws IOException {
        this.f7981a.mo13882i(i, j);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: r */
    public final void mo13493r(int i, double d) throws IOException {
        this.f7981a.m13923g(i, d);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: s */
    public final void mo13492s(int i, float f) throws IOException {
        this.f7981a.m13921h(i, f);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: t */
    public final void mo13491t(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13916l0(list.get(i3).longValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13885X(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13887R(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: u */
    public final void mo13490u(int i, int i2) throws IOException {
        this.f7981a.mo13883f0(i, i2);
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: v */
    public final void mo13489v(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13919i0(list.get(i3).longValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.m13939S(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.m13944G(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: w */
    public final void mo13488w(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13927d0(list.get(i3).longValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.mo13892I(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.mo13882i(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: x */
    public final void mo13487x(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13952B0(list.get(i3).intValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.m13904u0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.m13933a0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: y */
    public final void mo13486y(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f7981a.mo13895F(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzdk.m13905u(list.get(i3).doubleValue());
            }
            this.f7981a.mo13873t0(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f7981a.m13926e(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f7981a.m13923g(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.icing.zzhg
    /* renamed from: z */
    public final void mo13485z(int i, List<zzct> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f7981a.mo13881j(i, list.get(i2));
        }
    }
}
