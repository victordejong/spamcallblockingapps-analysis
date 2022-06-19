package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dms.class */
final class dms implements drd {

    /* renamed from: a */
    private final zzemk f47246a;

    public dms(zzemk zzemkVar) {
        zzemk zzemkVar2 = (zzemk) dnj.m16314a(zzemkVar, "output");
        this.f47246a = zzemkVar2;
        zzemkVar2.f50219a = this;
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final int mo15922a() {
        return drc.f47451a;
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15921a(int i) throws IOException {
        this.f47246a.mo13658a(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15920a(int i, double d) throws IOException {
        this.f47246a.m13717a(i, d);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15919a(int i, float f) throws IOException {
        this.f47246a.m13716a(i, f);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15918a(int i, int i2) throws IOException {
        this.f47246a.mo13637e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15917a(int i, long j) throws IOException {
        this.f47246a.mo13657a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15916a(int i, dlw dlwVar) throws IOException {
        this.f47246a.mo13656a(i, dlwVar);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final <K, V> void mo15915a(int i, dok<K, V> dokVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f47246a.mo13658a(i, 2);
            this.f47246a.mo13645b(dol.m16280a(dokVar, entry.getKey(), entry.getValue()));
            dol.m16279a(this.f47246a, dokVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15914a(int i, Object obj) throws IOException {
        if (obj instanceof dlw) {
            this.f47246a.mo13643b(i, (dlw) obj);
        } else {
            this.f47246a.mo13655a(i, (dot) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15913a(int i, Object obj, dpp dppVar) throws IOException {
        this.f47246a.mo13654a(i, (dot) obj, dppVar);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15912a(int i, String str) throws IOException {
        this.f47246a.mo13653a(i, str);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15911a(int i, List<String> list) throws IOException {
        if (!(list instanceof dnz)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13653a(i, list.get(i2));
            }
            return;
        }
        dnz dnzVar = (dnz) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object mo15997b = dnzVar.mo15997b(i3);
            if (mo15997b instanceof String) {
                this.f47246a.mo13653a(i, (String) mo15997b);
            } else {
                this.f47246a.mo13656a(i, (dlw) mo15997b);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15910a(int i, List<?> list, dpp dppVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo15913a(i, list.get(i2), dppVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15909a(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13644b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13666m(list.get(i4).intValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13659a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: a */
    public final void mo15908a(int i, boolean z) throws IOException {
        this.f47246a.mo13652a(i, z);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15907b(int i) throws IOException {
        this.f47246a.mo13658a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15906b(int i, int i2) throws IOException {
        this.f47246a.mo13644b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15905b(int i, long j) throws IOException {
        this.f47246a.mo13640c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15904b(int i, Object obj, dpp dppVar) throws IOException {
        zzemk zzemkVar = this.f47246a;
        zzemkVar.mo13658a(i, 3);
        dppVar.mo16121a((dpp) ((dot) obj), (drd) zzemkVar.f50219a);
        zzemkVar.mo13658a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15903b(int i, List<dlw> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f47246a.mo13656a(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15902b(int i, List<?> list, dpp dppVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mo15904b(i, list.get(i2), dppVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: b */
    public final void mo15901b(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13637e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += zzemk.m13720a();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13638d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: c */
    public final void mo15900c(int i, int i2) throws IOException {
        this.f47246a.mo13644b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: c */
    public final void mo15899c(int i, long j) throws IOException {
        this.f47246a.mo13657a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: c */
    public final void mo15898c(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13657a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13689d(list.get(i4).longValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13651a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: d */
    public final void mo15897d(int i, int i2) throws IOException {
        this.f47246a.mo13637e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: d */
    public final void mo15896d(int i, long j) throws IOException {
        this.f47246a.mo13640c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: d */
    public final void mo15895d(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13657a(i, list.get(i2).longValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13685e(list.get(i4).longValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13651a(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: e */
    public final void mo15894e(int i, int i2) throws IOException {
        this.f47246a.mo13641c(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: e */
    public final void mo15893e(int i, long j) throws IOException {
        this.f47246a.m13708b(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: e */
    public final void mo15892e(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13640c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += zzemk.m13698c();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13639c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: f */
    public final void mo15891f(int i, int i2) throws IOException {
        this.f47246a.m13692d(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: f */
    public final void mo15890f(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.m13716a(i, list.get(i2).floatValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += zzemk.m13688e();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.m13718a(list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: g */
    public final void mo15889g(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.m13717a(i, list.get(i2).doubleValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += zzemk.m13684f();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.m13719a(list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: h */
    public final void mo15888h(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13644b(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13663p(list.get(i4).intValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13659a(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: i */
    public final void mo15887i(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13652a(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3 += zzemk.m13679g();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.m13711a(list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: j */
    public final void mo15886j(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13641c(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13665n(list.get(i4).intValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13645b(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: k */
    public final void mo15885k(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13637e(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += zzemk.m13709b();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13638d(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: l */
    public final void mo15884l(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.mo13640c(i, list.get(i2).longValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += zzemk.m13693d();
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.mo13639c(list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: m */
    public final void mo15883m(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.m13692d(i, list.get(i2).intValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13664o(list.get(i4).intValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.m13697c(list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    /* renamed from: n */
    public final void mo15882n(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f47246a.m13708b(i, list.get(i2).longValue());
            }
            return;
        }
        this.f47246a.mo13658a(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += zzemk.m13680f(list.get(i4).longValue());
        }
        this.f47246a.mo13645b(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f47246a.m13703b(list.get(i5).longValue());
        }
    }
}
