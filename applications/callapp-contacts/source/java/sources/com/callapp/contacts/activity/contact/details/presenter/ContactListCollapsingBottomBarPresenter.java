package com.callapp.contacts.activity.contact.details.presenter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.p236ui.InsightActivity;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.blocked.BlockedAndSpamActivity;
import com.callapp.contacts.activity.callappplus.CallAppPlusActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.BaseBottomBarPresenter;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.StoreButtonViewController;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.FlagNotificationBadgeViewController;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.TextNotificationBadgeViewController;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.records.CallRecordsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter.class */
public class ContactListCollapsingBottomBarPresenter extends BaseBottomBarPresenter implements OnBadgeNotificationDataChangeListener, DestroyListener, ResumeListener {

    /* renamed from: a */
    public static String f22136a = "SHOW_DIALOG_EXTRA_WHEN_ENTER_MARKET_PLACE";

    /* renamed from: e */
    private HashMap<EventBusManager.CallAppDataType, CollapsingButtonViewController> f22138e;

    /* renamed from: f */
    private StoreButtonViewController f22139f;

    /* renamed from: g */
    private boolean f22140g;

    /* renamed from: c */
    private final String f22137c = "Bottom bar button clicked:";

    /* renamed from: h */
    private final int f22141h = 3;

    /* renamed from: i */
    private final int f22142i = 7;

    /* renamed from: a */
    private static String m30831a(Integer num) {
        int i = 99;
        if (num.intValue() < 99) {
            i = num.intValue();
        }
        return String.valueOf(i);
    }

    /* renamed from: a */
    private void m30835a(Context context) {
        m30834a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:CallApp Plus", CallAppPlusActivity.class, RunnableC6352x831bb924.INSTANCE);
    }

    /* renamed from: a */
    public static void m30834a(Context context, Bundle bundle, String str, String str2, Class cls, Runnable runnable) {
        Intent intent = new Intent(context, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        Activities.m27656b(context, intent);
        m30825b(str, str2);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m30829b(Context context) {
        AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsBottomBar");
        Prefs.f26550gI.set(Boolean.FALSE);
        m30834a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:Insight", InsightActivity.class, null);
    }

    /* renamed from: b */
    public static /* synthetic */ void m30827b(CollapsingButtonViewController collapsingButtonViewController) {
        if (collapsingButtonViewController != null) {
            collapsingButtonViewController.m30796c();
        }
    }

    /* renamed from: b */
    public static void m30825b(String str, String str2) {
        if (!StringUtils.m26045b((CharSequence) str) || !StringUtils.m26045b((CharSequence) str2)) {
            return;
        }
        AnalyticsManager.get().m28450a(str, str2);
    }

    /* renamed from: b */
    public /* synthetic */ boolean m30826b(Integer num) {
        boolean z = (num != null && Prefs.f26436eA.get().intValue() < num.intValue()) || Prefs.f26469eh.get().booleanValue();
        this.f22140g = z;
        return z;
    }

    /* renamed from: c */
    public /* synthetic */ void m30824c(Context context) {
        CallRecordsActivity.m29759a((Activity) context);
        m30825b(Constants.CONTACT_LIST, "Bottom bar button clicked:Call Recording");
    }

    /* renamed from: d */
    public static /* synthetic */ void m30823d() {
        Prefs.f26470ei.set(0);
    }

    /* renamed from: d */
    public /* synthetic */ void m30822d(Context context) {
        m30834a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:Blocked Numbers", BlockedAndSpamActivity.class, RunnableC6349xca9bdf65.INSTANCE);
    }

    /* renamed from: e */
    public /* synthetic */ void m30820e(final Context context) {
        if (context instanceof BaseActivity) {
            PermissionManager.get();
            if (!PermissionManager.m28253a("android.permission.READ_SMS") && Prefs.f26284bH.get().intValue() < 2 && Prefs.f26285bI.get().intValue() % 8 == 0) {
                BaseActivity baseActivity = (BaseActivity) context;
                baseActivity.getPermissionManager().m28254a(baseActivity, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$HP9mfA3BRpg34u4Aaa8INUJ_f_4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactListCollapsingBottomBarPresenter.this.m30816g(context);
                    }
                }, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$3kKybzN9gXRX78oajlLiJB9L2nM
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactListCollapsingBottomBarPresenter.this.m30818f(context);
                    }
                }, PermissionManager.PermissionGroup.SMS);
                return;
            }
        }
        Prefs.f26285bI.m28170a(8);
        m30835a(context);
        AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickCallAppPlus");
    }

    /* renamed from: e */
    public /* synthetic */ boolean m30821e() {
        Date date = new Date();
        if (Prefs.f26550gI.get().booleanValue()) {
            Prefs.f26549gH.set(date);
            return true;
        } else if (DateUtils.m27118b(date, Prefs.f26549gH.get()) >= 3 && !Prefs.f26339cJ.get().booleanValue()) {
            Prefs.f26549gH.set(date);
            return true;
        } else if (DateUtils.m27118b(date, Prefs.f26549gH.get()) < 7) {
            return false;
        } else {
            Prefs.f26549gH.set(date);
            return true;
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m30818f(Context context) {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "SMS from CallApp+ - Permission not granted");
        m30835a(context);
    }

    /* renamed from: f */
    public static /* synthetic */ boolean m30819f() {
        return !Prefs.f26447eL.get().booleanValue() && !DateUtils.m27131a(Prefs.f26471ej);
    }

    /* renamed from: g */
    public /* synthetic */ void m30816g(Context context) {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "SMS from CallApp+ - Permission granted");
        m30835a(context);
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m30817g() {
        if (!BillingManager.isBillingAvailable() || Prefs.f26339cJ.get().booleanValue() || !Prefs.f26235aL.get().booleanValue()) {
            return false;
        }
        if (Prefs.f26263an.isNotNull() && DateUtils.m27124a(Prefs.f26263an.get(), new Date(), TimeUnit.DAYS) >= 7) {
            return true;
        }
        if (!Prefs.f26263an.isNull()) {
            return false;
        }
        return DateUtils.m27124a(Prefs.f26257ah.get(), new Date(), TimeUnit.DAYS) >= 7 || Prefs.f26462ea.get().booleanValue();
    }

    /* renamed from: h */
    public /* synthetic */ String m30815h() {
        return m30831a(Prefs.f26472ek.get());
    }

    /* renamed from: i */
    public static /* synthetic */ boolean m30814i() {
        return Prefs.f26472ek.get().intValue() > 0;
    }

    /* renamed from: j */
    public static /* synthetic */ void m30813j() {
        Prefs.f26472ek.set(0);
    }

    /* renamed from: k */
    public /* synthetic */ String m30812k() {
        return m30831a(Prefs.f26470ei.get());
    }

    /* renamed from: l */
    public static /* synthetic */ boolean m30811l() {
        return Prefs.f26470ei.get().intValue() > 0;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BaseBottomBarPresenter
    /* renamed from: a */
    public final void mo30803a() {
        super.mo30803a();
        StoreButtonViewController storeButtonViewController = this.f22139f;
        if (storeButtonViewController != null) {
            storeButtonViewController.m30790e();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener
    /* renamed from: a */
    public void mo30203a(EventBusManager.CallAppDataType callAppDataType) {
        final CollapsingButtonViewController collapsingButtonViewController = this.f22138e.get(callAppDataType);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$2NN2wIcVWrCAzljaEbunmKBRk6w
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.m30827b(CollapsingButtonViewController.this);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BaseBottomBarPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        getPresentersContainer().addDestroyListener(this);
        getPresentersContainer().addResumeListener(this);
        EventBusManager.f25138a.m29048a(OnBadgeNotificationDataChangeListener.f23125b_, this);
        this.f22138e = new HashMap<>();
        final Context realContext = getPresentersContainer().getRealContext();
        ViewGroup viewGroup = (ViewGroup) getPresentersContainer().findViewById(2131362116);
        if (Activities.isNotificationListenerServiceSupportedOnDevice()) {
            CollapsingButtonViewController collapsingButtonViewController = new CollapsingButtonViewController(realContext, 2131231468, Activities.getString(2131887471), ThemeUtils.getColor(2131099731), this.f22185b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$JBirYSa9nIBMBOpZq9MvS_x5FZ4
                @Override // java.lang.Runnable
                public final void run() {
                    ContactListCollapsingBottomBarPresenter.this.m30820e(realContext);
                }
            }, new TextNotificationBadgeViewController(realContext, C6343x3fc58254.INSTANCE, new BaseNotificationBadgeViewController.Evaluate() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$i4KkQfeZ_2b2l_Yx2_ez6_TTwbk
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.Evaluate
                public final Object apply() {
                    String m30812k;
                    m30812k = ContactListCollapsingBottomBarPresenter.this.m30812k();
                    return m30812k;
                }
            }), EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED);
            collapsingButtonViewController.getRootView().setContentDescription("BtnBottomBarCallAppPlus");
            m30801a(collapsingButtonViewController);
        }
        CollapsingButtonViewController collapsingButtonViewController2 = new CollapsingButtonViewController(realContext, 2131231467, Activities.getString(2131886200), ThemeUtils.getColor(2131100123), this.f22185b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$JpkkWsWf7_JkGt1Im6ko7XVI_j4
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.this.m30822d(realContext);
            }
        }, new TextNotificationBadgeViewController(realContext, C6340xd1e186ee.INSTANCE, new BaseNotificationBadgeViewController.Evaluate() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$NsmEXyiuz_e_2asQwihXNrGi_fY
            @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.Evaluate
            public final Object apply() {
                String m30815h;
                m30815h = ContactListCollapsingBottomBarPresenter.this.m30815h();
                return m30815h;
            }
        }), EventBusManager.CallAppDataType.SPAM_CALL_UNREAD_COUNT_CHANGED);
        collapsingButtonViewController2.getRootView().setContentDescription("BtnBottomBarBlockedNumbers");
        m30801a(collapsingButtonViewController2);
        if (BillingManager.isBillingAvailable()) {
            String m28703a = CallAppRemoteConfigManager.get().m28703a("PromotionVersion");
            Integer valueOf = StringUtils.m26045b((CharSequence) m28703a) ? Integer.valueOf(Integer.parseInt(m28703a)) : null;
            final Integer num = valueOf;
            final Integer num2 = valueOf;
            StoreButtonViewController storeButtonViewController = new StoreButtonViewController(realContext, 2131231470, Activities.getString(2131887751), ThemeUtils.getColor(2131099947), this.f22185b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!BillingManager.isBillingAvailable()) {
                        FeedbackManager.get().m28669a(Activities.getString(2131886319), (Integer) null);
                        return;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(ContactListCollapsingBottomBarPresenter.f22136a, ContactListCollapsingBottomBarPresenter.this.f22140g);
                    if (ContactListCollapsingBottomBarPresenter.this.f22139f.isShowingLoyaltyGesture()) {
                        MarketPlaceActivity.m30091a(realContext, bundle);
                        ContactListCollapsingBottomBarPresenter.m30825b(Constants.CONTACT_LIST, "Bottom bar button clicked:Marketplace");
                        if (num != null) {
                            Prefs.f26436eA.set(num);
                        }
                    } else {
                        ContactListCollapsingBottomBarPresenter contactListCollapsingBottomBarPresenter = ContactListCollapsingBottomBarPresenter.this;
                        ContactListCollapsingBottomBarPresenter.m30834a(realContext, bundle, Constants.CONTACT_LIST, "Bottom bar button clicked:Marketplace", MarketPlaceActivity.class, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (num != null) {
                                    Prefs.f26436eA.set(num);
                                }
                            }
                        });
                    }
                    Prefs.f26469eh.set(Boolean.FALSE);
                }
            }, new FlagNotificationBadgeViewController(realContext, new BaseNotificationBadgeViewController.ShouldDisplay() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$k2uOrd7_380sTYpn20zTINgq2IA
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.ShouldDisplay
                public final boolean apply() {
                    boolean m30826b;
                    m30826b = ContactListCollapsingBottomBarPresenter.this.m30826b(num2);
                    return m30826b;
                }
            }), EventBusManager.CallAppDataType.MARKET_ITEM_ADDED);
            this.f22139f = storeButtonViewController;
            storeButtonViewController.setShouldPlayAnimation(C6346xa982750f.INSTANCE);
            this.f22139f.getRootView().setContentDescription("BtnBottomBarMarket");
            m30801a(this.f22139f);
        }
        CollapsingButtonViewController collapsingButtonViewController3 = new CollapsingButtonViewController(realContext, 2131231469, Activities.getString(2131886363), ThemeUtils.getColor(2131099712), this.f22185b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$dhUWdILMKg2D6WH9UXaXuuaEDb0
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.this.m30824c(realContext);
            }
        }, new FlagNotificationBadgeViewController(realContext, C6351x1e564dc2.INSTANCE), EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED);
        collapsingButtonViewController3.getRootView().setContentDescription("BtnBottomBarCallRecording");
        m30801a(collapsingButtonViewController3);
        if (Build.VERSION.SDK_INT > 22) {
            CollapsingButtonViewController collapsingButtonViewController4 = new CollapsingButtonViewController(realContext, 2131230926, Activities.getString(2131887056), ThemeUtils.getColor(2131099731), this.f22185b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$V9AiEQJFs_65VN3W0gDFb5_gZlQ
                @Override // java.lang.Runnable
                public final void run() {
                    ContactListCollapsingBottomBarPresenter.this.m30829b(realContext);
                }
            }, new FlagNotificationBadgeViewController(realContext, new BaseNotificationBadgeViewController.ShouldDisplay() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$dnlPzl5npM7Ws_MywPnSxIylr34
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.ShouldDisplay
                public final boolean apply() {
                    boolean m30821e;
                    m30821e = ContactListCollapsingBottomBarPresenter.this.m30821e();
                    return m30821e;
                }
            }), EventBusManager.CallAppDataType.INSIGHTS);
            collapsingButtonViewController4.getRootView().setContentDescription("BtnBottomBarInsight");
            m30801a(collapsingButtonViewController4);
        }
        for (CollapsingButtonViewController collapsingButtonViewController5 : getButtonViewControllers()) {
            View rootView = collapsingButtonViewController5.getRootView();
            rootView.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
            viewGroup.addView(rootView);
            this.f22138e.put(collapsingButtonViewController5.getDataType(), collapsingButtonViewController5);
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        this.f22138e.clear();
        EventBusManager.f25138a.m29045b(OnBadgeNotificationDataChangeListener.f23125b_, this);
        for (CollapsingButtonViewController collapsingButtonViewController : getButtonViewControllers()) {
            collapsingButtonViewController.mo30791d();
        }
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        for (CollapsingButtonViewController collapsingButtonViewController : getButtonViewControllers()) {
            collapsingButtonViewController.mo30793b();
        }
    }
}
