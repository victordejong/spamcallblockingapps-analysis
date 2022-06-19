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

    /* renamed from: n */
    private List<AbstractAnalyticsManager> f25900n = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.analytics.AnalyticsManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AnalyticsManager$1.class */
    public static /* synthetic */ class C74331 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25901a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PresentersContainer.MODE.values().length];
            f25901a = iArr;
            try {
                iArr[PresentersContainer.MODE.INCOMING_SMS_OVERLAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25901a[PresentersContainer.MODE.CLIPBOARD_AUTO_SEARCH_OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f25901a[PresentersContainer.MODE.DURING_CALL_OVERLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f25901a[PresentersContainer.MODE.CONTACT_DETAILS_SCREEN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static String m28447a(PresentersContainer presentersContainer) {
        int i = C74331.f25901a[presentersContainer.getContainerMode().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Constants.CLIPBOARD_AUTO_SEARCH_OVERLAY;
            }
            if (i == 3) {
                return Constants.DURING_CALL_OVERLAY;
            }
            if (i == 4) {
                return Constants.CONTACT_DETAILS;
            }
            return null;
        }
        return Constants.INCOMING_SMS_OVERLAY;
    }

    public static AnalyticsManager get() {
        return Singletons.get().getAnalyticsManager();
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    protected final void mo28432a() {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28431a(String str) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28431a(str);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28429a(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28429a(str, str2, d, ad_type_and_size);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28446a(String str, String str2, String str3, double d) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28446a(str, str2, str3, d);
            abstractAnalyticsManager.mo28444a(str, str2, str3, d, new String[0]);
        }
        CLog.m27610a(AnalyticsManager.class, "REPORTING ANALYTICS EVENT EXPLICIT: category=%s, action=%s, label=%s, value=%f", str, str2, str3, Double.valueOf(d));
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28445a(String str, String str2, String str3, double d, String str4) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28445a(str, str2, str3, d, str4);
        }
        CLog.m27610a(AnalyticsManager.class, "REPORTING ANALYTICS PURCHASE: action=%s, sku=%s, type=%s, price=%f, currencyCode=%s", str, str2, str3, Double.valueOf(d), str4);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28444a(String str, String str2, String str3, double d, String... strArr) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28444a(str, str2, str3, d, strArr);
        }
        String str4 = "";
        for (String str5 : strArr) {
            str4 = str4 + str5 + ", ";
        }
        CLog.m27610a(AnalyticsManager.class, "REPORTING ANALYTICS EVENT: category=%s, action=%s, label=%s, value=%f, extras: ".concat(String.valueOf(str4)), str, str2, str3, Double.valueOf(d));
    }

    /* renamed from: a */
    public final void m28442a(String str, boolean z, PresentersContainer presentersContainer) {
        int i = C74331.f25901a[presentersContainer.getContainerMode().ordinal()];
        String str2 = Constants.LONG_CLICK;
        if (i == 1) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            m28449a(Constants.INCOMING_SMS_OVERLAY, str, str2);
        } else if (i == 2) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            m28449a(Constants.CLIPBOARD_AUTO_SEARCH_OVERLAY, str, str2);
        } else if (i == 3) {
            if (!z) {
                str2 = Constants.CLICK;
            }
            m28449a(Constants.DURING_CALL_OVERLAY, str, str2);
        } else if (i != 4) {
        } else {
            if (!z) {
                str2 = Constants.CLICK;
            }
            m28449a(Constants.CONTACT_DETAILS, str, str2);
        }
    }

    /* renamed from: a */
    public final boolean m28443a(String str, String str2, String str3, long j) {
        String str4 = str + "," + str2;
        String str5 = str4;
        if (StringUtils.m26045b((CharSequence) str3)) {
            str5 = str4 + "," + str3;
        }
        BooleanPref booleanPref = new BooleanPref(str5, Boolean.FALSE);
        if (!booleanPref.get().booleanValue()) {
            mo28444a(str, str2 + " (unique)", str3, j, new String[0]);
            booleanPref.set(Boolean.TRUE);
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28428b() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28428b();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28441b(String str) {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28441b(str);
        }
        CLog.m27610a(AnalyticsManager.class, "REPORTING ANALYTICS VIEW: view=%s", str);
    }

    /* renamed from: b */
    public final void m28440b(String str, String str2, String str3) {
        String str4 = str + "," + str2;
        String str5 = str4;
        if (StringUtils.m26045b((CharSequence) str3)) {
            str5 = str4 + "," + str3;
        }
        BooleanPref booleanPref = new BooleanPref(str5, Boolean.FALSE);
        if (!booleanPref.get().booleanValue()) {
            mo28446a(str, str2 + " u", str3, 0.0d);
            booleanPref.set(Boolean.TRUE);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    protected final void mo28427b(String str, String str2, String str3, double d) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    protected final void mo28426b(String str, String str2, String str3, double d, String str4) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    protected final void mo28425b(String str, String str2, String str3, double d, String... strArr) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: c */
    public final void mo28424c() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28424c();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: c */
    protected final void mo28423c(String str) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: d */
    public final void mo28422d() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28422d();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager, com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.destroy();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: e */
    public final void mo28436e() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28436e();
        }
    }

    /* renamed from: e */
    public final boolean m28439e(String str) {
        BooleanPref booleanPref = new BooleanPref("analytics_view_" + str + "_unique", Boolean.FALSE);
        if (!booleanPref.get().booleanValue()) {
            mo28441b(str);
            booleanPref.set(Boolean.TRUE);
            return true;
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: f */
    public final void mo28435f() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28435f();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: g */
    public final void mo28434g() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28434g();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: h */
    public final void mo28433h() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28433h();
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: i */
    protected final void mo28421i() {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager, com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        if (CallAppApplication.get().isUnitTestMode()) {
            return;
        }
        FirebaseAnalyticsManager firebaseAnalyticsManager = new FirebaseAnalyticsManager();
        firebaseAnalyticsManager.init();
        this.f25900n.add(firebaseAnalyticsManager);
        AppsFlyerAnalyticsManager appsFlyerAnalyticsManager = new AppsFlyerAnalyticsManager();
        appsFlyerAnalyticsManager.init();
        this.f25900n.add(appsFlyerAnalyticsManager);
        FacebookAnalyticsManager facebookAnalyticsManager = new FacebookAnalyticsManager();
        facebookAnalyticsManager.init();
        this.f25900n.add(facebookAnalyticsManager);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: j */
    public final void mo28438j() {
        for (AbstractAnalyticsManager abstractAnalyticsManager : this.f25900n) {
            abstractAnalyticsManager.mo28438j();
        }
    }
}
