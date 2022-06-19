package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.d5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/d5.class */
public final class C7686d5 {

    /* renamed from: A */
    private long f35145A;

    /* renamed from: B */
    private long f35146B;

    /* renamed from: C */
    private String f35147C;

    /* renamed from: D */
    private boolean f35148D;

    /* renamed from: E */
    private long f35149E;

    /* renamed from: F */
    private long f35150F;

    /* renamed from: a */
    private final C7858s4 f35151a;

    /* renamed from: b */
    private final String f35152b;

    /* renamed from: c */
    private String f35153c;

    /* renamed from: d */
    private String f35154d;

    /* renamed from: e */
    private String f35155e;

    /* renamed from: f */
    private String f35156f;

    /* renamed from: g */
    private long f35157g;

    /* renamed from: h */
    private long f35158h;

    /* renamed from: i */
    private long f35159i;

    /* renamed from: j */
    private String f35160j;

    /* renamed from: k */
    private long f35161k;

    /* renamed from: l */
    private String f35162l;

    /* renamed from: m */
    private long f35163m;

    /* renamed from: n */
    private long f35164n;

    /* renamed from: o */
    private boolean f35165o;

    /* renamed from: p */
    private long f35166p;

    /* renamed from: q */
    private boolean f35167q;

    /* renamed from: r */
    private String f35168r;

    /* renamed from: s */
    private Boolean f35169s;

    /* renamed from: t */
    private long f35170t;

    /* renamed from: u */
    private List<String> f35171u;

    /* renamed from: v */
    private String f35172v;

    /* renamed from: w */
    private long f35173w;

    /* renamed from: x */
    private long f35174x;

    /* renamed from: y */
    private long f35175y;

    /* renamed from: z */
    private long f35176z;

    public C7686d5(C7858s4 c7858s4, String str) {
        C6155o.m17018j(c7858s4);
        C6155o.m17022f(str);
        this.f35151a = c7858s4;
        this.f35152b = str;
        c7858s4.mo6029b().mo6113f();
    }

    /* renamed from: A */
    public final boolean m6556A() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35148D;
    }

    /* renamed from: B */
    public final String m6555B() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35147C;
    }

    /* renamed from: C */
    public final String m6554C() {
        this.f35151a.mo6029b().mo6113f();
        String str = this.f35147C;
        m6553D(null);
        return str;
    }

    /* renamed from: D */
    public final void m6553D(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35147C, str);
        this.f35147C = str;
    }

    /* renamed from: E */
    public final long m6552E() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35166p;
    }

    /* renamed from: F */
    public final void m6551F(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35166p != j;
        this.f35166p = j;
    }

    /* renamed from: G */
    public final boolean m6550G() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35167q;
    }

    /* renamed from: H */
    public final void m6549H(boolean z) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35167q != z;
        this.f35167q = z;
    }

    /* renamed from: I */
    public final Boolean m6548I() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35169s;
    }

    /* renamed from: J */
    public final void m6547J(Boolean bool) {
        this.f35151a.mo6029b().mo6113f();
        boolean z = this.f35148D;
        Boolean bool2 = this.f35169s;
        int i = C7885u9.f35724e;
        this.f35148D = z | (!((bool2 == null && bool == null) ? true : bool2 == null ? false : bool2.equals(bool)));
        this.f35169s = bool;
    }

    /* renamed from: K */
    public final List<String> m6546K() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35171u;
    }

    /* renamed from: L */
    public final void m6545L(List<String> list) {
        this.f35151a.mo6029b().mo6113f();
        List<String> list2 = this.f35171u;
        int i = C7885u9.f35724e;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.f35148D = true;
        this.f35171u = list != null ? new ArrayList(list) : null;
    }

    /* renamed from: M */
    public final void m6544M() {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D = false;
    }

    /* renamed from: N */
    public final String m6543N() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35152b;
    }

    /* renamed from: O */
    public final String m6542O() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35153c;
    }

    /* renamed from: P */
    public final void m6541P(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35153c, str);
        this.f35153c = str;
    }

    /* renamed from: Q */
    public final String m6540Q() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35154d;
    }

    /* renamed from: R */
    public final void m6539R(String str) {
        this.f35151a.mo6029b().mo6113f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f35148D |= true ^ C7885u9.m5995G(this.f35154d, str2);
        this.f35154d = str2;
    }

    /* renamed from: S */
    public final String m6538S() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35168r;
    }

    /* renamed from: T */
    public final void m6537T(String str) {
        this.f35151a.mo6029b().mo6113f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f35148D |= true ^ C7885u9.m5995G(this.f35168r, str2);
        this.f35168r = str2;
    }

    /* renamed from: U */
    public final String m6536U() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35172v;
    }

    /* renamed from: V */
    public final void m6535V(String str) {
        this.f35151a.mo6029b().mo6113f();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f35148D |= true ^ C7885u9.m5995G(this.f35172v, str2);
        this.f35172v = str2;
    }

    /* renamed from: W */
    public final String m6534W() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35155e;
    }

    /* renamed from: X */
    public final void m6533X(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35155e, str);
        this.f35155e = str;
    }

    /* renamed from: Y */
    public final String m6532Y() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35156f;
    }

    /* renamed from: Z */
    public final void m6531Z(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35156f, str);
        this.f35156f = str;
    }

    /* renamed from: a */
    public final void m6530a(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35163m != j;
        this.f35163m = j;
    }

    /* renamed from: a0 */
    public final long m6529a0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35158h;
    }

    /* renamed from: b */
    public final long m6528b() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35164n;
    }

    /* renamed from: b0 */
    public final void m6527b0(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35158h != j;
        this.f35158h = j;
    }

    /* renamed from: c */
    public final void m6526c(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35164n != j;
        this.f35164n = j;
    }

    /* renamed from: c0 */
    public final long m6525c0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35159i;
    }

    /* renamed from: d */
    public final long m6524d() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35170t;
    }

    /* renamed from: d0 */
    public final void m6523d0(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35159i != j;
        this.f35159i = j;
    }

    /* renamed from: e */
    public final void m6522e(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35170t != j;
        this.f35170t = j;
    }

    /* renamed from: e0 */
    public final String m6521e0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35160j;
    }

    /* renamed from: f */
    public final boolean m6520f() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35165o;
    }

    /* renamed from: f0 */
    public final void m6519f0(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35160j, str);
        this.f35160j = str;
    }

    /* renamed from: g */
    public final void m6518g(boolean z) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35165o != z;
        this.f35165o = z;
    }

    /* renamed from: g0 */
    public final long m6517g0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35161k;
    }

    /* renamed from: h */
    public final void m6516h(long j) {
        boolean z = true;
        C6155o.m17027a(j >= 0);
        this.f35151a.mo6029b().mo6113f();
        boolean z2 = this.f35148D;
        if (this.f35157g == j) {
            z = false;
        }
        this.f35148D = z | z2;
        this.f35157g = j;
    }

    /* renamed from: h0 */
    public final void m6515h0(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35161k != j;
        this.f35161k = j;
    }

    /* renamed from: i */
    public final long m6514i() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35157g;
    }

    /* renamed from: i0 */
    public final String m6513i0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35162l;
    }

    /* renamed from: j */
    public final long m6512j() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35149E;
    }

    /* renamed from: j0 */
    public final void m6511j0(String str) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= !C7885u9.m5995G(this.f35162l, str);
        this.f35162l = str;
    }

    /* renamed from: k */
    public final void m6510k(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35149E != j;
        this.f35149E = j;
    }

    /* renamed from: k0 */
    public final long m6509k0() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35163m;
    }

    /* renamed from: l */
    public final long m6508l() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35150F;
    }

    /* renamed from: m */
    public final void m6507m(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35150F != j;
        this.f35150F = j;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: n */
    public final void m6506n() {
        this.f35151a.mo6029b().mo6113f();
        ?? r0 = this.f35157g + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f35151a.mo6047C().m6192p().m6215b("Bundle index overflow. appId", C7813o3.m6186v(this.f35152b));
            c = 0;
        }
        this.f35148D = true;
        this.f35157g = c;
    }

    /* renamed from: o */
    public final long m6505o() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35173w;
    }

    /* renamed from: p */
    public final void m6504p(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35173w != j;
        this.f35173w = j;
    }

    /* renamed from: q */
    public final long m6503q() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35174x;
    }

    /* renamed from: r */
    public final void m6502r(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35174x != j;
        this.f35174x = j;
    }

    /* renamed from: s */
    public final long m6501s() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35175y;
    }

    /* renamed from: t */
    public final void m6500t(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35175y != j;
        this.f35175y = j;
    }

    /* renamed from: u */
    public final long m6499u() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35176z;
    }

    /* renamed from: v */
    public final void m6498v(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35176z != j;
        this.f35176z = j;
    }

    /* renamed from: w */
    public final long m6497w() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35146B;
    }

    /* renamed from: x */
    public final void m6496x(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35146B != j;
        this.f35146B = j;
    }

    /* renamed from: y */
    public final long m6495y() {
        this.f35151a.mo6029b().mo6113f();
        return this.f35145A;
    }

    /* renamed from: z */
    public final void m6494z(long j) {
        this.f35151a.mo6029b().mo6113f();
        this.f35148D |= this.f35145A != j;
        this.f35145A = j;
    }
}
