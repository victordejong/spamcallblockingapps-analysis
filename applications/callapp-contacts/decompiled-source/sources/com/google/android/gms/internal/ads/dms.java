package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dms.class */
final class dms implements drd {

    /* renamed from: a  reason: collision with root package name */
    private final zzemk f26968a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dms(zzemk zzemkVar) {
        zzemk zzemkVar2 = (zzemk) dnj.a(zzemkVar, "output");
        this.f26968a = zzemkVar2;
        zzemkVar2.f28624a = this;
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final int a() {
        return drc.f27120a;
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i) throws IOException {
        this.f26968a.a(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, double d2) throws IOException {
        this.f26968a.a(i, d2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, float f) throws IOException {
        this.f26968a.a(i, f);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, int i2) throws IOException {
        this.f26968a.e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, long j) throws IOException {
        this.f26968a.a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, dlw dlwVar) throws IOException {
        this.f26968a.a(i, dlwVar);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final <K, V> void a(int i, dok<K, V> dokVar, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.f26968a.a(i, 2);
            this.f26968a.b(dol.a(dokVar, entry.getKey(), entry.getValue()));
            dol.a(this.f26968a, dokVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, Object obj) throws IOException {
        if (obj instanceof dlw) {
            this.f26968a.b(i, (dlw) obj);
        } else {
            this.f26968a.a(i, (dot) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, Object obj, dpp dppVar) throws IOException {
        this.f26968a.a(i, (dot) obj, dppVar);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, String str) throws IOException {
        this.f26968a.a(i, str);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, List<String> list) throws IOException {
        if (list instanceof dnz) {
            dnz dnzVar = (dnz) list;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object b2 = dnzVar.b(i2);
                if (b2 instanceof String) {
                    this.f26968a.a(i, (String) b2);
                } else {
                    this.f26968a.a(i, (dlw) b2);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f26968a.a(i, list.get(i3));
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, List<?> list, dpp dppVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(i, list.get(i2), dppVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.m(list.get(i3).intValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.b(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void a(int i, boolean z) throws IOException {
        this.f26968a.a(i, z);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i) throws IOException {
        this.f26968a.a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, int i2) throws IOException {
        this.f26968a.b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, long j) throws IOException {
        this.f26968a.c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, Object obj, dpp dppVar) throws IOException {
        zzemk zzemkVar = this.f26968a;
        zzemkVar.a(i, 3);
        dppVar.a((dpp) ((dot) obj), (drd) zzemkVar.f28624a);
        zzemkVar.a(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, List<dlw> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f26968a.a(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, List<?> list, dpp dppVar) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            b(i, list.get(i2), dppVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void b(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).intValue();
                i2 += zzemk.a();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.e(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void c(int i, int i2) throws IOException {
        this.f26968a.b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void c(int i, long j) throws IOException {
        this.f26968a.a(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void c(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.d(list.get(i3).longValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.a(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void d(int i, int i2) throws IOException {
        this.f26968a.e(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void d(int i, long j) throws IOException {
        this.f26968a.c(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void d(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.e(list.get(i3).longValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.a(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void e(int i, int i2) throws IOException {
        this.f26968a.c(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void e(int i, long j) throws IOException {
        this.f26968a.b(i, j);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void e(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).longValue();
                i2 += zzemk.c();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.c(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void f(int i, int i2) throws IOException {
        this.f26968a.d(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void f(int i, List<Float> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).floatValue();
                i2 += zzemk.e();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).floatValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.a(i, list.get(i5).floatValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void g(int i, List<Double> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).doubleValue();
                i2 += zzemk.f();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).doubleValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.a(i, list.get(i5).doubleValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void h(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.p(list.get(i3).intValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.b(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void i(int i, List<Boolean> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).booleanValue();
                i2 += zzemk.g();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.a(list.get(i4).booleanValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.a(i, list.get(i5).booleanValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void j(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.n(list.get(i3).intValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.b(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.c(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void k(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).intValue();
                i2 += zzemk.b();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.d(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.e(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void l(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                list.get(i3).longValue();
                i2 += zzemk.d();
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.c(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.c(i, list.get(i5).longValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void m(int i, List<Integer> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.o(list.get(i3).intValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.c(list.get(i4).intValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.d(i, list.get(i5).intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.drd
    public final void n(int i, List<Long> list, boolean z) throws IOException {
        if (z) {
            this.f26968a.a(i, 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += zzemk.f(list.get(i3).longValue());
            }
            this.f26968a.b(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                this.f26968a.b(list.get(i4).longValue());
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f26968a.b(i, list.get(i5).longValue());
        }
    }
}
