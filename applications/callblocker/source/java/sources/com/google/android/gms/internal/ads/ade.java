package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.BinderC2316c;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.ads.p121d.C2284a;
import com.google.android.gms.common.util.AbstractC2717n;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ade.class */
public final class ade extends FrameLayout implements act {

    /* renamed from: a */
    private final act f7893a;

    /* renamed from: b */
    private final C3693zw f7894b;

    /* renamed from: c */
    private final AtomicBoolean f7895c = new AtomicBoolean();

    public ade(act actVar) {
        super(actVar.getContext());
        this.f7893a = actVar;
        this.f7894b = new C3693zw(actVar.mo13431q(), this, this);
        if (!mo13486N()) {
            addView(this.f7893a.getView());
        }
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.adv
    /* renamed from: A */
    public final boolean mo13497A() {
        return this.f7893a.mo13497A();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: B */
    public final boolean mo13593B() {
        return this.f7893a.mo13593B();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: C */
    public final void mo13418C() {
        this.f7894b.m6647c();
        this.f7893a.mo13418C();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: D */
    public final boolean mo13496D() {
        return this.f7893a.mo13496D();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: E */
    public final boolean mo13495E() {
        return this.f7893a.mo13495E();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: F */
    public final void mo13494F() {
        this.f7893a.mo13494F();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: G */
    public final void mo13493G() {
        this.f7893a.mo13493G();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: H */
    public final AbstractC2833bj mo13492H() {
        return this.f7893a.mo13492H();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: I */
    public final void mo13491I() {
        setBackgroundColor(0);
        this.f7893a.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: J */
    public final void mo13490J() {
        TextView textView = new TextView(getContext());
        Resources m7089d = C2341q.m14740g().m7089d();
        textView.setText(m7089d != null ? m7089d.getString(C2284a.C2285a.f6598s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: K */
    public final dva mo13489K() {
        return this.f7893a.mo13489K();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: L */
    public final boolean mo13488L() {
        return this.f7895c.get();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: M */
    public final dvk mo13487M() {
        return this.f7893a.mo13487M();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: N */
    public final boolean mo13486N() {
        return this.f7893a.mo13486N();
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final abt mo13465a(String str) {
        return this.f7893a.mo13465a(str);
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: a */
    public final void mo12026a() {
        this.f7893a.mo12026a();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13478a(int i) {
        this.f7893a.mo13478a(i);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13477a(Context context) {
        this.f7893a.mo13477a(context);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13476a(ViewGroup viewGroup, Activity activity, String str, String str2) {
        this.f7893a.mo13476a(this, activity, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13475a(BinderC2316c binderC2316c) {
        this.f7893a.mo13475a(binderC2316c);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13474a(C2317d c2317d) {
        this.f7893a.mo13474a(c2317d);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13473a(AbstractC2731a abstractC2731a) {
        this.f7893a.mo13473a(abstractC2731a);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13472a(adn adnVar) {
        this.f7893a.mo13472a(adnVar);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13471a(aei aeiVar) {
        this.f7893a.mo13471a(aeiVar);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13468a(AbstractC2832bi abstractC2832bi) {
        this.f7893a.mo13468a(abstractC2832bi);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13467a(AbstractC2833bj abstractC2833bj) {
        this.f7893a.mo13467a(abstractC2833bj);
    }

    @Override // com.google.android.gms.internal.ads.dtr
    /* renamed from: a */
    public final void mo7170a(dtt dttVar) {
        this.f7893a.mo7170a(dttVar);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13466a(dva dvaVar) {
        this.f7893a.mo13466a(dvaVar);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13464a(String str, AbstractC2717n<AbstractC3131fa<? super act>> abstractC2717n) {
        this.f7893a.mo13464a(str, abstractC2717n);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13463a(String str, abt abtVar) {
        this.f7893a.mo13463a(str, abtVar);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13462a(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        this.f7893a.mo13462a(str, abstractC3131fa);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final void mo13461a(String str, String str2, String str3) {
        this.f7893a.mo13461a(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map<String, ?> map) {
        this.f7893a.mo7737a(str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        this.f7893a.mo7736a(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13460a(boolean z) {
        this.f7893a.mo13460a(z);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13457a(boolean z, int i, String str) {
        this.f7893a.mo13457a(z, i, str);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: a */
    public final void mo13456a(boolean z, int i, String str, String str2) {
        this.f7893a.mo13456a(z, i, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: a */
    public final void mo13455a(boolean z, long j) {
        this.f7893a.mo13455a(z, j);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: a */
    public final boolean mo13459a(boolean z, int i) {
        boolean mo13459a;
        if (!this.f7895c.compareAndSet(false, true)) {
            mo13459a = true;
        } else {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16376ai)).booleanValue()) {
                mo13459a = false;
            } else {
                if (this.f7893a.getParent() instanceof ViewGroup) {
                    ((ViewGroup) this.f7893a.getParent()).removeView(this.f7893a.getView());
                }
                mo13459a = this.f7893a.mo13459a(z, i);
            }
        }
        return mo13459a;
    }

    @Override // com.google.android.gms.ads.internal.AbstractC2307i
    /* renamed from: b */
    public final void mo12025b() {
        this.f7893a.mo12025b();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13454b(BinderC2316c binderC2316c) {
        this.f7893a.mo13454b(binderC2316c);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13453b(String str, AbstractC3131fa<? super act> abstractC3131fa) {
        this.f7893a.mo13453b(str, abstractC3131fa);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        this.f7893a.mo7734b(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: b */
    public final void mo13452b(boolean z) {
        this.f7893a.mo13452b(z);
    }

    @Override // com.google.android.gms.internal.ads.adz
    /* renamed from: b */
    public final void mo13451b(boolean z, int i) {
        this.f7893a.mo13451b(z, i);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: c */
    public final C3693zw mo13450c() {
        return this.f7894b;
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: c */
    public final void mo13449c(boolean z) {
        this.f7893a.mo13449c(z);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: d */
    public final adn mo13448d() {
        return this.f7893a.mo13448d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        this.f7893a.mo7733d(str);
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: d */
    public final void mo13447d(boolean z) {
        this.f7893a.mo13447d(z);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void destroy() {
        AbstractC2731a mo13422z = mo13422z();
        if (mo13422z == null) {
            this.f7893a.destroy();
            return;
        }
        C3567ve.f17498a.post(new Runnable(mo13422z) { // from class: com.google.android.gms.internal.ads.adg

            /* renamed from: a */
            private final AbstractC2731a f7897a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7897a = mo13422z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C2341q.m14729r().m7388b(this.f7897a);
            }
        });
        C3567ve.f17498a.postDelayed(new adf(this), ((Integer) dyx.m8158e().m7876a(edi.f16488co)).intValue());
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: e */
    public final C3319m mo13446e() {
        return this.f7893a.mo13446e();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: e */
    public final void mo13445e(boolean z) {
        this.f7893a.mo13445e(z);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.AbstractC2764ads
    /* renamed from: f */
    public final Activity mo13444f() {
        return this.f7893a.mo13444f();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: f */
    public final void mo13443f(boolean z) {
        this.f7893a.mo13443f(z);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: g */
    public final C2299a mo13442g() {
        return this.f7893a.mo13442g();
    }

    @Override // com.google.android.gms.internal.ads.aad
    public final String getRequestId() {
        return this.f7893a.getRequestId();
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aec
    public final View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.act
    public final WebView getWebView() {
        return this.f7893a.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: h */
    public final void mo13441h() {
        this.f7893a.mo13441h();
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad
    /* renamed from: i */
    public final C3400p mo13439i() {
        return this.f7893a.mo13439i();
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aad, com.google.android.gms.internal.ads.aed
    /* renamed from: j */
    public final C3647yd mo13438j() {
        return this.f7893a.mo13438j();
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: k */
    public final int mo13437k() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: l */
    public final int mo13436l() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void loadData(String str, String str2, String str3) {
        this.f7893a.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f7893a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void loadUrl(String str) {
        this.f7893a.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.aad
    /* renamed from: m */
    public final void mo13435m() {
        this.f7893a.mo13435m();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: n */
    public final void mo13434n() {
        this.f7893a.mo13434n();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: o */
    public final void mo13433o() {
        this.f7893a.mo13433o();
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void onPause() {
        this.f7894b.m6648b();
        this.f7893a.onPause();
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void onResume() {
        this.f7893a.onResume();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: p */
    public final void mo13432p() {
        this.f7893a.mo13432p();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: q */
    public final Context mo13431q() {
        return this.f7893a.mo13431q();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: r */
    public final BinderC2316c mo13430r() {
        return this.f7893a.mo13430r();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: s */
    public final BinderC2316c mo13429s() {
        return this.f7893a.mo13429s();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.act
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f7893a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.act
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f7893a.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void setRequestedOrientation(int i) {
        this.f7893a.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f7893a.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.act
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f7893a.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aeb
    /* renamed from: t */
    public final aei mo13428t() {
        return this.f7893a.mo13428t();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: u */
    public final String mo13427u() {
        return this.f7893a.mo13427u();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: v */
    public final aef mo13426v() {
        return this.f7893a.mo13426v();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: w */
    public final WebViewClient mo13425w() {
        return this.f7893a.mo13425w();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: x */
    public final boolean mo13424x() {
        return this.f7893a.mo13424x();
    }

    @Override // com.google.android.gms.internal.ads.act, com.google.android.gms.internal.ads.aea
    /* renamed from: y */
    public final ctl mo13423y() {
        return this.f7893a.mo13423y();
    }

    @Override // com.google.android.gms.internal.ads.act
    /* renamed from: z */
    public final AbstractC2731a mo13422z() {
        return this.f7893a.mo13422z();
    }
}
