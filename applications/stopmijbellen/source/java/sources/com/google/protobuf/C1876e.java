package com.google.protobuf;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4925w;
/* renamed from: com.google.protobuf.e */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/e.class */
public final class C1876e implements AbstractC1885g0 {

    /* renamed from: a */
    public final CodedOutputStream f7065a;

    public C1876e(CodedOutputStream codedOutputStream) {
        Charset charset = C1895k.f7092a;
        this.f7065a = codedOutputStream;
        codedOutputStream.f7031a = this;
    }

    /* renamed from: a */
    public void m4332a(int i, double d) throws IOException {
        CodedOutputStream codedOutputStream = this.f7065a;
        Objects.requireNonNull(codedOutputStream);
        codedOutputStream.mo4402w0(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: b */
    public void m4331b(int i, float f) throws IOException {
        CodedOutputStream codedOutputStream = this.f7065a;
        Objects.requireNonNull(codedOutputStream);
        codedOutputStream.mo4404u0(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: c */
    public void m4330c(int i, Object obj, AbstractC4925w abstractC4925w) throws IOException {
        CodedOutputStream codedOutputStream = this.f7065a;
        codedOutputStream.mo4416G0(i, 3);
        abstractC4925w.mo259b((AbstractC1916u) obj, codedOutputStream.f7031a);
        codedOutputStream.mo4416G0(i, 4);
    }

    /* renamed from: d */
    public void m4329d(int i, Object obj, AbstractC4925w abstractC4925w) throws IOException {
        this.f7065a.mo4422A0(i, (AbstractC1916u) obj, abstractC4925w);
    }

    /* renamed from: e */
    public final void m4328e(int i, Object obj) throws IOException {
        if (obj instanceof AbstractC4890c) {
            this.f7065a.mo4419D0(i, (AbstractC4890c) obj);
        } else {
            this.f7065a.mo4420C0(i, (AbstractC1916u) obj);
        }
    }

    /* renamed from: f */
    public void m4327f(int i, int i2) throws IOException {
        this.f7065a.mo4415H0(i, CodedOutputStream.m4424n0(i2));
    }

    /* renamed from: g */
    public void m4326g(int i, long j) throws IOException {
        this.f7065a.mo4413J0(i, CodedOutputStream.m4423o0(j));
    }
}
