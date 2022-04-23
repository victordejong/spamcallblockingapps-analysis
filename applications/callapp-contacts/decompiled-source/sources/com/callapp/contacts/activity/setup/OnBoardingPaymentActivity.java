package com.callapp.contacts.activity.setup;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
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

    /* renamed from: a  reason: collision with root package name */
    private TextView f13851a;

    /* renamed from: b  reason: collision with root package name */
    private BillingManager f13852b;

    /* renamed from: c  reason: collision with root package name */
    private String f13853c;

    /* renamed from: d  reason: collision with root package name */
    private int f13854d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE.class */
    enum PAGE_TYPE {
        REGULAR(1),
        DISCOUNT(2);
        
        public int type;

        PAGE_TYPE(int i) {
            this.type = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        setResult(-1);
        finish();
    }

    static /* synthetic */ void c(OnBoardingPaymentActivity onBoardingPaymentActivity) {
        onBoardingPaymentActivity.f13852b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPaymentActivity.3
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                if (OnBoardingPaymentActivity.this.f13852b != null) {
                    OnBoardingPaymentActivity.this.f13853c = "onboarding_system";
                    BillingManager billingManager = OnBoardingPaymentActivity.this.f13852b;
                    OnBoardingPaymentActivity onBoardingPaymentActivity2 = OnBoardingPaymentActivity.this;
                    billingManager.a(onBoardingPaymentActivity2, onBoardingPaymentActivity2.f13853c, "subs");
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(g gVar, List<i> list) {
                OnBoardingPaymentActivity.this.f13851a.setEnabled(true);
                OnBoardingPaymentActivity.this.f13851a.setClickable(true);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(List<i> list) {
                if (CollectionUtils.b(list)) {
                    for (i iVar : list) {
                        if (StringUtils.b((Object) iVar.b(), (Object) OnBoardingPaymentActivity.this.f13853c)) {
                            OnBoardingPaymentActivity.this.a();
                            OnBoardingPaymentActivity.this.f13852b.b();
                            return;
                        }
                    }
                }
                OnBoardingPaymentActivity.this.f13852b.b();
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void b(List list) {
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
        a();
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f13854d = getIntent().getIntExtra("ONBOARDING_PAYMENT_LAYOUT_EXTRA", 1);
        TextView textView = (TextView) findViewById(2131364454);
        TextView textView2 = (TextView) findViewById(2131364455);
        TextView textView3 = (TextView) findViewById(2131364456);
        TextView textView4 = (TextView) findViewById(2131364457);
        TextView textView5 = (TextView) findViewById(2131364458);
        TextView textView6 = (TextView) findViewById(2131364459);
        TextView textView7 = (TextView) findViewById(2131364460);
        TextView textView8 = (TextView) findViewById(2131364461);
        textView.setText(Activities.getString(2131887351));
        int i = 2131099922;
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
        if (!ThemeUtils.isThemeLight()) {
            i = 2131099919;
        }
        textView8.setTextColor(ThemeUtils.getColor(i));
        TextView textView9 = (TextView) findViewById(2131363374);
        textView9.setText(Activities.getString(2131887343));
        textView9.setTextColor(ThemeUtils.getColor(2131099923));
        ViewUtils.b(textView9, 2131232141, ThemeUtils.getColor(2131100145), ThemeUtils.getColor(2131099923), (int) Activities.a(1.0f));
        TextView textView10 = (TextView) findViewById(2131363549);
        this.f13851a = textView10;
        textView10.setText(Activities.getString(2131887341));
        ViewUtils.b(this.f13851a, 2131232141, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), (int) Activities.a(1.0f));
        if (this.f13854d == PAGE_TYPE.DISCOUNT.type) {
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
                OnBoardingPaymentActivity.this.a();
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPayment", "IWishToSeeAds");
            }
        });
        this.f13851a.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPaymentActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingPaymentActivity.this.f13851a.setEnabled(false);
                OnBoardingPaymentActivity.this.f13851a.setClickable(false);
                OnBoardingPaymentActivity.c(OnBoardingPaymentActivity.this);
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPayment", "GoPremium");
            }
        });
        AnalyticsManager.get().a(Constants.REGISTRATION, "ViewOnBoardingPayment", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name);
        AnalyticsManager.get().b(Constants.ON_BOARDING_PAYMENT);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.ON_BOARDING_PAYMENT);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        TextView textView = this.f13851a;
        if (textView != null) {
            textView.setEnabled(true);
        }
    }
}
