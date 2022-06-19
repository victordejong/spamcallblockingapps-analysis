package p193e.p194a.p1146q2;

import com.truecaller.tracking.events.AppStandbyBucket;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17541g0;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q2.p */
/* loaded from: classes4-dex2jar.jar:e/a/q2/p.class */
public final class C19533p implements AbstractC19549v {

    /* renamed from: A */
    public final boolean f54233A;

    /* renamed from: B */
    public final boolean f54234B;

    /* renamed from: C */
    public final boolean f54235C;

    /* renamed from: D */
    public final String f54236D;

    /* renamed from: E */
    public final String f54237E;

    /* renamed from: a */
    public final boolean f54238a;

    /* renamed from: b */
    public final boolean f54239b;

    /* renamed from: c */
    public final String f54240c;

    /* renamed from: d */
    public final boolean f54241d;

    /* renamed from: e */
    public final String f54242e;

    /* renamed from: f */
    public final boolean f54243f;

    /* renamed from: g */
    public final String f54244g;

    /* renamed from: h */
    public final String f54245h;

    /* renamed from: i */
    public final String f54246i;

    /* renamed from: j */
    public final Integer f54247j;

    /* renamed from: k */
    public final String f54248k;

    /* renamed from: l */
    public final Boolean f54249l;

    /* renamed from: m */
    public final boolean f54250m;

    /* renamed from: n */
    public final boolean f54251n;

    /* renamed from: o */
    public final boolean f54252o;

    /* renamed from: p */
    public final Boolean f54253p;

    /* renamed from: q */
    public final Boolean f54254q;

    /* renamed from: r */
    public final boolean f54255r;

    /* renamed from: s */
    public final boolean f54256s;

    /* renamed from: t */
    public final boolean f54257t;

    /* renamed from: u */
    public final boolean f54258u;

    /* renamed from: v */
    public final boolean f54259v;

    /* renamed from: w */
    public final boolean f54260w;

    /* renamed from: x */
    public final boolean f54261x;

    /* renamed from: y */
    public final boolean f54262y;

    /* renamed from: z */
    public final boolean f54263z;

    public C19533p(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, String str3, String str4, String str5, Integer num, String str6, Boolean bool, boolean z5, boolean z6, boolean z7, Boolean bool2, Boolean bool3, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, String str7, String str8) {
        C22128a.m8703I0(str6, "themeName", str7, "inCallUISettingValue", str8, "inCallUIOptedInByDefaultValue");
        this.f54238a = z;
        this.f54239b = z2;
        this.f54240c = str;
        this.f54241d = z3;
        this.f54242e = str2;
        this.f54243f = z4;
        this.f54244g = str3;
        this.f54245h = str4;
        this.f54246i = str5;
        this.f54247j = num;
        this.f54248k = str6;
        this.f54249l = bool;
        this.f54250m = z5;
        this.f54251n = z6;
        this.f54252o = z7;
        this.f54253p = bool2;
        this.f54254q = bool3;
        this.f54255r = z8;
        this.f54256s = z9;
        this.f54257t = z10;
        this.f54258u = z11;
        this.f54259v = z12;
        this.f54260w = z13;
        this.f54261x = z14;
        this.f54262y = z15;
        this.f54263z = z16;
        this.f54233A = z17;
        this.f54234B = z18;
        this.f54235C = z19;
        this.f54236D = str7;
        this.f54237E = str8;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17541g0.f49271D;
        C17541g0.C17543b c17543b = new C17541g0.C17543b(null);
        boolean z = this.f54239b;
        c17543b.validate(c17543b.fields()[2], Boolean.valueOf(z));
        c17543b.f49305a = z;
        c17543b.fieldSetFlags()[2] = true;
        boolean z2 = this.f54238a;
        c17543b.validate(c17543b.fields()[3], Boolean.valueOf(z2));
        c17543b.f49306b = z2;
        c17543b.fieldSetFlags()[3] = true;
        String str = this.f54240c;
        c17543b.validate(c17543b.fields()[9], str);
        c17543b.f49312h = str;
        c17543b.fieldSetFlags()[9] = true;
        boolean z3 = this.f54241d;
        c17543b.validate(c17543b.fields()[4], Boolean.valueOf(z3));
        c17543b.f49307c = z3;
        c17543b.fieldSetFlags()[4] = true;
        String str2 = this.f54242e;
        c17543b.validate(c17543b.fields()[5], str2);
        c17543b.f49308d = str2;
        c17543b.fieldSetFlags()[5] = true;
        boolean z4 = this.f54243f;
        c17543b.validate(c17543b.fields()[6], Boolean.valueOf(z4));
        c17543b.f49309e = z4;
        c17543b.fieldSetFlags()[6] = true;
        String str3 = this.f54246i;
        c17543b.validate(c17543b.fields()[7], str3);
        c17543b.f49310f = str3;
        c17543b.fieldSetFlags()[7] = true;
        Integer num = this.f54247j;
        AppStandbyBucket appStandbyBucket = null;
        if (num != null) {
            int intValue = num.intValue();
            appStandbyBucket = intValue != 10 ? intValue != 20 ? intValue != 30 ? intValue != 40 ? intValue != 45 ? null : AppStandbyBucket.RESTRICTED : AppStandbyBucket.RARE : AppStandbyBucket.FREQUENT : AppStandbyBucket.WORKING_SET : AppStandbyBucket.ACTIVE;
        }
        c17543b.validate(c17543b.fields()[8], appStandbyBucket);
        c17543b.f49311g = appStandbyBucket;
        c17543b.fieldSetFlags()[8] = true;
        String str4 = this.f54248k;
        c17543b.validate(c17543b.fields()[10], str4);
        c17543b.f49313i = str4;
        c17543b.fieldSetFlags()[10] = true;
        Boolean bool = this.f54249l;
        c17543b.validate(c17543b.fields()[13], bool);
        c17543b.f49316l = bool;
        c17543b.fieldSetFlags()[13] = true;
        boolean z5 = this.f54250m;
        c17543b.validate(c17543b.fields()[14], Boolean.valueOf(z5));
        c17543b.f49317m = z5;
        c17543b.fieldSetFlags()[14] = true;
        boolean z6 = this.f54251n;
        c17543b.validate(c17543b.fields()[15], Boolean.valueOf(z6));
        c17543b.f49318n = z6;
        c17543b.fieldSetFlags()[15] = true;
        boolean z7 = this.f54252o;
        c17543b.validate(c17543b.fields()[16], Boolean.valueOf(z7));
        c17543b.f49319o = z7;
        c17543b.fieldSetFlags()[16] = true;
        Boolean bool2 = this.f54253p;
        c17543b.validate(c17543b.fields()[17], bool2);
        c17543b.f49320p = bool2;
        c17543b.fieldSetFlags()[17] = true;
        Boolean bool3 = this.f54254q;
        c17543b.validate(c17543b.fields()[18], bool3);
        c17543b.f49321q = bool3;
        c17543b.fieldSetFlags()[18] = true;
        boolean z8 = this.f54255r;
        c17543b.validate(c17543b.fields()[19], Boolean.valueOf(z8));
        c17543b.f49322r = z8;
        c17543b.fieldSetFlags()[19] = true;
        boolean z9 = this.f54256s;
        c17543b.validate(c17543b.fields()[20], Boolean.valueOf(z9));
        c17543b.f49323s = z9;
        c17543b.fieldSetFlags()[20] = true;
        boolean z10 = this.f54257t;
        c17543b.validate(c17543b.fields()[22], Boolean.valueOf(z10));
        c17543b.f49325u = z10;
        c17543b.fieldSetFlags()[22] = true;
        boolean z11 = this.f54258u;
        c17543b.validate(c17543b.fields()[23], Boolean.valueOf(z11));
        c17543b.f49326v = z11;
        c17543b.fieldSetFlags()[23] = true;
        boolean z12 = this.f54259v;
        c17543b.validate(c17543b.fields()[24], Boolean.valueOf(z12));
        c17543b.f49327w = z12;
        c17543b.fieldSetFlags()[24] = true;
        boolean z13 = this.f54260w;
        c17543b.validate(c17543b.fields()[28], Boolean.valueOf(z13));
        c17543b.f49304A = z13;
        c17543b.fieldSetFlags()[28] = true;
        boolean z14 = this.f54261x;
        c17543b.validate(c17543b.fields()[25], Boolean.valueOf(z14));
        c17543b.f49328x = z14;
        c17543b.fieldSetFlags()[25] = true;
        boolean z15 = this.f54262y;
        c17543b.validate(c17543b.fields()[11], Boolean.valueOf(z15));
        c17543b.f49314j = z15;
        c17543b.fieldSetFlags()[11] = true;
        boolean z16 = this.f54263z;
        c17543b.validate(c17543b.fields()[12], Boolean.valueOf(z16));
        c17543b.f49315k = z16;
        c17543b.fieldSetFlags()[12] = true;
        boolean z17 = this.f54233A;
        c17543b.validate(c17543b.fields()[26], Boolean.valueOf(z17));
        c17543b.f49329y = z17;
        c17543b.fieldSetFlags()[26] = true;
        boolean z18 = this.f54234B;
        c17543b.validate(c17543b.fields()[27], Boolean.valueOf(z18));
        c17543b.f49330z = z18;
        c17543b.fieldSetFlags()[27] = true;
        boolean z19 = this.f54235C;
        c17543b.validate(c17543b.fields()[21], Boolean.valueOf(z19));
        c17543b.f49324t = z19;
        c17543b.fieldSetFlags()[21] = true;
        C17541g0 build = c17543b.build();
        l.d(build, "AppConfigStateAndroid.ne…Enabled)\n        .build()");
        return new AbstractC19580x.C19584d(build);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19533p)) {
                return false;
            }
            C19533p c19533p = (C19533p) obj;
            return this.f54238a == c19533p.f54238a && this.f54239b == c19533p.f54239b && l.a(this.f54240c, c19533p.f54240c) && this.f54241d == c19533p.f54241d && l.a(this.f54242e, c19533p.f54242e) && this.f54243f == c19533p.f54243f && l.a(this.f54244g, c19533p.f54244g) && l.a(this.f54245h, c19533p.f54245h) && l.a(this.f54246i, c19533p.f54246i) && l.a(this.f54247j, c19533p.f54247j) && l.a(this.f54248k, c19533p.f54248k) && l.a(this.f54249l, c19533p.f54249l) && this.f54250m == c19533p.f54250m && this.f54251n == c19533p.f54251n && this.f54252o == c19533p.f54252o && l.a(this.f54253p, c19533p.f54253p) && l.a(this.f54254q, c19533p.f54254q) && this.f54255r == c19533p.f54255r && this.f54256s == c19533p.f54256s && this.f54257t == c19533p.f54257t && this.f54258u == c19533p.f54258u && this.f54259v == c19533p.f54259v && this.f54260w == c19533p.f54260w && this.f54261x == c19533p.f54261x && this.f54262y == c19533p.f54262y && this.f54263z == c19533p.f54263z && this.f54233A == c19533p.f54233A && this.f54234B == c19533p.f54234B && this.f54235C == c19533p.f54235C && l.a(this.f54236D, c19533p.f54236D) && l.a(this.f54237E, c19533p.f54237E);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f54238a;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.f54239b;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        String str = this.f54240c;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z5 = this.f54241d;
        int i3 = z5 ? 1 : 0;
        if (z5) {
            i3 = 1;
        }
        String str2 = this.f54242e;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        boolean z6 = this.f54243f;
        int i4 = z6 ? 1 : 0;
        if (z6) {
            i4 = 1;
        }
        String str3 = this.f54244g;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f54245h;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f54246i;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        Integer num = this.f54247j;
        int hashCode6 = num != null ? num.hashCode() : 0;
        String str6 = this.f54248k;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        Boolean bool = this.f54249l;
        int hashCode8 = bool != null ? bool.hashCode() : 0;
        boolean z7 = this.f54250m;
        int i5 = z7 ? 1 : 0;
        if (z7) {
            i5 = 1;
        }
        boolean z8 = this.f54251n;
        int i6 = z8 ? 1 : 0;
        if (z8) {
            i6 = 1;
        }
        boolean z9 = this.f54252o;
        int i7 = z9 ? 1 : 0;
        if (z9) {
            i7 = 1;
        }
        Boolean bool2 = this.f54253p;
        int hashCode9 = bool2 != null ? bool2.hashCode() : 0;
        Boolean bool3 = this.f54254q;
        int hashCode10 = bool3 != null ? bool3.hashCode() : 0;
        boolean z10 = this.f54255r;
        int i8 = z10 ? 1 : 0;
        if (z10) {
            i8 = 1;
        }
        boolean z11 = this.f54256s;
        int i9 = z11 ? 1 : 0;
        if (z11) {
            i9 = 1;
        }
        boolean z12 = this.f54257t;
        int i10 = z12 ? 1 : 0;
        if (z12) {
            i10 = 1;
        }
        boolean z13 = this.f54258u;
        int i11 = z13 ? 1 : 0;
        if (z13) {
            i11 = 1;
        }
        boolean z14 = this.f54259v;
        int i12 = z14 ? 1 : 0;
        if (z14) {
            i12 = 1;
        }
        boolean z15 = this.f54260w;
        int i13 = z15 ? 1 : 0;
        if (z15) {
            i13 = 1;
        }
        boolean z16 = this.f54261x;
        int i14 = z16 ? 1 : 0;
        if (z16) {
            i14 = 1;
        }
        boolean z17 = this.f54262y;
        int i15 = z17 ? 1 : 0;
        if (z17) {
            i15 = 1;
        }
        boolean z18 = this.f54263z;
        int i16 = z18 ? 1 : 0;
        if (z18) {
            i16 = 1;
        }
        boolean z19 = this.f54233A;
        int i17 = z19 ? 1 : 0;
        if (z19) {
            i17 = 1;
        }
        boolean z20 = this.f54234B;
        int i18 = z20 ? 1 : 0;
        if (z20) {
            i18 = 1;
        }
        boolean z21 = this.f54235C;
        if (!z21) {
            i = z21 ? 1 : 0;
        }
        String str7 = this.f54236D;
        int hashCode11 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f54237E;
        if (str8 != null) {
            i2 = str8.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + hashCode) * 31) + i3) * 31) + hashCode2) * 31) + i4) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + hashCode9) * 31) + hashCode10) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i16) * 31) + i17) * 31) + i18) * 31) + i) * 31) + hashCode11) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AppStateEvent(multiSimDevice=");
        m8728C.append(this.f54238a);
        m8728C.append(", domainFrontingEnabled=");
        m8728C.append(this.f54239b);
        m8728C.append(", carrierMenuName=");
        m8728C.append(this.f54240c);
        m8728C.append(", googleServicesAvailable=");
        m8728C.append(this.f54241d);
        m8728C.append(", gmsVersionCode=");
        m8728C.append(this.f54242e);
        m8728C.append(", isInRegion1=");
        m8728C.append(this.f54243f);
        m8728C.append(", profileCountry=");
        m8728C.append(this.f54244g);
        m8728C.append(", domain=");
        m8728C.append(this.f54245h);
        m8728C.append(", androidSecurityPatchVersion=");
        m8728C.append(this.f54246i);
        m8728C.append(", standbyBucket=");
        m8728C.append(this.f54247j);
        m8728C.append(", themeName=");
        m8728C.append(this.f54248k);
        m8728C.append(", enhancedSearchEnabled=");
        m8728C.append(this.f54249l);
        m8728C.append(", filteringTopSpammersEnabled=");
        m8728C.append(this.f54250m);
        m8728C.append(", filteringHiddenNumbersEnabled=");
        m8728C.append(this.f54251n);
        m8728C.append(", clipboardSearchEnabled=");
        m8728C.append(this.f54252o);
        m8728C.append(", enhancedNotificationsEnabled=");
        m8728C.append(this.f54253p);
        m8728C.append(", missedCallNotificationEnabled=");
        m8728C.append(this.f54254q);
        m8728C.append(", missedCallReminderEnabled=");
        m8728C.append(this.f54255r);
        m8728C.append(", callerIdForPhonebookEnabled=");
        m8728C.append(this.f54256s);
        m8728C.append(", afterCallEnabled=");
        m8728C.append(this.f54257t);
        m8728C.append(", afterCallForPhonebookEnabled=");
        m8728C.append(this.f54258u);
        m8728C.append(", slimGroupCallsEnabled=");
        m8728C.append(this.f54259v);
        m8728C.append(", whatsAppInCallLogEnabled=");
        m8728C.append(this.f54260w);
        m8728C.append(", mostCalledContactsDisplayEnabled=");
        m8728C.append(this.f54261x);
        m8728C.append(", backupEnabled=");
        m8728C.append(this.f54262y);
        m8728C.append(", accountBackedUp=");
        m8728C.append(this.f54263z);
        m8728C.append(", flashEnabled=");
        m8728C.append(this.f54233A);
        m8728C.append(", smsDeliveryReportRequired=");
        m8728C.append(this.f54234B);
        m8728C.append(", callAlertEnabled=");
        m8728C.append(this.f54235C);
        m8728C.append(", inCallUISettingValue=");
        m8728C.append(this.f54236D);
        m8728C.append(", inCallUIOptedInByDefaultValue=");
        return C22128a.m8618h(m8728C, this.f54237E, ")");
    }
}
