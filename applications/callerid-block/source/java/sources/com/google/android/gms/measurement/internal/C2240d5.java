package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C1581h;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.d5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d5.class */
final class C2240d5 {

    /* renamed from: A */
    private long f10114A;

    /* renamed from: B */
    private long f10115B;

    /* renamed from: C */
    private String f10116C;

    /* renamed from: D */
    private boolean f10117D;

    /* renamed from: E */
    private long f10118E;

    /* renamed from: F */
    private long f10119F;

    /* renamed from: a */
    private final s4 f10120a;

    /* renamed from: b */
    private final String f10121b;

    /* renamed from: c */
    private String f10122c;

    /* renamed from: d */
    private String f10123d;

    /* renamed from: e */
    private String f10124e;

    /* renamed from: f */
    private String f10125f;

    /* renamed from: g */
    private long f10126g;

    /* renamed from: h */
    private long f10127h;

    /* renamed from: i */
    private long f10128i;

    /* renamed from: j */
    private String f10129j;

    /* renamed from: k */
    private long f10130k;

    /* renamed from: l */
    private String f10131l;

    /* renamed from: m */
    private long f10132m;

    /* renamed from: n */
    private long f10133n;

    /* renamed from: o */
    private boolean f10134o;

    /* renamed from: p */
    private long f10135p;

    /* renamed from: q */
    private boolean f10136q;

    /* renamed from: r */
    private String f10137r;

    /* renamed from: s */
    private Boolean f10138s;

    /* renamed from: t */
    private long f10139t;

    /* renamed from: u */
    private List<String> f10140u;

    /* renamed from: v */
    private String f10141v;

    /* renamed from: w */
    private long f10142w;

    /* renamed from: x */
    private long f10143x;

    /* renamed from: y */
    private long f10144y;

    /* renamed from: z */
    private long f10145z;

    C2240d5(s4 s4Var, String str) {
        C1581h.m8347h(s4Var);
        C1581h.m8351d(str);
        this.f10120a = s4Var;
        this.f10121b = str;
        s4Var.c().f();
    }

    /* renamed from: A */
    public final boolean m4003A() {
        this.f10120a.c().f();
        return this.f10117D;
    }

    /* renamed from: B */
    public final String m4002B() {
        this.f10120a.c().f();
        return this.f10116C;
    }

    /* renamed from: C */
    public final String m4001C() {
        this.f10120a.c().f();
        String str = this.f10116C;
        m4000D(null);
        return str;
    }

    /* renamed from: D */
    public final void m4000D(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10116C, str);
        this.f10116C = str;
    }

    /* renamed from: E */
    public final long m3999E() {
        this.f10120a.c().f();
        return this.f10135p;
    }

    /* renamed from: F */
    public final void m3998F(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10135p != j;
        this.f10135p = j;
    }

    /* renamed from: G */
    public final boolean m3997G() {
        this.f10120a.c().f();
        return this.f10136q;
    }

    /* renamed from: H */
    public final void m3996H(boolean z) {
        this.f10120a.c().f();
        this.f10117D |= this.f10136q != z;
        this.f10136q = z;
    }

    /* renamed from: I */
    public final Boolean m3995I() {
        this.f10120a.c().f();
        return this.f10138s;
    }

    /* renamed from: J */
    public final void m3994J(Boolean bool) {
        this.f10120a.c().f();
        boolean z = this.f10117D;
        Boolean bool2 = this.f10138s;
        int i = u9.i;
        this.f10117D = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.f10138s = bool;
    }

    /* renamed from: K */
    public final List<String> m3993K() {
        this.f10120a.c().f();
        return this.f10140u;
    }

    /* renamed from: L */
    public final void m3992L(List<String> list) {
        this.f10120a.c().f();
        List<String> list2 = this.f10140u;
        int i = u9.i;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.f10117D = true;
        this.f10140u = list != null ? new ArrayList(list) : null;
    }

    /* renamed from: M */
    public final void m3991M() {
        this.f10120a.c().f();
        this.f10117D = false;
    }

    /* renamed from: N */
    public final String m3990N() {
        this.f10120a.c().f();
        return this.f10121b;
    }

    /* renamed from: O */
    public final String m3989O() {
        this.f10120a.c().f();
        return this.f10122c;
    }

    /* renamed from: P */
    public final void m3988P(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10122c, str);
        this.f10122c = str;
    }

    /* renamed from: Q */
    public final String m3987Q() {
        this.f10120a.c().f();
        return this.f10123d;
    }

    /* renamed from: R */
    public final void m3986R(String str) {
        this.f10120a.c().f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f10117D |= true ^ u9.G(this.f10123d, str2);
        this.f10123d = str2;
    }

    /* renamed from: S */
    public final String m3985S() {
        this.f10120a.c().f();
        return this.f10137r;
    }

    /* renamed from: T */
    public final void m3984T(String str) {
        this.f10120a.c().f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f10117D |= true ^ u9.G(this.f10137r, str2);
        this.f10137r = str2;
    }

    /* renamed from: U */
    public final String m3983U() {
        this.f10120a.c().f();
        return this.f10141v;
    }

    /* renamed from: V */
    public final void m3982V(String str) {
        this.f10120a.c().f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f10117D |= true ^ u9.G(this.f10141v, str2);
        this.f10141v = str2;
    }

    /* renamed from: W */
    public final String m3981W() {
        this.f10120a.c().f();
        return this.f10124e;
    }

    /* renamed from: X */
    public final void m3980X(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10124e, str);
        this.f10124e = str;
    }

    /* renamed from: Y */
    public final String m3979Y() {
        this.f10120a.c().f();
        return this.f10125f;
    }

    /* renamed from: Z */
    public final void m3978Z(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10125f, str);
        this.f10125f = str;
    }

    /* renamed from: a */
    public final void m3977a(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10132m != j;
        this.f10132m = j;
    }

    /* renamed from: a0 */
    public final long m3976a0() {
        this.f10120a.c().f();
        return this.f10127h;
    }

    /* renamed from: b */
    public final long m3975b() {
        this.f10120a.c().f();
        return this.f10133n;
    }

    /* renamed from: b0 */
    public final void m3974b0(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10127h != j;
        this.f10127h = j;
    }

    /* renamed from: c */
    public final void m3973c(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10133n != j;
        this.f10133n = j;
    }

    /* renamed from: c0 */
    public final long m3972c0() {
        this.f10120a.c().f();
        return this.f10128i;
    }

    /* renamed from: d */
    public final long m3971d() {
        this.f10120a.c().f();
        return this.f10139t;
    }

    /* renamed from: d0 */
    public final void m3970d0(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10128i != j;
        this.f10128i = j;
    }

    /* renamed from: e */
    public final void m3969e(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10139t != j;
        this.f10139t = j;
    }

    /* renamed from: e0 */
    public final String m3968e0() {
        this.f10120a.c().f();
        return this.f10129j;
    }

    /* renamed from: f */
    public final boolean m3967f() {
        this.f10120a.c().f();
        return this.f10134o;
    }

    /* renamed from: f0 */
    public final void m3966f0(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10129j, str);
        this.f10129j = str;
    }

    /* renamed from: g */
    public final void m3965g(boolean z) {
        this.f10120a.c().f();
        this.f10117D |= this.f10134o != z;
        this.f10134o = z;
    }

    /* renamed from: g0 */
    public final long m3964g0() {
        this.f10120a.c().f();
        return this.f10130k;
    }

    /* renamed from: h */
    public final void m3963h(long j) {
        boolean z = true;
        C1581h.m8354a(j >= 0);
        this.f10120a.c().f();
        boolean z2 = this.f10117D;
        if (this.f10126g == j) {
            z = false;
        }
        this.f10117D = z | z2;
        this.f10126g = j;
    }

    /* renamed from: h0 */
    public final void m3962h0(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10130k != j;
        this.f10130k = j;
    }

    /* renamed from: i */
    public final long m3961i() {
        this.f10120a.c().f();
        return this.f10126g;
    }

    /* renamed from: i0 */
    public final String m3960i0() {
        this.f10120a.c().f();
        return this.f10131l;
    }

    /* renamed from: j */
    public final long m3959j() {
        this.f10120a.c().f();
        return this.f10118E;
    }

    /* renamed from: j0 */
    public final void m3958j0(String str) {
        this.f10120a.c().f();
        this.f10117D |= !u9.G(this.f10131l, str);
        this.f10131l = str;
    }

    /* renamed from: k */
    public final void m3957k(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10118E != j;
        this.f10118E = j;
    }

    /* renamed from: k0 */
    public final long m3956k0() {
        this.f10120a.c().f();
        return this.f10132m;
    }

    /* renamed from: l */
    public final long m3955l() {
        this.f10120a.c().f();
        return this.f10119F;
    }

    /* renamed from: m */
    public final void m3954m(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10119F != j;
        this.f10119F = j;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: n */
    public final void m3953n() {
        this.f10120a.c().f();
        ?? r0 = this.f10126g + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f10120a.t().p().m3875b("Bundle index overflow. appId", o3.x(this.f10121b));
            c = 0;
        }
        this.f10117D = true;
        this.f10126g = c;
    }

    /* renamed from: o */
    public final long m3952o() {
        this.f10120a.c().f();
        return this.f10142w;
    }

    /* renamed from: p */
    public final void m3951p(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10142w != j;
        this.f10142w = j;
    }

    /* renamed from: q */
    public final long m3950q() {
        this.f10120a.c().f();
        return this.f10143x;
    }

    /* renamed from: r */
    public final void m3949r(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10143x != j;
        this.f10143x = j;
    }

    /* renamed from: s */
    public final long m3948s() {
        this.f10120a.c().f();
        return this.f10144y;
    }

    /* renamed from: t */
    public final void m3947t(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10144y != j;
        this.f10144y = j;
    }

    /* renamed from: u */
    public final long m3946u() {
        this.f10120a.c().f();
        return this.f10145z;
    }

    /* renamed from: v */
    public final void m3945v(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10145z != j;
        this.f10145z = j;
    }

    /* renamed from: w */
    public final long m3944w() {
        this.f10120a.c().f();
        return this.f10115B;
    }

    /* renamed from: x */
    public final void m3943x(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10115B != j;
        this.f10115B = j;
    }

    /* renamed from: y */
    public final long m3942y() {
        this.f10120a.c().f();
        return this.f10114A;
    }

    /* renamed from: z */
    public final void m3941z(long j) {
        this.f10120a.c().f();
        this.f10117D |= this.f10114A != j;
        this.f10114A = j;
    }
}
