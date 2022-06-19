package com.callapp.contacts.manager.inAppBilling;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.AbstractC3334b;
import com.android.billingclient.api.AbstractC3335c;
import com.android.billingclient.api.AbstractC3338e;
import com.android.billingclient.api.AbstractC3346j;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3314a;
import com.android.billingclient.api.C3337d;
import com.android.billingclient.api.C3339f;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
import com.android.billingclient.api.C3348l;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleData;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/inAppBilling/BillingManager.class */
public class BillingManager implements AbstractC3346j {

    /* renamed from: b */
    private static final HashMap<String, List<String>> f25991b;

    /* renamed from: a */
    private AbstractC3335c f25992a;

    /* renamed from: c */
    private BillingUpdatesListener f25993c;

    /* renamed from: d */
    private final Object f25994d;

    /* renamed from: e */
    private String f25995e = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener.class */
    public interface BillingUpdatesListener {

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(BillingUpdatesListener billingUpdatesListener, C3341g c3341g, List list) {
            }

            public static void $default$a(BillingUpdatesListener billingUpdatesListener, List list) {
            }

            public static void $default$b(BillingUpdatesListener billingUpdatesListener, List list) {
            }
        }

        /* renamed from: a */
        void mo26177a();

        /* renamed from: a */
        void mo26176a(C3341g c3341g, List<C3344i> list);

        /* renamed from: a */
        void mo26175a(List<C3344i> list);

        /* renamed from: b */
        void mo26174b(List<C3344i> list);
    }

    static {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        f25991b = hashMap;
        hashMap.put("inapp", Arrays.asList("2016onetime", "2016onetime_05_2020", "onetime_loyal", "onetime_loyal_05_2020", "onetime_10", "onetime_10_05_2020", "onetime_12", "onetime_12_05_2020", "premium_recommended", "premium_recommended_05_2020", "onetime_invites", "onetime_gold_dynamic_no_ads", "onetime_silver_dynamic_no_ads", "onetime_bronze_dynamic_no_ads", "onetime_gold_dynamic_all_included", "onetime_silver_dynamic_all_included", "onetime_bronze_dynamic_all_included"));
        hashMap.put("subs", Arrays.asList("7day_default", "callapp_premium_2", "callapp_premium", "callapp_premium_2_05_2020", "7day_loyal", "monthly_loyal", "monthly_loyal_05_2020", "ad_free_1.5", "ad_free_3.5", "ad_free_4.5", "onboarding_basic", "onboarding_system", "monthly_01", "monthly_01_05_2020", "monthly_02", "monthly_02_05_2020", "monthly_03", "monthly_03_05_2020", "yearly_01", "yearly_02", "yearly_03", "monthly_recommended", "monthly_recommended_05_2020", "yearly_recommended", "yearly_recommended_05_2020", "monthly_gold_3.00_no_ads", "monthly_silver_2.00_no_ads", "monthly_bronze_1.00_no_ads", "yearly_gold_16.00_no_ads", "yearly_silver_12.00_no_ads", "yearly_bronze_8.00_no_ads", "monthly_gold_5.00_all_included", "monthly_silver_4.00_all_included", "monthly_bronze_3.00_all_included", "yearly_gold_18.00_all_included", "yearly_silver_14.00_all_included", "yearly_bronze_10.00_all_included"));
    }

    public BillingManager(final BillingUpdatesListener billingUpdatesListener) {
        Object obj = new Object();
        this.f25994d = obj;
        synchronized (obj) {
            this.f25993c = billingUpdatesListener;
        }
        AbstractC3335c.C3336a c3336a = new AbstractC3335c.C3336a(CallAppApplication.get(), null);
        c3336a.f12570a = true;
        c3336a.f12572c = this;
        Context context = c3336a.f12571b;
        if (context != null) {
            AbstractC3346j abstractC3346j = c3336a.f12572c;
            if (abstractC3346j == null) {
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            if (!c3336a.f12570a) {
                throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
            }
            this.f25992a = new C3337d(null, true, context, abstractC3346j);
            m28294a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.1
                {
                    BillingManager.this = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    synchronized (BillingManager.this.f25994d) {
                        BillingUpdatesListener billingUpdatesListener2 = billingUpdatesListener;
                        if (billingUpdatesListener2 != null) {
                            billingUpdatesListener2.mo26177a();
                        }
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("Please provide a valid Context.");
    }

    /* renamed from: a */
    public static List<String> m28293a(String str) {
        return f25991b.get(str);
    }

    /* renamed from: a */
    private void m28294a(final Runnable runnable) {
        new Task() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.3
            {
                BillingManager.this = this;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (!BillingManager.this.f25992a.mo38205a()) {
                    BillingManager.this.f25992a.mo38200a(new AbstractC3338e() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.3.1
                        {
                            C74663.this = this;
                        }

                        @Override // com.android.billingclient.api.AbstractC3338e
                        /* renamed from: a */
                        public final void mo28286a() {
                            CLog.m27611a(BillingManager.class, "onBillingServiceDisconnected()");
                        }

                        @Override // com.android.billingclient.api.AbstractC3338e
                        /* renamed from: b */
                        public final void mo28285b(C3341g c3341g) {
                            if (c3341g == null) {
                                CLog.m27611a(BillingManager.class, "onBillingSetupFinished() null billingResult");
                                return;
                            }
                            int i = c3341g.f12609a;
                            if (i != 0) {
                                CLog.m27611a(BillingManager.class, "onBillingSetupFinished() error code: ".concat(String.valueOf(i)));
                                return;
                            }
                            CLog.m27611a(BillingManager.class, "onBillingSetupFinished() response: ".concat(String.valueOf(i)));
                            if (runnable == null) {
                                return;
                            }
                            runnable.run();
                        }
                    });
                    return;
                }
                Runnable runnable2 = runnable;
                if (runnable2 == null) {
                    return;
                }
                runnable2.run();
            }
        }.execute();
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0142, code lost:
        if (r0.m38188b().equalsIgnoreCase("yearly_bronze_10.00_all_included") != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0201, code lost:
        if (m28293a("inapp").indexOf(r0.m38188b()) != (-1)) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0245, code lost:
        r8 = r15;
        r9 = r14;
        r18 = r16;
        r16 = r11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m28291a(java.util.List<com.android.billingclient.api.C3344i> r7) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.inAppBilling.BillingManager.m28291a(java.util.List):void");
    }

    /* renamed from: b */
    private void m28288b(List<C3344i> list) {
        for (C3344i c3344i : list) {
            if (StringUtils.m26030e(c3344i.m38188b(), "customization_set")) {
                String m38188b = c3344i.m38188b();
                final ArrayList arrayList = Prefs.f26352cW.get() != null ? new ArrayList(Arrays.asList(Prefs.f26352cW.get())) : new ArrayList();
                CatalogManager.CatalogReqBuilder m29979a = CatalogManager.get().m29979a(this, list);
                m29979a.f23593a = m38188b;
                m29979a.m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.4
                    {
                        BillingManager.this = this;
                    }

                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        String[] m26017k;
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        if (catalogAttributes2 == null || catalogAttributes2.getBundle() == null) {
                            return;
                        }
                        VideoRingtoneBundleData[] freeSkus = catalogAttributes2.getBundle().getFreeSkus();
                        if (!CollectionUtils.m26066b(freeSkus)) {
                            return;
                        }
                        for (VideoRingtoneBundleData videoRingtoneBundleData : freeSkus) {
                            for (String str : StringUtils.m26017k(videoRingtoneBundleData.component1(), ",")) {
                                if (!CollectionUtils.m26073a(arrayList, str)) {
                                    arrayList.add(str);
                                }
                            }
                        }
                    }
                });
                Prefs.f26352cW.set(arrayList.toArray(new String[arrayList.size()]));
            }
        }
    }

    public static boolean isBillingAvailable() {
        String[] m26017k;
        String m28703a = CallAppRemoteConfigManager.get().m28703a("storesShowBillingWithoutPlay");
        if (StringUtils.m26045b((CharSequence) m28703a) && (m26017k = StringUtils.m26017k(m28703a, ",")) != null && m26017k.length > 0) {
            for (String str : m26017k) {
                if (StringUtils.m26044b((Object) Activities.getString(2131887752), (Object) str)) {
                    return true;
                }
            }
        }
        return GooglePlayUtils.isGooglePlayServicesAvailable();
    }

    /* renamed from: a */
    public final void m28298a() {
        m28294a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.7
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                C3344i.C3345a mo38197a = BillingManager.this.f25992a.mo38197a("inapp");
                C3344i.C3345a mo38197a2 = BillingManager.this.f25992a.mo38197a("subs");
                if (mo38197a2.f12617b.f12609a == 0 && mo38197a.f12617b.f12609a == 0) {
                    mo38197a.f12616a.addAll(mo38197a2.f12616a);
                    BillingManager billingManager = BillingManager.this;
                    C3341g.C3342a m38191a = C3341g.m38191a();
                    m38191a.f12611a = 0;
                    billingManager.mo28296a(m38191a.m38190a(), mo38197a.f12616a);
                }
            }
        });
    }

    /* renamed from: a */
    public final void m28297a(final Activity activity, final String str, final String str2) {
        this.f25995e = str;
        m28294a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.6
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                BillingManager.this.m28292a(str2, Collections.singletonList(str), new AbstractC3350m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.6.1
                    {
                        RunnableC74716.this = this;
                    }

                    @Override // com.android.billingclient.api.AbstractC3350m
                    /* renamed from: b */
                    public final void mo28284b(C3341g c3341g, List<C3347k> list) {
                        String str3;
                        StringBuilder sb;
                        try {
                            C3339f.C3340a c3340a = new C3339f.C3340a(null);
                            if (c3341g != null && c3341g.f12609a == 0 && CollectionUtils.m26068b(list)) {
                                C3347k c3347k = list.get(0);
                                ArrayList<C3347k> arrayList = new ArrayList<>();
                                arrayList.add(c3347k);
                                c3340a.f12602a = arrayList;
                                BillingManager.this.f25992a.mo38204a(activity, c3340a.m38192a());
                                AnalyticsManager.get().m28450a(Constants.PURCHASE, "launchBillingFlow success");
                                return;
                            }
                            if (c3341g == null) {
                                str3 = JsonReaderKt.NULL;
                            } else {
                                str3 = "rc: " + c3341g.f12609a + ", msg: " + c3341g.f12610b;
                            }
                            StringBuilder sb2 = new StringBuilder();
                            if (CollectionUtils.m26068b(list)) {
                                Iterator<C3347k> it2 = list.iterator();
                                while (true) {
                                    sb = sb2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    sb2.append(it2.next());
                                    sb2.append(org.apache.commons.lang3.StringUtils.f67179LF);
                                }
                            } else {
                                sb = new StringBuilder(list == null ? JsonReaderKt.NULL : "empty");
                            }
                            FeedbackManager.get().m28671a(Activities.getString(2131887286));
                            CLog.m27611a(BillingManager.class, "skuId:" + str + ", bt: " + str2 + ", res: " + str3 + ", list: " + ((Object) sb));
                        } catch (Exception e) {
                            CLog.m27609a(BillingManager.class, e);
                            CrashlyticsUtils.m27547a(e);
                        }
                    }
                });
            }
        });
    }

    @Override // com.android.billingclient.api.AbstractC3346j
    /* renamed from: a */
    public final void mo28296a(C3341g c3341g, List<C3344i> list) {
        if (c3341g == null) {
            CLog.m27611a(BillingManager.class, "onPurchasesUpdated() got null billingResult");
            return;
        }
        synchronized (this.f25994d) {
            BillingUpdatesListener billingUpdatesListener = this.f25993c;
            if (billingUpdatesListener != null) {
                billingUpdatesListener.mo26176a(c3341g, list);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(list)) {
            for (C3344i c3344i : list) {
                if (c3344i.m38186d() == 1 || c3344i.m38186d() == 0) {
                    arrayList.add(c3344i);
                } else {
                    CLog.m27611a(BillingManager.class, "onPurchasesUpdated() got PENDING purchase ".concat(String.valueOf(c3344i)));
                }
            }
        }
        int i = c3341g.f12609a;
        if (i != 0) {
            if (i == 1) {
                CLog.m27611a(BillingManager.class, "onPurchasesUpdated() – user cancelled the purchase flow – skipping");
                return;
            } else {
                CLog.m27611a(BillingManager.class, "onPurchasesUpdated() got unknown resultCode: ".concat(String.valueOf(i)));
                return;
            }
        }
        final ArrayList arrayList2 = new ArrayList();
        for (C3344i c3344i2 : list) {
            if (!c3344i2.m38185e()) {
                arrayList2.add(c3344i2);
            }
        }
        if (CollectionUtils.m26068b(arrayList2)) {
            m28294a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2
                {
                    BillingManager.this = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    C3314a.C3315a c3315a;
                    for (final C3344i c3344i3 : arrayList2) {
                        if (!c3344i3.m38185e()) {
                            try {
                                c3315a = new C3314a.C3315a(null);
                                c3315a.f12536a = c3344i3.m38187c();
                            } catch (Exception e) {
                                CLog.m27596b(BillingManager.class, e);
                                AnalyticsManager analyticsManager = AnalyticsManager.get();
                                analyticsManager.m28449a(Constants.PURCHASE, "acknowledgePurchase exception", c3344i3.m38188b() + "," + c3344i3.m38186d());
                            }
                            if (c3315a.f12536a == null) {
                                throw new IllegalArgumentException("Purchase token must be set");
                                break;
                            }
                            C3314a c3314a = new C3314a(null);
                            c3314a.f12535a = c3315a.f12536a;
                            BillingManager.this.f25992a.mo38203a(c3314a, new AbstractC3334b() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.1
                                {
                                    RunnableC74622.this = this;
                                }

                                @Override // com.android.billingclient.api.AbstractC3334b
                                /* renamed from: a */
                                public final void mo28287a(C3341g c3341g2) {
                                    if (c3341g2 == null || c3341g2.f12609a == 0) {
                                        return;
                                    }
                                    AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                                    analyticsManager2.m28449a(Constants.PURCHASE, "acknowledgePurchase failed", c3344i3.m38188b() + "," + c3344i3.m38186d());
                                }
                            });
                            if (c3344i3.m38186d() == 1 || c3344i3.m38186d() == 0) {
                                BillingManager.this.m28292a("inapp", Collections.singletonList(c3344i3.m38188b()), new AbstractC3350m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.2
                                    {
                                        RunnableC74622.this = this;
                                    }

                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r0v18 */
                                    /* JADX WARN: Type inference failed for: r0v20 */
                                    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
                                    @Override // com.android.billingclient.api.AbstractC3350m
                                    /* renamed from: b */
                                    public final void mo28284b(C3341g c3341g2, List<C3347k> list2) {
                                        if (c3341g2 == null || c3341g2.f12609a != 0 || !CollectionUtils.m26068b(list2)) {
                                            BillingManager.this.m28292a("subs", Collections.singletonList(c3344i3.m38188b()), new AbstractC3350m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.2.1
                                                {
                                                    C74642.this = this;
                                                }

                                                /* JADX WARN: Multi-variable type inference failed */
                                                /* JADX WARN: Type inference failed for: r0v15 */
                                                /* JADX WARN: Type inference failed for: r0v17 */
                                                /* JADX WARN: Type inference failed for: r0v21, types: [double] */
                                                @Override // com.android.billingclient.api.AbstractC3350m
                                                /* renamed from: b */
                                                public final void mo28284b(C3341g c3341g3, List<C3347k> list3) {
                                                    if (c3341g3 == null || c3341g3.f12609a != 0 || !CollectionUtils.m26068b(list3)) {
                                                        return;
                                                    }
                                                    for (C3347k c3347k : list3) {
                                                        AnalyticsManager.get().mo28445a("user purchased item", c3344i3.m38188b(), "subs", (double) (c3347k.m38182c() != 0 ? c3347k.m38182c() / 1000000.0d : 0), c3347k.m38181d());
                                                    }
                                                }
                                            });
                                            return;
                                        }
                                        for (C3347k c3347k : list2) {
                                            AnalyticsManager.get().mo28445a("user purchased item", c3344i3.m38188b(), "inapp", (double) (c3347k.m38182c() != 0 ? c3347k.m38182c() / 1000000.0d : 0), c3347k.m38181d());
                                        }
                                    }
                                });
                                AnalyticsManager.get().mo28444a(Constants.PURCHASE, "order info", c3344i3.m38188b(), 0.0d, "orderid", c3344i3.m38189a());
                            }
                        }
                    }
                }
            });
        }
        m28291a(arrayList);
        if (StringUtils.m26059a((CharSequence) this.f25995e)) {
            m28288b(arrayList);
        }
        synchronized (this.f25994d) {
            BillingUpdatesListener billingUpdatesListener2 = this.f25993c;
            if (billingUpdatesListener2 != null) {
                billingUpdatesListener2.mo26175a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public final void m28292a(final String str, final List<String> list, final AbstractC3350m abstractC3350m) {
        m28294a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.5
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                C3348l.C3349a c3349a = new C3348l.C3349a(null);
                c3349a.f12623b = new ArrayList(list);
                c3349a.f12622a = str;
                if (c3349a.f12622a != null) {
                    if (c3349a.f12623b == null) {
                        throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
                    }
                    C3348l c3348l = new C3348l();
                    c3348l.f12620a = c3349a.f12622a;
                    c3348l.f12621b = c3349a.f12623b;
                    BillingManager.this.f25992a.mo38198a(c3348l, new AbstractC3350m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.5.1
                        {
                            RunnableC74695.this = this;
                        }

                        @Override // com.android.billingclient.api.AbstractC3350m
                        /* renamed from: b */
                        public final void mo28284b(C3341g c3341g, List<C3347k> list2) {
                            abstractC3350m.mo28284b(c3341g, list2);
                        }
                    });
                    return;
                }
                throw new IllegalArgumentException("SKU type must be set");
            }
        });
    }

    /* renamed from: b */
    public final void m28290b() {
        this.f25992a.mo38194b();
        synchronized (this.f25994d) {
            this.f25993c = null;
        }
    }
}
