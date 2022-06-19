package com.klinker.android.send_message;

import android.os.Build;
import e.d.a.a.a;
/* renamed from: com.klinker.android.send_message.f */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/f.class */
public class C2709f {

    /* renamed from: a */
    private String f11294a;

    /* renamed from: b */
    private String f11295b;

    /* renamed from: c */
    private String f11296c;

    /* renamed from: d */
    private String f11297d;

    /* renamed from: e */
    private String f11298e;

    /* renamed from: f */
    private String f11299f;

    /* renamed from: g */
    private boolean f11300g;

    /* renamed from: h */
    private boolean f11301h;

    /* renamed from: i */
    private boolean f11302i;

    /* renamed from: j */
    private boolean f11303j;

    /* renamed from: k */
    private boolean f11304k;

    /* renamed from: l */
    private boolean f11305l;

    /* renamed from: m */
    private String f11306m;

    /* renamed from: n */
    private String f11307n;

    /* renamed from: o */
    private boolean f11308o;

    /* renamed from: p */
    private int f11309p;

    /* renamed from: q */
    private int f11310q;

    public C2709f() {
        this("", "", "0", true, false, false, false, false, "", "", true, 3, true, -1);
    }

    public C2709f(String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str4, String str5, boolean z6, int i, boolean z7, Integer num) {
        this.f11310q = -1;
        this.f11294a = str;
        this.f11295b = str2;
        this.f11296c = str3;
        this.f11297d = "";
        this.f11298e = "";
        this.f11299f = "";
        this.f11300g = z;
        this.f11302i = z2;
        this.f11303j = z3;
        this.f11304k = z4;
        this.f11305l = z5;
        this.f11306m = str4;
        this.f11307n = str5;
        this.f11308o = z6;
        this.f11309p = i;
        m2086E(z7);
        this.f11310q = num != null ? num.intValue() : -1;
    }

    /* renamed from: A */
    public void m2090A(boolean z) {
        this.f11303j = z;
    }

    /* renamed from: B */
    public void m2089B(boolean z) {
        this.f11304k = z;
    }

    /* renamed from: C */
    public void m2088C(boolean z) {
        this.f11305l = z;
    }

    /* renamed from: D */
    public void m2087D(String str) {
        this.f11299f = str;
    }

    /* renamed from: E */
    public void m2086E(boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f11301h = z;
            return;
        }
        this.f11301h = false;
        a.b("Settings", "System sending only available on Lollipop+ devices");
    }

    /* renamed from: F */
    public void m2085F(String str) {
        this.f11298e = str;
    }

    /* renamed from: a */
    public String m2084a() {
        return this.f11297d;
    }

    /* renamed from: b */
    public boolean m2083b() {
        return this.f11302i;
    }

    /* renamed from: c */
    public boolean m2082c() {
        return this.f11300g;
    }

    /* renamed from: d */
    public String m2081d() {
        return this.f11294a;
    }

    /* renamed from: e */
    public String m2080e() {
        return this.f11296c;
    }

    /* renamed from: f */
    public String m2079f() {
        return this.f11307n;
    }

    /* renamed from: g */
    public String m2078g() {
        return this.f11295b;
    }

    /* renamed from: h */
    public boolean m2077h() {
        return this.f11308o;
    }

    /* renamed from: i */
    public int m2076i() {
        return this.f11309p;
    }

    /* renamed from: j */
    public String m2075j() {
        return this.f11306m;
    }

    /* renamed from: k */
    public boolean m2074k() {
        return this.f11303j;
    }

    /* renamed from: l */
    public boolean m2073l() {
        return this.f11304k;
    }

    /* renamed from: m */
    public boolean m2072m() {
        return this.f11305l;
    }

    /* renamed from: n */
    public int m2071n() {
        return this.f11310q;
    }

    /* renamed from: o */
    public String m2070o() {
        return this.f11299f;
    }

    /* renamed from: p */
    public boolean m2069p() {
        return this.f11301h;
    }

    /* renamed from: q */
    public String m2068q() {
        return this.f11298e;
    }

    /* renamed from: r */
    public void m2067r(String str) {
        this.f11297d = str;
    }

    /* renamed from: s */
    public void m2066s(boolean z) {
        this.f11302i = z;
    }

    /* renamed from: t */
    public void m2065t(boolean z) {
        this.f11300g = z;
    }

    /* renamed from: u */
    public void m2064u(String str) {
        this.f11294a = str;
    }

    /* renamed from: v */
    public void m2063v(String str) {
        this.f11296c = str;
    }

    /* renamed from: w */
    public void m2062w(String str) {
        this.f11295b = str;
    }

    /* renamed from: x */
    public void m2061x(boolean z) {
        this.f11308o = z;
    }

    /* renamed from: y */
    public void m2060y(int i) {
        this.f11309p = i;
    }

    /* renamed from: z */
    public void m2059z(String str) {
        this.f11306m = str;
    }
}
