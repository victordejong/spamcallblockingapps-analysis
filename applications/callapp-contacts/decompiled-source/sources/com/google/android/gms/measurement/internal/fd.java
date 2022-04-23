package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.o;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fd.class */
public final class fd {
    private String A;
    private Boolean B;
    private long C;
    private String D;
    private long E;
    private long F;

    /* renamed from: a  reason: collision with root package name */
    final es f29620a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f29621b;

    /* renamed from: c  reason: collision with root package name */
    long f29622c;

    /* renamed from: d  reason: collision with root package name */
    long f29623d;
    long e;
    long f;
    long g;
    long h;
    String i;
    boolean j;
    private final String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private long p;
    private long q;
    private long r;
    private String s;
    private long t;
    private String u;
    private long v;
    private long w;
    private boolean x;
    private long y;
    private boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(es esVar, String str) {
        o.a(esVar);
        o.a(str);
        this.f29620a = esVar;
        this.k = str;
        esVar.d().S_();
    }

    public final void a(long j) {
        this.f29620a.d().S_();
        this.j |= this.q != j;
        this.q = j;
    }

    public final void a(Boolean bool) {
        this.f29620a.d().S_();
        boolean z = this.j;
        Boolean bool2 = this.B;
        int i = ju.f29913a;
        this.j = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.B = bool;
    }

    public final void a(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.l, str);
        this.l = str;
    }

    public final void a(boolean z) {
        this.f29620a.d().S_();
        this.j |= this.x != z;
        this.x = z;
    }

    public final boolean a() {
        this.f29620a.d().S_();
        return this.j;
    }

    public final String b() {
        this.f29620a.d().S_();
        return this.k;
    }

    public final void b(long j) {
        this.f29620a.d().S_();
        this.j |= this.r != j;
        this.r = j;
    }

    public final void b(String str) {
        this.f29620a.d().S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.j |= true ^ ju.c(this.m, str2);
        this.m = str2;
    }

    public final void b(boolean z) {
        this.f29620a.d().S_();
        this.j |= this.z != z;
        this.z = z;
    }

    public final String c() {
        this.f29620a.d().S_();
        return this.l;
    }

    public final void c(long j) {
        this.f29620a.d().S_();
        this.j |= this.t != j;
        this.t = j;
    }

    public final void c(String str) {
        this.f29620a.d().S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.j |= true ^ ju.c(this.A, str2);
        this.A = str2;
    }

    public final String d() {
        this.f29620a.d().S_();
        return this.m;
    }

    public final void d(long j) {
        this.f29620a.d().S_();
        this.j |= this.v != j;
        this.v = j;
    }

    public final void d(String str) {
        this.f29620a.d().S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.j |= true ^ ju.c(this.D, str2);
        this.D = str2;
    }

    public final String e() {
        this.f29620a.d().S_();
        return this.A;
    }

    public final void e(long j) {
        this.f29620a.d().S_();
        this.j |= this.w != j;
        this.w = j;
    }

    public final void e(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.n, str);
        this.n = str;
    }

    public final String f() {
        this.f29620a.d().S_();
        return this.D;
    }

    public final void f(long j) {
        this.f29620a.d().S_();
        this.j |= this.C != j;
        this.C = j;
    }

    public final void f(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.o, str);
        this.o = str;
    }

    public final String g() {
        this.f29620a.d().S_();
        return this.n;
    }

    public final void g(long j) {
        boolean z = true;
        o.b(j >= 0);
        this.f29620a.d().S_();
        boolean z2 = this.j;
        if (this.p == j) {
            z = false;
        }
        this.j = z | z2;
        this.p = j;
    }

    public final void g(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.s, str);
        this.s = str;
    }

    public final String h() {
        this.f29620a.d().S_();
        return this.o;
    }

    public final void h(long j) {
        this.f29620a.d().S_();
        this.j |= this.E != j;
        this.E = j;
    }

    public final void h(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.u, str);
        this.u = str;
    }

    public final long i() {
        this.f29620a.d().S_();
        return this.q;
    }

    public final void i(long j) {
        this.f29620a.d().S_();
        this.j |= this.F != j;
        this.F = j;
    }

    public final void i(String str) {
        this.f29620a.d().S_();
        this.j |= !ju.c(this.i, str);
        this.i = str;
    }

    public final long j() {
        this.f29620a.d().S_();
        return this.r;
    }

    public final void j(long j) {
        this.f29620a.d().S_();
        this.j |= this.y != j;
        this.y = j;
    }

    public final String k() {
        this.f29620a.d().S_();
        return this.s;
    }

    public final long l() {
        this.f29620a.d().S_();
        return this.t;
    }

    public final String m() {
        this.f29620a.d().S_();
        return this.u;
    }

    public final long n() {
        this.f29620a.d().S_();
        return this.v;
    }

    public final long o() {
        this.f29620a.d().S_();
        return this.w;
    }

    public final long p() {
        this.f29620a.d().S_();
        return this.C;
    }

    public final boolean q() {
        this.f29620a.d().S_();
        return this.x;
    }

    public final long r() {
        this.f29620a.d().S_();
        return this.p;
    }

    public final long s() {
        this.f29620a.d().S_();
        return this.E;
    }

    public final long t() {
        this.f29620a.d().S_();
        return this.F;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u() {
        /*
            r5 = this;
            r0 = r5
            com.google.android.gms.measurement.internal.es r0 = r0.f29620a
            com.google.android.gms.measurement.internal.ep r0 = r0.d()
            r0.S_()
            r0 = r5
            long r0 = r0.p
            r1 = 1
            long r0 = r0 + r1
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0033
            r0 = r5
            com.google.android.gms.measurement.internal.es r0 = r0.f29620a
            com.google.android.gms.measurement.internal.do r0 = r0.c()
            com.google.android.gms.measurement.internal.dm r0 = r0.f
            java.lang.String r1 = "Bundle index overflow. appId"
            r2 = r5
            java.lang.String r2 = r2.k
            java.lang.Object r2 = com.google.android.gms.measurement.internal.Cdo.a(r2)
            r0.a(r1, r2)
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r5
            r1 = 1
            r0.j = r1
            r0 = r5
            r1 = r8
            r0.p = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.fd.u():void");
    }

    public final String v() {
        this.f29620a.d().S_();
        return this.i;
    }

    public final long w() {
        this.f29620a.d().S_();
        return this.y;
    }

    public final boolean x() {
        this.f29620a.d().S_();
        return this.z;
    }

    public final Boolean y() {
        this.f29620a.d().S_();
        return this.B;
    }

    public final List<String> z() {
        this.f29620a.d().S_();
        return this.f29621b;
    }
}
