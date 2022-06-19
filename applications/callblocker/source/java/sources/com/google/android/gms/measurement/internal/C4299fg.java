package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C2662s;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.fg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fg.class */
public final class C4299fg {

    /* renamed from: A */
    private long f18886A;

    /* renamed from: B */
    private long f18887B;

    /* renamed from: C */
    private long f18888C;

    /* renamed from: D */
    private String f18889D;

    /* renamed from: E */
    private boolean f18890E;

    /* renamed from: F */
    private long f18891F;

    /* renamed from: G */
    private long f18892G;

    /* renamed from: a */
    private final C4296fd f18893a;

    /* renamed from: b */
    private final String f18894b;

    /* renamed from: c */
    private String f18895c;

    /* renamed from: d */
    private String f18896d;

    /* renamed from: e */
    private String f18897e;

    /* renamed from: f */
    private String f18898f;

    /* renamed from: g */
    private long f18899g;

    /* renamed from: h */
    private long f18900h;

    /* renamed from: i */
    private long f18901i;

    /* renamed from: j */
    private String f18902j;

    /* renamed from: k */
    private long f18903k;

    /* renamed from: l */
    private String f18904l;

    /* renamed from: m */
    private long f18905m;

    /* renamed from: n */
    private long f18906n;

    /* renamed from: o */
    private boolean f18907o;

    /* renamed from: p */
    private long f18908p;

    /* renamed from: q */
    private boolean f18909q;

    /* renamed from: r */
    private boolean f18910r;

    /* renamed from: s */
    private String f18911s;

    /* renamed from: t */
    private Boolean f18912t;

    /* renamed from: u */
    private long f18913u;

    /* renamed from: v */
    private List<String> f18914v;

    /* renamed from: w */
    private String f18915w;

    /* renamed from: x */
    private long f18916x;

    /* renamed from: y */
    private long f18917y;

    /* renamed from: z */
    private long f18918z;

    public C4299fg(C4296fd c4296fd, String str) {
        C2662s.m13981a(c4296fd);
        C2662s.m13979a(str);
        this.f18893a = c4296fd;
        this.f18894b = str;
        this.f18893a.mo4031u().mo4037o();
    }

    /* renamed from: A */
    public final long m4531A() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18888C;
    }

    /* renamed from: B */
    public final long m4530B() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18887B;
    }

    /* renamed from: C */
    public final String m4529C() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18889D;
    }

    /* renamed from: D */
    public final String m4528D() {
        this.f18893a.mo4031u().mo4037o();
        String str = this.f18889D;
        m4491i((String) null);
        return str;
    }

    /* renamed from: E */
    public final long m4527E() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18908p;
    }

    /* renamed from: F */
    public final boolean m4526F() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18909q;
    }

    /* renamed from: G */
    public final boolean m4525G() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18910r;
    }

    /* renamed from: H */
    public final Boolean m4524H() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18912t;
    }

    /* renamed from: I */
    public final List<String> m4523I() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18914v;
    }

    /* renamed from: a */
    public final void m4521a(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18900h != j) | this.f18890E;
        this.f18900h = j;
    }

    /* renamed from: a */
    public final void m4520a(Boolean bool) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4124a(this.f18912t, bool)) | this.f18890E;
        this.f18912t = bool;
    }

    /* renamed from: a */
    public final void m4519a(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18895c, str)) | this.f18890E;
        this.f18895c = str;
    }

    /* renamed from: a */
    public final void m4518a(List<String> list) {
        this.f18893a.mo4031u().mo4037o();
        if (!C4424jw.m4105a(this.f18914v, list)) {
            this.f18890E = true;
            this.f18914v = list != null ? new ArrayList(list) : null;
        }
    }

    /* renamed from: a */
    public final void m4517a(boolean z) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18907o != z) | this.f18890E;
        this.f18907o = z;
    }

    /* renamed from: a */
    public final boolean m4522a() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18890E;
    }

    /* renamed from: b */
    public final void m4516b() {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = false;
    }

    /* renamed from: b */
    public final void m4515b(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18901i != j) | this.f18890E;
        this.f18901i = j;
    }

    /* renamed from: b */
    public final void m4514b(String str) {
        this.f18893a.mo4031u().mo4037o();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f18890E = (!C4424jw.m4089c(this.f18896d, str2)) | this.f18890E;
        this.f18896d = str2;
    }

    /* renamed from: b */
    public final void m4513b(boolean z) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18909q != z) | this.f18890E;
        this.f18909q = z;
    }

    /* renamed from: c */
    public final String m4512c() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18894b;
    }

    /* renamed from: c */
    public final void m4511c(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18903k != j) | this.f18890E;
        this.f18903k = j;
    }

    /* renamed from: c */
    public final void m4510c(String str) {
        this.f18893a.mo4031u().mo4037o();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f18890E = (!C4424jw.m4089c(this.f18911s, str2)) | this.f18890E;
        this.f18911s = str2;
    }

    /* renamed from: c */
    public final void m4509c(boolean z) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18910r != z) | this.f18890E;
        this.f18910r = z;
    }

    /* renamed from: d */
    public final String m4508d() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18895c;
    }

    /* renamed from: d */
    public final void m4507d(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18905m != j) | this.f18890E;
        this.f18905m = j;
    }

    /* renamed from: d */
    public final void m4506d(String str) {
        this.f18893a.mo4031u().mo4037o();
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f18890E = (!C4424jw.m4089c(this.f18915w, str2)) | this.f18890E;
        this.f18915w = str2;
    }

    /* renamed from: e */
    public final String m4505e() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18896d;
    }

    /* renamed from: e */
    public final void m4504e(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18906n != j) | this.f18890E;
        this.f18906n = j;
    }

    /* renamed from: e */
    public final void m4503e(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18897e, str)) | this.f18890E;
        this.f18897e = str;
    }

    /* renamed from: f */
    public final String m4502f() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18911s;
    }

    /* renamed from: f */
    public final void m4501f(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18913u != j) | this.f18890E;
        this.f18913u = j;
    }

    /* renamed from: f */
    public final void m4500f(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18898f, str)) | this.f18890E;
        this.f18898f = str;
    }

    /* renamed from: g */
    public final String m4499g() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18915w;
    }

    /* renamed from: g */
    public final void m4498g(long j) {
        boolean z = true;
        C2662s.m13973b(j >= 0);
        this.f18893a.mo4031u().mo4037o();
        boolean z2 = this.f18890E;
        if (this.f18899g == j) {
            z = false;
        }
        this.f18890E = z2 | z;
        this.f18899g = j;
    }

    /* renamed from: g */
    public final void m4497g(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18902j, str)) | this.f18890E;
        this.f18902j = str;
    }

    /* renamed from: h */
    public final String m4496h() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18897e;
    }

    /* renamed from: h */
    public final void m4495h(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18891F != j) | this.f18890E;
        this.f18891F = j;
    }

    /* renamed from: h */
    public final void m4494h(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18904l, str)) | this.f18890E;
        this.f18904l = str;
    }

    /* renamed from: i */
    public final String m4493i() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18898f;
    }

    /* renamed from: i */
    public final void m4492i(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18892G != j) | this.f18890E;
        this.f18892G = j;
    }

    /* renamed from: i */
    public final void m4491i(String str) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (!C4424jw.m4089c(this.f18889D, str)) | this.f18890E;
        this.f18889D = str;
    }

    /* renamed from: j */
    public final long m4490j() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18900h;
    }

    /* renamed from: j */
    public final void m4489j(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18916x != j) | this.f18890E;
        this.f18916x = j;
    }

    /* renamed from: k */
    public final long m4488k() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18901i;
    }

    /* renamed from: k */
    public final void m4487k(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18917y != j) | this.f18890E;
        this.f18917y = j;
    }

    /* renamed from: l */
    public final String m4486l() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18902j;
    }

    /* renamed from: l */
    public final void m4485l(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18918z != j) | this.f18890E;
        this.f18918z = j;
    }

    /* renamed from: m */
    public final long m4484m() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18903k;
    }

    /* renamed from: m */
    public final void m4483m(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18886A != j) | this.f18890E;
        this.f18886A = j;
    }

    /* renamed from: n */
    public final String m4482n() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18904l;
    }

    /* renamed from: n */
    public final void m4481n(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18888C != j) | this.f18890E;
        this.f18888C = j;
    }

    /* renamed from: o */
    public final long m4480o() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18905m;
    }

    /* renamed from: o */
    public final void m4479o(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18887B != j) | this.f18890E;
        this.f18887B = j;
    }

    /* renamed from: p */
    public final long m4478p() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18906n;
    }

    /* renamed from: p */
    public final void m4477p(long j) {
        this.f18893a.mo4031u().mo4037o();
        this.f18890E = (this.f18908p != j) | this.f18890E;
        this.f18908p = j;
    }

    /* renamed from: q */
    public final long m4476q() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18913u;
    }

    /* renamed from: r */
    public final boolean m4475r() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18907o;
    }

    /* renamed from: s */
    public final long m4474s() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18899g;
    }

    /* renamed from: t */
    public final long m4473t() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18891F;
    }

    /* renamed from: u */
    public final long m4472u() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18892G;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: v */
    public final void m4471v() {
        this.f18893a.mo4031u().mo4037o();
        ?? r0 = this.f18899g + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f18893a.mo4030v().m4662e().m4653a("Bundle index overflow. appId", C4263dy.m4669a(this.f18894b));
            c = 0;
        }
        this.f18890E = true;
        this.f18899g = c;
    }

    /* renamed from: w */
    public final long m4470w() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18916x;
    }

    /* renamed from: x */
    public final long m4469x() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18917y;
    }

    /* renamed from: y */
    public final long m4468y() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18918z;
    }

    /* renamed from: z */
    public final long m4467z() {
        this.f18893a.mo4031u().mo4037o();
        return this.f18886A;
    }
}
