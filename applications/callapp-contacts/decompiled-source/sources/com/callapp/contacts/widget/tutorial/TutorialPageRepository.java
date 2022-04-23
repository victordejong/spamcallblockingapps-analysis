package com.callapp.contacts.widget.tutorial;

import android.os.Build;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.util.callappRomHelper.romHelper.miui.MIUIHelper;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.tutorial.TutorialPageManager;
import com.callapp.contacts.widget.tutorial.command.CallAppPlusTutorialCommand;
import com.callapp.contacts.widget.tutorial.command.DefaultDialerCommand;
import com.callapp.contacts.widget.tutorial.command.DrawOverAppsCommand;
import com.callapp.contacts.widget.tutorial.command.EndTutorialCommand;
import com.callapp.contacts.widget.tutorial.command.FacebookConnectTutorialCommand;
import com.callapp.contacts.widget.tutorial.command.HuaweiProtectedAppsTutorialCommand;
import com.callapp.contacts.widget.tutorial.command.LocationTutorialCommand;
import com.callapp.contacts.widget.tutorial.command.MIUIAppBatterSaverCommand;
import com.callapp.contacts.widget.tutorial.command.OpenAutoStartCommand;
import com.callapp.contacts.widget.tutorial.command.RunInBackgroundCommand;
import com.callapp.contacts.widget.tutorial.command.ShowOnLockScreenCommand;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPageRepository.class */
public class TutorialPageRepository implements TutorialPageManager.TutorialPagesProvider {

    /* renamed from: a  reason: collision with root package name */
    private int f16973a;

    /* renamed from: b  reason: collision with root package name */
    private TutorialPageModel[] f16974b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, TutorialPageModel> f16975c = new HashMap();

    public TutorialPageRepository(int i, EventBus eventBus) {
        this.f16973a = i;
        boolean isBillingAvailable = BillingManager.isBillingAvailable();
        BeginningTutorialPageModel beginningTutorialPageModel = new BeginningTutorialPageModel(Activities.getString(isBillingAvailable ? 2131888055 : 2131888053), Activities.getString(isBillingAvailable ? 2131888054 : 2131888052), Activities.getString(2131886314), Activities.getString(2131888051), isBillingAvailable ? 2131231485 : 2131231489, 2131231492, "Tutorial Beginning", BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
        this.f16975c.put(beginningTutorialPageModel.getPageName(), beginningTutorialPageModel);
        TutorialPageModel[] tutorialPageModelArr = {a(_$$Lambda$TutorialPageRepository$cy7BIKShqMmt8w5el5Q0APXfl94.INSTANCE, 2131886481, 2131888062, 2131888063, 2131231993, 2131231482, "Caller ID", 1), a(_$$Lambda$P_BxH67CF4mb3NAUdKhDaukb5YE.INSTANCE, 2131888049, 2131888048, 2131886231, 2131888050, 2131231990, 2131231480, "Auto Start", 2, new OpenAutoStartCommand(eventBus)), a(_$$Lambda$J26pDAqi_OMXbmyk5mwXXbJDNtA.INSTANCE, 2131888074, 2131888073, 2131886231, 2131888075, 2131232011, 2131231490, "Huawei Protected Apps", 3, new HuaweiProtectedAppsTutorialCommand(eventBus)), a(_$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU.INSTANCE, 2131888085, 2131888084, 2131886231, 2131888086, 2131232017, 2131231981, "Xiaomi Show on Lock Screen", 4, new ShowOnLockScreenCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$cheopprlIKPzdDeKhwMXyzCEyaw.INSTANCE, 2131888083, 2131888082, 2131886231, 2131888086, 2131232008, 2131231982, "MIUI Batter saver", 13, new MIUIAppBatterSaverCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$UYwWBmq8GjSsjCcqZfeZAQl5K_U.INSTANCE, 2131888066, 2131888065, 2131886812, 2131888067, 2131232001, 2131231484, "Draw over other apps", 5, new DrawOverAppsCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$wxWJnjtqNCL2x9ubW3DgnpFmo8E.INSTANCE, 2131888091, 2131888090, 2131887638, 2131888064, 2131231997, 2131231483, "Set as default", 6, new DefaultDialerCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$hicsqpVizjX1pzLEvHP3U33fxZE.INSTANCE, 2131888089, 2131888088, 2131886812, 2131888089, 2131232014, 2131231493, "Run in background", 7, new RunInBackgroundCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$TW5_dIwkBSDKLuRTmETZ9JvbKyM.INSTANCE, 2131888093, 2131888092, 2131886629, 2131888094, 2131232015, 2131231494, "Social Sync", 8, new FacebookConnectTutorialCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$QWTxJuEwKZvqo9MuS_5rGzb8lBc.INSTANCE, 2131888060, 2131888059, 2131886231, 2131888061, 2131231992, 2131231481, "CallApp Plus", 9, new CallAppPlusTutorialCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$4NAhLI9Qku0hPXRgWeBc_27Cwr8.INSTANCE, 2131888057, 2131888056, 2131888058, 2131232012, 2131231491, "Call Recording", 10), a(_$$Lambda$TutorialPageRepository$kaP_y4QeQtY3BSTnxIYlU4W3T3s.INSTANCE, 2131888080, 2131888079, 2131886812, 2131888081, 2131232007, 2131231488, "Location", 11, new LocationTutorialCommand(eventBus)), a(_$$Lambda$TutorialPageRepository$65kG6WaM2oYF9u7aDLbPfPp3YJc.INSTANCE, 2131888077, 2131888076, 2131888078, 2131232006, 2131231487, "Incognito Mode", 12)};
        this.f16974b = tutorialPageModelArr;
        for (TutorialPageModel tutorialPageModel : tutorialPageModelArr) {
            this.f16975c.put(tutorialPageModel.getPageName(), tutorialPageModel);
        }
        TutorialPageModel a2 = a(_$$Lambda$TutorialPageRepository$v2b_rk93vFjmc_fQSQTWNZQODeM.INSTANCE, isBillingAvailable ? 2131888071 : 2131888070, isBillingAvailable ? 2131888069 : 2131888068, isBillingAvailable ? 2131886932 : 2131887309, isBillingAvailable ? 2131888072 : 2131888087, isBillingAvailable ? 2131232003 : 2131232002, isBillingAvailable ? 2131231486 : 2131231496, "Tutorial Ending", Integer.MAX_VALUE, new EndTutorialCommand(eventBus));
        this.f16975c.put(a2.getPageName(), a2);
    }

    private static TutorialPageModel a(Predicate predicate, int i, int i2, int i3, int i4, int i5, int i6, String str, int i7, TutorialCommand tutorialCommand) {
        return new TutorialPageModel(predicate, Activities.getString(i), Activities.getString(i2), Activities.getString(i3), Activities.getString(i4), i5, i6, str, i7, tutorialCommand);
    }

    private static TutorialPageModel a(Predicate predicate, int i, int i2, int i3, int i4, int i5, String str, int i6) {
        return new TutorialPageModel(predicate, Activities.getString(i), Activities.getString(i2), Activities.getString(i3), i4, i5, str, i6);
    }

    private static boolean a(int i) {
        return DateUtils.a(Prefs.fV.get(), new Date(), TimeUnit.DAYS) >= ((long) i);
    }

    public static boolean c() {
        return !e() && !f() && Prefs.fY.get().intValue() != 2;
    }

    private List<TutorialPageModel> d() {
        if (StringUtils.a((CharSequence) Prefs.fU.get())) {
            return new ArrayList();
        }
        String[] split = Prefs.fU.get().split("@@@");
        TutorialPageModel[] tutorialPageModelArr = new TutorialPageModel[split.length];
        for (int i = 0; i < split.length; i++) {
            tutorialPageModelArr[i] = this.f16975c.get(split[i]);
        }
        return Arrays.asList(tutorialPageModelArr);
    }

    private static boolean e() {
        return !Prefs.fV.isNull() && StringUtils.b((CharSequence) Prefs.fT.get()) && StringUtils.b(Prefs.fT.get(), "Tutorial Beginning") && a(2);
    }

    private static boolean f() {
        return StringUtils.b((CharSequence) Prefs.fT.get()) && !StringUtils.b(Prefs.fT.get(), "Tutorial Beginning") && a(7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean h() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean i() {
        return !PermissionManager.PermissionGroup.LOCATION.arePermissionsGranted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean j() {
        return Build.VERSION.SDK_INT < 28;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean k() {
        return Activities.isNotificationListenerServiceSupportedOnDevice() && !Activities.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean l() {
        return FacebookHelper.get().isNativeAppInstalled() && !FacebookHelper.get().isLoggedIn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean m() {
        return Build.VERSION.SDK_INT >= 23 && !PowerUtils.isIgnoringBatteryOptimizations();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean n() {
        return Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean o() {
        return !Activities.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean p() {
        return Activities.a(MIUIHelper.getMIUIBatterSaverIntent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean q() {
        return true;
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public final int a(String str) {
        List<TutorialPageModel> d2 = d();
        for (int i = 0; i < d2.size(); i++) {
            if (StringUtils.b(d2.get(i).getPageName(), str)) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public final void a(List<TutorialPageModel> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < list.size()) {
            sb.append(list.get(i).getPageName());
            sb.append(i < list.size() - 1 ? "@@@" : "");
            i++;
        }
        Prefs.fU.set(sb.toString());
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public final boolean a() {
        return Prefs.fT.isNotNull();
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public final boolean b() {
        return c();
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public BeginningTutorialPageModel getBeginningTutorialPageModel() {
        return (BeginningTutorialPageModel) this.f16975c.get("Tutorial Beginning");
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public int getCapacity() {
        return this.f16973a;
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public String getCurrentPageName() {
        return Prefs.fT.get();
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public TutorialPageModel getEndingTutorialPageModel() {
        return this.f16975c.get("Tutorial Ending");
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public List<TutorialPageModel> getTutorialPages() {
        return Prefs.fT.isNotNull() ? d() : Arrays.asList(this.f16974b);
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPageManager.TutorialPagesProvider
    public void setCurrentPagePosition(String str) {
        Prefs.fT.set(str);
    }
}
