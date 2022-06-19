package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.FreshchatWebViewListener;
import com.freshchat.consumer.sdk.activity.C1433c;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p061k.C1759u;
import com.freshchat.consumer.sdk.service.Status;
import java.lang.ref.WeakReference;
import java.util.Locale;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/FAQDetailsActivity.class */
public class FAQDetailsActivity extends AbstractC1400ah<C1759u> implements C1433c.AbstractC1436b {

    /* renamed from: n */
    private View f3848n;

    /* renamed from: pH */
    private C1433c f3849pH;

    /* renamed from: x */
    private boolean f3850x = false;

    /* renamed from: ac */
    private final View.OnClickListener f3847ac = new View$OnClickListenerC1409aq(this);

    /* renamed from: D */
    private final View.OnClickListener f3846D = new View$OnClickListenerC1410ar(this);

    /* renamed from: C */
    private final WebViewClient f3845C = new C1411as(this);

    /* renamed from: f */
    private void m41158f(Bundle bundle) {
        if (((C1759u) this.f3912pe).m39660i(bundle)) {
            Toast.makeText(getContext(), C1298R.string.freshchat_faq_vote_successful, 1).show();
        }
    }

    /* renamed from: hH */
    private void m41157hH() {
        mo41095a(((C1759u) this.f3912pe).m39654jv());
    }

    /* renamed from: hc */
    private void m41156hc() {
        m41094a(false, this.f3847ac);
        ((TextView) findViewById(C1298R.C1300id.freshchat_contact_us_btn)).setText(C1298R.string.freshchat_faq_not_helpful_contact_us);
    }

    /* renamed from: iE */
    private void m41155iE() {
        if (((C1759u) this.f3912pe).m39658jB()) {
            m41152m();
        }
    }

    /* renamed from: iF */
    public void m41154iF() {
        m41151n();
        if (((C1759u) this.f3912pe).shouldShowContactUsOnFaqNotHelpful()) {
            m41156hc();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: iG */
    private void m41153iG() {
        Toast.makeText((Context) this, C1298R.string.freshchat_faq_failed_to_load, 0).show();
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    private void m41152m() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_up);
        this.f3848n.bringToFront();
        this.f3848n.startAnimation(loadAnimation);
        C1471i.m40842b(this.f3848n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public void m41151n() {
        if (C1471i.m40835f(this.f3848n)) {
            this.f3848n.startAnimation(AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_down));
            C1471i.m40840c(this.f3848n);
        }
    }

    /* renamed from: o */
    private void m41150o() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3557f();
        }
    }

    /* renamed from: q */
    private void m41149q() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3568A();
        }
    }

    /* renamed from: s */
    private void m41148s() {
        this.f3849pH.postDelayed(new RunnableC1413au(this), 500L);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        if ("com.freshchat.consumer.sdk.actions.FAQFetched".equals(intent.getAction())) {
            mo41095a(((C1759u) this.f3912pe).m39663g(intent.getExtras()));
            if (!((C1759u) this.f3912pe).m39657jC()) {
                return;
            }
            m41156hc();
        } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            mo41095a(((C1759u) this.f3912pe).m39655jm());
        } else if (!"com.freshchat.consumer.sdk.actions.FAQVoted".equals(intent.getAction())) {
        } else {
            m41158f(intent.getExtras());
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.FAQApiVersionChanged"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dA */
    public String mo41092dA() {
        return ((C1759u) this.f3912pe).m39653jw();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dh */
    public void mo41091dh() {
        C1759u c1759u = new C1759u(getContext());
        this.f3912pe = c1759u;
        if (c1759u.m39662h(getIntent().getExtras())) {
            ((C1759u) this.f3912pe).mo39623j(getIntent());
        } else {
            m41153iG();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: h */
    public void mo41061h() {
        m41155iE();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hP */
    public void mo41089hP() {
        String m39652jx = ((C1759u) this.f3912pe).m39652jx();
        if (C1626as.isEmpty(m39652jx)) {
            mo41095a(Status.ERROR);
            return;
        }
        this.f3849pH.loadDataWithBaseURL(null, m39652jx, "text/html", AbstractC22212i.PROTOCOL_CHARSET, null);
        m41087i(this.f3849pH);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hV */
    public String mo41088hV() {
        return ((C1759u) this.f3912pe).m39661hV();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: i */
    public void mo41060i() {
        m41151n();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ie */
    public void mo41086ie() {
        m41157hH();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: if */
    public View mo41085if() {
        return this.f3849pH;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ig */
    public String[] mo41084ig() {
        return new String[]{"com.freshchat.consumer.sdk.actions.FAQFetched", "com.freshchat.consumer.sdk.actions.FAQVoted"};
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: j */
    public void mo41059j() {
        m41150o();
        this.f3850x = true;
        this.f3848n.setVisibility(8);
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: k */
    public void mo41058k() {
        m41149q();
        m41148s();
        this.f3850x = false;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.f3850x) {
            m41148s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        FreshchatWebViewListener webviewListener;
        super.onCreate(bundle);
        Locale m40290bb = C1612ah.m40290bb(this);
        setContentView(C1298R.layout.freshchat_activity_faq_details);
        mo41082u();
        ((C1759u) this.f3912pe).m39651jy();
        if (bundle != null) {
            this.f3849pH.restoreState(bundle);
        }
        m41157hH();
        Locale m40290bb2 = C1612ah.m40290bb(this);
        if (m40290bb == null || m40290bb2 == null || !C1626as.m40222p(m40290bb.getLanguage(), m40290bb2.getLanguage()) || (webviewListener = Freshchat.getInstance(this).getWebviewListener()) == null) {
            return;
        }
        webviewListener.onLocaleChangedByWebView(new WeakReference<>(this));
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    public void onDestroy() {
        super.onDestroy();
        C1433c c1433c = this.f3849pH;
        if (c1433c != null) {
            c1433c.destroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.f3849pH.m41068az()) {
            return FAQDetailsActivity.super.onKeyDown(i, keyEvent);
        }
        this.f3849pH.m41070aA();
        return true;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    public void onPause() {
        super.onPause();
        if (!C1630aw.m40192fb() || !C1630aw.m40204eS()) {
            return;
        }
        this.f3849pH.onPause();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        if (!C1630aw.m40192fb() || !C1630aw.m40204eS()) {
            return;
        }
        this.f3849pH.onResume();
    }

    public void onStart() {
        FAQDetailsActivity.super.onStart();
        if (C1630aw.m40191fc()) {
            this.f3849pH.onResume();
        }
    }

    public void onStop() {
        FAQDetailsActivity.super.onStop();
        if (C1630aw.m40191fc()) {
            this.f3849pH.onPause();
        }
        this.f3849pH.stopLoading();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: u */
    public void mo41082u() {
        super.mo41082u();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10, -1);
        C1433c c1433c = new C1433c(this);
        this.f3849pH = c1433c;
        c1433c.setVisibility(8);
        this.f3849pH.setWebViewClient(this.f3845C);
        this.f3849pH.m41074a(this, 85);
        this.f3848n = findViewById(C1298R.C1300id.freshchat_voting_view);
        View findViewById = findViewById(C1298R.C1300id.freshchat_upvote);
        View findViewById2 = findViewById(C1298R.C1300id.freshchat_downvote);
        findViewById.setOnClickListener(this.f3846D);
        findViewById2.setOnClickListener(this.f3846D);
        ((RelativeLayout) findViewById(C1298R.C1300id.freshchat_solution_article_root_layout)).addView(this.f3849pH.getLayout(), layoutParams);
    }
}
