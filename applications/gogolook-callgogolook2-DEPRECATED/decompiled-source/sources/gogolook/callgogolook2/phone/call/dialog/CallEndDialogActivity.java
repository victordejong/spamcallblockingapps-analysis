package gogolook.callgogolook2.phone.call.dialog;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.StandardPostCallAds;
import gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity;
import gogolook.callgogolook2.template.CallEndDialogTemplateActivity;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p203i.p325c.p337n.C9510c;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p521j0.p522u.p523d.AbstractC12548d1;
import p459j.p460a.p521j0.p522u.p523d.C12660r0;
import p459j.p460a.p521j0.p522u.p523d.C12680t0;
import p459j.p460a.p521j0.p522u.p526e.C12715a;
import p459j.p460a.p521j0.p528w.AbstractC12746u;
import p459j.p460a.p521j0.p528w.AbstractC12749x;
import p459j.p460a.p521j0.p528w.C12732k;
import p459j.p460a.p521j0.p528w.C12748w;
import p459j.p460a.p521j0.p528w.C12751y;
import p459j.p460a.p569u0.DialogC13655b;
import p459j.p460a.p582w0.C13913b1;
import p459j.p460a.p582w0.C13998f0;
import p459j.p460a.p582w0.C14013g0;
import p459j.p460a.p582w0.C14019h0;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14134r1;
import p459j.p460a.p582w0.C14149s1;
import p459j.p460a.p582w0.C14187u1;
import p459j.p460a.p582w0.C14214x0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p613z0.C14606c;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity.class */
public class CallEndDialogActivity extends Activity {

    /* renamed from: a */
    public Context f12280a;

    /* renamed from: b */
    public Subscription f12281b;

    /* renamed from: c */
    public C12680t0 f12282c;

    /* renamed from: d */
    public FrameLayout f12283d;

    /* renamed from: e */
    public DisplayMetrics f12284e;

    /* renamed from: f */
    public KeyguardManager f12285f;

    /* renamed from: g */
    public CallStats f12286g;

    /* renamed from: h */
    public String f12287h;

    /* renamed from: i */
    public NumberInfo f12288i;

    /* renamed from: l */
    public boolean f12291l;

    /* renamed from: m */
    public int f12292m;

    /* renamed from: n */
    public String f12293n;

    /* renamed from: o */
    public String f12294o;

    /* renamed from: p */
    public long f12295p;

    /* renamed from: t */
    public boolean f12299t;

    /* renamed from: v */
    public C13930d f12301v;

    /* renamed from: j */
    public int f12289j = -1;

    /* renamed from: k */
    public boolean f12290k = false;

    /* renamed from: q */
    public Handler f12296q = new Handler();

    /* renamed from: r */
    public Runnable f12297r = new RunnableC4972a();

    /* renamed from: s */
    public boolean f12298s = false;

    /* renamed from: u */
    public boolean f12300u = false;
    @Nullable

    /* renamed from: w */
    public AbstractC6207d f12302w = null;
    @NonNull

    /* renamed from: x */
    public AbstractC12749x f12303x = new C12732k();
    @NonNull

    /* renamed from: y */
    public C12751y f12304y = new C12751y();
    @NonNull

    /* renamed from: z */
    public AbstractC12746u f12305z = new C12748w();

    /* renamed from: A */
    public C11086o f12279A = new C4973b();

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$a.class */
    public class RunnableC4972a implements Runnable {
        public RunnableC4972a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C12660r0.m5649a("autoClose");
            CallEndDialogActivity.this.m26628a(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$b.class */
    public class C4973b extends C11086o {

        /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$b$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$b$a.class */
        public class C4974a extends AbstractC12548d1 {

            /* renamed from: d */
            public final /* synthetic */ CallStats.Call f12308d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4974a(NumberInfo numberInfo, RowInfo rowInfo, String str, CallStats.Call call) {
                super(numberInfo, rowInfo, str);
                this.f12308d = call;
            }

            @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12548d1
            /* renamed from: b */
            public void mo5579b() {
                NumberInfo numberInfo = this.f28247a;
                if (numberInfo != null && numberInfo.m28296s0() && CallEndDialogActivity.this.f12301v != null && CallEndDialogActivity.this.f12301v.m3019d()) {
                    CallEndDialogActivity.this.f12301v.m3017f();
                }
                NumberInfo numberInfo2 = this.f28247a;
                if (numberInfo2 != null && numberInfo2.m28296s0() && !this.f12308d.m28477z()) {
                    CallEndDialogActivity callEndDialogActivity = CallEndDialogActivity.this;
                    if (callEndDialogActivity.f12298s) {
                        callEndDialogActivity.f12296q.postDelayed(CallEndDialogActivity.this.f12297r, 60000L);
                    }
                }
                CallEndDialogActivity.this.f12282c.m5570a(this.f28248b);
            }
        }

        public C4973b() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: a */
        public void mo5581a(NumberInfo numberInfo, NumberInfo numberInfo2) {
            CallEndDialogActivity.this.f12304y.m5433a(numberInfo, numberInfo2);
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            CallEndDialogActivity.this.f12288i = numberInfo;
            CallStats.Call c = CallEndDialogActivity.this.f12286g.m28539c();
            String l = C14108o4.m2474l(CallEndDialogActivity.this.f12287h);
            String str2 = l;
            if (TextUtils.isEmpty(l)) {
                str2 = CallEndDialogActivity.this.f12287h;
            }
            new C4974a(numberInfo, RowInfo.m28257a(CallEndDialogActivity.this.f12303x.m5436a(CallEndDialogActivity.this.f12287h, str2, numberInfo, C14217x3.m2146e(CallEndDialogActivity.this.getApplicationContext(), CallEndDialogActivity.this.f12287h), !c.m28529B()), CallEndDialogActivity.this.f12305z), str, c).m5929a();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$c.class */
    public class C4975c implements Action1<C12680t0> {
        public C4975c() {
        }

        /* renamed from: a */
        public void call(C12680t0 t0Var) {
            CallEndDialogActivity.this.f12282c = t0Var;
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$d.class */
    public class RunnableC4976d implements Runnable {

        /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$d$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$d$a.class */
        public class View$OnClickListenerC4977a implements View.OnClickListener {
            public View$OnClickListenerC4977a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C12660r0.m5649a("clickBlankArea");
                CallEndDialogActivity.this.m26621b(false);
            }
        }

        public RunnableC4976d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CallEndDialogActivity.this.f12283d.setOnClickListener(new View$OnClickListenerC4977a());
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$e.class */
    public class C4978e implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ boolean f12313a;

        public C4978e(boolean z) {
            this.f12313a = z;
        }

        /* renamed from: a */
        public void call(String str) {
            CallEndDialogActivity.this.m26626a(!TextUtils.isEmpty(str), this.f12313a);
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3032c();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$f.class */
    public class DialogInterface$OnDismissListenerC4979f implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC4979f() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] Dismiss CallEndDialogTemplate");
            CallEndDialogActivity.this.m26628a(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$g.class */
    public class C4980g implements Action1<Object> {

        /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity$g$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallEndDialogActivity$g$a.class */
        public class RunnableC4981a implements Runnable {
            public RunnableC4981a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C12660r0.m5649a("clickCloseButton");
                CallEndDialogActivity.this.m26621b(false);
            }
        }

        public C4980g() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14187u1) {
                C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] received Event.RemoveCallEndDialog start");
                C12660r0.m5649a(((C14187u1) obj).m2284a());
                CallEndDialogActivity.this.finish();
                CallEndDialogActivity.this.overridePendingTransition(0, R$anim.input_method_exit);
                C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] received Event.RemoveCallEndDialog end");
            } else if (obj instanceof C14134r1) {
                CallEndDialogActivity.this.f12282c.m5570a((RowInfo) null);
                CallEndDialogActivity callEndDialogActivity = CallEndDialogActivity.this;
                callEndDialogActivity.m26627a(callEndDialogActivity.f12291l, CallEndDialogActivity.this.f12292m, CallEndDialogActivity.this.f12293n, CallEndDialogActivity.this.f12294o, CallEndDialogActivity.this.f12295p);
                CallEndDialogActivity.this.m26620c();
            } else if (obj instanceof C13913b1) {
                C13913b1 b1Var = (C13913b1) obj;
                if (CallEndDialogActivity.this.f12289j != 1) {
                    CallEndDialogActivity.this.f12289j = b1Var.f31282b ? b1Var.f31281a : -1;
                }
            } else if (obj instanceof C14019h0) {
                CallEndDialogActivity.this.f12296q.post(new RunnableC4981a());
            } else if (obj instanceof C14013g0) {
                CallEndDialogActivity.this.f12290k = true;
            } else if ((obj instanceof C14149s1) && !CallEndDialogActivity.this.isFinishing() && !CallEndDialogActivity.this.f12299t && CallEndDialogActivity.this.f12282c != null) {
                CallEndDialogActivity.this.f12282c.m5538p();
            }
        }
    }

    /* renamed from: a */
    public final void m26638a() {
        AbstractC6207d dVar = this.f12302w;
        if (dVar != null) {
            dVar.mo23568b();
            this.f12302w = null;
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m26637a(View view) {
        if (!m26636a(view, false)) {
            m26621b(false);
        }
    }

    /* renamed from: a */
    public final void m26628a(boolean z) {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] stop() invoked");
        if (this.f12282c != null) {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] stop CallViewWrapper");
            this.f12282c.m5556b(z);
        }
        if (!isFinishing()) {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] CallViewWrapper.stop() didn't finish the CED, explicitly finish right now");
            finish();
            overridePendingTransition(0, R$anim.input_method_exit);
        }
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] stop() end");
    }

    /* renamed from: a */
    public final void m26627a(boolean z, int i, String str, String str2, long j) {
        if (this.f12283d != null) {
            this.f12282c.m5826a(this);
            View childAt = this.f12283d.getChildAt(0);
            View b = this.f12282c.m5824b(z, i, str, str2, j);
            if (childAt == null || !childAt.equals(b)) {
                this.f12283d.removeAllViews();
                if (b.getParent() != null) {
                    ((ViewGroup) b.getParent()).removeAllViews();
                }
                this.f12283d.addView(b, this.f12282c.m5822e());
            }
        }
    }

    /* renamed from: a */
    public final void m26626a(boolean z, boolean z2) {
        C13921a a = C13921a.m3037a(C13921a.EnumC13926e.CED);
        a.m3035a("[CED] User try to close CED , mHasAdShown:" + this.f12290k);
        C12680t0 t0Var = this.f12282c;
        if (t0Var != null && (t0Var instanceof C12680t0)) {
            DialogC13655b g = t0Var.m5548g();
            if (g != null && g.m3736a() != null && g.m3736a().f30664r) {
                g.m3735a(this.f12280a.getResources().getColor(2131100133));
                g.setOnDismissListener(new DialogInterface$OnDismissListenerC4979f());
                C14217x3.m2156c(this, CallEndDialogTemplateActivity.m26020a(this, g.m3736a()));
                this.f12283d.setVisibility(8);
                C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] Show CallEndDialogTemplate");
            } else if (!this.f12290k && (C14217x3.m2160b(this.f12287h) || AdUtils.m28807b(z))) {
                if (this.f12302w == null) {
                    this.f12302w = StandardPostCallAds.m28741a();
                }
                C12660r0.m5652a();
                if (!this.f12299t && StandardPostCallAds.m28736a(this.f12302w, this.f12283d, new View.OnClickListener() { // from class: j.a.j0.u.d.r
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CallEndDialogActivity.this.m26637a(view);
                    }
                })) {
                    this.f12299t = true;
                    C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] Show NativeFullAd");
                    return;
                }
            } else if (z2) {
                if (this.f12300u) {
                    C12715a.m5471a(3);
                } else if (this.f12299t && m26636a((View) null, true)) {
                    return;
                }
            }
        }
        if (this.f12280a != null && !TextUtils.isEmpty(this.f12287h)) {
            if (C14108o4.m2496a(this.f12287h, C14108o4.EnumC14110b.CALL)) {
                z = false;
            }
            C14261f.m1971a(z);
        }
        m26628a(true);
    }

    /* renamed from: a */
    public final boolean m26636a(View view, boolean z) {
        if (this.f12280a == null || this.f12283d == null || this.f12300u || !C14021h2.m2775k()) {
            return false;
        }
        boolean f = C14021h2.m2780f();
        if (f && z) {
            return m26615e();
        }
        if (view == null) {
            return false;
        }
        int id = view.getId();
        if (id == 2131362430 || id == 2131362432) {
            return m26615e();
        }
        if (id == 2131362731 && f) {
            return m26615e();
        }
        return false;
    }

    /* renamed from: b */
    public final void m26625b() {
        this.f12283d = new FrameLayout(this.f12280a);
        this.f12283d.setOnClickListener(null);
        this.f12283d.postDelayed(new RunnableC4976d(), 1000L);
        setContentView(this.f12283d);
    }

    /* renamed from: b */
    public /* synthetic */ void m26624b(View view) {
        m26621b(false);
    }

    /* renamed from: b */
    public final void m26621b(boolean z) {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3038a();
        C14217x3.m2176a(this.f12287h).subscribe(new C4978e(z), C14081m3.m2611a());
    }

    /* renamed from: c */
    public void m26620c() {
        this.f12287h = this.f12286g.m28539c().m28495h();
        if (this.f12287h != null) {
            this.f12301v = new C13930d();
            this.f12301v.m3018e();
            C11052i.m10328e().m10341a(this.f12287h, this.f12279A, C11052i.f24872i, C11052i.f24870g, CallStats.m28534h().m28539c().m28529B() ? EnumC11047e.CallEndDialogOut : EnumC11047e.CallEndDialogIn);
            return;
        }
        CallStats.Call c = this.f12286g.m28539c();
        C9510c.m15023a().m15020a(c != null ? new Gson().m30988a(c) : "call is null");
        m26628a(false);
    }

    /* renamed from: d */
    public final void m26617d() {
        this.f12281b = C14037j3.m2731a().mo2703a((Action1) new C4980g());
    }

    /* renamed from: e */
    public final boolean m26615e() {
        C14606c cVar = new C14606c(this.f12280a);
        cVar.m1026a(new View.OnClickListener() { // from class: j.a.j0.u.d.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallEndDialogActivity.this.m26624b(view);
            }
        });
        this.f12283d.removeAllViews();
        this.f12283d.addView(cVar);
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CED] Show Iap PostPromoDialog");
        this.f12300u = true;
        return true;
    }

    /* renamed from: f */
    public final void m26613f() {
        Subscription subscription = this.f12281b;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12281b.unsubscribe();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        C12660r0.m5649a("clickBackButton");
        m26621b(true);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        setRequestedOrientation(3);
        super.onCreate(bundle);
        C14300r.m1652b("CallEndDialogActivity", getIntent());
        this.f12280a = this;
        Bundle extras = getIntent().getExtras();
        this.f12291l = extras.getBoolean("ARG_BOOLEAN_MULTIPLE_MISSING");
        this.f12292m = extras.getInt("ARG_INT_NEW_IN_TYPE");
        this.f12293n = extras.getString("ARG_STRING_NUMBER_FOR_MULTI");
        this.f12294o = extras.getString("ARG_STRING_BODY_FOR_MULTI");
        this.f12295p = extras.getLong("ARG_LONG_TIME");
        this.f12284e = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(this.f12284e);
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(0);
        getWindow().setLayout(-1, -1);
        overridePendingTransition(R$anim.input_method_enter, 0);
        this.f12285f = (KeyguardManager) getSystemService("keyguard");
        this.f12286g = CallStats.m28534h();
        m26625b();
        C14037j3.m2731a().mo2704a(new C14214x0(new C4975c()));
        if (this.f12282c == null) {
            finish();
            overridePendingTransition(0, R$anim.input_method_exit);
            return;
        }
        m26627a(this.f12291l, this.f12292m, this.f12293n, this.f12294o, this.f12295p);
        m26617d();
        this.f12299t = false;
        m26620c();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m26613f();
        m26638a();
        C14037j3.m2731a().mo2704a(new C13998f0());
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        C12660r0.m5648b(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        C12660r0.m5650a(this, this.f12291l);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f12298s = true;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f12298s = false;
        this.f12296q.removeCallbacks(this.f12297r);
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (this.f12289j == -1 && !this.f12285f.inKeyguardRestrictedInputMode() && powerManager.isScreenOn()) {
            m26628a(true);
        }
        overridePendingTransition(0, R$anim.input_method_exit);
    }
}
