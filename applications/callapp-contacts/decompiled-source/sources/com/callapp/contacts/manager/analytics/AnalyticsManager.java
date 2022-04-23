package com.callapp.contacts.manager.analytics;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.facebook.FacebookAnalyticsManager;
import com.callapp.contacts.manager.analytics.firebase.FirebaseAnalyticsManager;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.MoPub;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AnalyticsManager.class */
public class AnalyticsManager extends AbstractAnalyticsManager {
    private List<AbstractAnalyticsManager> n = new ArrayList();

    /* renamed from: com.callapp.contacts.manager.analytics.AnalyticsManager$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AnalyticsManager$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14979a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f14979a = iArr;
            try {
                iArr[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14979a[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14979a[PresentersContainer.MODE.DURING_CALL_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14979a[PresentersContainer.MODE.CONTACT_DETAILS_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public static String a(PresentersContainer presentersContainer) {
        int i = AnonymousClass1.f14979a[presentersContainer.getContainerMode().ordinal()];
        if (i == 1) {
            return Constants.INCOMING_SMS_OVERLAY;
        }
        if (i == 2) {
            return Constants.CLIPBOARD_AUTO_SEARCH_OVERLAY;
        }
        if (i == 3) {
            return Constants.DURING_CALL_OVERLAY;
        }
        if (i != 4) {
            return null;
        }
        return Constants.CONTACT_DETAILS;
    }

    public static AnalyticsManager get() {
        return Singletons.get().getAnalyticsManager();
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void a() {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.a(str);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.a(str, str2, d2, ad_type_and_size);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str, String str2, String str3, double d2) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.a(str, str2, str3, d2);
            abstractAnalyticsManager.a(str, str2, str3, d2, new String[0]);
        }
        CLog.a(AnalyticsManager.class, "REPORTING ANALYTICS EVENT EXPLICIT: category=%s, action=%s, label=%s, value=%f", str, str2, str3, Double.valueOf(d2));
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str, String str2, String str3, double d2, String str4) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.a(str, str2, str3, d2, str4);
        }
        CLog.a(AnalyticsManager.class, "REPORTING ANALYTICS PURCHASE: action=%s, sku=%s, type=%s, price=%f, currencyCode=%s", str, str2, str3, Double.valueOf(d2), str4);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str, String str2, String str3, double d2, String... strArr) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.a(str, str2, str3, d2, strArr);
        }
        String str4 = "";
        for (String str5 : strArr) {
            str4 = str4 + str5 + ", ";
        }
        CLog.a(AnalyticsManager.class, "REPORTING ANALYTICS EVENT: category=%s, action=%s, label=%s, value=%f, extras: ".concat(String.valueOf(str4)), str, str2, str3, Double.valueOf(d2));
    }

    public final void a(String str, boolean z, PresentersContainer presentersContainer) {
        int i = AnonymousClass1.f14979a[presentersContainer.getContainerMode().ordinal()];
        String str2 = Constants.LONG_CLICK;
        if (i == 1) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            a(Constants.INCOMING_SMS_OVERLAY, str, str2);
        } else if (i == 2) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            a(Constants.CLIPBOARD_AUTO_SEARCH_OVERLAY, str, str2);
        } else if (i == 3) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            a(Constants.DURING_CALL_OVERLAY, str, str2);
        } else if (i == 4) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            a(Constants.CONTACT_DETAILS, str, str2);
        }
    }

    public final boolean a(String str, String str2, String str3, long j) {
        String str4 = str + "," + str2;
        String str5 = str4;
        if (StringUtils.b((CharSequence) str3)) {
            str5 = str4 + "," + str3;
        }
        BooleanPref booleanPref = new BooleanPref(str5, Boolean.FALSE);
        if (booleanPref.get().booleanValue()) {
            return false;
        }
        a(str, str2 + " (unique)", str3, j, new String[0]);
        booleanPref.set(Boolean.TRUE);
        return true;
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.b();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.b(str);
        }
        CLog.a(AnalyticsManager.class, "REPORTING ANALYTICS VIEW: view=%s", str);
    }

    public final void b(String str, String str2, String str3) {
        String str4 = str + "," + str2;
        String str5 = str4;
        if (StringUtils.b((CharSequence) str3)) {
            str5 = str4 + "," + str3;
        }
        BooleanPref booleanPref = new BooleanPref(str5, Boolean.FALSE);
        if (!booleanPref.get().booleanValue()) {
            a(str, str2 + " u", str3, 0.0d);
            booleanPref.set(Boolean.TRUE);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2, String str4) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2, String... strArr) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void c() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.c();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void c(String str) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void d() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.d();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager, com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.destroy();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void e() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.e();
        }
    }

    public final boolean e(String str) {
        BooleanPref booleanPref = new BooleanPref("analytics_view_" + str + "_unique", Boolean.FALSE);
        if (booleanPref.get().booleanValue()) {
            return false;
        }
        b(str);
        booleanPref.set(Boolean.TRUE);
        return true;
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void f() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.f();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void g() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.g();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void h() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.h();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void i() {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager, com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            FirebaseAnalyticsManager firebaseAnalyticsManager = new FirebaseAnalyticsManager();
            firebaseAnalyticsManager.init();
            this.n.add(firebaseAnalyticsManager);
            AppsFlyerAnalyticsManager appsFlyerAnalyticsManager = new AppsFlyerAnalyticsManager();
            appsFlyerAnalyticsManager.init();
            this.n.add(appsFlyerAnalyticsManager);
            FacebookAnalyticsManager facebookAnalyticsManager = new FacebookAnalyticsManager();
            facebookAnalyticsManager.init();
            this.n.add(facebookAnalyticsManager);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void j() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.n) {
            abstractAnalyticsManager.j();
        }
    }
}
