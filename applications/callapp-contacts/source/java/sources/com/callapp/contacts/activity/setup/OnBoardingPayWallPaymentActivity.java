package com.callapp.contacts.activity.setup;

import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity.class */
public class OnBoardingPayWallPaymentActivity extends BaseFullScreenActivity {

    /* renamed from: a */
    private BillingManager f24378a;

    /* renamed from: b */
    private BillingManager f24379b;

    /* renamed from: c */
    private String f24380c;

    /* renamed from: d */
    private FrameLayout f24381d;

    /* renamed from: e */
    private FrameLayout f24382e;

    /* renamed from: f */
    private LinearLayout f24383f;

    /* renamed from: g */
    private LinearLayout f24384g;

    /* renamed from: h */
    private TextView f24385h;

    /* renamed from: j */
    private TextView f24386j;

    /* renamed from: k */
    private TextView f24387k;

    /* renamed from: l */
    private TextView f24388l;

    /* renamed from: m */
    private ImageView f24389m;

    /* renamed from: n */
    private final String f24390n = "54%";

    /* renamed from: o */
    private TextView f24391o;

    /* renamed from: a */
    public void m29558a(RadioButton radioButton, RadioButton radioButton2) {
        this.f24380c = "yearly_02";
        radioButton.setButtonDrawable(2131231859);
        radioButton2.setButtonDrawable(2131231858);
        radioButton.setChecked(true);
        radioButton2.setChecked(false);
        radioButton.setSelected(true);
        radioButton2.setSelected(false);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* renamed from: a */
    private static void m29557a(C3347k c3347k, TextView textView) {
        char c;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String m38179f = c3347k.m38179f();
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        String m38184a = c3347k.m38184a();
        Currency currency = Currency.getInstance(c3347k.m38181d());
        int indexOf = m38179f.indexOf("#");
        boolean z = indexOf >= 0;
        char m38182c = c3347k.m38182c() / 1000000.0d;
        if (StringUtils.m26030e(m38184a, "yearly")) {
            c = m38182c;
            m38182c /= 0;
        } else {
            c = 0;
        }
        String str = currency.getSymbol() + decimalFormat.format((double) m38182c);
        if (!z) {
            indexOf = m38179f.length();
        }
        String substring = m38179f.substring(0, indexOf);
        if (z) {
            double parseInt = (100.0d - Integer.parseInt(StringUtils.m26052a(m38179f, "#@", "@#"))) / 100.0d;
            String str2 = currency.getSymbol() + decimalFormat.format(m38182c / parseInt);
            SpannableString spannableString = new SpannableString(str2);
            spannableString.setSpan(new RelativeSizeSpan(0.8f), 0, str2.length(), 0);
            spannableString.setSpan(new ForegroundColorSpan(ThemeUtils.getColor(2131099918)), 0, str2.length(), 33);
            spannableString.setSpan(new StrikethroughSpan(), 0, str2.length(), 33);
            spannableStringBuilder.append((CharSequence) spannableString);
            spannableStringBuilder.append((CharSequence) org.apache.commons.lang3.StringUtils.SPACE);
        }
        SpannableString spannableString2 = new SpannableString(str);
        spannableString2.setSpan(new RelativeSizeSpan(1.2f), 0, str.length(), 0);
        spannableString2.setSpan(new StyleSpan(1), 0, str.length(), 0);
        spannableStringBuilder.append((CharSequence) spannableString2);
        SpannableString spannableString3 = new SpannableString(substring);
        spannableString3.setSpan(new RelativeSizeSpan(0.8f), 0, substring.length(), 0);
        spannableStringBuilder.append((CharSequence) spannableString3);
        if (StringUtils.m26030e(m38184a, "yearly") && StringUtils.m26045b(spannableString3)) {
            spannableStringBuilder.append((CharSequence) new SpannableString(org.apache.commons.lang3.StringUtils.SPACE + currency.getSymbol() + decimalFormat.format((double) c)));
        }
        textView.setText(spannableStringBuilder);
    }

    /* renamed from: a */
    static /* synthetic */ void m29553a(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity, List list) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            C3347k c3347k = (C3347k) it2.next();
            if (c3347k.m38184a().equals("yearly_02")) {
                m29557a(c3347k, onBoardingPayWallPaymentActivity.f24385h);
            } else if (c3347k.m38184a().equals("onboarding_basic")) {
                m29557a(c3347k, onBoardingPayWallPaymentActivity.f24386j);
            } else if (c3347k.m38184a().equals("yearly_01")) {
                m29557a(c3347k, onBoardingPayWallPaymentActivity.f24388l);
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m29551b(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity, RadioButton radioButton, RadioButton radioButton2) {
        onBoardingPayWallPaymentActivity.f24380c = "onboarding_basic";
        radioButton2.setButtonDrawable(2131231859);
        radioButton.setButtonDrawable(2131231858);
        radioButton.setChecked(false);
        radioButton2.setChecked(true);
        radioButton.setSelected(false);
        radioButton2.setSelected(true);
    }

    /* renamed from: c */
    static /* synthetic */ void m29550c(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity) {
        onBoardingPayWallPaymentActivity.f24379b = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.8
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                BillingManager billingManager = OnBoardingPayWallPaymentActivity.this.f24379b;
                OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity2 = OnBoardingPayWallPaymentActivity.this;
                billingManager.m28297a(onBoardingPayWallPaymentActivity2, onBoardingPayWallPaymentActivity2.f24380c, "subs");
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26176a(C3341g c3341g, List<C3344i> list) {
                OnBoardingPayWallPaymentActivity.this.f24391o.setEnabled(true);
                OnBoardingPayWallPaymentActivity.this.f24391o.setClickable(true);
                OnBoardingPayWallPaymentActivity.this.f24387k.setEnabled(true);
                OnBoardingPayWallPaymentActivity.this.f24387k.setClickable(true);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public /* synthetic */ void mo26175a(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public final void mo26174b(List<C3344i> list) {
                OnBoardingPayWallPaymentActivity.m29547f(OnBoardingPayWallPaymentActivity.this);
            }
        });
    }

    /* renamed from: f */
    static /* synthetic */ void m29547f(OnBoardingPayWallPaymentActivity onBoardingPayWallPaymentActivity) {
        AnalyticsManager.get().mo28446a(Constants.PURCHASE, "start trial", (String) null, 0.0d);
        AnalyticsManager.get().mo28433h();
        Prefs.f26246aW.set(Boolean.TRUE);
        onBoardingPayWallPaymentActivity.setResult(-1);
        onBoardingPayWallPaymentActivity.finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558965;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f24381d.getVisibility() == 8) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall2Close");
            this.f24381d.setVisibility(0);
            this.f24382e.setVisibility(8);
            this.f24389m.setVisibility(0);
            return;
        }
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall1Close");
        this.f24381d.setVisibility(8);
        this.f24382e.setVisibility(0);
        this.f24389m.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24381d = (FrameLayout) findViewById(2131362805);
        this.f24382e = (FrameLayout) findViewById(2131363776);
        ImageView imageView = (ImageView) findViewById(2131362371);
        this.f24389m = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                OnBoardingPayWallPaymentActivity.this.onBackPressed();
            }
        });
        ((ImageView) findViewById(2131362048)).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
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
        m29558a(radioButton, radioButton2);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131362819);
        this.f24383f = linearLayout;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                OnBoardingPayWallPaymentActivity.this.m29558a(radioButton, radioButton2);
            }
        });
        LinearLayout linearLayout2 = (LinearLayout) findViewById(2131362811);
        this.f24384g = linearLayout2;
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                OnBoardingPayWallPaymentActivity.m29551b(OnBoardingPayWallPaymentActivity.this, radioButton, radioButton2);
            }
        });
        ((TextView) findViewById(2131362810)).setText(Activities.getString(2131887656));
        ((TextView) findViewById(2131362809)).setText(Activities.getString(2131886507));
        ((TextView) findViewById(2131362822)).setText(Activities.getString(2131888247));
        ((TextView) findViewById(2131362814)).setText(Activities.getString(2131887213));
        this.f24387k = (TextView) findViewById(2131362815);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f24387k.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
        }
        this.f24387k.setText(Activities.getString(2131887921));
        this.f24387k.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                OnBoardingPayWallPaymentActivity.this.f24387k.setEnabled(false);
                OnBoardingPayWallPaymentActivity.this.f24387k.setClickable(false);
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall", OnBoardingPayWallPaymentActivity.this.f24380c);
                OnBoardingPayWallPaymentActivity.m29550c(OnBoardingPayWallPaymentActivity.this);
            }
        });
        this.f24385h = (TextView) findViewById(2131362820);
        this.f24386j = (TextView) findViewById(2131362812);
        ((TextView) findViewById(2131363781)).setText(Activities.getString(2131887908));
        ((TextView) findViewById(2131363783)).setText(Activities.getString(2131887385));
        ((TextView) findViewById(2131363784)).setText(Activities.getString(2131887386));
        ((TextView) findViewById(2131363785)).setText(Activities.getString(2131887387));
        ((TextView) findViewById(2131364065)).setText(Activities.getString(2131887847));
        ((TextView) findViewById(2131363779)).setText(Activities.getString(2131887330));
        this.f24391o = (TextView) findViewById(2131363782);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f24391o.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
        }
        this.f24391o.setText(Activities.getString(2131887921));
        this.f24391o.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                OnBoardingPayWallPaymentActivity.this.f24380c = "yearly_01";
                AndroidUtils.m27630a(view, 1);
                OnBoardingPayWallPaymentActivity.this.f24391o.setEnabled(false);
                OnBoardingPayWallPaymentActivity.this.f24391o.setClickable(false);
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickOnboardingPaymentPayWall2", OnBoardingPayWallPaymentActivity.this.f24380c);
                OnBoardingPayWallPaymentActivity.m29550c(OnBoardingPayWallPaymentActivity.this);
            }
        });
        this.f24388l = (TextView) findViewById(2131363780);
        ((TextView) findViewById(2131363777)).setText("54%");
        this.f24378a = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.7
            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26177a() {
                if (OnBoardingPayWallPaymentActivity.this.f24378a != null) {
                    OnBoardingPayWallPaymentActivity.this.f24378a.m28298a();
                }
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: a */
            public final void mo26175a(List<C3344i> list) {
                ArrayList arrayList = new ArrayList();
                arrayList.add("onboarding_basic");
                arrayList.add("yearly_01");
                arrayList.add("yearly_02");
                OnBoardingPayWallPaymentActivity.this.f24378a.m28292a("subs", arrayList, new AbstractC3350m() { // from class: com.callapp.contacts.activity.setup.OnBoardingPayWallPaymentActivity.7.1
                    @Override // com.android.billingclient.api.AbstractC3350m
                    /* renamed from: b */
                    public final void mo28284b(C3341g c3341g, List<C3347k> list2) {
                        if (CollectionUtils.m26068b(list2)) {
                            OnBoardingPayWallPaymentActivity.m29553a(OnBoardingPayWallPaymentActivity.this, list2);
                        } else {
                            OnBoardingPayWallPaymentActivity.m29547f(OnBoardingPayWallPaymentActivity.this);
                        }
                    }
                });
            }

            @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
            /* renamed from: b */
            public /* synthetic */ void mo26174b(List list) {
                BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
            }
        });
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ViewOnBoardingPaymentPayWall", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name);
        AnalyticsManager.get().mo28441b(Constants.ON_BOARDING_PAYMENT_PAY_WALL);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.ON_BOARDING_PAYMENT_PAY_WALL);
        BillingManager billingManager = this.f24378a;
        if (billingManager != null) {
            billingManager.m28290b();
        }
        BillingManager billingManager2 = this.f24379b;
        if (billingManager2 != null) {
            billingManager2.m28290b();
        }
        super.onDestroy();
    }
}
