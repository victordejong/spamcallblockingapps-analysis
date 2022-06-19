package com.truecaller;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.firebase.perf.metrics.Trace;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.TrueApp;
import com.truecaller.analytics.heartbeat.HeartBeatType;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.OnboardingIntroActivity;
import com.truecaller.bizmon.p152ui.profile.BusinessProfileOnboardingActivity;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.buildinfo.BuildName;
import com.truecaller.common.account.analytics.LogoutContext;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.entity.CallLogFlashItem;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.details_view.DetailsViewActivity;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.flashsdk.models.Sender;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.dialogs.QMActivity;
import com.truecaller.service.WidgetListProvider;
import com.truecaller.suspension.AccountSuspendedNotificationConfigurations;
import com.truecaller.suspension.p181ui.SuspensionActivity;
import com.truecaller.ugc.EnhancedSearchStateWorker;
import com.truecaller.wizard.framework.WizardStartContext;
import e.m.d.y.n;
import e.m.d.z.c;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p1727n3.p1834m0.C26678c;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1861s.p1862a.C26978a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractApplicationC21753y1;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C19202p0;
import p193e.p194a.C19812r0;
import p193e.p194a.C20399t1;
import p193e.p194a.p1011l.AbstractC16931g2;
import p193e.p194a.p1011l.C16880f2;
import p193e.p194a.p1011l.p1012a.C16565b0;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.AbstractC17356k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p1066n.AbstractC18319d2;
import p193e.p194a.p1066n.AbstractC18321e0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1070n2.p1073c.C18474a;
import p193e.p194a.p1070n2.p1073c.p1074b.C18477b;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1114o5.C19125w1;
import p193e.p194a.p1114o5.p1122f2.C19024a;
import p193e.p194a.p1114o5.p1122f2.C19025b;
import p193e.p194a.p1124p.AbstractC19186b;
import p193e.p194a.p1124p.AbstractC19199j;
import p193e.p194a.p1124p.AbstractC19200k;
import p193e.p194a.p1124p.C19189d;
import p193e.p194a.p1124p.C19195f;
import p193e.p194a.p1128p4.AbstractC19214a;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1132s0.C19308t;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.C19519m;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19568g;
import p193e.p194a.p1146q2.p1157z0.AbstractC19605b;
import p193e.p194a.p1158q3.AbstractC19615f;
import p193e.p194a.p1158q3.AbstractC19616g;
import p193e.p194a.p1164r.p1170c.AbstractC19741k;
import p193e.p194a.p1188r3.AbstractC19909g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1305l.AbstractC20913a;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import p193e.p194a.p1313v3.AbstractC21011b;
import p193e.p194a.p1341w3.AbstractC21199i;
import p193e.p194a.p1341w3.C21194e;
import p193e.p194a.p1341w3.C21196g;
import p193e.p194a.p1341w3.C21198h;
import p193e.p194a.p1365y.p1382c.AbstractC21642i;
import p193e.p194a.p1365y.p1389g.C21743a;
import p193e.p194a.p1392y2.AbstractC21771o;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p1406z3.AbstractC21850b;
import p193e.p194a.p195a.p244k.AbstractC6706r;
import p193e.p194a.p195a.p244k.AbstractC6707s;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8576d0;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p432b4.p433a.AbstractC8640d;
import p193e.p194a.p432b4.p433a.C8638c;
import p193e.p194a.p432b4.p433a.C8641e;
import p193e.p194a.p437c.p552i.p569m.AbstractC10424c;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p615c4.C10945m;
import p193e.p194a.p673d0.p675b.AbstractC12485h;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p703e3.AbstractC13350c;
import p193e.p194a.p703e3.AbstractC13351d;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.p734z.AbstractC13824j;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p758c.C13985a;
import p193e.p194a.p751f4.p764i.C14041d;
import p193e.p194a.p786g0.AbstractC14352b;
import p193e.p194a.p786g0.AbstractC14366h;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import p193e.p194a.p852i.p908w.C15248e;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p937j4.p939b.p940a.AbstractC15572i;
import p193e.p194a.p937j4.p939b.p940a.C15567d;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p937j4.p939b.p940a.C15574j;
import p193e.p194a.p937j4.p939b.p942c.AbstractC15584d;
import p193e.p194a.p982k0.p986k.AbstractC16327b;
import p193e.p194a.p982k0.p986k.AbstractC16328c;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.e0.f;
import s1.e0.k;
import s1.e0.x;
import s1.f0.v;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* loaded from: classes4-dex2jar.jar:com/truecaller/TrueApp.class */
public class TrueApp extends AbstractApplicationC21753y1 implements AbstractC21187w1, AbstractC21642i, AbstractC21850b, AbstractC18321e0, AbstractC19568g, C26678c.AbstractC26680b, AbstractC21771o, AbstractC6707s, AbstractC19200k, AbstractC21011b, AbstractC14352b, AbstractC16328c, AbstractC14932g, AbstractC19214a, AbstractC19616g, AbstractC13351d, AbstractC16931g2, AbstractC20914b, AbstractC8576d0 {

    /* renamed from: r */
    public static boolean f9585r;

    /* renamed from: c */
    public final Trace f9586c;
    @Inject

    /* renamed from: d */
    public AbstractC19462a f9587d;
    @Inject

    /* renamed from: e */
    public C26978a f9588e;
    @Inject

    /* renamed from: f */
    public Provider<C20592g> f9589f;
    @Inject

    /* renamed from: g */
    public Provider<AbstractC10424c> f9590g;
    @Inject

    /* renamed from: h */
    public a<AbstractC13967b> f9591h;
    @Inject

    /* renamed from: i */
    public a<AbstractC19605b> f9592i;

    /* renamed from: j */
    public volatile AbstractC6706r f9593j;

    /* renamed from: k */
    public volatile AbstractC19199j f9594k;

    /* renamed from: l */
    public volatile AbstractC16327b f9595l;

    /* renamed from: m */
    public volatile AbstractC19615f f9596m;

    /* renamed from: n */
    public volatile AbstractC12485h f9597n;

    /* renamed from: o */
    public volatile AbstractC20913a f9598o;

    /* renamed from: p */
    public AbstractC15539j2 f9599p;

    /* renamed from: q */
    public final BroadcastReceiver f9600q = new C2759b(null);

    /* renamed from: com.truecaller.TrueApp$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/TrueApp$a.class */
    public class C2758a extends AbstractC19741k {
        public C2758a(TrueApp trueApp) {
        }
    }

    /* renamed from: com.truecaller.TrueApp$b */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/TrueApp$b.class */
    public class C2759b extends BroadcastReceiver {
        public C2759b(C2758a c2758a) {
            TrueApp.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C21198h c21198h = (C21198h) TrueApp.this.f9599p.mo12215s1();
            Objects.requireNonNull(c21198h);
            l.e(intent, "intent");
            if (intent.hasExtra("com.truecaller.datamanager.EXTRA_PRESENCE")) {
                d.w2(h1.a, c21198h.f59392c, (j0) null, new C21196g(c21198h, intent, null), 2, (Object) null);
            }
            TrueApp.this.f9599p.mo12679J6().mo24620d(intent);
            TrueApp.this.f9599p.mo12290m5().mo14486d(intent);
            TrueApp.this.f9599p.mo12134y().mo17842d(intent);
        }
    }

    public TrueApp() {
        Trace a = c.a("TrueApp#init");
        this.f9586c = a;
        C19125w1 c19125w1 = new C19125w1(new s1.z.b.a() { // from class: e.a.o0
            public final Object invoke() {
                return TrueApp.this.getAssets();
            }
        });
        Logger logger = j.h;
        e.m.f.a.c.a = c19125w1;
        AssertionUtil.setIsDebugBuild(false);
        a.stop();
    }

    /* renamed from: b0 */
    public static TrueApp m36032b0() {
        return (TrueApp) AbstractApplicationC8442a.m28551L();
    }

    @Override // p193e.p194a.p786g0.AbstractC14352b
    /* renamed from: A */
    public void mo20202A() {
        TruecallerInit.m34567Va(this, "calls", true, null);
    }

    @Override // p193e.p194a.p1158q3.AbstractC19616g
    /* renamed from: B */
    public AbstractC19615f mo13097B() {
        if (this.f9596m == null) {
            synchronized (AbstractC19615f.class) {
                try {
                    if (this.f9596m == null) {
                        this.f9596m = AbstractC17399l2.f48744a.m16142a().mo11172l();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9596m;
    }

    @Override // p1727n3.p1834m0.C26678c.AbstractC26680b
    /* renamed from: C */
    public C26678c mo1449C() {
        C26678c.C26679a c26679a = new C26678c.C26679a();
        c26679a.f74675a = this.f9588e;
        c26679a.f74676b = 20000;
        c26679a.f74677c = 30000;
        c26679a.f74678d = Math.min(50, 50);
        return new C26678c(c26679a);
    }

    @Override // p193e.p194a.p1011l.AbstractC16931g2
    /* renamed from: D */
    public C16880f2 mo16751D() {
        return this.f9599p.mo12613O6();
    }

    @Override // p193e.p194a.p703e3.AbstractC13351d
    /* renamed from: E */
    public AbstractC13350c mo21885E() {
        return this.f9599p.mo12225r3();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: F */
    public int mo28557F() {
        return 1221006;
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: G */
    public String mo28556G() {
        return "12.21.6";
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: H */
    public int mo28555H() {
        return 1221006;
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: I */
    public String mo28554I() {
        return "12.21.6";
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: J */
    public String mo28553J() {
        return BuildConfig.BUILD_NAME;
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: M */
    public Intent mo28550M(Context context) {
        Intent intent;
        if (mo28545R().m10954n().isEnabled()) {
            int i = OnboardingIntroActivity.f10332c;
            intent = C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, OnboardingIntroActivity.class);
        } else {
            intent = BusinessProfileOnboardingActivity.m35832qa(context, true);
        }
        return intent;
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: O */
    public String mo28548O() {
        return "tc.settings";
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: P */
    public String mo28547P() {
        try {
            return getResources().getConfiguration().locale.getLanguage();
        } catch (NullPointerException e) {
            return C15571h.m18647d("language");
        }
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: Q */
    public AbstractC17356k mo28546Q() {
        return this.f9599p.mo12761D6();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    @Deprecated
    /* renamed from: R */
    public C20592g mo28545R() {
        return (C20592g) this.f9589f.get();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: S */
    public AbstractC18091a mo28544S() {
        return this.f9599p.mo12344i4();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: U */
    public AbstractC8640d mo28542U() {
        return new C8641e(this);
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: W */
    public boolean mo28540W() {
        boolean z = this.f9599p.mo12809A().mo28580d() && e.a.r.t.c.qa();
        if (!z) {
            Thread currentThread = Thread.currentThread();
            Integer num = 3;
            l.e(currentThread, "$this$getStacktraceString");
            l.e(StringConstant.NEW_LINE, "separator");
            StackTraceElement[] stackTrace = currentThread.getStackTrace();
            l.d(stackTrace, "stackTrace");
            k k = x.k(C25225a.m3861p(stackTrace), C19308t.f53740j);
            v1 v1Var = v1.c;
            l.e(k, "$this$dropWhile");
            l.e(v1Var, "predicate");
            f fVar = new f(k, v1Var);
            v1 v1Var2 = v1.d;
            l.e(fVar, "$this$dropWhile");
            l.e(v1Var2, "predicate");
            f fVar2 = new f(fVar, v1Var2);
            f fVar3 = fVar2;
            if (num != null) {
                fVar3 = fVar2;
                if (num.intValue() > 0) {
                    fVar3 = x.o(fVar2, num.intValue());
                }
            }
            x.j(fVar3, StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
        }
        return z;
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: X */
    public boolean mo28539X() {
        return C15571h.m18635p();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: Y */
    public boolean mo28538Y() {
        return this.f9599p.mo12263o5();
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: Z */
    public boolean mo28537Z(String str, boolean z, LogoutContext logoutContext) throws SecurityException {
        m36030d0(str, z, false, logoutContext);
        return true;
    }

    @Override // p193e.p194a.p786g0.AbstractC14352b
    /* renamed from: a */
    public void mo20201a() {
        this.f9599p.mo12314k7().mo21256m(this);
        AbstractC19044j mo12261o7 = this.f9599p.mo12261o7();
        boolean m14881a = C18474a.m14881a(mo12261o7, mo12261o7.mo14187a());
        C18477b mo12803A5 = this.f9599p.mo12803A5();
        mo12803A5.f52164c.mo18968f(C2752R.C2754id.account_suspension_notification_id);
        if (m14881a) {
            ((AbstractC14366h) mo12803A5.f52163b.get()).mo20166a(AccountSuspendedNotificationConfigurations.IMMEDIATE);
        } else if (!((AbstractC14366h) mo12803A5.f52163b.get()).mo20164c()) {
        } else {
            mo12803A5.m14880a();
        }
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a
    /* renamed from: a0 */
    public void mo28536a0(boolean z) {
        AbstractC8541a mo12420d = this.f9599p.mo12420d();
        AbstractC8412c m28549N = m28549N();
        AbstractC8438a mo12484Y = m28549N.mo12484Y();
        String string = mo12484Y.getString("profileNumber");
        String string2 = mo12484Y.getString("profileCountryIso");
        String mo13286a = this.f9599p.mo12764D3().mo13286a();
        new C15567d(this).mo18674b();
        C15569f c15569f = new C15569f(this);
        synchronized (AbstractC15572i.f44040c) {
            c15569f.m18623d().clear();
            SharedPreferencesC18033b0.SharedPreferences$EditorC18038e sharedPreferences$EditorC18038e = (SharedPreferencesC18033b0.SharedPreferences$EditorC18038e) ((SharedPreferencesC18033b0) c15569f.m18678b()).edit();
            sharedPreferences$EditorC18038e.clear();
            sharedPreferences$EditorC18038e.apply();
            WidgetListProvider.m34742b(c15569f.f44024a);
        }
        C18334g0.f51791a.edit().clear().apply();
        C15571h.f44038c.clear();
        if (!C15571h.f44036a) {
            C15571h.m18650a();
        }
        new C15574j(this).mo18673c(true);
        C12864a2.m22547k(this);
        C15248e.m19004a(this).reset();
        C15571h.m18637n(this);
        mo12420d.m28410c(this);
        mo12484Y.m28559c(this);
        ((AbstractC10424c) this.f9590g.get()).mo26171a();
        AbstractC21199i mo12792B2 = this.f9599p.mo12792B2();
        C15314a c15314a = C15314a.f43582g;
        mo12792B2.mo10143a(C15314a.m18936c());
        this.f9599p.mo12764D3().mo13285b(mo13286a);
        this.f9599p.mo11631z().mo24187f();
        this.f9599p.mo12134y().mo17840f();
        if (!z) {
            mo12484Y.putString("profileNumber", string);
            mo12484Y.putString("profileCountryIso", string2);
        }
        this.f9599p.mo12314k7().mo21256m(this);
        e.a.r.t.c.Ba();
        m28549N.mo12531U7().mo28433b();
        ((AbstractC13967b) this.f9591h.get()).mo20926e();
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        int i = AbstractC19909g.f56345a;
        l.e(this, "application");
        e.m.a.h.a.f.a.a(this);
    }

    @Override // p193e.p194a.p1406z3.AbstractC21850b
    /* renamed from: b */
    public List<String> mo8988b(Uri uri) {
        ArrayList arrayList = new ArrayList(2);
        long m13805L = C19231g0.m13805L(uri.getQueryParameter("pbid"));
        if (m13805L > 0) {
            arrayList.add(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, m13805L).toString());
        }
        String queryParameter = uri.getQueryParameter("tcphoto");
        if (!TextUtils.isEmpty(queryParameter)) {
            arrayList.add(queryParameter);
        }
        return arrayList;
    }

    @Override // p193e.p194a.p786g0.AbstractC14352b
    /* renamed from: c */
    public void mo20200c() {
        AbstractC19044j mo12261o7 = this.f9599p.mo12261o7();
        Activity mo14187a = mo12261o7.mo14187a();
        if (mo14187a == null || !C18474a.m14881a(mo12261o7, mo14187a)) {
            return;
        }
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, this.f9599p.mo12420d().getString("profileFirstName"), this.f9599p.mo12420d().getString("profileLastName"));
        String string = this.f9599p.mo12420d().getString("profileEmail");
        SuspensionActivity.C4590b c4590b = SuspensionActivity.f15170f;
        l.e(mo14187a, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(mo14187a, SuspensionActivity.class);
        intent.putExtra("android.intent.extra.USER", m13813D);
        intent.putExtra("android.intent.extra.EMAIL", string);
        mo14187a.startActivity(intent);
    }

    /* renamed from: c0 */
    public AbstractC12485h m36031c0() {
        if (this.f9597n == null) {
            synchronized (AbstractC12485h.class) {
                try {
                    if (this.f9597n == null) {
                        this.f9597n = AbstractC17399l2.f48744a.m16142a().mo11181c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9597n;
    }

    @Override // p193e.p194a.p786g0.AbstractC14352b
    /* renamed from: d */
    public void mo20199d() {
        this.f9599p.mo12314k7().mo21252q(this);
        C18477b mo12803A5 = this.f9599p.mo12803A5();
        boolean mo14186b = this.f9599p.mo12261o7().mo14186b();
        mo12803A5.f52164c.mo18968f(C2752R.C2754id.account_suspension_notification_id);
        if (!mo14186b) {
            mo12803A5.m14879b(C2752R.string.account_suspension_notification_unblocked, C2752R.string.account_suspension_notification_open, "notificationAccountUnsuspended");
        }
    }

    /* renamed from: d0 */
    public boolean m36030d0(String str, boolean z, boolean z2, LogoutContext logoutContext) throws SecurityException {
        if (str != null) {
            this.f9599p.mo12809A().mo28575i(str, logoutContext);
        }
        mo28536a0(true);
        this.f9599p.mo12638M7().m35953j();
        int[] iArr = AbstractC15584d.f44074b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            (i2 != 1 ? i2 != 4 ? null : new C19025b(this) : new C19024a(this)).mo14248a();
        }
        if (!z || !this.f9599p.mo12261o7().mo14186b()) {
            return true;
        }
        if (!z2) {
            e.a.r.t.c.Ga(this, WizardActivity.class, WizardStartContext.CHANGE_PHONE);
            return true;
        }
        e.a.r.t.c.Ha(this, WizardActivity.class, WizardStartContext.LOGOUT);
        return true;
    }

    @Override // p193e.p194a.p1066n.AbstractC18321e0
    /* renamed from: e */
    public AbstractC18319d2 mo15288e() {
        return (AbstractC18319d2) ((C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f()).f57367y.get();
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: f */
    public boolean mo9273f(String str) {
        String str2;
        boolean z = true;
        if (!AbstractApplicationC8442a.m28551L().mo28540W()) {
            return true;
        }
        TelephonyManager telephonyManager = (TelephonyManager) getSystemService(AnalyticsConstants.PHONE);
        String str3 = null;
        if (telephonyManager != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            Locale locale = Locale.ENGLISH;
            str3 = h.z(networkCountryIso, locale);
            str2 = h.z(telephonyManager.getSimCountryIso(), locale);
        } else {
            str2 = null;
        }
        if (this.f9599p.mo12670K2().mo19590f(str, null, null, (String) h.c(str3, str2), false, true).f10453b != FilterAction.FILTER_BLACKLISTED) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p982k0.p986k.AbstractC16328c
    /* renamed from: g */
    public AbstractC16327b mo17530g() {
        if (this.f9595l == null) {
            synchronized (AbstractC16327b.class) {
                try {
                    if (this.f9595l == null) {
                        this.f9595l = AbstractC17399l2.f48744a.m16142a().mo11180d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9595l;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: h */
    public FlashContact mo9272h() {
        AbstractC8541a mo12420d = this.f9599p.mo12420d();
        AbstractC8438a mo12484Y = this.f9599p.mo12484Y();
        String string = mo12420d.getString("profileFirstName");
        String string2 = mo12484Y.getString("profileNumber");
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return null;
        }
        return new FlashContact(string2, string, mo12420d.getString("profileLastName"));
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8576d0
    /* renamed from: i */
    public void mo28345i(String str, String str2) {
        CountryListDto.C3679a m28287b = C8588j.m28287b(str2);
        String str3 = m28287b != null ? m28287b.f10912c : null;
        SourceType sourceType = SourceType.GovernmentServices;
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(sourceType, "source");
        Intent intent = new Intent(this, DetailsViewActivity.class);
        intent.putExtra("ARG_TC_ID", (String) null);
        intent.putExtra("NAME", str);
        intent.putExtra("NORMALIZED_NUMBER", str2);
        intent.putExtra("RAW_NUMBER", str2);
        intent.putExtra("COUNTRY_CODE", str3);
        intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
        intent.putExtra("SHOULD_SAVE", true);
        intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
        intent.putExtra("SEARCH_TYPE", 10);
        Intent addFlags = intent.addFlags(268435456).addFlags(536870912);
        l.e(this, AnalyticsConstants.CONTEXT);
        l.e(addFlags, "intentWithExtras");
        startActivity(addFlags);
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: j */
    public void mo9271j(int i, String str, String str2) {
        if (i == 0) {
            this.f9599p.mo12414d6().putString("key_last_call_origin", "callMeBackNotification");
        } else if (i == 3) {
            getSharedPreferences("callMeBackNotifications", 0).edit().putLong(str, System.currentTimeMillis()).apply();
        } else if (i == 4) {
            this.f9599p.mo12670K2().mo19587i(Collections.singletonList(new s1.k(C22128a.m8543z2("+", str), (Object) null)), "PHONE_NUMBER", str2, "quickReply", false, FiltersContract.Filters.WildCardType.NONE, FiltersContract.Filters.EntityType.PERSON, null);
        } else if (i != 5) {
        } else {
            String m8543z2 = C22128a.m8543z2("+", str);
            CountryListDto.C3679a m28287b = C8588j.m28287b(m8543z2);
            String str3 = m28287b != null ? m28287b.f10912c : null;
            SourceType sourceType = SourceType.External;
            l.e(this, AnalyticsConstants.CONTEXT);
            l.e(sourceType, "source");
            Intent intent = new Intent(this, DetailsViewActivity.class);
            intent.putExtra("ARG_TC_ID", (String) null);
            intent.putExtra("NAME", (String) null);
            intent.putExtra("NORMALIZED_NUMBER", m8543z2);
            intent.putExtra("RAW_NUMBER", str);
            intent.putExtra("COUNTRY_CODE", str3);
            intent.putExtra("ARG_SOURCE_TYPE", sourceType.ordinal());
            intent.putExtra("SHOULD_SAVE", true);
            intent.putExtra("SHOULD_FETCH_MORE_IF_NEEDED", true);
            intent.putExtra("SEARCH_TYPE", 10);
            Intent addFlags = intent.addFlags(268435456).addFlags(536870912);
            l.e(this, AnalyticsConstants.CONTEXT);
            l.e(addFlags, "intentWithExtras");
            startActivity(addFlags);
        }
    }

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: k */
    public void mo9270k(Flash flash) {
        char c;
        String str;
        C21194e mo12746E7 = this.f9599p.mo12746E7();
        Objects.requireNonNull(mo12746E7);
        l.e(flash, "flash");
        int i = flash.m35391c() ? 1 : 2;
        String m35393a = flash.m35393a();
        l.d(m35393a, "flash.history");
        if (!v.B(m35393a, StringConstant.SPACE, false, 2)) {
            if (flash.m35391c()) {
                Sender sender = flash.f11991a;
                l.d(sender, "flash.sender");
                str = String.valueOf(sender.m35377c().longValue());
                c = System.currentTimeMillis();
            } else {
                str = String.valueOf(flash.f11992b);
                c = flash.f11997g;
            }
            AbstractC17348c abstractC17348c = (AbstractC17348c) mo12746E7.f59383a.get();
            CallLogFlashItem callLogFlashItem = new CallLogFlashItem(flash.f11997g, C22128a.m8702I1('+', str), c, 0L, i, 0, 0, null, null, 480, null);
            HistoryEvent historyEvent = new HistoryEvent(callLogFlashItem.getNumber());
            historyEvent.f11541h = callLogFlashItem.getTimestamp();
            historyEvent.f11542i = callLogFlashItem.getDuration();
            historyEvent.f11550q = callLogFlashItem.getType();
            historyEvent.f11551r = callLogFlashItem.getAction();
            historyEvent.f11545l = callLogFlashItem.getFeatures();
            historyEvent.f11552s = callLogFlashItem.getComponentName();
            historyEvent.f11548o = 0;
            historyEvent.f11546m = 1;
            historyEvent.f11553t = 3;
            historyEvent.f11534a = UUID.randomUUID().toString();
            abstractC17348c.mo16234n(historyEvent);
        }
    }

    @Override // p193e.p194a.p1406z3.AbstractC21850b
    /* renamed from: l */
    public String mo8987l() {
        return "photo";
    }

    @Override // p193e.p194a.p1406z3.AbstractC21850b
    /* renamed from: m */
    public String mo8986m() {
        Uri uri = C17891a1.f50888a;
        return "com.truecaller";
    }

    @Override // p193e.p194a.p849h4.p850q.AbstractC14932g
    /* renamed from: n */
    public AbstractC14920n mo19403n() {
        return this.f9599p.mo12458a1();
    }

    @Override // p193e.p194a.p1392y2.AbstractC21771o
    /* renamed from: o */
    public AbstractC21771o.AbstractC21772a mo9098o() {
        return this.f9599p;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C15571h.m18652D(this);
        super.onConfigurationChanged(getResources().getConfiguration());
    }

    @Override // p193e.p194a.AbstractApplicationC21753y1, android.app.Application
    public void onCreate() {
        boolean z;
        Trace a = c.a("TrueApp#onCreate");
        C10945m.f32458a = false;
        l.e("portrait", "orientation");
        C10932f.f32446a = "portrait";
        C8638c.f26493e = C19812r0.f54861a;
        C8638c.f26494f = C19202p0.f53571a;
        super.onCreate();
        AbstractC15539j2 abstractC15539j2 = (AbstractC15539j2) C25225a.m3812z0(C25225a.m4019F0(getApplicationContext()), AbstractC15539j2.class);
        this.f9599p = abstractC15539j2;
        abstractC15539j2.mo12342i6();
        this.f9599p.mo12295m0();
        this.f9599p.mo12223r7();
        AbstractC13706b.C13707a.f39689a = new AbstractC13824j() { // from class: e.a.n0
            @Override // p193e.p194a.p717f.p734z.AbstractC13824j
            /* renamed from: a */
            public final String mo14905a() {
                return r4.getCanonicalName();
            }
        };
        this.f9599p.mo12209s7();
        this.f9599p.mo12319k2();
        this.f9599p.mo12573R5();
        this.f9599p.mo12668K4();
        this.f9599p.mo12331j3();
        this.f9599p.mo12483Y1();
        AbstractC19186b.C19187a.f53555a = new C19195f(this);
        AbstractC19186b.C19187a.f53556b = new C19189d(this);
        C8363a c8363a = C8363a.f25710f;
        C14041d mo12736F3 = this.f9599p.mo12736F3();
        l.e(mo12736F3, "<set-?>");
        C8363a.f25707c = mo12736F3;
        C13985a mo12188u0 = this.f9599p.mo12188u0();
        l.e(mo12188u0, "<set-?>");
        C8363a.f25708d = mo12188u0;
        this.f9599p.mo12665K7().mo29593c(this);
        C19291g.m13572Y0(this, this.f9599p.mo12254p1(), "com.truecaller.wizard.ACTION_WIZARD_COMPLETED");
        C27062a.m968b(this).m967c(new C2758a(this), new IntentFilter("com.truecaller.ACTION_PERMISSIONS_CHANGED"));
        C19291g.m13572Y0(this, this.f9600q, "com.truecaller.datamanager.STATUSES_CHANGED");
        int m18641j = C15571h.m18641j("VERSION_CODE", 0);
        if (1221006 != m18641j || !h.e(Build.VERSION.RELEASE, C15571h.m18647d("osVersion"))) {
            BuildName m35807a = BuildName.Companion.m35807a(BuildConfig.BUILD_NAME);
            boolean z2 = m35807a != null && m35807a.getSingleApkPreload() && m18641j > 1221006;
            f9585r = z2;
            if (z2) {
                z = false;
            } else {
                C15571h.m18628w("VERSION_CODE", 1221006L);
                C15571h.m18627x("osVersion", Build.VERSION.RELEASE);
                ((AbstractC19605b) this.f9592i.get()).mo13106b(HeartBeatType.Upgrade);
                C19519m.m13240h(this);
                AbstractC21780a mo11634q = this.f9599p.mo11634q();
                l.e(mo11634q, "backgroundWorkTrigger");
                n.z1(mo11634q, "AttestationWorkAction", n.G0(60L), (C26829f) null, 4, (Object) null);
                if (mo28540W()) {
                    this.f9599p.mo12656L3().mo11854a().mo18984b().mo11828g();
                }
                mo10154s().mo12143x4().putLong("key_upgrade_timestamp", System.currentTimeMillis());
                if (!mo10154s().mo12291m4().m17198b()) {
                    C16565b0 mo12114z6 = mo10154s().mo12114z6();
                    Objects.requireNonNull(mo12114z6);
                    if (Build.VERSION.SDK_INT >= 25) {
                        mo12114z6.m17241a().removeDynamicShortcuts(C25225a.m3962T1("shortcut-premium"));
                    }
                }
                z = true;
            }
        } else {
            z = false;
        }
        this.f9599p.mo12672K().mo19333g(new s1.z.b.l() { // from class: e.a.q0
            /* renamed from: d */
            public final Object m13306d(Object obj) {
                TrueApp trueApp = TrueApp.this;
                Objects.requireNonNull(trueApp);
                EnhancedSearchStateWorker.m34601n(((Boolean) obj).booleanValue(), trueApp);
                return null;
            }
        });
        this.f9599p.mo12760D7().mo14305a(z);
        if (!this.f9599p.mo12131y2().mo22840d(AbstractC12603e.C12604a.f36737c) || ((C20592g) this.f9589f.get()).m10982W().isEnabled()) {
            this.f9599p.mo12420d().putBoolean("flash_disabled", true);
        }
        a.stop();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        this.f9599p.mo12753E0().onTrimMemory(i);
        if (i >= 60) {
            this.f9599p.mo12356h7().m19088d();
        }
    }

    @Override // p193e.p194a.p372b0.p411g.AbstractApplicationC8442a, p193e.p194a.p1313v3.AbstractC21011b
    /* renamed from: p */
    public String mo10422p() {
        return "Truecaller";
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19568g
    /* renamed from: q */
    public AbstractC19567f mo13156q() {
        return this.f9599p.mo12275n6();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6707s
    /* renamed from: r */
    public AbstractC6706r mo30565r() {
        if (this.f9593j == null) {
            synchronized (AbstractC6706r.class) {
                try {
                    if (this.f9593j == null) {
                        this.f9593j = AbstractC17399l2.f48744a.m16142a().mo11183a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9593j;
    }

    @Override // p193e.p194a.AbstractC21187w1
    /* renamed from: s */
    public AbstractC15539j2 mo10154s() {
        AssertionUtil.isNotNull(this.f9599p, new String[0]);
        return this.f9599p;
    }

    @Override // p193e.p194a.p1313v3.AbstractC21011b
    @Deprecated
    /* renamed from: t */
    public String mo10421t() {
        return "12.21.6";
    }

    @Override // p193e.p194a.p1124p.AbstractC19200k
    /* renamed from: u */
    public AbstractC19199j mo13879u() {
        if (this.f9594k == null) {
            synchronized (AbstractC19199j.class) {
                try {
                    if (this.f9594k == null) {
                        this.f9594k = AbstractC17399l2.f48744a.m16142a().mo11174j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9594k;
    }

    @Override // p193e.p194a.p1275v.p1305l.AbstractC20914b
    /* renamed from: v */
    public AbstractC20913a mo10529v() {
        if (this.f9598o == null) {
            synchronized (AbstractC20913a.class) {
                try {
                    if (this.f9598o == null) {
                        this.f9598o = AbstractC17399l2.f48744a.m16142a().mo11176h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f9598o;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: w */
    public boolean mo9269w(int i, String str) {
        if (i != 2) {
            return false;
        }
        return h.j(str) ? C15571h.m18632s() : this.f9599p.mo12805A3().mo9316b(str.replace("+", "")).f60563c;
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: x */
    public String mo9268x() {
        return this.f9599p.mo12212s4().mo14183c().toString();
    }

    @Override // p193e.p194a.p1365y.p1382c.AbstractC21642i
    /* renamed from: y */
    public List<C21743a> mo9267y() {
        return this.f9599p.mo12732F7().mo10151a(10);
    }

    @Override // p193e.p194a.p1128p4.AbstractC19214a
    /* renamed from: z */
    public boolean mo13876z() {
        if (C8604n.m28240e(this)) {
            Intent intent = new Intent(this, QMActivity.class);
            intent.addFlags(268435456);
            startActivity(intent);
            return true;
        }
        return false;
    }
}
