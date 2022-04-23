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
import com.callapp.contacts.activity.analytics.ui.InsightActivity;
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

    /* renamed from: a  reason: collision with root package name */
    public static String f12324a = "SHOW_DIALOG_EXTRA_WHEN_ENTER_MARKET_PLACE";
    private HashMap<EventBusManager.CallAppDataType, CollapsingButtonViewController> e;
    private StoreButtonViewController f;
    private boolean g;

    /* renamed from: c  reason: collision with root package name */
    private final String f12325c = "Bottom bar button clicked:";
    private final int h = 3;
    private final int i = 7;

    private static String a(Integer num) {
        int i = 99;
        if (num.intValue() < 99) {
            i = num.intValue();
        }
        return String.valueOf(i);
    }

    private void a(Context context) {
        a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:CallApp Plus", CallAppPlusActivity.class, _$$Lambda$ContactListCollapsingBottomBarPresenter$csfd0RZaWf8PKJ3Y2lCRvDu_5dQ.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(Context context, Bundle bundle, String str, String str2, Class cls, Runnable runnable) {
        Intent intent = new Intent(context, cls);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        Activities.b(context, intent);
        b(str, str2);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Context context) {
        AnalyticsManager.get().a(Constants.INSIGHTS, "ClickInsightsBottomBar");
        Prefs.gI.set(Boolean.FALSE);
        a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:Insight", InsightActivity.class, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(CollapsingButtonViewController collapsingButtonViewController) {
        if (collapsingButtonViewController != null) {
            collapsingButtonViewController.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2) {
        if (StringUtils.b((CharSequence) str) && StringUtils.b((CharSequence) str2)) {
            AnalyticsManager.get().a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(Integer num) {
        boolean z = (num != null && Prefs.eA.get().intValue() < num.intValue()) || Prefs.eh.get().booleanValue();
        this.g = z;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Context context) {
        CallRecordsActivity.a((Activity) context);
        b(Constants.CONTACT_LIST, "Bottom bar button clicked:Call Recording");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d() {
        Prefs.ei.set(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Context context) {
        a(context, null, Constants.CONTACT_LIST, "Bottom bar button clicked:Blocked Numbers", BlockedAndSpamActivity.class, _$$Lambda$ContactListCollapsingBottomBarPresenter$Or65NpdoiG_6UO_qC31H9WG_wTI.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final Context context) {
        if (context instanceof BaseActivity) {
            PermissionManager.get();
            if (!PermissionManager.a("android.permission.READ_SMS") && Prefs.bH.get().intValue() < 2 && Prefs.bI.get().intValue() % 8 == 0) {
                BaseActivity baseActivity = (BaseActivity) context;
                baseActivity.getPermissionManager().a(baseActivity, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$HP9mfA3BRpg34u4Aaa8INUJ_f_4
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactListCollapsingBottomBarPresenter.this.g(context);
                    }
                }, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$3kKybzN9gXRX78oajlLiJB9L2nM
                    @Override // java.lang.Runnable
                    public final void run() {
                        ContactListCollapsingBottomBarPresenter.this.f(context);
                    }
                }, PermissionManager.PermissionGroup.SMS);
                return;
            }
        }
        Prefs.bI.a(8);
        a(context);
        AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickCallAppPlus");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean e() {
        Date date = new Date();
        if (Prefs.gI.get().booleanValue()) {
            Prefs.gH.set(date);
            return true;
        } else if (DateUtils.b(date, Prefs.gH.get()) >= 3 && !Prefs.cJ.get().booleanValue()) {
            Prefs.gH.set(date);
            return true;
        } else if (DateUtils.b(date, Prefs.gH.get()) < 7) {
            return false;
        } else {
            Prefs.gH.set(date);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Context context) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "SMS from CallApp+ - Permission not granted");
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean f() {
        return !Prefs.eL.get().booleanValue() && !DateUtils.a(Prefs.ej);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Context context) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "SMS from CallApp+ - Permission granted");
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g() {
        if (!BillingManager.isBillingAvailable() || Prefs.cJ.get().booleanValue() || !Prefs.aL.get().booleanValue()) {
            return false;
        }
        if (Prefs.an.isNotNull() && DateUtils.a(Prefs.an.get(), new Date(), TimeUnit.DAYS) >= 7) {
            return true;
        }
        if (Prefs.an.isNull()) {
            return DateUtils.a(Prefs.ah.get(), new Date(), TimeUnit.DAYS) >= 7 || Prefs.ea.get().booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String h() {
        return a(Prefs.ek.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean i() {
        return Prefs.ek.get().intValue() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j() {
        Prefs.ek.set(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String k() {
        return a(Prefs.ei.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean l() {
        return Prefs.ei.get().intValue() > 0;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BaseBottomBarPresenter
    public final void a() {
        super.a();
        StoreButtonViewController storeButtonViewController = this.f;
        if (storeButtonViewController != null) {
            storeButtonViewController.e();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener
    public void a(EventBusManager.CallAppDataType callAppDataType) {
        final CollapsingButtonViewController collapsingButtonViewController = this.e.get(callAppDataType);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$2NN2wIcVWrCAzljaEbunmKBRk6w
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.b(CollapsingButtonViewController.this);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BaseBottomBarPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        getPresentersContainer().addDestroyListener(this);
        getPresentersContainer().addResumeListener(this);
        EventBusManager.f14368a.a(OnBadgeNotificationDataChangeListener.b_, this);
        this.e = new HashMap<>();
        final Context realContext = getPresentersContainer().getRealContext();
        ViewGroup viewGroup = (ViewGroup) getPresentersContainer().findViewById(2131362116);
        if (Activities.isNotificationListenerServiceSupportedOnDevice()) {
            CollapsingButtonViewController collapsingButtonViewController = new CollapsingButtonViewController(realContext, 2131231468, Activities.getString(2131887471), ThemeUtils.getColor(2131099731), this.f12366b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$JBirYSa9nIBMBOpZq9MvS_x5FZ4
                @Override // java.lang.Runnable
                public final void run() {
                    ContactListCollapsingBottomBarPresenter.this.e(realContext);
                }
            }, new TextNotificationBadgeViewController(realContext, _$$Lambda$ContactListCollapsingBottomBarPresenter$EQKzuGDMSC5eCkQew4jtIPlCMwo.INSTANCE, new BaseNotificationBadgeViewController.Evaluate() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$i4KkQfeZ_2b2l_Yx2_ez6_TTwbk
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.Evaluate
                public final Object apply() {
                    String k;
                    k = ContactListCollapsingBottomBarPresenter.this.k();
                    return k;
                }
            }), EventBusManager.CallAppDataType.CALLAPP_PLUS_UNREAD_COUNT_CHANGED);
            collapsingButtonViewController.getRootView().setContentDescription("BtnBottomBarCallAppPlus");
            a(collapsingButtonViewController);
        }
        CollapsingButtonViewController collapsingButtonViewController2 = new CollapsingButtonViewController(realContext, 2131231467, Activities.getString(2131886200), ThemeUtils.getColor(2131100123), this.f12366b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$JpkkWsWf7_JkGt1Im6ko7XVI_j4
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.this.d(realContext);
            }
        }, new TextNotificationBadgeViewController(realContext, _$$Lambda$ContactListCollapsingBottomBarPresenter$0O8tzLi_gaufsCanOnZaxcI0_5A.INSTANCE, new BaseNotificationBadgeViewController.Evaluate() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$NsmEXyiuz_e_2asQwihXNrGi_fY
            @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.Evaluate
            public final Object apply() {
                String h;
                h = ContactListCollapsingBottomBarPresenter.this.h();
                return h;
            }
        }), EventBusManager.CallAppDataType.SPAM_CALL_UNREAD_COUNT_CHANGED);
        collapsingButtonViewController2.getRootView().setContentDescription("BtnBottomBarBlockedNumbers");
        a(collapsingButtonViewController2);
        if (BillingManager.isBillingAvailable()) {
            String a2 = CallAppRemoteConfigManager.get().a("PromotionVersion");
            final Integer valueOf = StringUtils.b((CharSequence) a2) ? Integer.valueOf(Integer.parseInt(a2)) : null;
            StoreButtonViewController storeButtonViewController = new StoreButtonViewController(realContext, 2131231470, Activities.getString(2131887751), ThemeUtils.getColor(2131099947), this.f12366b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BillingManager.isBillingAvailable()) {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(ContactListCollapsingBottomBarPresenter.f12324a, ContactListCollapsingBottomBarPresenter.this.g);
                        if (ContactListCollapsingBottomBarPresenter.this.f.isShowingLoyaltyGesture()) {
                            MarketPlaceActivity.a(realContext, bundle);
                            ContactListCollapsingBottomBarPresenter.b(Constants.CONTACT_LIST, "Bottom bar button clicked:Marketplace");
                            if (valueOf != null) {
                                Prefs.eA.set(valueOf);
                            }
                        } else {
                            ContactListCollapsingBottomBarPresenter contactListCollapsingBottomBarPresenter = ContactListCollapsingBottomBarPresenter.this;
                            ContactListCollapsingBottomBarPresenter.a(realContext, bundle, Constants.CONTACT_LIST, "Bottom bar button clicked:Marketplace", MarketPlaceActivity.class, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.ContactListCollapsingBottomBarPresenter.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (valueOf != null) {
                                        Prefs.eA.set(valueOf);
                                    }
                                }
                            });
                        }
                        Prefs.eh.set(Boolean.FALSE);
                        return;
                    }
                    FeedbackManager.get().a(Activities.getString(2131886319), (Integer) null);
                }
            }, new FlagNotificationBadgeViewController(realContext, new BaseNotificationBadgeViewController.ShouldDisplay() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$k2uOrd7_380sTYpn20zTINgq2IA
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.ShouldDisplay
                public final boolean apply() {
                    boolean b2;
                    b2 = ContactListCollapsingBottomBarPresenter.this.b(valueOf);
                    return b2;
                }
            }), EventBusManager.CallAppDataType.MARKET_ITEM_ADDED);
            this.f = storeButtonViewController;
            storeButtonViewController.setShouldPlayAnimation(_$$Lambda$ContactListCollapsingBottomBarPresenter$Jem6hg8ZMSwOPoNc9_TYVuAqPIs.INSTANCE);
            this.f.getRootView().setContentDescription("BtnBottomBarMarket");
            a(this.f);
        }
        CollapsingButtonViewController collapsingButtonViewController3 = new CollapsingButtonViewController(realContext, 2131231469, Activities.getString(2131886363), ThemeUtils.getColor(2131099712), this.f12366b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$dhUWdILMKg2D6WH9UXaXuuaEDb0
            @Override // java.lang.Runnable
            public final void run() {
                ContactListCollapsingBottomBarPresenter.this.c(realContext);
            }
        }, new FlagNotificationBadgeViewController(realContext, _$$Lambda$ContactListCollapsingBottomBarPresenter$Z_HffcOhrhRAjLGwnCVTaoU7lu8.INSTANCE), EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED);
        collapsingButtonViewController3.getRootView().setContentDescription("BtnBottomBarCallRecording");
        a(collapsingButtonViewController3);
        if (Build.VERSION.SDK_INT > 22) {
            CollapsingButtonViewController collapsingButtonViewController4 = new CollapsingButtonViewController(realContext, 2131230926, Activities.getString(2131887056), ThemeUtils.getColor(2131099731), this.f12366b, new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$V9AiEQJFs_65VN3W0gDFb5_gZlQ
                @Override // java.lang.Runnable
                public final void run() {
                    ContactListCollapsingBottomBarPresenter.this.b(realContext);
                }
            }, new FlagNotificationBadgeViewController(realContext, new BaseNotificationBadgeViewController.ShouldDisplay() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$ContactListCollapsingBottomBarPresenter$dnlPzl5npM7Ws_MywPnSxIylr34
                @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController.ShouldDisplay
                public final boolean apply() {
                    boolean e;
                    e = ContactListCollapsingBottomBarPresenter.this.e();
                    return e;
                }
            }), EventBusManager.CallAppDataType.INSIGHTS);
            collapsingButtonViewController4.getRootView().setContentDescription("BtnBottomBarInsight");
            a(collapsingButtonViewController4);
        }
        for (CollapsingButtonViewController collapsingButtonViewController5 : getButtonViewControllers()) {
            View rootView = collapsingButtonViewController5.getRootView();
            rootView.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
            viewGroup.addView(rootView);
            this.e.put(collapsingButtonViewController5.getDataType(), collapsingButtonViewController5);
        }
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        this.e.clear();
        EventBusManager.f14368a.b(OnBadgeNotificationDataChangeListener.b_, this);
        for (CollapsingButtonViewController collapsingButtonViewController : getButtonViewControllers()) {
            collapsingButtonViewController.d();
        }
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        for (CollapsingButtonViewController collapsingButtonViewController : getButtonViewControllers()) {
            collapsingButtonViewController.b();
        }
    }
}
