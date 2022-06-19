package com.google.android.exoplayer2.text.p259s;

import android.text.Layout;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.google.android.exoplayer2.text.s.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/s/d.class */
public final class C5378d {

    /* renamed from: a */
    private String f17201a;

    /* renamed from: b */
    private String f17202b;

    /* renamed from: c */
    private List<String> f17203c;

    /* renamed from: d */
    private String f17204d;

    /* renamed from: e */
    private String f17205e;

    /* renamed from: f */
    private int f17206f;

    /* renamed from: g */
    private boolean f17207g;

    /* renamed from: h */
    private int f17208h;

    /* renamed from: i */
    private boolean f17209i;

    /* renamed from: j */
    private int f17210j;

    /* renamed from: k */
    private int f17211k;

    /* renamed from: l */
    private int f17212l;

    /* renamed from: m */
    private int f17213m;

    /* renamed from: n */
    private int f17214n;

    /* renamed from: o */
    private float f17215o;

    /* renamed from: p */
    private Layout.Alignment f17216p;

    public C5378d() {
        m19427m();
    }

    /* renamed from: x */
    private static int m19416x(int i, String str, String str2, int i2) {
        if (!str.isEmpty()) {
            int i3 = -1;
            if (i != -1) {
                if (str.equals(str2)) {
                    i3 = i + i2;
                }
                return i3;
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m19439a() {
        if (this.f17209i) {
            return this.f17208h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    /* renamed from: b */
    public int m19438b() {
        if (this.f17207g) {
            return this.f17206f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    /* renamed from: c */
    public String m19437c() {
        return this.f17205e;
    }

    /* renamed from: d */
    public float m19436d() {
        return this.f17215o;
    }

    /* renamed from: e */
    public int m19435e() {
        return this.f17214n;
    }

    /* renamed from: f */
    public int m19434f(String str, String str2, String[] strArr, String str3) {
        if (!this.f17201a.isEmpty() || !this.f17202b.isEmpty() || !this.f17203c.isEmpty() || !this.f17204d.isEmpty()) {
            int m19416x = m19416x(m19416x(m19416x(0, this.f17201a, str, 1073741824), this.f17202b, str2, 2), this.f17204d, str3, 4);
            if (m19416x != -1 && Arrays.asList(strArr).containsAll(this.f17203c)) {
                return m19416x + (this.f17203c.size() * 4);
            }
            return 0;
        }
        return TextUtils.isEmpty(str2) ? 1 : 0;
    }

    /* renamed from: g */
    public int m19433g() {
        int i = this.f17212l;
        if (i == -1 && this.f17213m == -1) {
            return -1;
        }
        int i2 = 0;
        int i3 = i == 1 ? 1 : 0;
        if (this.f17213m == 1) {
            i2 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: h */
    public Layout.Alignment m19432h() {
        return this.f17216p;
    }

    /* renamed from: i */
    public boolean m19431i() {
        return this.f17209i;
    }

    /* renamed from: j */
    public boolean m19430j() {
        return this.f17207g;
    }

    /* renamed from: k */
    public boolean m19429k() {
        boolean z = true;
        if (this.f17210j != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public boolean m19428l() {
        boolean z = true;
        if (this.f17211k != 1) {
            z = false;
        }
        return z;
    }

    @EnsuresNonNull({"targetId", "targetTag", "targetClasses", "targetVoice"})
    /* renamed from: m */
    public void m19427m() {
        this.f17201a = "";
        this.f17202b = "";
        this.f17203c = Collections.emptyList();
        this.f17204d = "";
        this.f17205e = null;
        this.f17207g = false;
        this.f17209i = false;
        this.f17210j = -1;
        this.f17211k = -1;
        this.f17212l = -1;
        this.f17213m = -1;
        this.f17214n = -1;
        this.f17216p = null;
    }

    /* renamed from: n */
    public C5378d m19426n(int i) {
        this.f17208h = i;
        this.f17209i = true;
        return this;
    }

    /* renamed from: o */
    public C5378d m19425o(boolean z) {
        this.f17212l = z ? 1 : 0;
        return this;
    }

    /* renamed from: p */
    public C5378d m19424p(int i) {
        this.f17206f = i;
        this.f17207g = true;
        return this;
    }

    /* renamed from: q */
    public C5378d m19423q(String str) {
        this.f17205e = C5515h0.m18804u0(str);
        return this;
    }

    /* renamed from: r */
    public C5378d m19422r(boolean z) {
        this.f17213m = z ? 1 : 0;
        return this;
    }

    /* renamed from: s */
    public void m19421s(String[] strArr) {
        this.f17203c = Arrays.asList(strArr);
    }

    /* renamed from: t */
    public void m19420t(String str) {
        this.f17201a = str;
    }

    /* renamed from: u */
    public void m19419u(String str) {
        this.f17202b = str;
    }

    /* renamed from: v */
    public void m19418v(String str) {
        this.f17204d = str;
    }

    /* renamed from: w */
    public C5378d m19417w(boolean z) {
        this.f17211k = z ? 1 : 0;
        return this;
    }
}
