package com.callapp.contacts.manager.inAppBilling;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.a;
import com.android.billingclient.api.b;
import com.android.billingclient.api.c;
import com.android.billingclient.api.d;
import com.android.billingclient.api.e;
import com.android.billingclient.api.f;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.android.billingclient.api.j;
import com.android.billingclient.api.k;
import com.android.billingclient.api.l;
import com.android.billingclient.api.m;
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
public class BillingManager implements j {

    /* renamed from: b */
    private static final HashMap<String, List<String>> f15052b;

    /* renamed from: a */
    private c f15053a;

    /* renamed from: c */
    private BillingUpdatesListener f15054c;

    /* renamed from: d */
    private final Object f15055d;
    private String e = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener.class */
    public interface BillingUpdatesListener {

        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$a(BillingUpdatesListener billingUpdatesListener, g gVar, List list) {
            }

            public static void $default$a(BillingUpdatesListener billingUpdatesListener, List list) {
            }

            public static void $default$b(BillingUpdatesListener billingUpdatesListener, List list) {
            }
        }

        void a();

        void a(g gVar, List<i> list);

        void a(List<i> list);

        void b(List<i> list);
    }

    static {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        f15052b = hashMap;
        hashMap.put("inapp", Arrays.asList("2016onetime", "2016onetime_05_2020", "onetime_loyal", "onetime_loyal_05_2020", "onetime_10", "onetime_10_05_2020", "onetime_12", "onetime_12_05_2020", "premium_recommended", "premium_recommended_05_2020", "onetime_invites", "onetime_gold_dynamic_no_ads", "onetime_silver_dynamic_no_ads", "onetime_bronze_dynamic_no_ads", "onetime_gold_dynamic_all_included", "onetime_silver_dynamic_all_included", "onetime_bronze_dynamic_all_included"));
        hashMap.put("subs", Arrays.asList("7day_default", "callapp_premium_2", "callapp_premium", "callapp_premium_2_05_2020", "7day_loyal", "monthly_loyal", "monthly_loyal_05_2020", "ad_free_1.5", "ad_free_3.5", "ad_free_4.5", "onboarding_basic", "onboarding_system", "monthly_01", "monthly_01_05_2020", "monthly_02", "monthly_02_05_2020", "monthly_03", "monthly_03_05_2020", "yearly_01", "yearly_02", "yearly_03", "monthly_recommended", "monthly_recommended_05_2020", "yearly_recommended", "yearly_recommended_05_2020", "monthly_gold_3.00_no_ads", "monthly_silver_2.00_no_ads", "monthly_bronze_1.00_no_ads", "yearly_gold_16.00_no_ads", "yearly_silver_12.00_no_ads", "yearly_bronze_8.00_no_ads", "monthly_gold_5.00_all_included", "monthly_silver_4.00_all_included", "monthly_bronze_3.00_all_included", "yearly_gold_18.00_all_included", "yearly_silver_14.00_all_included", "yearly_bronze_10.00_all_included"));
    }

    public BillingManager(final BillingUpdatesListener billingUpdatesListener) {
        Object obj = new Object();
        this.f15055d = obj;
        synchronized (obj) {
            this.f15054c = billingUpdatesListener;
        }
        c.a aVar = new c.a(CallAppApplication.get(), null);
        aVar.f6971a = true;
        aVar.f6973c = this;
        Context context = aVar.f6972b;
        if (context != null) {
            j jVar = aVar.f6973c;
            if (jVar == null) {
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            } else if (aVar.f6971a) {
                this.f15053a = new d(null, true, context, jVar);
                a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.1
                    {
                        BillingManager.this = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (BillingManager.this.f15055d) {
                            BillingUpdatesListener billingUpdatesListener2 = billingUpdatesListener;
                            if (billingUpdatesListener2 != null) {
                                billingUpdatesListener2.a();
                            }
                        }
                    }
                });
            } else {
                throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
            }
        } else {
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    public static List<String> a(String str) {
        return f15052b.get(str);
    }

    private void a(final Runnable runnable) {
        new Task() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.3
            {
                BillingManager.this = this;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (BillingManager.this.f15053a.a()) {
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                        return;
                    }
                    return;
                }
                BillingManager.this.f15053a.a(new e() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.3.1
                    {
                        AnonymousClass3.this = this;
                    }

                    @Override // com.android.billingclient.api.e
                    public final void a() {
                        CLog.a(BillingManager.class, "onBillingServiceDisconnected()");
                    }

                    @Override // com.android.billingclient.api.e
                    public final void b(g gVar) {
                        if (gVar != null) {
                            int i = gVar.f6986a;
                            if (i == 0) {
                                CLog.a(BillingManager.class, "onBillingSetupFinished() response: ".concat(String.valueOf(i)));
                                if (runnable != null) {
                                    runnable.run();
                                    return;
                                }
                                return;
                            }
                            CLog.a(BillingManager.class, "onBillingSetupFinished() error code: ".concat(String.valueOf(i)));
                            return;
                        }
                        CLog.a(BillingManager.class, "onBillingSetupFinished() null billingResult");
                    }
                });
            }
        }.execute();
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0142, code lost:
        if (r0.b().equalsIgnoreCase("yearly_bronze_10.00_all_included") != false) goto L_0x0145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0201, code lost:
        if (a("inapp").indexOf(r0.b()) != (-1)) goto L_0x0204;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.List<com.android.billingclient.api.i> r7) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.inAppBilling.BillingManager.a(java.util.List):void");
    }

    private void b(List<i> list) {
        for (i iVar : list) {
            if (StringUtils.e(iVar.b(), "customization_set")) {
                String b2 = iVar.b();
                final ArrayList arrayList = Prefs.cW.get() != null ? new ArrayList(Arrays.asList(Prefs.cW.get())) : new ArrayList();
                CatalogManager.CatalogReqBuilder a2 = CatalogManager.get().a(this, list);
                a2.f13261a = b2;
                a2.a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.4
                    {
                        BillingManager.this = this;
                    }

                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                    public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                        String[] k;
                        CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                        if (!(catalogAttributes2 == null || catalogAttributes2.getBundle() == null)) {
                            VideoRingtoneBundleData[] freeSkus = catalogAttributes2.getBundle().getFreeSkus();
                            if (CollectionUtils.b(freeSkus)) {
                                for (VideoRingtoneBundleData videoRingtoneBundleData : freeSkus) {
                                    for (String str : StringUtils.k(videoRingtoneBundleData.component1(), ",")) {
                                        if (!CollectionUtils.a(arrayList, str)) {
                                            arrayList.add(str);
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
                Prefs.cW.set(arrayList.toArray(new String[arrayList.size()]));
            }
        }
    }

    public static boolean isBillingAvailable() {
        String[] k;
        String a2 = CallAppRemoteConfigManager.get().a("storesShowBillingWithoutPlay");
        if (StringUtils.b((CharSequence) a2) && (k = StringUtils.k(a2, ",")) != null && k.length > 0) {
            for (String str : k) {
                if (StringUtils.b((Object) Activities.getString(2131887752), (Object) str)) {
                    return true;
                }
            }
        }
        return GooglePlayUtils.isGooglePlayServicesAvailable();
    }

    public final void a() {
        a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.7
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                i.a a2 = BillingManager.this.f15053a.a("inapp");
                i.a a3 = BillingManager.this.f15053a.a("subs");
                if (a3.f6994b.f6986a == 0 && a2.f6994b.f6986a == 0) {
                    a2.f6993a.addAll(a3.f6993a);
                    BillingManager billingManager = BillingManager.this;
                    g.a a4 = g.a();
                    a4.f6988a = 0;
                    billingManager.a(a4.a(), a2.f6993a);
                }
            }
        });
    }

    public final void a(final Activity activity, final String str, final String str2) {
        this.e = str;
        a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.6
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                BillingManager.this.a(str2, Collections.singletonList(str), new m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.6.1
                    {
                        AnonymousClass6.this = this;
                    }

                    @Override // com.android.billingclient.api.m
                    public final void b(g gVar, List<k> list) {
                        String str3;
                        StringBuilder sb;
                        try {
                            f.a aVar = new f.a(null);
                            if (gVar == null || gVar.f6986a != 0 || !CollectionUtils.b(list)) {
                                String str4 = JsonReaderKt.NULL;
                                if (gVar == null) {
                                    str3 = JsonReaderKt.NULL;
                                } else {
                                    str3 = "rc: " + gVar.f6986a + ", msg: " + gVar.f6987b;
                                }
                                StringBuilder sb2 = new StringBuilder();
                                if (CollectionUtils.b(list)) {
                                    Iterator<k> it2 = list.iterator();
                                    while (true) {
                                        sb = sb2;
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        sb2.append(it2.next());
                                        sb2.append(org.apache.commons.lang3.StringUtils.LF);
                                    }
                                } else {
                                    if (list != null) {
                                        str4 = "empty";
                                    }
                                    sb = new StringBuilder(str4);
                                }
                                FeedbackManager.get().a(Activities.getString(2131887286));
                                CLog.a(BillingManager.class, "skuId:" + str + ", bt: " + str2 + ", res: " + str3 + ", list: " + ((Object) sb));
                                return;
                            }
                            k kVar = list.get(0);
                            ArrayList<k> arrayList = new ArrayList<>();
                            arrayList.add(kVar);
                            aVar.f6982a = arrayList;
                            BillingManager.this.f15053a.a(activity, aVar.a());
                            AnalyticsManager.get().a(Constants.PURCHASE, "launchBillingFlow success");
                        } catch (Exception e) {
                            CLog.a(BillingManager.class, e);
                            CrashlyticsUtils.a(e);
                        }
                    }
                });
            }
        });
    }

    @Override // com.android.billingclient.api.j
    public final void a(g gVar, List<i> list) {
        if (gVar != null) {
            synchronized (this.f15055d) {
                BillingUpdatesListener billingUpdatesListener = this.f15054c;
                if (billingUpdatesListener != null) {
                    billingUpdatesListener.a(gVar, list);
                }
            }
            ArrayList arrayList = new ArrayList();
            if (CollectionUtils.b(list)) {
                for (i iVar : list) {
                    if (iVar.d() == 1 || iVar.d() == 0) {
                        arrayList.add(iVar);
                    } else {
                        CLog.a(BillingManager.class, "onPurchasesUpdated() got PENDING purchase ".concat(String.valueOf(iVar)));
                    }
                }
            }
            int i = gVar.f6986a;
            if (i == 0) {
                final ArrayList arrayList2 = new ArrayList();
                for (i iVar2 : list) {
                    if (!iVar2.e()) {
                        arrayList2.add(iVar2);
                    }
                }
                if (CollectionUtils.b(arrayList2)) {
                    a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2
                        {
                            BillingManager.this = this;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            a.C0130a aVar;
                            for (final i iVar3 : arrayList2) {
                                if (!iVar3.e()) {
                                    try {
                                        aVar = new a.C0130a(null);
                                        aVar.f6939a = iVar3.c();
                                    } catch (Exception e) {
                                        CLog.b(BillingManager.class, e);
                                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                                        analyticsManager.a(Constants.PURCHASE, "acknowledgePurchase exception", iVar3.b() + "," + iVar3.d());
                                    }
                                    if (aVar.f6939a == null) {
                                        throw new IllegalArgumentException("Purchase token must be set");
                                        break;
                                    }
                                    a aVar2 = new a(null);
                                    aVar2.f6938a = aVar.f6939a;
                                    BillingManager.this.f15053a.a(aVar2, new b() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.1
                                        {
                                            AnonymousClass2.this = this;
                                        }

                                        @Override // com.android.billingclient.api.b
                                        public final void a(g gVar2) {
                                            if (gVar2 != null && gVar2.f6986a != 0) {
                                                AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                                                analyticsManager2.a(Constants.PURCHASE, "acknowledgePurchase failed", iVar3.b() + "," + iVar3.d());
                                            }
                                        }
                                    });
                                    if (iVar3.d() == 1 || iVar3.d() == 0) {
                                        BillingManager.this.a("inapp", Collections.singletonList(iVar3.b()), new m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.2
                                            {
                                                AnonymousClass2.this = this;
                                            }

                                            @Override // com.android.billingclient.api.m
                                            public final void b(g gVar2, List<k> list2) {
                                                if (gVar2 == null || gVar2.f6986a != 0 || !CollectionUtils.b(list2)) {
                                                    BillingManager.this.a("subs", Collections.singletonList(iVar3.b()), new m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.2.2.1
                                                        {
                                                            C03062.this = this;
                                                        }

                                                        @Override // com.android.billingclient.api.m
                                                        public final void b(g gVar3, List<k> list3) {
                                                            if (gVar3 != null && gVar3.f6986a == 0 && CollectionUtils.b(list3)) {
                                                                for (k kVar : list3) {
                                                                    AnalyticsManager.get().a("user purchased item", iVar3.b(), "subs", kVar.c() != 0 ? kVar.c() / 1000000.0d : 0.0d, kVar.d());
                                                                }
                                                            }
                                                        }
                                                    });
                                                    return;
                                                }
                                                for (k kVar : list2) {
                                                    AnalyticsManager.get().a("user purchased item", iVar3.b(), "inapp", kVar.c() != 0 ? kVar.c() / 1000000.0d : 0.0d, kVar.d());
                                                }
                                            }
                                        });
                                        AnalyticsManager.get().a(Constants.PURCHASE, "order info", iVar3.b(), 0.0d, "orderid", iVar3.a());
                                    }
                                }
                            }
                        }
                    });
                }
                a(arrayList);
                if (StringUtils.a((CharSequence) this.e)) {
                    b(arrayList);
                }
                synchronized (this.f15055d) {
                    BillingUpdatesListener billingUpdatesListener2 = this.f15054c;
                    if (billingUpdatesListener2 != null) {
                        billingUpdatesListener2.a(arrayList);
                    }
                }
            } else if (i == 1) {
                CLog.a(BillingManager.class, "onPurchasesUpdated() – user cancelled the purchase flow – skipping");
            } else {
                CLog.a(BillingManager.class, "onPurchasesUpdated() got unknown resultCode: ".concat(String.valueOf(i)));
            }
        } else {
            CLog.a(BillingManager.class, "onPurchasesUpdated() got null billingResult");
        }
    }

    public final void a(final String str, final List<String> list, final m mVar) {
        a(new Runnable() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.5
            {
                BillingManager.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                l.a aVar = new l.a(null);
                aVar.f7000b = new ArrayList(list);
                aVar.f6999a = str;
                if (aVar.f6999a == null) {
                    throw new IllegalArgumentException("SKU type must be set");
                } else if (aVar.f7000b != null) {
                    l lVar = new l();
                    lVar.f6997a = aVar.f6999a;
                    lVar.f6998b = aVar.f7000b;
                    BillingManager.this.f15053a.a(lVar, new m() { // from class: com.callapp.contacts.manager.inAppBilling.BillingManager.5.1
                        {
                            AnonymousClass5.this = this;
                        }

                        @Override // com.android.billingclient.api.m
                        public final void b(g gVar, List<k> list2) {
                            mVar.b(gVar, list2);
                        }
                    });
                } else {
                    throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
                }
            }
        });
    }

    public final void b() {
        this.f15053a.b();
        synchronized (this.f15055d) {
            this.f15054c = null;
        }
    }
}
