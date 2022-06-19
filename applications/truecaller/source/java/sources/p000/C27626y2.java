package p000;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.huawei.agconnect.AGConnectInstance;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.aaid.init.AutoInitHelper;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.callerid.callstate.CallStateService;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.clipboard.ClipboardService;
import com.truecaller.common.C3656R;
import com.truecaller.common.tag.TagService;
import com.truecaller.presence.RingerModeListenerWorker;
import com.truecaller.util.ScreenUnlockedBroadcastReceiver;
import e.m.d.g;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p193e.p194a.p1011l.p1025p2.AbstractC17126l;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.C19055l0;
import p193e.p194a.p1114o5.C19058m0;
import p193e.p194a.p1114o5.C19070o;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1218s3.C20228a;
import p193e.p194a.p1396y4.p1398g.C21818h;
import p193e.p194a.p292a4.C7452i0;
import p193e.p194a.p292a4.C7468u;
import p193e.p194a.p294b.AbstractC7910e;
import p193e.p194a.p294b.C7911f;
import p193e.p194a.p294b.C7913g;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p370p.AbstractC8204c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p552i.p560h.AbstractC10347a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p916i5.C15316c;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import q3.a.h1;
import q3.a.j0;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import s3.a.a.a.c;
import s3.a.a.a.d;
import w3.b.a.o;
/* renamed from: y2 */
/* loaded from: classes6-dex2jar.jar:y2.class */
public final class C27626y2 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ int f77872b;

    /* renamed from: c */
    public final /* synthetic */ Object f77873c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27626y2(int i, Object obj) {
        super(0);
        this.f77872b = i;
        this.f77873c = obj;
    }

    public final Object invoke() {
        s sVar = s.a;
        Object obj = null;
        switch (this.f77872b) {
            case 0:
                C19058m0 c19058m0 = C19058m0.f53224b;
                TrueApp trueApp = (TrueApp) this.f77873c;
                l.e(trueApp, AnalyticsConstants.CONTEXT);
                if (!C19058m0.f53223a) {
                    synchronized (c19058m0) {
                        if (!C19058m0.f53223a) {
                            AutoInitHelper.doAutoInit(trueApp);
                            if (AGConnectInstance.getInstance() == null) {
                                AGConnectServicesConfig.fromContext(trueApp).overlayWith(new C19055l0(trueApp, trueApp));
                                AGConnectInstance.initialize(trueApp);
                            }
                            C19058m0.f53223a = true;
                        }
                    }
                }
                return sVar;
            case 1:
                ((C7452i0) this.f77873c).f23669Q.mo28432c();
                return sVar;
            case 2:
                C15314a c15314a = C15314a.f43582g;
                TrueApp trueApp2 = (TrueApp) this.f77873c;
                l.e(trueApp2, AnalyticsConstants.CONTEXT);
                Resources resources = trueApp2.getResources();
                l.d(resources, "context.resources");
                Configuration configuration = resources.getConfiguration();
                l.d(configuration, "context.resources.configuration");
                C15314a.f43581f = configuration;
                C15316c c15316c = new C15316c(trueApp2);
                c15316c.m13467n3(trueApp2);
                C15314a.f43576a = c15316c;
                AbstractC15317d.C15320c c15320c = new AbstractC15317d.C15320c(C2752R.style.ThemeX_Light_Truecaller);
                Map<String, AbstractC15317d> map = C15314a.f43577b;
                map.put("INHERIT_BRIGHT", c15320c);
                C15314a.f43578c = c15320c;
                AbstractC15317d.C15321d c15321d = new AbstractC15317d.C15321d(C2752R.style.ThemeX_Dark_Truecaller);
                map.put("INHERIT_DARK", c15321d);
                C15314a.f43579d = c15321d;
                map.put("BRIGHT", new AbstractC15317d.C15318a(C2752R.style.ThemeX_Light_Truecaller));
                AbstractC15317d.C15319b c15319b = new AbstractC15317d.C15319b(C2752R.style.ThemeX_Dark_Truecaller);
                map.put("DARK", c15319b);
                C15314a.f43580e = c15319b;
                if (C15314a.m18931h()) {
                    Resources resources2 = trueApp2.getResources();
                    l.d(resources2, "context.resources");
                    Configuration configuration2 = resources2.getConfiguration();
                    l.d(configuration2, "context.resources.configuration");
                    C15314a.m18929j(configuration2);
                }
                return sVar;
            case 3:
                try {
                    Locale locale = Locale.getDefault();
                    Resources resources3 = ((TrueApp) this.f77873c).getResources();
                    l.d(resources3, "app.resources");
                    Configuration configuration3 = resources3.getConfiguration();
                    if (configuration3 != null) {
                        locale = configuration3.locale;
                    }
                    if (C15565c.f44028d == null) {
                        C15565c.f44028d = locale;
                    }
                } catch (RuntimeException e) {
                    C10480a.m26061I1(e);
                }
                return sVar;
            case 4:
                C15571h.m18652D((TrueApp) this.f77873c);
                return sVar;
            case 5:
                g.e((TrueApp) this.f77873c);
                return sVar;
            case 6:
                TrueApp trueApp3 = (TrueApp) this.f77873c;
                if (!s3.a.a.a.a.a) {
                    s3.a.a.a.a.a = true;
                    try {
                        c cVar = new c(trueApp3);
                        SecurityManager securityManager = System.getSecurityManager();
                        if (securityManager != null) {
                            securityManager.checkPermission(new o("DateTimeZone.setProvider"));
                        }
                        w3.b.a.g.u(cVar);
                        w3.b.a.g.c.set(cVar);
                        trueApp3.getApplicationContext().registerReceiver(new d(), new IntentFilter("android.intent.action.TIMEZONE_CHANGED"));
                    } catch (IOException e2) {
                        throw new RuntimeException("Could not read ZoneInfoMap. You are probably using Proguard wrong.", e2);
                    }
                }
                return sVar;
            case 7:
                CallStateService.m35776b((TrueApp) this.f77873c);
                return sVar;
            case 8:
                C19070o.f53267g.m14150a((TrueApp) this.f77873c);
                return sVar;
            case 9:
                TrueApp trueApp4 = (TrueApp) this.f77873c;
                int i = ClipboardService.f10850g;
                try {
                    trueApp4.startService(new Intent(trueApp4, ClipboardService.class));
                } catch (IllegalStateException e3) {
                }
                return sVar;
            case 10:
                RingerModeListenerWorker.m34794n((TrueApp) this.f77873c);
                return sVar;
            case 11:
                ((AbstractC17126l) ((C7452i0) this.f77873c).f23686s.get()).init();
                return sVar;
            case 12:
                TrueApp trueApp5 = (TrueApp) this.f77873c;
                l.e(trueApp5, "trueApp");
                h1 h1Var = h1.a;
                f mo12315k6 = trueApp5.mo10154s().mo12315k6();
                l.d(mo12315k6, "trueApp.objectsGraph.asyncIoCoroutineContext()");
                s1.a.a.a.v0.f.d.w2(h1Var, mo12315k6, (j0) null, new C21818h(trueApp5, null), 2, (Object) null);
                return sVar;
            case 13:
                TrueApp trueApp6 = (TrueApp) this.f77873c;
                int i2 = TagService.f10954a;
                Intent intent = new Intent();
                intent.putExtra("action", 0);
                AbstractServiceC26431i.enqueueWork(trueApp6.getApplicationContext(), TagService.class, C3656R.C3658id.tag_service_job_id, intent);
                return sVar;
            case 14:
                ((AbstractC10347a) ((C7452i0) this.f77873c).f23687t.get()).mo26318a();
                return sVar;
            case 15:
                TrueApp trueApp7 = (TrueApp) this.f77873c;
                Objects.requireNonNull(trueApp7);
                C18334g0.f51791a = trueApp7.getSharedPreferences("tc.settings", 0);
                C15571h.m18637n((TrueApp) this.f77873c);
                return sVar;
            case 16:
                C7911f c7911f = C7911f.f24531b;
                TrueApp trueApp8 = (TrueApp) this.f77873c;
                AbstractC7910e abstractC7910e = (AbstractC7910e) C7911f.f24530a.getValue();
                AbstractC7910e abstractC7910e2 = abstractC7910e;
                if (!(abstractC7910e instanceof C7913g)) {
                    abstractC7910e2 = null;
                }
                C7913g c7913g = (C7913g) abstractC7910e2;
                if (c7913g != null) {
                    TrueApp trueApp9 = trueApp8;
                    if (!(trueApp8 instanceof Context)) {
                        trueApp9 = null;
                    }
                    if (trueApp9 != null) {
                        obj = C18334g0.m15219l(trueApp9);
                    }
                    if (obj != null) {
                        C7805e c7805e = (C7805e) obj;
                        c7913g.f24533a = (AbstractC8204c) c7805e.f24304j.get();
                        Objects.requireNonNull(c7805e.f24288b.mo12343i5(), "Cannot return null from a non-@Nullable component method");
                        AbstractC19223c0 mo12349i = c7805e.f24290c.mo12349i();
                        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                        c7913g.f24534b = mo12349i;
                    }
                }
                return sVar;
            case 17:
                ((CleverTapManager) ((C7452i0) this.f77873c).f23692y.get()).initWithoutActivityLifeCycleCallBacks();
                ((AbstractC8541a) ((C7452i0) this.f77873c).f23660H.get()).putBoolean("shouldInitClevertapSDK", false);
                return sVar;
            case 18:
                ((AbstractC11705f) ((C7452i0) this.f77873c).f23693z.get()).mo24190c();
                return sVar;
            case 19:
                C10480a.f31166a = true;
                C10480a.f31167b = ((C7452i0) this.f77873c).f23670R;
                Thread.setDefaultUncaughtExceptionHandler(new C20228a(Thread.getDefaultUncaughtExceptionHandler(), ((C7452i0) this.f77873c).f23670R, C7468u.f23723h));
                return sVar;
            case 20:
                ((TrueApp) this.f77873c).registerReceiver(new ScreenUnlockedBroadcastReceiver(), new IntentFilter("android.intent.action.USER_PRESENT"));
                return sVar;
            case 21:
                ((CallRecordingManager) ((C7452i0) this.f77873c).f23666N.get()).mo17600H();
                return sVar;
            default:
                throw null;
        }
    }
}
