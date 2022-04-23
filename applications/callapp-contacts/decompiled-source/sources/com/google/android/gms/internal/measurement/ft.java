package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ft.class */
final class ft {

    /* renamed from: a  reason: collision with root package name */
    final fs f29031a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ft(fs fsVar) {
        gt.a(fsVar, "output");
        this.f29031a = fsVar;
        fsVar.f29030a = this;
    }

    public final void a(int i, double d2) throws IOException {
        this.f29031a.b(i, Double.doubleToRawLongBits(d2));
    }

    public final void a(int i, float f) throws IOException {
        this.f29031a.d(i, Float.floatToRawIntBits(f));
    }

    public final void a(int i, int i2) throws IOException {
        this.f29031a.d(i, i2);
    }

    public final void a(int i, long j) throws IOException {
        this.f29031a.a(i, j);
    }

    public final void a(int i, fm fmVar) throws IOException {
        this.f29031a.a(i, fmVar);
    }

    public final void a(int i, Object obj, ia iaVar) throws IOException {
        ho hoVar = (ho) obj;
        fr frVar = (fr) this.f29031a;
        frVar.b((i << 3) | 2);
        ey eyVar = (ey) hoVar;
        int k = eyVar.k();
        int i2 = k;
        if (k == -1) {
            i2 = iaVar.b(eyVar);
            eyVar.b(i2);
        }
        frVar.b(i2);
        iaVar.a((ia) hoVar, frVar.f29030a);
    }

    public final void a(int i, String str) throws IOException {
        this.f29031a.a(i, str);
    }

    public final void a(int i, boolean z) throws IOException {
        this.f29031a.a(i, z);
    }

    public final void b(int i, int i2) throws IOException {
        this.f29031a.b(i, i2);
    }

    public final void b(int i, long j) throws IOException {
        this.f29031a.b(i, j);
    }

    public final void b(int i, Object obj, ia iaVar) throws IOException {
        fs fsVar = this.f29031a;
        fsVar.a(i, 3);
        iaVar.a((ia) ((ho) obj), fsVar.f29030a);
        fsVar.a(i, 4);
    }

    public final void c(int i, int i2) throws IOException {
        this.f29031a.b(i, i2);
    }

    public final void c(int i, long j) throws IOException {
        this.f29031a.a(i, j);
    }

    public final void d(int i, int i2) throws IOException {
        this.f29031a.d(i, i2);
    }

    public final void d(int i, long j) throws IOException {
        this.f29031a.b(i, j);
    }

    public final void e(int i, int i2) throws IOException {
        this.f29031a.c(i, i2);
    }

    public final void e(int i, long j) throws IOException {
        this.f29031a.a(i, (j >> 63) ^ (j + j));
    }

    public final void f(int i, int i2) throws IOException {
        this.f29031a.c(i, (i2 >> 31) ^ (i2 + i2));
    }
}
