package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzeh;
import com.google.android.gms.measurement.internal.zzfr;
import com.google.android.gms.measurement.internal.zzkw;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.l0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/l0.class */
public final class C25079l0 {

    /* renamed from: A */
    public long f70170A;

    /* renamed from: B */
    public String f70171B;

    /* renamed from: C */
    public boolean f70172C;

    /* renamed from: D */
    public long f70173D;

    /* renamed from: E */
    public long f70174E;

    /* renamed from: a */
    public final zzfr f70175a;

    /* renamed from: b */
    public final String f70176b;

    /* renamed from: c */
    public String f70177c;

    /* renamed from: d */
    public String f70178d;

    /* renamed from: e */
    public String f70179e;

    /* renamed from: f */
    public String f70180f;

    /* renamed from: g */
    public long f70181g;

    /* renamed from: h */
    public long f70182h;

    /* renamed from: i */
    public long f70183i;

    /* renamed from: j */
    public String f70184j;

    /* renamed from: k */
    public long f70185k;

    /* renamed from: l */
    public String f70186l;

    /* renamed from: m */
    public long f70187m;

    /* renamed from: n */
    public long f70188n;

    /* renamed from: o */
    public boolean f70189o;

    /* renamed from: p */
    public long f70190p;

    /* renamed from: q */
    public boolean f70191q;

    /* renamed from: r */
    public String f70192r;

    /* renamed from: s */
    public Boolean f70193s;

    /* renamed from: t */
    public long f70194t;

    /* renamed from: u */
    public List f70195u;

    /* renamed from: v */
    public long f70196v;

    /* renamed from: w */
    public long f70197w;

    /* renamed from: x */
    public long f70198x;

    /* renamed from: y */
    public long f70199y;

    /* renamed from: z */
    public long f70200z;

    public C25079l0(zzfr zzfrVar, String str) {
        Objects.requireNonNull(zzfrVar, "null reference");
        Preconditions.m38901g(str);
        this.f70175a = zzfrVar;
        this.f70176b = str;
        zzfrVar.a().d();
    }

    /* renamed from: A */
    public final long m4209A() {
        this.f70175a.a().d();
        return this.f70185k;
    }

    /* renamed from: B */
    public final long m4208B() {
        this.f70175a.a().d();
        return this.f70173D;
    }

    /* renamed from: C */
    public final long m4207C() {
        this.f70175a.a().d();
        return this.f70188n;
    }

    /* renamed from: D */
    public final long m4206D() {
        this.f70175a.a().d();
        return this.f70194t;
    }

    /* renamed from: E */
    public final long m4205E() {
        this.f70175a.a().d();
        return this.f70174E;
    }

    /* renamed from: F */
    public final long m4204F() {
        this.f70175a.a().d();
        return this.f70187m;
    }

    /* renamed from: G */
    public final long m4203G() {
        this.f70175a.a().d();
        return this.f70183i;
    }

    /* renamed from: H */
    public final long m4202H() {
        this.f70175a.a().d();
        return this.f70181g;
    }

    /* renamed from: I */
    public final long m4201I() {
        this.f70175a.a().d();
        return this.f70182h;
    }

    /* renamed from: J */
    public final String m4200J() {
        this.f70175a.a().d();
        return this.f70192r;
    }

    /* renamed from: K */
    public final String m4199K() {
        this.f70175a.a().d();
        String str = this.f70171B;
        m4176q(null);
        return str;
    }

    /* renamed from: L */
    public final String m4198L() {
        this.f70175a.a().d();
        return this.f70176b;
    }

    /* renamed from: M */
    public final String m4197M() {
        this.f70175a.a().d();
        return this.f70177c;
    }

    /* renamed from: N */
    public final String m4196N() {
        this.f70175a.a().d();
        return this.f70186l;
    }

    /* renamed from: O */
    public final String m4195O() {
        this.f70175a.a().d();
        return this.f70184j;
    }

    /* renamed from: P */
    public final String m4194P() {
        this.f70175a.a().d();
        return this.f70180f;
    }

    /* renamed from: Q */
    public final String m4193Q() {
        this.f70175a.a().d();
        return this.f70178d;
    }

    /* renamed from: a */
    public final List m4192a() {
        this.f70175a.a().d();
        return this.f70195u;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: b */
    public final void m4191b() {
        this.f70175a.a().d();
        ?? r0 = this.f70181g + 1;
        char c = r0;
        if (r0 > 2147483647L) {
            this.f70175a.zzay().i.m38589b("Bundle index overflow. appId", zzeh.p(this.f70176b));
            c = 0;
        }
        this.f70172C = true;
        this.f70181g = c;
    }

    /* renamed from: c */
    public final void m4190c(String str) {
        this.f70175a.a().d();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f70172C |= true ^ zzkw.U(this.f70192r, str2);
        this.f70192r = str2;
    }

    /* renamed from: d */
    public final void m4189d(boolean z) {
        this.f70175a.a().d();
        this.f70172C |= this.f70191q != z;
        this.f70191q = z;
    }

    /* renamed from: e */
    public final void m4188e(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70190p != j;
        this.f70190p = j;
    }

    /* renamed from: f */
    public final void m4187f(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70177c, str);
        this.f70177c = str;
    }

    /* renamed from: g */
    public final void m4186g(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70186l, str);
        this.f70186l = str;
    }

    /* renamed from: h */
    public final void m4185h(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70184j, str);
        this.f70184j = str;
    }

    /* renamed from: i */
    public final void m4184i(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70185k != j;
        this.f70185k = j;
    }

    /* renamed from: j */
    public final void m4183j(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70173D != j;
        this.f70173D = j;
    }

    /* renamed from: k */
    public final void m4182k(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70188n != j;
        this.f70188n = j;
    }

    /* renamed from: l */
    public final void m4181l(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70194t != j;
        this.f70194t = j;
    }

    /* renamed from: m */
    public final void m4180m(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70174E != j;
        this.f70174E = j;
    }

    /* renamed from: n */
    public final void m4179n(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70180f, str);
        this.f70180f = str;
    }

    /* renamed from: o */
    public final void m4178o(String str) {
        this.f70175a.a().d();
        String str2 = str;
        if (true == TextUtils.isEmpty(str)) {
            str2 = null;
        }
        this.f70172C |= true ^ zzkw.U(this.f70178d, str2);
        this.f70178d = str2;
    }

    /* renamed from: p */
    public final void m4177p(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70187m != j;
        this.f70187m = j;
    }

    /* renamed from: q */
    public final void m4176q(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70171B, str);
        this.f70171B = str;
    }

    /* renamed from: r */
    public final void m4175r(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70183i != j;
        this.f70183i = j;
    }

    /* renamed from: s */
    public final long m4174s() {
        this.f70175a.a().d();
        return this.f70190p;
    }

    /* renamed from: t */
    public final void m4173t(long j) {
        boolean z = true;
        Preconditions.m38907a(j >= 0);
        this.f70175a.a().d();
        boolean z2 = this.f70172C;
        if (this.f70181g == j) {
            z = false;
        }
        this.f70172C = z2 | z;
        this.f70181g = j;
    }

    /* renamed from: u */
    public final void m4172u(long j) {
        this.f70175a.a().d();
        this.f70172C |= this.f70182h != j;
        this.f70182h = j;
    }

    /* renamed from: v */
    public final void m4171v(boolean z) {
        this.f70175a.a().d();
        this.f70172C |= this.f70189o != z;
        this.f70189o = z;
    }

    /* renamed from: w */
    public final void m4170w(String str) {
        this.f70175a.a().d();
        this.f70172C |= !zzkw.U(this.f70179e, str);
        this.f70179e = str;
    }

    /* renamed from: x */
    public final void m4169x(List list) {
        this.f70175a.a().d();
        List list2 = this.f70195u;
        if (list2 == null && list == null) {
            return;
        }
        if (list2 != null && list2.equals(list)) {
            return;
        }
        this.f70172C = true;
        this.f70195u = list != null ? new ArrayList(list) : null;
    }

    /* renamed from: y */
    public final boolean m4168y() {
        this.f70175a.a().d();
        return this.f70191q;
    }

    /* renamed from: z */
    public final boolean m4167z() {
        this.f70175a.a().d();
        return this.f70189o;
    }
}
