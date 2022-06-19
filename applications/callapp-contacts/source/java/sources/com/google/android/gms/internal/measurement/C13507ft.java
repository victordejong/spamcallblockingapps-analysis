package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.ft */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ft.class */
final class C13507ft {

    /* renamed from: a */
    final AbstractC13506fs f50730a;

    public C13507ft(AbstractC13506fs abstractC13506fs) {
        C13534gt.m12744a(abstractC13506fs, "output");
        this.f50730a = abstractC13506fs;
        abstractC13506fs.f50729a = this;
    }

    /* renamed from: a */
    public final void m12820a(int i, double d) throws IOException {
        this.f50730a.mo12831b(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m12819a(int i, float f) throws IOException {
        this.f50730a.mo12823d(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public final void m12818a(int i, int i2) throws IOException {
        this.f50730a.mo12823d(i, i2);
    }

    /* renamed from: a */
    public final void m12817a(int i, long j) throws IOException {
        this.f50730a.mo12846a(i, j);
    }

    /* renamed from: a */
    public final void m12816a(int i, AbstractC13500fm abstractC13500fm) throws IOException {
        this.f50730a.mo12845a(i, abstractC13500fm);
    }

    /* renamed from: a */
    public final void m12815a(int i, Object obj, AbstractC13569ia abstractC13569ia) throws IOException {
        AbstractC13556ho abstractC13556ho = (AbstractC13556ho) obj;
        C13505fr c13505fr = (C13505fr) this.f50730a;
        c13505fr.mo12833b((i << 3) | 2);
        AbstractC13485ey abstractC13485ey = (AbstractC13485ey) abstractC13556ho;
        int mo12760k = abstractC13485ey.mo12760k();
        int i2 = mo12760k;
        if (mo12760k == -1) {
            i2 = abstractC13569ia.mo12651b(abstractC13485ey);
            abstractC13485ey.mo12761b(i2);
        }
        c13505fr.mo12833b(i2);
        abstractC13569ia.mo12654a((AbstractC13569ia) abstractC13556ho, c13505fr.f50729a);
    }

    /* renamed from: a */
    public final void m12814a(int i, String str) throws IOException {
        this.f50730a.mo12843a(i, str);
    }

    /* renamed from: a */
    public final void m12813a(int i, boolean z) throws IOException {
        this.f50730a.mo12842a(i, z);
    }

    /* renamed from: b */
    public final void m12812b(int i, int i2) throws IOException {
        this.f50730a.mo12832b(i, i2);
    }

    /* renamed from: b */
    public final void m12811b(int i, long j) throws IOException {
        this.f50730a.mo12831b(i, j);
    }

    /* renamed from: b */
    public final void m12810b(int i, Object obj, AbstractC13569ia abstractC13569ia) throws IOException {
        AbstractC13506fs abstractC13506fs = this.f50730a;
        abstractC13506fs.mo12847a(i, 3);
        abstractC13569ia.mo12654a((AbstractC13569ia) ((AbstractC13556ho) obj), abstractC13506fs.f50729a);
        abstractC13506fs.mo12847a(i, 4);
    }

    /* renamed from: c */
    public final void m12809c(int i, int i2) throws IOException {
        this.f50730a.mo12832b(i, i2);
    }

    /* renamed from: c */
    public final void m12808c(int i, long j) throws IOException {
        this.f50730a.mo12846a(i, j);
    }

    /* renamed from: d */
    public final void m12807d(int i, int i2) throws IOException {
        this.f50730a.mo12823d(i, i2);
    }

    /* renamed from: d */
    public final void m12806d(int i, long j) throws IOException {
        this.f50730a.mo12831b(i, j);
    }

    /* renamed from: e */
    public final void m12805e(int i, int i2) throws IOException {
        this.f50730a.mo12826c(i, i2);
    }

    /* renamed from: e */
    public final void m12804e(int i, long j) throws IOException {
        this.f50730a.mo12846a(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: f */
    public final void m12803f(int i, int i2) throws IOException {
        this.f50730a.mo12826c(i, (i2 >> 31) ^ (i2 + i2));
    }
}
