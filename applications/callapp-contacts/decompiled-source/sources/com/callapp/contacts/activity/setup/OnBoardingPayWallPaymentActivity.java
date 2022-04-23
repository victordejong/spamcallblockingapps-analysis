package com.callapp.contacts.activity.setup;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.core.content.b;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.android.billingclient.api.k;
import com.android.billingclient.api.m;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity.class */
public class OnBoardingPayWallPaymentActivity extends BaseFullScreenActivity {

    /* renamed from: a  reason: collision with root package name */
    private BillingManager f13834a;

    /* renamed from: b  reason: collision with root package name */
    private BillingManager f13835b;

    /* renamed from: c  reason: collision with root package name */
    private String f13836c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f13837d;
    private FrameLayout e;
    private LinearLayout f;
    private LinearLayout g;
    private TextView h;
    private TextView j;
    private TextView k;
    private TextView l;
    private ImageView m;
    private final String n = "54%";
    private TextView o;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RadioButton radioButton, RadioButton radioButton2) {
        this.f13836c = "yearly_02";
        radioButton.setButtonDrawable(2131231859);
        radioButton2.setButtonDrawable(2131231858);
        radioButton.setChecked(true);
        radioButton2.setChecked(false);
        radioButton.setSelected(true);
        radioButton2.setSelected(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [double] */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.android.billingclient.api.k r7, android.widget.TextView r8) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.a(com.android.billingclient.api.k, android.widget.TextView):void");
    }

    static /* synthetic */ void a(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity, List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            k kVar = (k) it2.next();
            if (kVar.a().equals("yearly_02")) {
                a(kVar, onBoardingPayWallPaymentActivity.h);
            } else if (kVar.a().equals("onboarding_basic")) {
                a(kVar, onBoardingPayWallPaymentActivity.j);
            } else if (kVar.a().equals("yearly_01")) {
                a(kVar, onBoardingPayWallPaymentActivity.l);
            }
        }
    }

    static /* synthetic */ void b(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity, RadioButton radioButton, RadioButton radioButton2) {
        onBoardingPayWallPaymentActivity.f13836c = "onboarding_basic";
        radioButton2.setButtonDrawable(2131231859);
        radioButton.setButtonDrawable(2131231858);
        radioButton.setChecked(false);
        radioButton2.setChecked(true);
        radioButton.setSelected(false);
        radioButton2.setSelected(true);
    }

    static /* synthetic */ void c(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity) {
        onBoardingPayWallPaymentActivity.f13835b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.8
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                BillingManager billingManager = OnBoardingPayWallPaymentActivity.this.f13835b;
                OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity2 = OnBoardingPayWallPaymentActivity.this;
                billingManager.a(onBoardingPayWallPaymentActivity2, onBoardingPayWallPaymentActivity2.f13836c, "subs");
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(g gVar, List<i> list) {
                OnBoardingPayWallPaymentActivity.this.o.setEnabled(true);
                OnBoardingPayWallPaymentActivity.this.o.setClickable(true);
                OnBoardingPayWallPaymentActivity.this.k.setEnabled(true);
                OnBoardingPayWallPaymentActivity.this.k.setClickable(true);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void b(List<i> list) {
                OnBoardingPayWallPaymentActivity.f(OnBoardingPayWallPaymentActivity.this);
            }
        });
    }

    static /* synthetic */ void f(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity) {
        AnalyticsManager.get().a(Constants.PURCHASE, "start trial", (String) null, 0.0d);
        AnalyticsManager.get().h();
        Prefs.aW.set(Boolean.TRUE);
        onBoardingPayWallPaymentActivity.setResult(-1);
        onBoardingPayWallPaymentActivity.finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558965;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f13837d.getVisibility() == 8) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall2Close");
            this.f13837d.setVisibility(0);
            this.e.setVisibility(8);
            this.m.setVisibility(0);
            return;
        }
        AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall1Close");
        this.f13837d.setVisibility(8);
        this.e.setVisibility(0);
        this.m.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f13837d = (FrameLayout) findViewById(2131362805);
        this.e = (FrameLayout) findViewById(2131363776);
        ImageView imageView = (ImageView) findViewById(2131362371);
        this.m = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.this.onBackPressed();
            }
        });
        ((ImageView) findViewById(2131362048)).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.this.onBackPressed();
            }
        });
        ((TextView) findViewById(2131362807)).setText(Activities.getString(2131887428));
        ((TextView) findViewById(2131362816)).setText(Activities.getString(2131887385));
        ((TextView) findViewById(2131362817)).setText(Activities.getString(2131887386));
        ((TextView) findViewById(2131362818)).setText(Activities.getString(2131887387));
        ((TextView) findViewById(2131364064)).setText(Activities.getString(2131887847));
        ((TextView) findViewById(2131362808)).setText(Activities.getString(2131886317));
        final RadioButton radioButton = (RadioButton) findViewById(2131362821);
        final RadioButton radioButton2 = (RadioButton) findViewById(2131362813);
        radioButton2.setClickable(false);
        radioButton.setClickable(false);
        a(radioButton, radioButton2);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362819);
        this.f = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.this.a(radioButton, radioButton2);
            }
        });
        LinearLayout linearLayout2 = (LinearLayout) findViewById(2131362811);
        this.g = linearLayout2;
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.b(OnBoardingPayWallPaymentActivity.this, radioButton, radioButton2);
            }
        });
        ((TextView) findViewById(2131362810)).setText(Activities.getString(2131887656));
        ((TextView) findViewById(2131362809)).setText(Activities.getString(2131886507));
        ((TextView) findViewById(2131362822)).setText(Activities.getString(2131888247));
        ((TextView) findViewById(2131362814)).setText(Activities.getString(2131887213));
        this.k = (TextView) findViewById(2131362815);
        if (Build.VERSION.SDK_INT >= 23) {
            this.k.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        this.k.setText(Activities.getString(2131887921));
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.this.k.setEnabled(false);
                OnBoardingPayWallPaymentActivity.this.k.setClickable(false);
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall", OnBoardingPayWallPaymentActivity.this.f13836c);
                OnBoardingPayWallPaymentActivity.c(OnBoardingPayWallPaymentActivity.this);
            }
        });
        this.h = (TextView) findViewById(2131362820);
        this.j = (TextView) findViewById(2131362812);
        ((TextView) findViewById(2131363781)).setText(Activities.getString(2131887908));
        ((TextView) findViewById(2131363783)).setText(Activities.getString(2131887385));
        ((TextView) findViewById(2131363784)).setText(Activities.getString(2131887386));
        ((TextView) findViewById(2131363785)).setText(Activities.getString(2131887387));
        ((TextView) findViewById(2131364065)).setText(Activities.getString(2131887847));
        ((TextView) findViewById(2131363779)).setText(Activities.getString(2131887330));
        this.o = (TextView) findViewById(2131363782);
        if (Build.VERSION.SDK_INT >= 23) {
            this.o.setForeground(b.a(CallAppApplication.get(), 2131230873));
        }
        this.o.setText(Activities.getString(2131887921));
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingPayWallPaymentActivity.this.f13836c = "yearly_01";
                AndroidUtils.a(view, 1);
                OnBoardingPayWallPaymentActivity.this.o.setEnabled(false);
                OnBoardingPayWallPaymentActivity.this.o.setClickable(false);
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall2", OnBoardingPayWallPaymentActivity.this.f13836c);
                OnBoardingPayWallPaymentActivity.c(OnBoardingPayWallPaymentActivity.this);
            }
        });
        this.l = (TextView) findViewById(2131363780);
        ((TextView) findViewById(2131363777)).setText("54%");
        this.f13834a = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.7
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a() {
                if (OnBoardingPayWallPaymentActivity.this.f13834a != null) {
                    OnBoardingPayWallPaymentActivity.this.f13834a.a();
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void a(g gVar, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public final void a(List<i> list) {
                ArrayList arrayList = new ArrayList();
                arrayList.add("onboarding_basic");
                arrayList.add("yearly_01");
                arrayList.add("yearly_02");
                OnBoardingPayWallPaymentActivity.this.f13834a.a("subs", arrayList, new m() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.7.1
                    @Override // com.android.billingclient.api.m
                    public final void b(g gVar, List<k> list2) {
                        if (CollectionUtils.b(list2)) {
                            OnBoardingPayWallPaymentActivity.a(OnBoardingPayWallPaymentActivity.this, list2);
                        } else {
                            OnBoardingPayWallPaymentActivity.f(OnBoardingPayWallPaymentActivity.this);
                        }
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            public /* synthetic */ void b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
        AnalyticsManager.get().a(Constants.REGISTRATION, "ViewOnBoardingPaymentPayWall", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name);
        AnalyticsManager.get().b(Constants.ON_BOARDING_PAYMENT_PAY_WALL);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.ON_BOARDING_PAYMENT_PAY_WALL);
        BillingManager billingManager = this.f13834a;
        if (billingManager != null) {
            billingManager.b();
        }
        BillingManager billingManager2 = this.f13835b;
        if (billingManager2 != null) {
            billingManager2.b();
        }
        super.onDestroy();
    }
}
