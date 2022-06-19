package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC3900ed;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.do */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/do.class */
final class C3883do implements AbstractC4005hr {

    /* renamed from: a */
    private final zzes f17999a;

    private C3883do(zzes zzesVar) {
        this.f17999a = (zzes) C3908ef.m5610a(zzesVar, "output");
        this.f17999a.f18551a = this;
    }

    /* renamed from: a */
    public static C3883do m5695a(zzes zzesVar) {
        return zzesVar.f18551a != null ? zzesVar.f18551a : new C3883do(zzesVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final int mo5210a() {
        return AbstractC3900ed.C3905e.f18101j;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5209a(int i) {
        this.f17999a.mo4876a(i, 3);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5208a(int i, double d) {
        this.f17999a.m4937a(i, d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5207a(int i, float f) {
        this.f17999a.m4936a(i, f);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5206a(int i, int i2) {
        this.f17999a.mo4855e(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5205a(int i, long j) {
        this.f17999a.mo4875a(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5204a(int i, AbstractC3859ct abstractC3859ct) {
        this.f17999a.mo4874a(i, abstractC3859ct);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final <K, V> void mo5203a(int i, C3934fe<K, V> c3934fe, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f17999a.mo4876a(i, 2);
            this.f17999a.mo4864b(C3935ff.m5570a(c3934fe, entry.getKey(), entry.getValue()));
            C3935ff.m5569a(this.f17999a, c3934fe, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5202a(int i, Object obj) {
        if (obj instanceof AbstractC3859ct) {
            this.f17999a.mo4862b(i, (AbstractC3859ct) obj);
        } else {
            this.f17999a.mo4873a(i, (AbstractC3943fn) obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5201a(int i, Object obj, AbstractC3960gd abstractC3960gd) {
        this.f17999a.mo4872a(i, (AbstractC3943fn) obj, abstractC3960gd);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5200a(int i, String str) {
        this.f17999a.mo4871a(i, str);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5199a(int i, List<String> list) {
        if (!(list instanceof AbstractC3923eu)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4871a(i, list.get(i2));
            }
            return;
        }
        AbstractC3923eu abstractC3923eu = (AbstractC3923eu) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo5302b = abstractC3923eu.mo5302b(i3);
            if (mo5302b instanceof String) {
                this.f17999a.mo4871a(i, (String) mo5302b);
            } else {
                this.f17999a.mo4874a(i, (AbstractC3859ct) mo5302b);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5198a(int i, List<?> list, AbstractC3960gd abstractC3960gd) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo5201a(i, list.get(i2), abstractC3960gd);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5197a(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4863b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4900f(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4877a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: a */
    public final void mo5196a(int i, boolean z) {
        this.f17999a.mo4870a(i, z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5195b(int i) {
        this.f17999a.mo4876a(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5194b(int i, int i2) {
        this.f17999a.mo4863b(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5193b(int i, long j) {
        this.f17999a.mo4859c(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5192b(int i, Object obj, AbstractC3960gd abstractC3960gd) {
        zzes zzesVar = this.f17999a;
        zzesVar.mo4876a(i, 3);
        abstractC3960gd.mo5469a((AbstractC3960gd) ((AbstractC3943fn) obj), (AbstractC4005hr) zzesVar.f18551a);
        zzesVar.mo4876a(i, 4);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5191b(int i, List<AbstractC3859ct> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f17999a.mo4874a(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5190b(int i, List<?> list, AbstractC3960gd abstractC3960gd) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo5192b(i, list.get(i2), abstractC3960gd);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: b */
    public final void mo5189b(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4855e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4888i(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4856d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: c */
    public final void mo5188c(int i, int i2) {
        this.f17999a.mo4863b(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: c */
    public final void mo5187c(int i, long j) {
        this.f17999a.mo4875a(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: c */
    public final void mo5186c(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4875a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4904d(list.get(i4).longValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4869a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: d */
    public final void mo5185d(int i, int i2) {
        this.f17999a.mo4855e(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: d */
    public final void mo5184d(int i, long j) {
        this.f17999a.mo4859c(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: d */
    public final void mo5183d(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4875a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4901e(list.get(i4).longValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4869a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: e */
    public final void mo5182e(int i, int i2) {
        this.f17999a.mo4860c(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: e */
    public final void mo5181e(int i, long j) {
        this.f17999a.m4924b(i, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: e */
    public final void mo5180e(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4859c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4893g(list.get(i4).longValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4858c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: f */
    public final void mo5179f(int i, int i2) {
        this.f17999a.m4907d(i, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: f */
    public final void mo5178f(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.m4936a(i, list.get(i2).floatValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4927b(list.get(i4).floatValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.m4938a(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: g */
    public final void mo5177g(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.m4937a(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4928b(list.get(i4).doubleValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.m4939a(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: h */
    public final void mo5176h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4863b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4883k(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4877a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: i */
    public final void mo5175i(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4870a(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4914b(list.get(i4).booleanValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.m4931a(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: j */
    public final void mo5174j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4860c(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4896g(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4864b(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: k */
    public final void mo5173k(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4855e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4885j(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4856d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: l */
    public final void mo5172l(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.mo4859c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4889h(list.get(i4).longValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.mo4858c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: m */
    public final void mo5171m(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.m4907d(i, list.get(i2).intValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4892h(list.get(i4).intValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.m4911c(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4005hr
    /* renamed from: n */
    public final void mo5170n(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17999a.m4924b(i, list.get(i2).longValue());
            }
            return;
        }
        this.f17999a.mo4876a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzes.m4897f(list.get(i4).longValue());
        }
        this.f17999a.mo4864b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f17999a.m4918b(list.get(i5).longValue());
        }
    }
}
