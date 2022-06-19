package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C12045o;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.fd */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fd.class */
public final class C13991fd {

    /* renamed from: A */
    private String f51581A;

    /* renamed from: B */
    private Boolean f51582B;

    /* renamed from: C */
    private long f51583C;

    /* renamed from: D */
    private String f51584D;

    /* renamed from: E */
    private long f51585E;

    /* renamed from: F */
    private long f51586F;

    /* renamed from: a */
    final C13979es f51587a;

    /* renamed from: b */
    List<String> f51588b;

    /* renamed from: c */
    long f51589c;

    /* renamed from: d */
    long f51590d;

    /* renamed from: e */
    long f51591e;

    /* renamed from: f */
    long f51592f;

    /* renamed from: g */
    long f51593g;

    /* renamed from: h */
    long f51594h;

    /* renamed from: i */
    String f51595i;

    /* renamed from: j */
    boolean f51596j;

    /* renamed from: k */
    private final String f51597k;

    /* renamed from: l */
    private String f51598l;

    /* renamed from: m */
    private String f51599m;

    /* renamed from: n */
    private String f51600n;

    /* renamed from: o */
    private String f51601o;

    /* renamed from: p */
    private long f51602p;

    /* renamed from: q */
    private long f51603q;

    /* renamed from: r */
    private long f51604r;

    /* renamed from: s */
    private String f51605s;

    /* renamed from: t */
    private long f51606t;

    /* renamed from: u */
    private String f51607u;

    /* renamed from: v */
    private long f51608v;

    /* renamed from: w */
    private long f51609w;

    /* renamed from: x */
    private boolean f51610x;

    /* renamed from: y */
    private long f51611y;

    /* renamed from: z */
    private boolean f51612z;

    public C13991fd(C13979es c13979es, String str) {
        C12045o.m19162a(c13979es);
        C12045o.m19160a(str);
        this.f51587a = c13979es;
        this.f51597k = str;
        c13979es.mo11658d().mo11884S_();
    }

    /* renamed from: a */
    public final void m11954a(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51603q != j;
        this.f51603q = j;
    }

    /* renamed from: a */
    public final void m11953a(Boolean bool) {
        this.f51587a.mo11658d().mo11884S_();
        boolean z = this.f51596j;
        Boolean bool2 = this.f51582B;
        int i = C14116ju.f51995a;
        this.f51596j = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.f51582B = bool;
    }

    /* renamed from: a */
    public final void m11952a(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51598l, str);
        this.f51598l = str;
    }

    /* renamed from: a */
    public final void m11951a(boolean z) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51610x != z;
        this.f51610x = z;
    }

    /* renamed from: a */
    public final boolean m11955a() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51596j;
    }

    /* renamed from: b */
    public final String m11950b() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51597k;
    }

    /* renamed from: b */
    public final void m11949b(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51604r != j;
        this.f51604r = j;
    }

    /* renamed from: b */
    public final void m11948b(String str) {
        this.f51587a.mo11658d().mo11884S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f51596j |= true ^ C14116ju.m11564c(this.f51599m, str2);
        this.f51599m = str2;
    }

    /* renamed from: b */
    public final void m11947b(boolean z) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51612z != z;
        this.f51612z = z;
    }

    /* renamed from: c */
    public final String m11946c() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51598l;
    }

    /* renamed from: c */
    public final void m11945c(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51606t != j;
        this.f51606t = j;
    }

    /* renamed from: c */
    public final void m11944c(String str) {
        this.f51587a.mo11658d().mo11884S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f51596j |= true ^ C14116ju.m11564c(this.f51581A, str2);
        this.f51581A = str2;
    }

    /* renamed from: d */
    public final String m11943d() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51599m;
    }

    /* renamed from: d */
    public final void m11942d(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51608v != j;
        this.f51608v = j;
    }

    /* renamed from: d */
    public final void m11941d(String str) {
        this.f51587a.mo11658d().mo11884S_();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f51596j |= true ^ C14116ju.m11564c(this.f51584D, str2);
        this.f51584D = str2;
    }

    /* renamed from: e */
    public final String m11940e() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51581A;
    }

    /* renamed from: e */
    public final void m11939e(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51609w != j;
        this.f51609w = j;
    }

    /* renamed from: e */
    public final void m11938e(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51600n, str);
        this.f51600n = str;
    }

    /* renamed from: f */
    public final String m11937f() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51584D;
    }

    /* renamed from: f */
    public final void m11936f(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51583C != j;
        this.f51583C = j;
    }

    /* renamed from: f */
    public final void m11935f(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51601o, str);
        this.f51601o = str;
    }

    /* renamed from: g */
    public final String m11934g() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51600n;
    }

    /* renamed from: g */
    public final void m11933g(long j) {
        boolean z = true;
        C12045o.m19154b(j >= 0);
        this.f51587a.mo11658d().mo11884S_();
        boolean z2 = this.f51596j;
        if (this.f51602p == j) {
            z = false;
        }
        this.f51596j = z | z2;
        this.f51602p = j;
    }

    /* renamed from: g */
    public final void m11932g(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51605s, str);
        this.f51605s = str;
    }

    /* renamed from: h */
    public final String m11931h() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51601o;
    }

    /* renamed from: h */
    public final void m11930h(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51585E != j;
        this.f51585E = j;
    }

    /* renamed from: h */
    public final void m11929h(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51607u, str);
        this.f51607u = str;
    }

    /* renamed from: i */
    public final long m11928i() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51603q;
    }

    /* renamed from: i */
    public final void m11927i(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51586F != j;
        this.f51586F = j;
    }

    /* renamed from: i */
    public final void m11926i(String str) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= !C14116ju.m11564c(this.f51595i, str);
        this.f51595i = str;
    }

    /* renamed from: j */
    public final long m11925j() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51604r;
    }

    /* renamed from: j */
    public final void m11924j(long j) {
        this.f51587a.mo11658d().mo11884S_();
        this.f51596j |= this.f51611y != j;
        this.f51611y = j;
    }

    /* renamed from: k */
    public final String m11923k() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51605s;
    }

    /* renamed from: l */
    public final long m11922l() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51606t;
    }

    /* renamed from: m */
    public final String m11921m() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51607u;
    }

    /* renamed from: n */
    public final long m11920n() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51608v;
    }

    /* renamed from: o */
    public final long m11919o() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51609w;
    }

    /* renamed from: p */
    public final long m11918p() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51583C;
    }

    /* renamed from: q */
    public final boolean m11917q() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51610x;
    }

    /* renamed from: r */
    public final long m11916r() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51602p;
    }

    /* renamed from: s */
    public final long m11915s() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51585E;
    }

    /* renamed from: t */
    public final long m11914t() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51586F;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: u */
    public final void m11913u() {
        this.f51587a.mo11658d().mo11884S_();
        ?? r0 = this.f51602p + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f51587a.mo11661c().f51398f.m12091a("Bundle index overflow. appId", C13947do.m12087a(this.f51597k));
            c = 0;
        }
        this.f51596j = true;
        this.f51602p = c;
    }

    /* renamed from: v */
    public final String m11912v() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51595i;
    }

    /* renamed from: w */
    public final long m11911w() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51611y;
    }

    /* renamed from: x */
    public final boolean m11910x() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51612z;
    }

    /* renamed from: y */
    public final Boolean m11909y() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51582B;
    }

    /* renamed from: z */
    public final List<String> m11908z() {
        this.f51587a.mo11658d().mo11884S_();
        return this.f51588b;
    }
}
