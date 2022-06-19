package p193e.p194a.p1146q2;

import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17721r1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q2.r0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/r0.class */
public final class C19540r0 implements AbstractC19549v {

    /* renamed from: a */
    public final String f54295a;

    /* renamed from: b */
    public final boolean f54296b;

    /* renamed from: c */
    public final Boolean f54297c;

    /* renamed from: d */
    public final Boolean f54298d;

    /* renamed from: e */
    public final Boolean f54299e;

    /* renamed from: f */
    public final Boolean f54300f;

    /* renamed from: g */
    public final Boolean f54301g;

    /* renamed from: h */
    public final Boolean f54302h;

    /* renamed from: i */
    public final Boolean f54303i;

    /* renamed from: j */
    public final boolean f54304j;

    /* renamed from: k */
    public final Boolean f54305k;

    /* renamed from: l */
    public final Boolean f54306l;

    /* renamed from: m */
    public final Boolean f54307m;

    /* renamed from: n */
    public final Boolean f54308n;

    /* renamed from: o */
    public final Boolean f54309o;

    public C19540r0(String str, boolean z, Boolean bool, Boolean bool2, Boolean bool3, Boolean bool4, Boolean bool5, Boolean bool6, Boolean bool7, boolean z2, Boolean bool8, Boolean bool9, Boolean bool10, Boolean bool11, Boolean bool12) {
        this.f54295a = str;
        this.f54296b = z;
        this.f54297c = bool;
        this.f54298d = bool2;
        this.f54299e = bool3;
        this.f54300f = bool4;
        this.f54301g = bool5;
        this.f54302h = bool6;
        this.f54303i = bool7;
        this.f54304j = z2;
        this.f54305k = bool8;
        this.f54306l = bool9;
        this.f54307m = bool10;
        this.f54308n = bool11;
        this.f54309o = bool12;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17721r1.f50171r;
        C17721r1.C17723b c17723b = new C17721r1.C17723b(null);
        l.d(c17723b, "eventBuilder");
        String str = this.f54295a;
        c17723b.validate(c17723b.fields()[2], str);
        c17723b.f50192a = str;
        c17723b.fieldSetFlags()[2] = true;
        boolean z = this.f54296b;
        c17723b.validate(c17723b.fields()[3], Boolean.valueOf(z));
        c17723b.f50193b = z;
        c17723b.fieldSetFlags()[3] = true;
        Boolean bool = this.f54297c;
        c17723b.validate(c17723b.fields()[5], bool);
        c17723b.f50195d = bool;
        c17723b.fieldSetFlags()[5] = true;
        Boolean bool2 = this.f54298d;
        c17723b.validate(c17723b.fields()[15], bool2);
        c17723b.f50205n = bool2;
        c17723b.fieldSetFlags()[15] = true;
        Boolean bool3 = this.f54299e;
        c17723b.validate(c17723b.fields()[6], bool3);
        c17723b.f50196e = bool3;
        c17723b.fieldSetFlags()[6] = true;
        Boolean bool4 = this.f54300f;
        c17723b.validate(c17723b.fields()[7], bool4);
        c17723b.f50197f = bool4;
        c17723b.fieldSetFlags()[7] = true;
        Boolean bool5 = this.f54301g;
        c17723b.validate(c17723b.fields()[8], bool5);
        c17723b.f50198g = bool5;
        c17723b.fieldSetFlags()[8] = true;
        Boolean bool6 = this.f54302h;
        c17723b.validate(c17723b.fields()[9], bool6);
        c17723b.f50199h = bool6;
        c17723b.fieldSetFlags()[9] = true;
        Boolean bool7 = this.f54303i;
        c17723b.validate(c17723b.fields()[10], bool7);
        c17723b.f50200i = bool7;
        c17723b.fieldSetFlags()[10] = true;
        boolean z2 = this.f54304j;
        c17723b.validate(c17723b.fields()[4], Boolean.valueOf(z2));
        c17723b.f50194c = z2;
        c17723b.fieldSetFlags()[4] = true;
        Boolean bool8 = this.f54305k;
        c17723b.validate(c17723b.fields()[11], bool8);
        c17723b.f50201j = bool8;
        c17723b.fieldSetFlags()[11] = true;
        Boolean bool9 = this.f54306l;
        c17723b.validate(c17723b.fields()[12], bool9);
        c17723b.f50202k = bool9;
        c17723b.fieldSetFlags()[12] = true;
        Boolean bool10 = this.f54307m;
        c17723b.validate(c17723b.fields()[13], bool10);
        c17723b.f50203l = bool10;
        c17723b.fieldSetFlags()[13] = true;
        Boolean bool11 = this.f54308n;
        c17723b.validate(c17723b.fields()[14], bool11);
        c17723b.f50204m = bool11;
        c17723b.fieldSetFlags()[14] = true;
        Boolean bool12 = this.f54309o;
        c17723b.validate(c17723b.fields()[16], bool12);
        c17723b.f50206o = bool12;
        c17723b.fieldSetFlags()[16] = true;
        return new AbstractC19580x.C19584d(c17723b.build());
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19540r0)) {
                return false;
            }
            C19540r0 c19540r0 = (C19540r0) obj;
            return l.a(this.f54295a, c19540r0.f54295a) && this.f54296b == c19540r0.f54296b && l.a(this.f54297c, c19540r0.f54297c) && l.a(this.f54298d, c19540r0.f54298d) && l.a(this.f54299e, c19540r0.f54299e) && l.a(this.f54300f, c19540r0.f54300f) && l.a(this.f54301g, c19540r0.f54301g) && l.a(this.f54302h, c19540r0.f54302h) && l.a(this.f54303i, c19540r0.f54303i) && this.f54304j == c19540r0.f54304j && l.a(this.f54305k, c19540r0.f54305k) && l.a(this.f54306l, c19540r0.f54306l) && l.a(this.f54307m, c19540r0.f54307m) && l.a(this.f54308n, c19540r0.f54308n) && l.a(this.f54309o, c19540r0.f54309o);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f54295a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f54296b;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Boolean bool = this.f54297c;
        int hashCode2 = bool != null ? bool.hashCode() : 0;
        Boolean bool2 = this.f54298d;
        int hashCode3 = bool2 != null ? bool2.hashCode() : 0;
        Boolean bool3 = this.f54299e;
        int hashCode4 = bool3 != null ? bool3.hashCode() : 0;
        Boolean bool4 = this.f54300f;
        int hashCode5 = bool4 != null ? bool4.hashCode() : 0;
        Boolean bool5 = this.f54301g;
        int hashCode6 = bool5 != null ? bool5.hashCode() : 0;
        Boolean bool6 = this.f54302h;
        int hashCode7 = bool6 != null ? bool6.hashCode() : 0;
        Boolean bool7 = this.f54303i;
        int hashCode8 = bool7 != null ? bool7.hashCode() : 0;
        boolean z2 = this.f54304j;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        Boolean bool8 = this.f54305k;
        int hashCode9 = bool8 != null ? bool8.hashCode() : 0;
        Boolean bool9 = this.f54306l;
        int hashCode10 = bool9 != null ? bool9.hashCode() : 0;
        Boolean bool10 = this.f54307m;
        int hashCode11 = bool10 != null ? bool10.hashCode() : 0;
        Boolean bool11 = this.f54308n;
        int hashCode12 = bool11 != null ? bool11.hashCode() : 0;
        Boolean bool12 = this.f54309o;
        if (bool12 != null) {
            i = bool12.hashCode();
        }
        return (((((((((((((((((((((((((((hashCode * 31) + i3) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i2) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PermissionStateEvent(dialerAppPackage=");
        m8728C.append(this.f54295a);
        m8728C.append(", notificationsShow=");
        m8728C.append(this.f54296b);
        m8728C.append(", camera=");
        m8728C.append(this.f54297c);
        m8728C.append(", microphone=");
        m8728C.append(this.f54298d);
        m8728C.append(", contacts=");
        m8728C.append(this.f54299e);
        m8728C.append(", storage=");
        m8728C.append(this.f54300f);
        m8728C.append(", phone=");
        m8728C.append(this.f54301g);
        m8728C.append(", location=");
        m8728C.append(this.f54302h);
        m8728C.append(", drawOnTop=");
        m8728C.append(this.f54303i);
        m8728C.append(", notificationsAccess=");
        m8728C.append(this.f54304j);
        m8728C.append(", batteryOptimization=");
        m8728C.append(this.f54305k);
        m8728C.append(", settingsWrite=");
        m8728C.append(this.f54306l);
        m8728C.append(", callerIdApp=");
        m8728C.append(this.f54307m);
        m8728C.append(", callLog=");
        m8728C.append(this.f54308n);
        m8728C.append(", accessibility=");
        m8728C.append(this.f54309o);
        m8728C.append(")");
        return m8728C.toString();
    }
}
