package p193e.p194a.p1124p.p1125a;

import android.content.Intent;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.profile.ImageSource;
import com.truecaller.editprofile.C3890R;
import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import com.truecaller.editprofile.p164ui.ErrorField;
import com.truecaller.editprofile.p164ui.Gender;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import p193e.p194a.p1124p.AbstractC19188c;
import p193e.p194a.p1124p.AbstractC19194e;
import p193e.p194a.p1124p.AbstractC19196g;
import p193e.p194a.p1124p.C19201l;
import p193e.p194a.p1129p5.AbstractC19218a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.C8415b;
import p193e.p194a.p372b0.p424n.AbstractC8531g;
import p193e.p194a.p372b0.p424n.C8523b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.p.a.m */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/m.class */
public final class C19172m extends AbstractC20574a<EditProfileMvp$View> implements AbstractC19171l {

    /* renamed from: A */
    public final AbstractC19194e f53473A;

    /* renamed from: B */
    public final AbstractC12589h f53474B;

    /* renamed from: C */
    public final AbstractC19188c f53475C;

    /* renamed from: D */
    public final C19201l f53476D;

    /* renamed from: E */
    public final AbstractC12597c f53477E;

    /* renamed from: J */
    public final AbstractC14537p f53478J;

    /* renamed from: K */
    public final AbstractC19219a0 f53479K;

    /* renamed from: L */
    public final AbstractC19218a f53480L;

    /* renamed from: M */
    public final AbstractC19196g f53481M;

    /* renamed from: N */
    public final AbstractC19462a f53482N;

    /* renamed from: O */
    public final AbstractC18223b f53483O;

    /* renamed from: P */
    public final C8523b f53484P;

    /* renamed from: Q */
    public final AbstractC16111h f53485Q;

    /* renamed from: d */
    public Intent f53486d;

    /* renamed from: e */
    public AbstractC19844a f53487e;

    /* renamed from: i */
    public Long f53491i;

    /* renamed from: j */
    public Date f53492j;

    /* renamed from: k */
    public ImageSource f53493k;

    /* renamed from: l */
    public Uri f53494l;

    /* renamed from: m */
    public String f53495m;

    /* renamed from: n */
    public boolean f53496n;

    /* renamed from: o */
    public String f53497o;

    /* renamed from: p */
    public boolean f53498p;

    /* renamed from: r */
    public boolean f53500r;

    /* renamed from: s */
    public final f f53501s;

    /* renamed from: t */
    public final f f53502t;

    /* renamed from: u */
    public final AbstractC8531g f53503u;

    /* renamed from: v */
    public final AbstractC8541a f53504v;

    /* renamed from: w */
    public final AbstractC19223c0 f53505w;

    /* renamed from: x */
    public final AbstractC19222c f53506x;

    /* renamed from: y */
    public final AbstractC8426f f53507y;

    /* renamed from: z */
    public final C20592g f53508z;

    /* renamed from: f */
    public final g f53488f = C25225a.m3978P1(new C19181r(this));

    /* renamed from: g */
    public final g f53489g = C25225a.m3978P1(new C19182s(this));

    /* renamed from: h */
    public Gender f53490h = Gender.N;

    /* renamed from: q */
    public final SimpleDateFormat f53499q = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);

    /* renamed from: e.a.p.a.m$a */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/m$a.class */
    public static final class C19173a {

        /* renamed from: a */
        public final String f53509a;

        /* renamed from: b */
        public final String f53510b;

        /* renamed from: c */
        public final String f53511c;

        /* renamed from: d */
        public final String f53512d;

        /* renamed from: e */
        public final String f53513e;

        /* renamed from: f */
        public final String f53514f;

        /* renamed from: g */
        public final String f53515g;

        /* renamed from: h */
        public final String f53516h;

        /* renamed from: i */
        public final String f53517i;

        /* renamed from: j */
        public final String f53518j;

        /* renamed from: k */
        public final String f53519k;

        /* renamed from: l */
        public final String f53520l;

        /* renamed from: m */
        public final Long f53521m;

        public C19173a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Long l) {
            l.e(str, "firstName");
            l.e(str2, "lastName");
            l.e(str3, AnalyticsConstants.EMAIL);
            l.e(str4, "streetAddress");
            l.e(str5, "zipCode");
            l.e(str6, "city");
            l.e(str7, "company");
            l.e(str8, "jobTitle");
            l.e(str9, "website");
            l.e(str10, "bio");
            l.e(str11, "birthday");
            l.e(str12, "gender");
            this.f53509a = str;
            this.f53510b = str2;
            this.f53511c = str3;
            this.f53512d = str4;
            this.f53513e = str5;
            this.f53514f = str6;
            this.f53515g = str7;
            this.f53516h = str8;
            this.f53517i = str9;
            this.f53518j = str10;
            this.f53519k = str11;
            this.f53520l = str12;
            this.f53521m = l;
        }

        /* renamed from: a */
        public static C19173a m13927a(C19173a c19173a, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Long l, int i) {
            String str13 = null;
            String str14 = (i & 1) != 0 ? c19173a.f53509a : null;
            String str15 = (i & 2) != 0 ? c19173a.f53510b : null;
            String str16 = (i & 4) != 0 ? c19173a.f53511c : null;
            String str17 = (i & 8) != 0 ? c19173a.f53512d : null;
            String str18 = (i & 16) != 0 ? c19173a.f53513e : null;
            String str19 = (i & 32) != 0 ? c19173a.f53514f : null;
            String str20 = (i & 64) != 0 ? c19173a.f53515g : null;
            String str21 = (i & 128) != 0 ? c19173a.f53516h : null;
            String str22 = (i & 256) != 0 ? c19173a.f53517i : null;
            if ((i & 512) != 0) {
                str13 = c19173a.f53518j;
            }
            if ((i & 1024) != 0) {
                str11 = c19173a.f53519k;
            }
            if ((i & 2048) != 0) {
                str12 = c19173a.f53520l;
            }
            if ((i & 4096) != 0) {
                l = c19173a.f53521m;
            }
            Objects.requireNonNull(c19173a);
            l.e(str14, "firstName");
            l.e(str15, "lastName");
            l.e(str16, AnalyticsConstants.EMAIL);
            l.e(str17, "streetAddress");
            l.e(str18, "zipCode");
            l.e(str19, "city");
            l.e(str20, "company");
            l.e(str21, "jobTitle");
            l.e(str22, "website");
            l.e(str13, "bio");
            l.e(str11, "birthday");
            l.e(str12, "gender");
            return new C19173a(str14, str15, str16, str17, str18, str19, str20, str21, str22, str13, str11, str12, l);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19173a)) {
                    return false;
                }
                C19173a c19173a = (C19173a) obj;
                return l.a(this.f53509a, c19173a.f53509a) && l.a(this.f53510b, c19173a.f53510b) && l.a(this.f53511c, c19173a.f53511c) && l.a(this.f53512d, c19173a.f53512d) && l.a(this.f53513e, c19173a.f53513e) && l.a(this.f53514f, c19173a.f53514f) && l.a(this.f53515g, c19173a.f53515g) && l.a(this.f53516h, c19173a.f53516h) && l.a(this.f53517i, c19173a.f53517i) && l.a(this.f53518j, c19173a.f53518j) && l.a(this.f53519k, c19173a.f53519k) && l.a(this.f53520l, c19173a.f53520l) && l.a(this.f53521m, c19173a.f53521m);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f53509a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f53510b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f53511c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f53512d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f53513e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f53514f;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f53515g;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f53516h;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f53517i;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f53518j;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.f53519k;
            int hashCode11 = str11 != null ? str11.hashCode() : 0;
            String str12 = this.f53520l;
            int hashCode12 = str12 != null ? str12.hashCode() : 0;
            Long l = this.f53521m;
            if (l != null) {
                i = l.hashCode();
            }
            return (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TempProfile(firstName=");
            m8728C.append(this.f53509a);
            m8728C.append(", lastName=");
            m8728C.append(this.f53510b);
            m8728C.append(", email=");
            m8728C.append(this.f53511c);
            m8728C.append(", streetAddress=");
            m8728C.append(this.f53512d);
            m8728C.append(", zipCode=");
            m8728C.append(this.f53513e);
            m8728C.append(", city=");
            m8728C.append(this.f53514f);
            m8728C.append(", company=");
            m8728C.append(this.f53515g);
            m8728C.append(", jobTitle=");
            m8728C.append(this.f53516h);
            m8728C.append(", website=");
            m8728C.append(this.f53517i);
            m8728C.append(", bio=");
            m8728C.append(this.f53518j);
            m8728C.append(", birthday=");
            m8728C.append(this.f53519k);
            m8728C.append(", gender=");
            m8728C.append(this.f53520l);
            m8728C.append(", tagId=");
            m8728C.append(this.f53521m);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    @e(c = "com.truecaller.editprofile.ui.EditProfilePresenter", f = "EditProfilePresenter.kt", l = {741}, m = "getAvatarRequestBodyFromUrl")
    /* renamed from: e.a.p.a.m$b */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/m$b.class */
    public static final class C19174b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f53522d;

        /* renamed from: e */
        public int f53523e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19174b(d dVar) {
            super(dVar);
            C19172m.this = r4;
        }

        /* renamed from: s */
        public final Object m13926s(Object obj) {
            this.f53522d = obj;
            this.f53523e |= Integer.MIN_VALUE;
            return C19172m.this.m13945Kj(this);
        }
    }

    @e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$startSavingProfile$1", f = "EditProfilePresenter.kt", l = {777, 793}, m = "invokeSuspend")
    /* renamed from: e.a.p.a.m$c */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/m$c.class */
    public static final class C19175c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f53525e;

        /* renamed from: f */
        public int f53526f;

        /* renamed from: h */
        public final /* synthetic */ String f53528h;

        /* renamed from: i */
        public final /* synthetic */ String f53529i;

        /* renamed from: j */
        public final /* synthetic */ String f53530j;

        /* renamed from: k */
        public final /* synthetic */ String f53531k;

        /* renamed from: l */
        public final /* synthetic */ String f53532l;

        /* renamed from: m */
        public final /* synthetic */ String f53533m;

        /* renamed from: n */
        public final /* synthetic */ String f53534n;

        /* renamed from: o */
        public final /* synthetic */ String f53535o;

        /* renamed from: p */
        public final /* synthetic */ String f53536p;

        /* renamed from: q */
        public final /* synthetic */ String f53537q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19175c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, d dVar) {
            super(2, dVar);
            C19172m.this = r5;
            this.f53528h = str;
            this.f53529i = str2;
            this.f53530j = str3;
            this.f53531k = str4;
            this.f53532l = str5;
            this.f53533m = str6;
            this.f53534n = str7;
            this.f53535o = str8;
            this.f53536p = str9;
            this.f53537q = str10;
        }

        /* renamed from: i */
        public final d<s> m13925i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19175c(this.f53528h, this.f53529i, this.f53530j, this.f53531k, this.f53532l, this.f53533m, this.f53534n, this.f53535o, this.f53536p, this.f53537q, dVar);
        }

        /* renamed from: k */
        public final Object m13924k(Object obj, Object obj2) {
            return m13925i(obj, (d) obj2).m13923s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0279  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0280  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x02d8  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x02eb  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0324  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13923s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 884
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.C19175c.m13923s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19172m(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC8531g abstractC8531g, AbstractC8541a abstractC8541a, AbstractC19223c0 abstractC19223c0, AbstractC19222c abstractC19222c, AbstractC8426f abstractC8426f, @Named("features_registry") C20592g c20592g, AbstractC19194e abstractC19194e, AbstractC12589h abstractC12589h, AbstractC19188c abstractC19188c, C19201l c19201l, AbstractC12597c abstractC12597c, AbstractC14537p abstractC14537p, AbstractC19219a0 abstractC19219a0, AbstractC19218a abstractC19218a, AbstractC19196g abstractC19196g, AbstractC19462a abstractC19462a, AbstractC18223b abstractC18223b, C8523b c8523b, AbstractC16111h abstractC16111h) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC8531g, "profileRepository");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19222c, "clock");
        l.e(abstractC8426f, "regionUtils");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19194e, "appHelper");
        l.e(abstractC12589h, "businessCardRepository");
        l.e(abstractC19188c, "accountHelper");
        l.e(c19201l, "countryHelper");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19218a, "bitmapUtil");
        l.e(abstractC19196g, "avatarHelper");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        l.e(c8523b, "profileErrorMessageHelper");
        l.e(abstractC16111h, "videoCallerId");
        this.f53501s = fVar;
        this.f53502t = fVar2;
        this.f53503u = abstractC8531g;
        this.f53504v = abstractC8541a;
        this.f53505w = abstractC19223c0;
        this.f53506x = abstractC19222c;
        this.f53507y = abstractC8426f;
        this.f53508z = c20592g;
        this.f53473A = abstractC19194e;
        this.f53474B = abstractC12589h;
        this.f53475C = abstractC19188c;
        this.f53476D = c19201l;
        this.f53477E = abstractC12597c;
        this.f53478J = abstractC14537p;
        this.f53479K = abstractC19219a0;
        this.f53480L = abstractC19218a;
        this.f53481M = abstractC19196g;
        this.f53482N = abstractC19462a;
        this.f53483O = abstractC18223b;
        this.f53484P = c8523b;
        this.f53485Q = abstractC16111h;
    }

    /* renamed from: Ij */
    public final void m13947Ij(long j) {
        EditProfileMvp$View editProfileMvp$View;
        C8551c mo20024c = this.f53478J.mo20024c(j);
        if (mo20024c == null || (editProfileMvp$View = (EditProfileMvp$View) this.f57683a) == null) {
            return;
        }
        editProfileMvp$View.mo14064A2(mo20024c.f26351b, mo20024c.f26354e);
    }

    /* renamed from: Jj */
    public final String m13946Jj(String str) {
        if (!(!r.p(str))) {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m13945Kj(s1.w.d<? super u3.j0> r8) {
        /*
            r7 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p1124p.p1125a.C19172m.C19174b
            if (r0 == 0) goto L27
            r0 = r8
            e.a.p.a.m$b r0 = (p193e.p194a.p1124p.p1125a.C19172m.C19174b) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f53523e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f53523e = r1
            r0 = r9
            r8 = r0
            goto L31
        L27:
            e.a.p.a.m$b r0 = new e.a.p.a.m$b
            r1 = r0
            r2 = r7
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L31:
            r0 = r8
            java.lang.Object r0 = r0.f53522d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r8
            int r0 = r0.f53523e
            r10 = r0
            r0 = 0
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L62
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L57
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r8 = r0
            goto La0
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            java.lang.String r0 = r0.f53495m
            r11 = r0
            r0 = r11
            if (r0 == 0) goto La5
            r0 = r7
            e.a.p.g r0 = r0.f53481M
            r9 = r0
            r0 = r8
            r1 = 1
            r0.f53523e = r1
            r0 = r9
            e.a.p.i r0 = (p193e.p194a.p1124p.C19198i) r0
            r9 = r0
            r0 = r9
            s1.w.f r0 = r0.f53569b
            e.a.p.h r1 = new e.a.p.h
            r2 = r1
            r3 = r9
            r4 = r11
            r5 = 0
            r2.<init>(r3, r4, r5)
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r12
            if (r0 != r1) goto La0
            r0 = r12
            return r0
        La0:
            r0 = r8
            u3.j0 r0 = (u3.j0) r0
            r9 = r0
        La5:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.m13945Kj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r4 != null) goto L7;
     */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13944Lj() {
        /*
            r3 = this;
            r0 = r3
            java.util.Date r0 = r0.f53492j
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L19
            r0 = r3
            java.text.SimpleDateFormat r0 = r0.f53499q
            r1 = r4
            java.lang.String r0 = r0.format(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L19
            goto L1d
        L19:
            java.lang.String r0 = ""
            r4 = r0
        L1d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.m13944Lj():java.lang.String");
    }

    /* renamed from: Mj */
    public final Date m13943Mj(int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, i);
        calendar.set(2, i2);
        calendar.set(5, i3);
        l.d(calendar, "calendar");
        Date time = calendar.getTime();
        l.d(time, "calendar.time");
        return time;
    }

    /* renamed from: Nj */
    public final String m13942Nj(Gender gender) {
        String str;
        int ordinal = gender.ordinal();
        if (ordinal == 1) {
            str = this.f53505w.mo13768b(C3890R.string.ProfileEditGenderMale, new Object[0]);
            l.d(str, "resourceProvider.getStri…ng.ProfileEditGenderMale)");
        } else if (ordinal != 2) {
            str = this.f53505w.mo13768b(C3890R.string.ProfileEditGenderNeutral, new Object[0]);
            l.d(str, "resourceProvider.getStri…ProfileEditGenderNeutral)");
        } else {
            str = this.f53505w.mo13768b(C3890R.string.ProfileEditGenderFemale, new Object[0]);
            l.d(str, "resourceProvider.getStri….ProfileEditGenderFemale)");
        }
        return str;
    }

    /* renamed from: Oj */
    public final String m13941Oj() {
        return (String) this.f53488f.getValue();
    }

    /* renamed from: Pj */
    public final C19173a m13940Pj() {
        return (C19173a) this.f53489g.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
        if (r3 != null) goto L7;
     */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13939Qj() {
        /*
            r2 = this;
            r0 = r2
            e.a.p.c r0 = r0.f53475C
            e.a.b0.e.b r0 = r0.mo13894g()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L1a
            r0 = r3
            java.lang.String r0 = r0.f26095b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L1a
            goto L1e
        L1a:
            java.lang.String r0 = ""
            r3 = r0
        L1e:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.m13939Qj():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* renamed from: Rj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m13938Rj() {
        /*
            r2 = this;
            r0 = r2
            android.net.Uri r0 = r0.f53494l
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L35
            r0 = r2
            java.lang.String r0 = r0.f53495m
            if (r0 != 0) goto L35
            r0 = r2
            boolean r0 = r0.f53496n
            if (r0 == 0) goto L35
            r0 = r2
            java.lang.String r0 = r0.m13941Oj()
            int r0 = r0.length()
            if (r0 <= 0) goto L2a
            r0 = 1
            r5 = r0
            goto L2c
        L2a:
            r0 = 0
            r5 = r0
        L2c:
            r0 = r5
            if (r0 == 0) goto L35
            r0 = 1
            r5 = r0
            goto L37
        L35:
            r0 = 0
            r5 = r0
        L37:
            r0 = r4
            r6 = r0
            r0 = r2
            android.net.Uri r0 = r0.f53494l
            if (r0 != 0) goto L58
            r0 = r4
            r6 = r0
            r0 = r2
            java.lang.String r0 = r0.f53495m
            if (r0 != 0) goto L58
            r0 = r5
            if (r0 == 0) goto L55
            r0 = r4
            r6 = r0
            goto L58
        L55:
            r0 = 0
            r6 = r0
        L58:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.m13938Rj():boolean");
    }

    /* renamed from: Sj */
    public final void m13937Sj(String str, String str2, k<String, String>... kVarArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("SocialNetwork", str2);
        for (k<String, String> kVar : kVarArr) {
            hashMap.put((String) kVar.a, (String) kVar.b);
        }
        AbstractC19462a abstractC19462a = this.f53482N;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a(str, null, hashMap, null);
        l.d(c19505a, "eventBuilder.build()");
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: Tj */
    public final void m13936Tj() {
        EditProfileMvp$View editProfileMvp$View;
        if (!(m13939Qj().length() > 0) || (editProfileMvp$View = (EditProfileMvp$View) this.f57683a) == null) {
            return;
        }
        editProfileMvp$View.setPhoneNumber(m13939Qj());
    }

    /* renamed from: Uj */
    public final void m13935Uj(C19173a c19173a) {
        EditProfileMvp$View editProfileMvp$View;
        if (!(!l.a(c19173a, m13940Pj())) || (editProfileMvp$View = (EditProfileMvp$View) this.f57683a) == null) {
            return;
        }
        editProfileMvp$View.mo13989lk();
    }

    /* renamed from: Vj */
    public void m13934Vj(Uri uri) {
        l.e(uri, "avatarUri");
        this.f53494l = uri;
        this.f53493k = ImageSource.TRUECALLER;
        this.f53495m = null;
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo13969u(uri);
        }
        EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View2 != null) {
            editProfileMvp$View2.mo14048Nn(true);
        }
        EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View3 != null) {
            editProfileMvp$View3.mo13989lk();
        }
    }

    /* renamed from: Wj */
    public void m13933Wj() {
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo13989lk();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c6, code lost:
        if ((r16.length() > 0) != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0106, code lost:
        if ((r16.length() > 0) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0146, code lost:
        if ((r16.length() > 0) != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0181, code lost:
        if (r12 != false) goto L81;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ff  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13932Xj(int r12, com.truecaller.social_login.SocialAccountProfile r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.m13932Xj(int, com.truecaller.social_login.SocialAccountProfile, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x0384, code lost:
        if (r9.length() == 0) goto L113;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.editprofile.ui.EditProfileMvp$View, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(com.truecaller.editprofile.p164ui.EditProfileMvp$View r9) {
        /*
            Method dump skipped, instructions count: 1077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1124p.p1125a.C19172m.mo9029Y0(java.lang.Object):void");
    }

    /* renamed from: Yj */
    public void m13931Yj(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        ErrorField errorField;
        boolean z;
        ErrorField errorField2;
        EditProfileMvp$View editProfileMvp$View;
        l.e(str, "firstName");
        l.e(str2, "lastName");
        l.e(str3, AnalyticsConstants.EMAIL);
        l.e(str4, "streetAddress");
        l.e(str5, "zipCode");
        l.e(str6, "city");
        l.e(str7, "company");
        l.e(str8, "jobTitle");
        l.e(str9, "website");
        l.e(str10, "bio");
        if (str.length() == 0) {
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) this.f57683a;
            if (editProfileMvp$View2 != null) {
                String mo13768b = this.f53505w.mo13768b(C3890R.string.ProfileEditFirstNameInvalid, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri…fileEditFirstNameInvalid)");
                editProfileMvp$View2.mo14005es(mo13768b);
            }
            errorField = ErrorField.FIRST_NAME;
            z = false;
        } else {
            errorField = null;
            z = true;
        }
        ErrorField errorField3 = errorField;
        if (str2.length() == 0) {
            EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) this.f57683a;
            if (editProfileMvp$View3 != null) {
                String mo13768b2 = this.f53505w.mo13768b(C3890R.string.ProfileEditLastNameInvalid, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…ofileEditLastNameInvalid)");
                editProfileMvp$View3.mo14011ch(mo13768b2);
            }
            errorField3 = errorField;
            if (errorField == null) {
                errorField3 = ErrorField.LAST_NAME;
            }
            z = false;
        }
        if (!(str3.length() > 0) || C19286f.m13664o(str3)) {
            errorField2 = errorField3;
        } else {
            EditProfileMvp$View editProfileMvp$View4 = (EditProfileMvp$View) this.f57683a;
            if (editProfileMvp$View4 != null) {
                String mo13768b3 = this.f53505w.mo13768b(C3890R.string.ProfileEditEmailInvalid, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getStri….ProfileEditEmailInvalid)");
                editProfileMvp$View4.mo13976r6(mo13768b3);
            }
            errorField2 = errorField3;
            z = false;
            if (errorField3 == null) {
                errorField2 = ErrorField.EMAIL;
                z = false;
            }
        }
        if (errorField2 != null && (editProfileMvp$View = (EditProfileMvp$View) this.f57683a) != null) {
            editProfileMvp$View.mo13995js(errorField2);
        }
        if (!z) {
            return;
        }
        if (!this.f53500r) {
            m13928bk(str, str2, str3, str4, str5, str6, str7, str8, str9, str10);
            return;
        }
        EditProfileMvp$View editProfileMvp$View5 = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View5 == null) {
            return;
        }
        editProfileMvp$View5.mo13997iv();
    }

    /* renamed from: Zj */
    public final void m13930Zj() {
        C8415b mo13896e = this.f53475C.mo13896e();
        String str = null;
        String str2 = mo13896e != null ? mo13896e.f26095b : null;
        String mo13768b = str2 == null ? this.f53505w.mo13768b(C3890R.string.ProfileEditAddSecondaryPhoneNumber, new Object[0]) : this.f53505w.mo13768b(C3890R.string.ProfileEditSecondaryPhoneNumber, new Object[0]);
        l.d(mo13768b, "if (secondaryPhoneNumber…EditSecondaryPhoneNumber)");
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View != null) {
            if (str2 != null) {
                str = m13946Jj(str2);
            }
            if (str == null) {
                str = "";
            }
            editProfileMvp$View.mo13972sc(str);
        }
        EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View2 != null) {
            editProfileMvp$View2.mo14024Xj(mo13768b);
        }
    }

    /* renamed from: ak */
    public final void m13929ak() {
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View != null) {
            C20592g c20592g = this.f53508z;
            editProfileMvp$View.mo13986md(c20592g.f58058x3.m10941a(c20592g, C20592g.f57695p6[233]).isEnabled());
        }
    }

    /* renamed from: bk */
    public final void m13928bk(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f57683a;
        if (editProfileMvp$View != null) {
            editProfileMvp$View.mo14050Mv();
        }
        this.f53498p = true;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C19175c(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC19844a abstractC19844a = this.f53487e;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f53487e = null;
    }
}
