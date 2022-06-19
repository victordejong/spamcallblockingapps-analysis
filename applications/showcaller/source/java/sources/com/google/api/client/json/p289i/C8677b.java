package com.google.api.client.json.p289i;

import com.google.api.client.json.AbstractC8668d;
import com.google.gson.stream.C9333b;
import java.math.BigDecimal;
import java.math.BigInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.api.client.json.i.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/json/i/b.class */
public class C8677b extends AbstractC8668d {

    /* renamed from: d */
    private final C9333b f38450d;

    /* renamed from: e */
    private final C8676a f38451e;

    public C8677b(C8676a c8676a, C9333b c9333b) {
        this.f38451e = c8676a;
        this.f38450d = c9333b;
        c9333b.m1088L(true);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: A */
    public void mo2995A(int i) {
        this.f38450d.m1085Q(i);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: C */
    public void mo2994C(long j) {
        this.f38450d.m1085Q(j);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: D */
    public void mo2993D(BigDecimal bigDecimal) {
        this.f38450d.m1084R(bigDecimal);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: E */
    public void mo2992E(BigInteger bigInteger) {
        this.f38450d.m1084R(bigInteger);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: I */
    public void mo2991I() {
        this.f38450d.m1078f();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: L */
    public void mo2990L() {
        this.f38450d.m1077g();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: N */
    public void mo2989N(String str) {
        this.f38450d.m1083U(str);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: a */
    public void mo2988a() {
        this.f38450d.m1089I("  ");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f38450d.close();
    }

    @Override // com.google.api.client.json.AbstractC8668d, java.io.Flushable
    public void flush() {
        this.f38450d.flush();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: g */
    public void mo2987g(boolean z) {
        this.f38450d.m1082W(z);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: k */
    public void mo2986k() {
        this.f38450d.m1075p();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: p */
    public void mo2985p() {
        this.f38450d.m1074q();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: q */
    public void mo2984q(String str) {
        this.f38450d.m1073u(str);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: u */
    public void mo2983u() {
        this.f38450d.m1071z();
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: y */
    public void mo2982y(double d) {
        this.f38450d.m1086P(d);
    }

    @Override // com.google.api.client.json.AbstractC8668d
    /* renamed from: z */
    public void mo2981z(float f) {
        this.f38450d.m1086P(f);
    }
}
