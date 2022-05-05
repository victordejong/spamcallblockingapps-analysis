package p459j.p460a.p582w0.p590x4;

import android.database.Cursor;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import java.util.Locale;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p459j.p460a.p582w0.p594z4.C14339d;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001:\u0003:;<B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020#H\u0002J$\u0010'\u001a\u00020\u00072\b\u0010(\u001a\u0004\u0018\u00010\u00072\b\u0010)\u001a\u0004\u0018\u00010\u00072\u0006\u0010*\u001a\u00020+H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\u0007H\u0002Jt\u0010.\u001a\u00020%2\b\u0010/\u001a\u0004\u0018\u00010\u00072\b\u00100\u001a\u0004\u0018\u00010\u00072\b\u00101\u001a\u0004\u0018\u00010\u00072\b\u00102\u001a\u0004\u0018\u00010\u00072\b\u00103\u001a\u0004\u0018\u00010\u00072\b\u00104\u001a\u0004\u0018\u00010\u00072\b\u0010(\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u0002062\b\b\u0003\u00108\u001a\u00020\u00042\b\b\u0002\u00109\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n��¨\u0006="}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/SmsContentTrackingHelper;", "", "()V", "CONTENT_RELATED_DIALOGUE", "", "CONTENT_SMS", "EVENT_WHOSCALL_SMS_CONTENT_REPORT", "", "KEY_FILTER_TYPE", "KEY_IS_READ", "KEY_IS_RELATED_CONTENT", "KEY_IS_REPORT_CHECKED", "KEY_LOCAL_NUM", "KEY_LOCAL_TIMEDELTA", "KEY_REMOTE_COUNTRY_CODE", "KEY_REMOTE_E164", "KEY_REMOTE_IS_CONTACT", "KEY_REMOTE_NAME", "KEY_REMOTE_NUM", "KEY_REMOTE_SMS_TIME", "KEY_REMOTE_SPAM", "KEY_REMOTE_TYPE", "KEY_REPORT_IS_SPAM", "KEY_REPORT_NAME", "KEY_REPORT_SPAM", "KEY_SOURCE", "KEY_TEXT", "SOURCE_CONVERSATION_PAGE", "SOURCE_DEFAULT", "SOURCE_NOTIFICATION", "SOURCE_NOT_SPAM", "SOURCE_SPAM", "TYPE_IN", "TYPE_OUT", "eventTrackingHelper", "Lgogolook/callgogolook2/util/analytics/EventTrackingHelper;", "commitTracking", "", "generateHelper", "getReportContent", "content", "messageId", "reportData", "Lgogolook/callgogolook2/util/analytics/SmsContentTrackingHelper$ReportData;", "getReportDataFromDb", "conversationId", "setReportValues", "cId", "mId", "reportName", "reportSpam", "number", "e164", "isRelatedContent", "", "isReportChecked", "reportSource", "filterType", "Content", "ReportData", "ReportSource", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.v */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/v.class */
public final class C14305v {

    /* renamed from: a */
    public static C14282k f32040a;

    /* renamed from: b */
    public static final C14305v f32041b = new C14305v();

    /* renamed from: j.a.w0.x4.v$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/v$a.class */
    public static final class C14306a {

        /* renamed from: a */
        public String f32042a = C14247d.f31851f;

        /* renamed from: b */
        public String f32043b = C14247d.f31851f;

        /* renamed from: c */
        public int f32044c = -1;

        /* renamed from: d */
        public String f32045d = C14247d.f31851f;

        /* renamed from: a */
        public final String m1632a() {
            return this.f32043b;
        }

        /* renamed from: a */
        public final void m1631a(Cursor cursor) {
            C15149k.m377b(cursor, "cursor");
            cursor.getString(0);
            this.f32042a = cursor.getString(1);
            this.f32043b = cursor.getString(2);
            String string = cursor.getString(3);
            C15149k.m383a((Object) string, "cursor.getString(3)");
            this.f32044c = Integer.parseInt(string);
            String string2 = cursor.getString(4);
            C15149k.m383a((Object) string2, "cursor.getString(4)");
            this.f32045d = Integer.parseInt(string2) == 1 ? "out" : "in";
        }

        /* renamed from: b */
        public final String m1630b() {
            return this.f32045d;
        }

        /* renamed from: c */
        public final String m1629c() {
            return this.f32042a;
        }

        /* renamed from: d */
        public final int m1628d() {
            return this.f32044c;
        }
    }

    @AbstractC15070f(m473c = "gogolook/callgogolook2/util/analytics/SmsContentTrackingHelper$setReportValues$1", m472f = "SmsContentTrackingHelper.kt", m471l = {105}, m470m = "invokeSuspend")
    /* renamed from: j.a.w0.x4.v$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/v$b.class */
    public static final class C14307b extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f32046a;

        /* renamed from: b */
        public int f32047b;

        /* renamed from: c */
        public final /* synthetic */ String f32048c;

        /* renamed from: d */
        public final /* synthetic */ String f32049d;

        /* renamed from: e */
        public final /* synthetic */ boolean f32050e;

        /* renamed from: f */
        public final /* synthetic */ boolean f32051f;

        /* renamed from: g */
        public final /* synthetic */ int f32052g;

        /* renamed from: h */
        public final /* synthetic */ int f32053h;

        /* renamed from: i */
        public final /* synthetic */ String f32054i;

        /* renamed from: j */
        public final /* synthetic */ String f32055j;

        /* renamed from: k */
        public final /* synthetic */ String f32056k;

        /* renamed from: l */
        public final /* synthetic */ String f32057l;

        /* renamed from: m */
        public final /* synthetic */ String f32058m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14307b(String str, String str2, boolean z, boolean z2, int i, int i2, String str3, String str4, String str5, String str6, String str7, AbstractC15044d dVar) {
            super(2, dVar);
            this.f32048c = str;
            this.f32049d = str2;
            this.f32050e = z;
            this.f32051f = z2;
            this.f32052g = i;
            this.f32053h = i2;
            this.f32054i = str3;
            this.f32055j = str4;
            this.f32056k = str5;
            this.f32057l = str6;
            this.f32058m = str7;
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C14307b bVar = new C14307b(this.f32048c, this.f32049d, this.f32050e, this.f32051f, this.f32052g, this.f32053h, this.f32054i, this.f32055j, this.f32056k, this.f32057l, this.f32058m, dVar);
            bVar.f32046a = (CoroutineScope) obj;
            return bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C14307b) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x0169, code lost:
            if ((r0 == null || r0.length() == 0) != false) goto L_0x016c;
         */
        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 870
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p590x4.C14305v.C14307b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public final C14306a m1638a(String str) {
        AbstractC11528g k = AbstractC11528g.m9259k();
        C15149k.m383a((Object) k, "DataModel.get()");
        return C11521c.m9327m(k.mo9244f(), str);
    }

    /* renamed from: a */
    public final String m1637a(String str, String str2, C14306a aVar) {
        boolean z = false;
        if (str == null || str.length() == 0) {
            if (!(str2 == null || str2.length() == 0)) {
                AbstractC11528g k = AbstractC11528g.m9259k();
                C15149k.m383a((Object) k, "DataModel.get()");
                MessageData r = C11521c.m9322r(k.mo9244f(), str2);
                C15149k.m383a((Object) r, "BugleDatabaseOperations\n…               messageId)");
                str = r.m27588x();
                C15149k.m383a((Object) str, "BugleDatabaseOperations\n…             .messageText");
            } else {
                String c = aVar.m1629c();
                if (c == null || c.length() == 0) {
                    z = true;
                }
                if (!z) {
                    str = aVar.m1629c();
                    if (str == null) {
                        C15149k.m378b();
                        throw null;
                    }
                } else {
                    str = C14247d.f31851f;
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m1643a() {
        C14282k kVar = f32040a;
        if (kVar != null) {
            String c = C14339d.m1522c();
            if (c.length() == 0) {
                c = C14247d.f31851f;
            }
            if (!C15149k.m384a((Object) c, (Object) C14247d.f31851f)) {
                String g = C14108o4.m2479g(C14108o4.m2474l(c));
                C15149k.m383a((Object) g, "UtilsTelephony\n         …arseE164Number(localNum))");
                Locale locale = Locale.US;
                C15149k.m383a((Object) locale, "Locale.US");
                if (g != null) {
                    String upperCase = g.toUpperCase(locale);
                    C15149k.m383a((Object) upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    kVar.m1920a("remote_country_code", upperCase);
                } else {
                    throw new C14986p("null cannot be cast to non-null type java.lang.String");
                }
            }
            kVar.m1920a("local_num", c);
            kVar.m1920a("local_timedelta", C14339d.m1521d());
            kVar.m1920a("remote_is_contact", Integer.valueOf(C14217x3.m2133i(MyApplication.m29013o(), (String) kVar.m1921a("remote_e164")) ? 1 : 0));
            kVar.m1923a();
        }
    }

    /* renamed from: a */
    public final void m1636a(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, boolean z2, int i, int i2) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), null, null, new C14307b(str4, str3, z, z2, i, i2, str, str5, str6, str7, str2, null), 3, null);
    }

    /* renamed from: b */
    public final C14282k m1635b() {
        C14231a aVar = new C14231a();
        aVar.m2100a("remote_country_code", C14247d.f31851f);
        aVar.m2100a("remote_num", C14247d.f31851f);
        aVar.m2100a("remote_e164", C14247d.f31851f);
        aVar.m2100a("remote_name", C14247d.f31851f);
        aVar.m2100a("remote_spam", C14247d.f31851f);
        aVar.m2100a("remote_type", C14247d.f31851f);
        aVar.m2100a("local_num", C14247d.f31851f);
        aVar.m2100a("remote_sms_time", C14247d.f31851f);
        aVar.m2100a("local_timedelta", C14247d.f31851f);
        aVar.m2100a("remote_is_contact", -1);
        aVar.m2100a("text", C14247d.f31851f);
        aVar.m2100a("is_read", -1);
        aVar.m2100a("report_is_spam", -1);
        aVar.m2100a("report_name", C14247d.f31851f);
        aVar.m2100a("report_spam", C14247d.f31851f);
        aVar.m2100a("is_related_content", -1);
        aVar.m2100a("is_report_checked", -1);
        aVar.m2100a("source", -1);
        aVar.m2100a("sms_type", -1);
        return new C14282k(new AbstractC14238e[]{new C14236d("whoscall_sms_content_report")}, aVar);
    }
}
