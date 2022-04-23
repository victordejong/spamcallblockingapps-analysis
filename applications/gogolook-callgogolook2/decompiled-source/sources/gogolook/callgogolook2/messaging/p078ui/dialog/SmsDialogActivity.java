package gogolook.callgogolook2.messaging.p078ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.Observer;
import com.facebook.ads.AdError;
import com.mopub.common.Constants;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.p074ad.AdDataSource;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdResult;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.view.SMSAdView;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11994c;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11996e;
import p459j.p460a.p474c0.p491g.p495d0.AbstractC11999f;
import p459j.p460a.p474c0.p491g.p495d0.C12001g;
import p459j.p460a.p521j0.p529x.AbstractC12759f;
import p459j.p460a.p521j0.p529x.C12771h;
import p459j.p460a.p521j0.p529x.C12780l;
import p459j.p460a.p521j0.p529x.C12817p;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14168t0;
import p459j.p460a.p582w0.C14188u2;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14300r;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� C2\u00020\u00012\u00020\u0002:\u0001CB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020%H\u0002J\b\u0010'\u001a\u00020%H\u0016J\b\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020\u000bH\u0016J\b\u0010,\u001a\u00020%H\u0002J\b\u0010-\u001a\u00020%H\u0002J\b\u0010.\u001a\u00020%H\u0016J\u0012\u0010/\u001a\u00020%2\b\u00100\u001a\u0004\u0018\u000101H\u0014J\b\u00102\u001a\u00020%H\u0014J\u0012\u00103\u001a\u00020%2\b\u00104\u001a\u0004\u0018\u000105H\u0014J\b\u00106\u001a\u00020%H\u0014J\b\u00107\u001a\u00020%H\u0014J\b\u00108\u001a\u00020%H\u0014J\b\u00109\u001a\u00020%H\u0014J\b\u0010:\u001a\u00020%H\u0002J\b\u0010;\u001a\u00020%H\u0002J\b\u0010<\u001a\u00020%H\u0002J\b\u0010=\u001a\u00020%H\u0002J\u0012\u0010>\u001a\u00020%2\b\u00104\u001a\u0004\u0018\u000105H\u0016J\b\u0010?\u001a\u00020%H\u0002J\u0010\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u00020BH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\t\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0016\u001a\u00020\u00178VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\t\u001a\u0004\b\u0018\u0010\u0019R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\t\u001a\u0004\b\u001f\u0010 R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, m815d2 = {"Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Host;", "()V", "adDataSource", "Lgogolook/callgogolook2/ad/AdDataSource;", "getAdDataSource", "()Lgogolook/callgogolook2/ad/AdDataSource;", "adDataSource$delegate", "Lkotlin/Lazy;", "conversationId", "", "dialogPresenter", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;", "getDialogPresenter", "()Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;", "dialogPresenter$delegate", "dialogView", "Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;", "getDialogView", "()Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;", "dialogView$delegate", "eventHelper", "Lgogolook/callgogolook2/phone/sms/SmsDialogEventHelper$EventHelper;", "getEventHelper", "()Lgogolook/callgogolook2/phone/sms/SmsDialogEventHelper$EventHelper;", "eventHelper$delegate", "smsAdObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "smsDataSource", "Lgogolook/callgogolook2/phone/sms/SmsDataSource;", "getSmsDataSource", "()Lgogolook/callgogolook2/phone/sms/SmsDataSource;", "smsDataSource$delegate", "subscription", "Lrx/Subscription;", "closeDialog", "", "destroyAdObject", "finish", "getContext", "Landroid/content/Context;", "launchBrowser", "url", "observeAdRequestState", "observeSmsDataSource", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onNewIntent", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "onPause", "onResume", "onStart", "onStop", "registerBus", "releaseAllAdResource", "setupAd", "showAd", "startActivity", "unregisterBus", "updateUI", "whoscallSmsData", "Lgogolook/callgogolook2/phone/sms/WhoscallSmsData;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity.class */
public final class SmsDialogActivity extends AppCompatActivity implements AbstractC11994c {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f11780i;

    /* renamed from: j */
    public static final C4776a f11781j = new C4776a(null);

    /* renamed from: c */
    public Subscription f11784c;

    /* renamed from: d */
    public String f11785d;

    /* renamed from: h */
    public AbstractC6207d f11789h;

    /* renamed from: a */
    public final AbstractC14974f f11782a = C14975g.m662a(new C4778c());

    /* renamed from: b */
    public final AbstractC14974f f11783b = C14975g.m662a(new C4779d());

    /* renamed from: e */
    public final AbstractC14974f f11786e = C14975g.m662a(C4777b.f11790a);

    /* renamed from: f */
    public final AbstractC14974f f11787f = C14975g.m662a(C4785j.f11798a);

    /* renamed from: g */
    public final AbstractC14974f f11788g = C14975g.m662a(C4780e.f11793a);

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$a.class */
    public static final class C4776a {
        public C4776a() {
        }

        public /* synthetic */ C4776a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public static /* synthetic */ void m27044a(C4776a aVar, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            aVar.m27043a(str);
        }

        /* renamed from: a */
        public final Intent m27046a(Context context, String str) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, SmsDialogActivity.class);
            if (str != null) {
                intent.putExtra("sms.dialog.key.conversation_id", str);
            }
            return intent;
        }

        /* renamed from: a */
        public final void m27043a(String str) {
            if (str == null) {
                str = "sms.dialog.val.conversation_id.generic";
            }
            C14037j3.m2731a().mo2704a(new C14168t0(str));
            C12780l.m5320a(str);
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            C14188u2.m2281a(o, 1977);
        }

        /* renamed from: a */
        public final boolean m27045a(Intent intent, String str) {
            boolean z;
            C15149k.m377b(intent, "smsIntent");
            C15149k.m377b(str, "conversationId");
            if (!C15149k.m384a((Object) "sms.dialog.val.conversation_id.generic", (Object) str)) {
                Bundle extras = intent.getExtras();
                if (!C15149k.m384a((Object) (extras != null ? extras.getString("sms.dialog.key.conversation_id") : null), (Object) str)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$b.class */
    public static final class C4777b extends AbstractC15150l implements AbstractC15107a<AdDataSource> {

        /* renamed from: a */
        public static final C4777b f11790a = new C4777b();

        public C4777b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AdDataSource invoke() {
            return C12780l.f28853k.m5333a();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$c.class */
    public static final class C4778c extends AbstractC15150l implements AbstractC15107a<C12001g> {
        public C4778c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12001g invoke() {
            SmsDialogActivity smsDialogActivity = SmsDialogActivity.this;
            C12001g gVar = new C12001g(smsDialogActivity, smsDialogActivity.m27063G(), null, SmsDialogActivity.this.m27065E());
            SmsDialogActivity.this.m27063G().mo7623a((AbstractC11999f) gVar);
            return gVar;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$d.class */
    public static final class C4779d extends AbstractC15150l implements AbstractC15107a<SmsDialogView> {
        public C4779d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SmsDialogView invoke() {
            SmsDialogView smsDialogView = new SmsDialogView(SmsDialogActivity.this, null, 0, 6, null);
            smsDialogView.m27034a(false);
            return smsDialogView;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$e.class */
    public static final class C4780e extends AbstractC15150l implements AbstractC15107a<C12771h> {

        /* renamed from: a */
        public static final C4780e f11793a = new C4780e();

        public C4780e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12771h invoke() {
            return new C12771h();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$f.class */
    public static final class C4781f<T> implements Observer<T> {
        public C4781f() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AdRequestState adRequestState = (AdRequestState) t;
            if (adRequestState instanceof AdRequestState.Start) {
                C14247d.f31867v.m2022e(adRequestState.m28847a());
            } else if (adRequestState instanceof AdRequestState.Requesting) {
                C14247d.f31867v.m2037a(adRequestState.m28847a(), C6262a.EnumC6267e.AD_REQUESTING.m23446a());
            } else if (adRequestState instanceof AdRequestState.End) {
                C14247d.C14259l lVar = C14247d.f31867v;
                AdUnit a = adRequestState.m28847a();
                AdRequestState.End end = (AdRequestState.End) adRequestState;
                lVar.m2037a(a, end.m28846b());
                if (!SmsDialogActivity.this.m27064F().mo7570e()) {
                    return;
                }
                if (end.m28845c() == AdResult.EXIST || end.m28845c() == AdResult.FILL) {
                    SmsDialogActivity.this.m27066D();
                    SmsDialogActivity.this.m27056N();
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$g.class */
    public static final class C4782g<T> implements Observer<T> {
        public C4782g() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C12817p pVar = (C12817p) t;
            String c = pVar.m5219c();
            if (c != null) {
                C12780l.m5320a(c);
            }
            SmsDialogActivity.this.m27052a(pVar);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$h.class */
    public static final class C4783h<T> implements Action1<Object> {
        public C4783h() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14168t0) {
                C14168t0 t0Var = (C14168t0) obj;
                if (C15149k.m384a((Object) t0Var.f31689a, (Object) "sms.dialog.val.conversation_id.generic") || C15149k.m384a((Object) SmsDialogActivity.this.f11785d, (Object) t0Var.f31689a)) {
                    SmsDialogActivity.this.mo7618C();
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$i.class */
    public static final class C4784i implements SMSAdView.OnAdClosedListener {

        /* renamed from: a */
        public final /* synthetic */ SmsDialogActivity f11797a;

        public C4784i(SMSAdView sMSAdView, SmsDialogActivity smsDialogActivity) {
            this.f11797a = smsDialogActivity;
        }

        @Override // gogolook.callgogolook2.p074ad.view.SMSAdView.OnAdClosedListener
        /* renamed from: a */
        public final void mo27042a() {
            this.f11797a.m27066D();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.dialog.SmsDialogActivity$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/dialog/SmsDialogActivity$j.class */
    public static final class C4785j extends AbstractC15150l implements AbstractC15107a<AbstractC12759f> {

        /* renamed from: a */
        public static final C4785j f11798a = new C4785j();

        public C4785j() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AbstractC12759f invoke() {
            return C12780l.f28853k.m5305e();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(SmsDialogActivity.class), "dialogPresenter", "getDialogPresenter()Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$Presenter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(SmsDialogActivity.class), "dialogView", "getDialogView()Lgogolook/callgogolook2/messaging/ui/dialog/SmsDialogContract$SmsView;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(SmsDialogActivity.class), "adDataSource", "getAdDataSource()Lgogolook/callgogolook2/ad/AdDataSource;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(SmsDialogActivity.class), "smsDataSource", "getSmsDataSource()Lgogolook/callgogolook2/phone/sms/SmsDataSource;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(SmsDialogActivity.class), "eventHelper", "getEventHelper()Lgogolook/callgogolook2/phone/sms/SmsDialogEventHelper$EventHelper;");
        C15131a0.m412a(sVar5);
        f11780i = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5};
    }

    /* renamed from: P */
    public static final void m27054P() {
        C4776a.m27044a(f11781j, null, 1, null);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11994c
    /* renamed from: B */
    public C12771h mo7619B() {
        AbstractC14974f fVar = this.f11788g;
        AbstractC14906i iVar = f11780i[4];
        return (C12771h) fVar.getValue();
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11994c
    /* renamed from: C */
    public void mo7618C() {
        finish();
    }

    /* renamed from: D */
    public final void m27066D() {
        AbstractC6207d dVar = this.f11789h;
        if (dVar != null) {
            dVar.mo23568b();
        }
        this.f11789h = null;
    }

    /* renamed from: E */
    public final AdDataSource m27065E() {
        AbstractC14974f fVar = this.f11786e;
        AbstractC14906i iVar = f11780i[2];
        return (AdDataSource) fVar.getValue();
    }

    /* renamed from: F */
    public final AbstractC11996e m27064F() {
        AbstractC14974f fVar = this.f11782a;
        AbstractC14906i iVar = f11780i[0];
        return (AbstractC11996e) fVar.getValue();
    }

    /* renamed from: G */
    public final AbstractC11999f m27063G() {
        AbstractC14974f fVar = this.f11783b;
        AbstractC14906i iVar = f11780i[1];
        return (AbstractC11999f) fVar.getValue();
    }

    /* renamed from: H */
    public final AbstractC12759f m27062H() {
        AbstractC14974f fVar = this.f11787f;
        AbstractC14906i iVar = f11780i[3];
        return (AbstractC12759f) fVar.getValue();
    }

    /* renamed from: I */
    public final void m27061I() {
        m27065E().mo28870a().observe(this, new C4781f());
    }

    /* renamed from: J */
    public final void m27060J() {
        m27062H().mo5401a().observe(this, new C4782g());
    }

    /* renamed from: K */
    public final void m27059K() {
        this.f11784c = C14037j3.m2731a().mo2703a((Action1) new C4783h());
    }

    /* renamed from: L */
    public final void m27058L() {
        m27066D();
        m27065E().mo28864c(AdUnit.SMS);
    }

    /* renamed from: M */
    public final void m27057M() {
        if (this.f11789h == null) {
            C14247d.f31867v.m2040a(AdUnit.SMS);
        }
        m27064F().mo7593a(this);
    }

    /* renamed from: N */
    public final void m27056N() {
        AbstractC6207d b;
        SMSAdView sMSAdView = (SMSAdView) findViewById(R$id.sms_ad_view);
        if (sMSAdView != null && (b = m27065E().mo28865b(AdUnit.SMS)) != null) {
            this.f11789h = b;
            sMSAdView.m28691a(b, new C4784i(sMSAdView, this));
        }
    }

    /* renamed from: O */
    public final void m27055O() {
        Subscription subscription = this.f11784c;
        if (subscription != null && !subscription.isUnsubscribed()) {
            subscription.unsubscribe();
        }
    }

    /* renamed from: a */
    public void m27052a(C12817p pVar) {
        C15149k.m377b(pVar, "whoscallSmsData");
        this.f11785d = pVar.m5219c();
        m27064F().mo7586a(pVar);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, R$anim.input_method_exit);
    }

    @Override // p459j.p460a.p474c0.p491g.p495d0.AbstractC11994c
    public Context getContext() {
        return this;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m27064F().mo7585a("back");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (m27062H().mo5401a().getValue() == null) {
            mo7618C();
        }
        Intent intent = getIntent();
        C15149k.m383a((Object) intent, Constants.INTENT_SCHEME);
        C14300r.m1652b("SmsDialogActivity", intent);
        Window window = getWindow();
        if (window != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = window.getWindowManager();
            C15149k.m383a((Object) windowManager, "windowManager");
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            requestWindowFeature(1);
            window.setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            window.getDecorView().setBackgroundColor(0);
            window.setLayout(-1, -1);
        }
        overridePendingTransition(0, 0);
        m27060J();
        m27061I();
        m27057M();
        m27059K();
        AbstractC11999f G = m27063G();
        if (G != null) {
            setContentView((View) G);
            return;
        }
        throw new C14986p("null cannot be cast to non-null type android.view.View");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m27055O();
        m27058L();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m27057M();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        AbstractC11996e.C11998b.m7614b(m27064F(), null, 1, null);
        C12771h.m5383a(mo7619B(), this, null, 2, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        mo7619B().m5379b(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C14247d.f31867v.m2040a(AdUnit.SMS);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C14247d.f31867v.m2031b(AdUnit.SMS);
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        super.startActivity(intent);
        overridePendingTransition(0, R$anim.input_method_exit);
    }
}
