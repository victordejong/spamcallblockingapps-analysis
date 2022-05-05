package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhj.class */
final class zzhj implements zzlo {

    /* renamed from: a */
    private final zzhg f8494a;

    private zzhj(zzhg zzhgVar) {
        zzic.m12392f(zzhgVar, "output");
        zzhg zzhgVar2 = zzhgVar;
        this.f8494a = zzhgVar2;
        zzhgVar2.f8489a = this;
    }

    /* renamed from: O */
    public static zzhj m12479O(zzhg zzhgVar) {
        zzhj zzhjVar = zzhgVar.f8489a;
        return zzhjVar != null ? zzhjVar : new zzhj(zzhgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: A */
    public final void mo12013A(int i, int i2) throws IOException {
        this.f8494a.mo12491k0(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: B */
    public final void mo12012B(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12564A(list.get(i3).floatValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.m12527i(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.m12523l(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: C */
    public final void mo12011C(int i, int i2) throws IOException {
        this.f8494a.mo12499Y(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: D */
    public final void mo12010D(int i, List<String> list) throws IOException {
        if (list instanceof zzis) {
            zzis zzisVar = (zzis) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object b = zzisVar.mo12101b(i2);
                if (b instanceof String) {
                    this.f8494a.mo12485r(i, (String) b);
                } else {
                    this.f8494a.mo12488o(i, (zzgr) b);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f8494a.mo12485r(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: E */
    public final void mo12009E(int i, Object obj, zzjz zzjzVar) throws IOException {
        zzhg zzhgVar = this.f8494a;
        zzhgVar.mo12490m(i, 3);
        zzjzVar.mo12255h((zzjh) obj, zzhgVar.f8489a);
        zzhgVar.mo12490m(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: F */
    public final void mo12008F(int i, int i2) throws IOException {
        this.f8494a.mo12502P(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: G */
    public final void mo12007G(int i, List<?> list, zzjz zzjzVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo12006H(i, list.get(i2), zzjzVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: H */
    public final void mo12006H(int i, Object obj, zzjz zzjzVar) throws IOException {
        this.f8494a.mo12486q(i, (zzjh) obj, zzjzVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: I */
    public final void mo12005I(int i, int i2) throws IOException {
        this.f8494a.mo12491k0(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: J */
    public final void mo12004J(int i, zzgr zzgrVar) throws IOException {
        this.f8494a.mo12488o(i, zzgrVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: K */
    public final void mo12003K(int i, List<?> list, zzjz zzjzVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo12009E(i, list.get(i2), zzjzVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: L */
    public final <K, V> void mo12002L(int i, zzjc<K, V> zzjcVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f8494a.mo12490m(i, 2);
            this.f8494a.mo12503O(zziz.m12354a(zzjcVar, entry.getKey(), entry.getValue()));
            zziz.m12353b(this.f8494a, zzjcVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: M */
    public final void mo12001M(int i, long j) throws IOException {
        this.f8494a.mo12498Z(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: N */
    public final void mo12000N(int i, long j) throws IOException {
        this.f8494a.m12544Q(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: a */
    public final void mo11999a(int i) throws IOException {
        this.f8494a.mo12490m(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: b */
    public final void mo11998b(int i) throws IOException {
        this.f8494a.mo12490m(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: c */
    public final void mo11997c(int i, boolean z) throws IOException {
        this.f8494a.mo12484s(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: d */
    public final void mo11996d(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12547L(list.get(i3).booleanValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.m12508y(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12484s(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: e */
    public final void mo11995e(int i, long j) throws IOException {
        this.f8494a.mo12498Z(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: f */
    public final void mo11994f(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12522l0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12492j(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12502P(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: g */
    public final void mo11993g(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12559C0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12492j(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12502P(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: h */
    public final void mo11992h(int i, int i2) throws IOException {
        this.f8494a.mo12502P(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: i */
    public final void mo11991i(int i, long j) throws IOException {
        this.f8494a.mo12489n(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: j */
    public final void mo11990j(int i, Object obj) throws IOException {
        if (obj instanceof zzgr) {
            this.f8494a.mo12501R(i, (zzgr) obj);
        } else {
            this.f8494a.mo12487p(i, (zzjh) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: k */
    public final void mo11989k(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12532e0(list.get(i3).longValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12483t(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12489n(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: l */
    public final void mo11988l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12511w0(list.get(i3).longValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12496a0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12498Z(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: m */
    public final void mo11987m(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12509x0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12494f0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12491k0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: n */
    public final void mo11986n(int i, String str) throws IOException {
        this.f8494a.mo12485r(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: o */
    public final void mo11985o(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12518p0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12503O(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12499Y(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: p */
    public final void mo11984p(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12563A0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12494f0(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12491k0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: q */
    public final void mo11983q(int i, long j) throws IOException {
        this.f8494a.mo12489n(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: r */
    public final void mo11982r(int i, double d) throws IOException {
        this.f8494a.m12524k(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: s */
    public final void mo11981s(int i, float f) throws IOException {
        this.f8494a.m12523l(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: t */
    public final void mo11980t(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12515s0(list.get(i3).longValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12496a0(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12498Z(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: u */
    public final void mo11979u(int i, int i2) throws IOException {
        this.f8494a.m12530g0(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: v */
    public final void mo11978v(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12519o0(list.get(i3).longValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.m12543S(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.m12544Q(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: w */
    public final void mo11977w(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12525j0(list.get(i3).longValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.mo12483t(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.mo12489n(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: x */
    public final void mo11976x(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12514t0(list.get(i3).intValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.m12539X(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.m12530g0(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: y */
    public final void mo11975y(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f8494a.mo12490m(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzhg.m12506z(list.get(i3).doubleValue());
            }
            this.f8494a.mo12503O(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f8494a.m12529h(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f8494a.m12524k(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    /* renamed from: z */
    public final void mo11974z(int i, List<zzgr> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f8494a.mo12488o(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final int zza() {
        return zzln.f8646a;
    }
}
