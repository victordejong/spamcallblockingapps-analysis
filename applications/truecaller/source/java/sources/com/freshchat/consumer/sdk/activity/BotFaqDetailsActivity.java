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
import com.freshchat.consumer.sdk.activity.C1433c;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p061k.C1763y;
import com.freshchat.consumer.sdk.service.Status;
import java.util.List;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/BotFaqDetailsActivity.class */
public class BotFaqDetailsActivity extends AbstractC1400ah<C1763y> implements C1433c.AbstractC1436b {

    /* renamed from: iB */
    private TextView f3716iB;

    /* renamed from: ji */
    private TextView f3717ji;

    /* renamed from: n */
    private View f3718n;

    /* renamed from: pH */
    private C1433c f3719pH;

    /* renamed from: x */
    private boolean f3720x = false;

    /* renamed from: C */
    private final WebViewClient f3715C = new C1429bi(this);

    /* renamed from: a */
    public void m41358a(CallbackButtonFragment callbackButtonFragment) {
        ((C1763y) this.f3912pe).m39628c(callbackButtonFragment);
        C1471i.m40855a(getContext(), C1298R.string.freshchat_bot_faq_feedback_success);
        finish();
    }

    /* renamed from: hH */
    private void m41357hH() {
        mo41095a(((C1763y) this.f3912pe).m39619jv());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: iG */
    private void m41356iG() {
        Toast.makeText((Context) this, C1298R.string.freshchat_faq_failed_to_load, 0).show();
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    private void m41355m() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_up);
        this.f3718n.bringToFront();
        this.f3718n.startAnimation(loadAnimation);
        C1471i.m40842b(this.f3718n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    private void m41354n() {
        if (C1471i.m40835f(this.f3718n)) {
            this.f3718n.startAnimation(AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_down));
            C1471i.m40840c(this.f3718n);
        }
    }

    /* renamed from: o */
    private void m41353o() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3557f();
        }
    }

    /* renamed from: q */
    private void m41352q() {
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3568A();
        }
    }

    /* renamed from: s */
    private void m41351s() {
        this.f3719pH.postDelayed(new RunnableC1431bk(this), 500L);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        Status m39620jm;
        if ("com.freshchat.consumer.sdk.actions.BotFAQFetched".equals(intent.getAction())) {
            m39620jm = ((C1763y) this.f3912pe).m39626g(intent.getExtras());
        } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            return;
        } else {
            m39620jm = ((C1763y) this.f3912pe).m39620jm();
        }
        mo41095a(m39620jm);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.TokenWaitTimeout"};
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dA */
    public String mo41092dA() {
        return ((C1763y) this.f3912pe).m39618jw();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: dh */
    public void mo41091dh() {
        C1763y c1763y = new C1763y(getContext());
        this.f3912pe = c1763y;
        if (c1763y.m39625h(getIntent().getExtras())) {
            ((C1763y) this.f3912pe).mo39623j(getIntent());
        } else {
            m41356iG();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: h */
    public void mo41061h() {
        m41355m();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hP */
    public void mo41089hP() {
        String m39617jx = ((C1763y) this.f3912pe).m39617jx();
        if (C1626as.isEmpty(m39617jx)) {
            mo41095a(Status.ERROR);
        } else {
            this.f3719pH.loadDataWithBaseURL(null, m39617jx, "text/html", AbstractC22212i.PROTOCOL_CHARSET, null);
            m41087i(this.f3719pH);
        }
        List<MessageFragment> callbacks = ((C1763y) this.f3912pe).getCallbacks();
        if (C1716k.m39902a(callbacks)) {
            CallbackButtonFragment callbackButtonFragment = (CallbackButtonFragment) callbacks.get(0);
            this.f3716iB.setText(callbackButtonFragment.getLabel());
            this.f3716iB.setOnClickListener(new View$OnClickListenerC1427bg(this, callbackButtonFragment));
            if (C1716k.m39900b(callbacks) <= 1) {
                C1471i.m40840c(this.f3717ji);
                return;
            }
            CallbackButtonFragment callbackButtonFragment2 = (CallbackButtonFragment) callbacks.get(1);
            this.f3717ji.setText(callbackButtonFragment2.getLabel());
            this.f3717ji.setOnClickListener(new View$OnClickListenerC1428bh(this, callbackButtonFragment2));
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: hV */
    public String mo41088hV() {
        return ((C1763y) this.f3912pe).m39624hV();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: i */
    public void mo41060i() {
        m41354n();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ie */
    public void mo41086ie() {
        m41357hH();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: if */
    public View mo41085if() {
        return this.f3719pH;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: ig */
    public String[] mo41084ig() {
        return new String[]{"com.freshchat.consumer.sdk.actions.BotFAQFetched"};
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: j */
    public void mo41059j() {
        m41353o();
        this.f3720x = true;
        this.f3718n.setVisibility(8);
    }

    @Override // com.freshchat.consumer.sdk.activity.C1433c.AbstractC1436b
    /* renamed from: k */
    public void mo41058k() {
        m41352q();
        m41351s();
        this.f3720x = false;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!this.f3720x) {
            m41351s();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1298R.layout.freshchat_activity_bot_faq_details);
        mo41082u();
        if (bundle != null) {
            this.f3719pH.restoreState(bundle);
        }
        ((C1763y) this.f3912pe).m39616kc();
        m41357hH();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    public void onDestroy() {
        super.onDestroy();
        C1433c c1433c = this.f3719pH;
        if (c1433c != null) {
            c1433c.destroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.f3719pH.m41068az()) {
            return BotFaqDetailsActivity.super.onKeyDown(i, keyEvent);
        }
        this.f3719pH.m41070aA();
        return true;
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    public void onPause() {
        super.onPause();
        if (!C1630aw.m40192fb() || !C1630aw.m40204eS()) {
            return;
        }
        this.f3719pH.onPause();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah, com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        if (!C1630aw.m40192fb() || !C1630aw.m40204eS()) {
            return;
        }
        this.f3719pH.onResume();
    }

    public void onStart() {
        BotFaqDetailsActivity.super.onStart();
        if (C1630aw.m40191fc()) {
            this.f3719pH.onResume();
        }
    }

    public void onStop() {
        BotFaqDetailsActivity.super.onStop();
        if (C1630aw.m40191fc()) {
            this.f3719pH.onPause();
        }
        this.f3719pH.stopLoading();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1400ah
    /* renamed from: u */
    public void mo41082u() {
        super.mo41082u();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10, -1);
        C1433c c1433c = new C1433c(this);
        this.f3719pH = c1433c;
        c1433c.setVisibility(8);
        this.f3719pH.setWebViewClient(this.f3715C);
        this.f3719pH.m41074a(this, 85);
        this.f3718n = findViewById(C1298R.C1300id.freshchat_voting_view);
        this.f3716iB = (TextView) findViewById(C1298R.C1300id.freshchat_downvote);
        this.f3717ji = (TextView) findViewById(C1298R.C1300id.freshchat_upvote);
        ((RelativeLayout) findViewById(C1298R.C1300id.freshchat_bot_faq_root_layout)).addView(this.f3719pH.getLayout(), layoutParams);
    }
}
