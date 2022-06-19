package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcf.class */
final class dcf implements dgo {

    /* renamed from: a */
    private final zzebk f13978a;

    private dcf(zzebk zzebkVar) {
        this.f13978a = (zzebk) dcz.m10045a(zzebkVar, "output");
        this.f13978a.f17740a = this;
    }

    /* renamed from: a */
    public static dcf m10142a(zzebk zzebkVar) {
        return zzebkVar.f17740a != null ? zzebkVar.f17740a : new dcf(zzebkVar);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final int mo9627a() {
        return dcw.C2960f.f14085j;
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9626a(int i) {
        this.f13978a.mo6573a(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9625a(int i, double d) {
        this.f13978a.m6634a(i, d);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9624a(int i, float f) {
        this.f13978a.m6633a(i, f);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9623a(int i, int i2) {
        this.f13978a.mo6552e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9622a(int i, long j) {
        this.f13978a.mo6572a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9621a(int i, dbi dbiVar) {
        this.f13978a.mo6571a(i, dbiVar);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final <K, V> void mo9620a(int i, ddx<K, V> ddxVar, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f13978a.mo6573a(i, 2);
            this.f13978a.mo6561b(ddy.m10012a(ddxVar, entry.getKey(), entry.getValue()));
            ddy.m10011a(this.f13978a, ddxVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9619a(int i, Object obj) {
        if (obj instanceof dbi) {
            this.f13978a.mo6559b(i, (dbi) obj);
        } else {
            this.f13978a.mo6570a(i, (deg) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9618a(int i, Object obj, dfd dfdVar) {
        this.f13978a.mo6569a(i, (deg) obj, dfdVar);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9617a(int i, String str) {
        this.f13978a.mo6568a(i, str);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9616a(int i, List<String> list) {
        if (!(list instanceof ddm)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6568a(i, list.get(i2));
            }
            return;
        }
        ddm ddmVar = (ddm) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo9738b = ddmVar.mo9738b(i3);
            if (mo9738b instanceof String) {
                this.f13978a.mo6568a(i, (String) mo9738b);
            } else {
                this.f13978a.mo6571a(i, (dbi) mo9738b);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9615a(int i, List<?> list, dfd dfdVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo9618a(i, list.get(i2), dfdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9614a(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6560b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6597f(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6574a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: a */
    public final void mo9613a(int i, boolean z) {
        this.f13978a.mo6567a(i, z);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9612b(int i) {
        this.f13978a.mo6573a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9611b(int i, int i2) {
        this.f13978a.mo6560b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9610b(int i, long j) {
        this.f13978a.mo6556c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9609b(int i, Object obj, dfd dfdVar) {
        zzebk zzebkVar = this.f13978a;
        zzebkVar.mo6573a(i, 3);
        dfdVar.mo9843a((dfd) ((deg) obj), (dgo) zzebkVar.f17740a);
        zzebkVar.mo6573a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9608b(int i, List<dbi> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f13978a.mo6571a(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9607b(int i, List<?> list, dfd dfdVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo9609b(i, list.get(i2), dfdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: b */
    public final void mo9606b(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6552e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6585i(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6553d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: c */
    public final void mo9605c(int i, int i2) {
        this.f13978a.mo6560b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: c */
    public final void mo9604c(int i, long j) {
        this.f13978a.mo6572a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: c */
    public final void mo9603c(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6572a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6601d(list.get(i4).longValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6566a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: d */
    public final void mo9602d(int i, int i2) {
        this.f13978a.mo6552e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: d */
    public final void mo9601d(int i, long j) {
        this.f13978a.mo6556c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: d */
    public final void mo9600d(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6572a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6598e(list.get(i4).longValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6566a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: e */
    public final void mo9599e(int i, int i2) {
        this.f13978a.mo6557c(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: e */
    public final void mo9598e(int i, long j) {
        this.f13978a.m6621b(i, j);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: e */
    public final void mo9597e(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6556c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6590g(list.get(i4).longValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6555c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: f */
    public final void mo9596f(int i, int i2) {
        this.f13978a.m6604d(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: f */
    public final void mo9595f(int i, List<Float> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.m6633a(i, list.get(i2).floatValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6624b(list.get(i4).floatValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.m6635a(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: g */
    public final void mo9594g(int i, List<Double> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.m6634a(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6625b(list.get(i4).doubleValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.m6636a(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: h */
    public final void mo9593h(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6560b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6580k(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6574a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: i */
    public final void mo9592i(int i, List<Boolean> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6567a(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6611b(list.get(i4).booleanValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.m6628a(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: j */
    public final void mo9591j(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6557c(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6593g(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6561b(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: k */
    public final void mo9590k(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6552e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6582j(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6553d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: l */
    public final void mo9589l(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.mo6556c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6586h(list.get(i4).longValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.mo6555c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: m */
    public final void mo9588m(int i, List<Integer> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.m6604d(i, list.get(i2).intValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6589h(list.get(i4).intValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.m6608c(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.dgo
    /* renamed from: n */
    public final void mo9587n(int i, List<Long> list, boolean z) {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f13978a.m6621b(i, list.get(i2).longValue());
            }
            return;
        }
        this.f13978a.mo6573a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzebk.m6594f(list.get(i4).longValue());
        }
        this.f13978a.mo6561b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f13978a.m6615b(list.get(i5).longValue());
        }
    }
}
