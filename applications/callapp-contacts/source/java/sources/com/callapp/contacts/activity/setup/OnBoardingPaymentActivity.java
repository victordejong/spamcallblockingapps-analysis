package com.callapp.contacts.activity.setup;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/OnBoardingPaymentActivity.class */
public class OnBoardingPaymentActivity extends BaseFullScreenActivity {

    /* renamed from: a */
    private TextView f24405a;

    /* renamed from: b */
    private BillingManager f24406b;

    /* renamed from: c */
    private String f24407c;

    /* renamed from: d */
    private int f24408d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE.class */
    enum PAGE_TYPE {
        REGULAR(1),
        DISCOUNT(2);
        
        public int type;

        PAGE_TYPE(int i) {
            this.type = i;
        }
    }

    /* renamed from: a */
    public void m29545a() {
        setResult(-1);
        finish();
    }

    /* renamed from: c */
    static /* synthetic */ void m29541c(OnBoardingPaymentActivity onBoardingPaymentActivity) {
        onBoardingPaymentActivity.f24406b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPaymentActivity.3
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                if (OnBoardingPaymentActivity.this.f24406b != null) {
                    OnBoardingPaymentActivity.this.f24407c = "onboarding_system";
                    BillingManager billingManager = OnBoardingPaymentActivity.this.f24406b;
                    OnBoardingPaymentActivity onBoardingPaymentActivity2 = OnBoardingPaymentActivity.this;
                    billingManager.m28297a(onBoardingPaymentActivity2, onBoardingPaymentActivity2.f24407c, "subs");
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26176a(C3341g c3341g, List<C3344i> list) {
                OnBoardingPaymentActivity.this.f24405a.setEnabled(true);
                OnBoardingPaymentActivity.this.f24405a.setClickable(true);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26175a(List<C3344i> list) {
                if (CollectionUtils.m26068b(list)) {
                    for (C3344i c3344i : list) {
                        if (StringUtils.m26044b((Object) c3344i.m38188b(), (Object) OnBoardingPaymentActivity.this.f24407c)) {
                            OnBoardingPaymentActivity.this.m29545a();
                            OnBoardingPaymentActivity.this.f24406b.m28290b();
                            return;
                        }
                    }
                }
                OnBoardingPaymentActivity.this.f24406b.m28290b();
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558964;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m29545a();
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24408d = getIntent().getIntExtra("ONBOARDING_PAYMENT_LAYOUT_EXTRA", 1);
        TextView textView = (TextView) findViewById(2131364454);
        TextView textView2 = (TextView) findViewById(2131364455);
        TextView textView3 = (TextView) findViewById(2131364456);
        TextView textView4 = (TextView) findViewById(2131364457);
        TextView textView5 = (TextView) findViewById(2131364458);
        TextView textView6 = (TextView) findViewById(2131364459);
        TextView textView7 = (TextView) findViewById(2131364460);
        TextView textView8 = (TextView) findViewById(2131364461);
        textView.setText(Activities.getString(2131887351));
        textView.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView2.setText(Activities.getString(2131887344));
        textView2.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView3.setText(Activities.getString(2131887345));
        textView3.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView4.setText(Activities.getString(2131887346));
        textView4.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView5.setText(Activities.getString(2131887347));
        textView5.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView6.setText(Activities.getString(2131887348));
        textView6.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView7.setText(Activities.getString(2131887349));
        textView7.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        textView8.setText(Activities.getString(2131887350));
        textView8.setTextColor(ThemeUtils.getColor(ThemeUtils.isThemeLight() ? 2131099922 : 2131099919));
        TextView textView9 = (TextView) findViewById(2131363374);
        textView9.setText(Activities.getString(2131887343));
        textView9.setTextColor(ThemeUtils.getColor(2131099923));
        ViewUtils.m27299b(textView9, 2131232141, ThemeUtils.getColor(2131100145), ThemeUtils.getColor(2131099923), (int) Activities.m27699a(1.0f));
        TextView textView10 = (TextView) findViewById(2131363549);
        this.f24405a = textView10;
        textView10.setText(Activities.getString(2131887341));
        ViewUtils.m27299b(this.f24405a, 2131232141, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), (int) Activities.m27699a(1.0f));
        if (this.f24408d == PAGE_TYPE.DISCOUNT.type) {
            TextView textView11 = (TextView) findViewById(2131362604);
            textView11.setVisibility(0);
            textView11.setTextColor(ThemeUtils.getColor(2131100140));
            textView11.setText(Activities.getString(2131887340));
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131362186);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.setMargins(0, 0, 0, 80);
            relativeLayout.setLayoutParams(layoutParams);
            relativeLayout.requestLayout();
        }
        textView9.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPaymentActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingPaymentActivity.this.m29545a();
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickOnboardingPayment", "IWishToSeeAds");
            }
        });
        this.f24405a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPaymentActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingPaymentActivity.this.f24405a.setEnabled(false);
                OnBoardingPaymentActivity.this.f24405a.setClickable(false);
                OnBoardingPaymentActivity.m29541c(OnBoardingPaymentActivity.this);
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickOnboardingPayment", "GoPremium");
            }
        });
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ViewOnBoardingPayment", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name);
        AnalyticsManager.get().mo28441b(Constants.ON_BOARDING_PAYMENT);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.ON_BOARDING_PAYMENT);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        TextView textView = this.f24405a;
        if (textView != null) {
            textView.setEnabled(true);
        }
    }
}
