package com.callapp.contacts.activity.marketplace.catalog;

import com.android.billingclient.api.i;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager.class */
public class CatalogManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public static final String f13248a = "callapp-store" + File.separator + "covers" + File.separator;

    /* renamed from: b  reason: collision with root package name */
    private final Object f13249b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private JSONStoreCatalog f13250c;

    /* renamed from: d  reason: collision with root package name */
    private long f13251d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes.class */
    public static class CatalogAttributes {

        /* renamed from: a  reason: collision with root package name */
        public List<JSONStoreItemPremiumAppItem> f13257a;

        /* renamed from: b  reason: collision with root package name */
        private List<JSONStoreItemBanner> f13258b;

        /* renamed from: c  reason: collision with root package name */
        private List<JSONStoreItemSuperSkin> f13259c;

        /* renamed from: d  reason: collision with root package name */
        private List<JSONStoreItemCover> f13260d;
        private List<JSONStoreItemBundle> e;
        private List<JSONStoreItemKeypad> f;
        private List<JSONStoreItemTheme> g;
        private List<JSONStoreCallScreenThemeItem> h;
        private JSONStoreItemSuperSkin i;
        private JSONStoreCallScreenThemeItem j;
        private JSONStoreItemCover k;
        private JSONStoreItemTheme l;
        private JSONStoreItemKeypad m;
        private JSONStoreItemBundle n;
        private JSONStoreItemPremium o;

        public List<JSONStoreItemSuperSkin> getAllSuperSkins() {
            return this.f13259c;
        }

        public List<JSONStoreCallScreenThemeItem> getAvailableCallScreenThemes() {
            return StoreUtils.a(this.h);
        }

        public List<JSONStoreItemSuperSkin> getAvailableSuperSkins() {
            return StoreUtils.a(this.f13259c);
        }

        public List<JSONStoreItemBundle> getAvilableBundles() {
            return StoreUtils.a(this.e);
        }

        public List<JSONStoreItemCover> getAvilableCovers() {
            return StoreUtils.a(this.f13260d);
        }

        public List<JSONStoreItemKeypad> getAvilableKeypads() {
            return StoreUtils.a(this.f);
        }

        public List<JSONStoreItemTheme> getAvilableThemes() {
            return StoreUtils.a(this.g);
        }

        public List<JSONStoreItemBanner> getBanners() {
            return this.f13258b;
        }

        public JSONStoreItemBundle getBundle() {
            return this.n;
        }

        public JSONStoreCallScreenThemeItem getCallScreenTheme() {
            return this.j;
        }

        public JSONStoreItemCover getCover() {
            return this.k;
        }

        public List<JSONStoreItemCover> getCovers() {
            return this.f13260d;
        }

        public JSONStoreItemKeypad getKeypad() {
            return this.m;
        }

        public JSONStoreItemSuperSkin getSuperSkin() {
            return this.i;
        }

        public JSONStoreItemTheme getTheme() {
            return this.l;
        }

        public List<JSONStoreItemTheme> getThemes() {
            return this.g;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder.class */
    public class CatalogReqBuilder {

        /* renamed from: a  reason: collision with root package name */
        public String f13261a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f13262b;

        /* renamed from: d  reason: collision with root package name */
        private List<i> f13264d;
        private BillingManager e;

        private CatalogReqBuilder(BillingManager billingManager, List<i> list) {
            this.f13261a = null;
            this.f13262b = false;
            this.e = billingManager;
            this.f13264d = list;
        }

        public final void a(final OnCatalogAttributesLoaded onCatalogAttributesLoaded) {
            CatalogManager.a(CatalogManager.get(), this.e, this.f13264d, this.f13262b, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.CatalogReqBuilder.1
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    OnCatalogAttributesLoaded onCatalogAttributesLoaded2 = onCatalogAttributesLoaded;
                    if (onCatalogAttributesLoaded2 != null) {
                        CatalogManager catalogManager = CatalogManager.this;
                        CatalogReqBuilder catalogReqBuilder = CatalogReqBuilder.this;
                        onCatalogAttributesLoaded2.onDone(CatalogManager.a(catalogManager, catalogReqBuilder, CatalogManager.this.f13250c));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$DoneWithPayload.class */
    public interface DoneWithPayload<Payload> {
        void onDone(Payload payload);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded.class */
    public interface OnCatalogAttributesLoaded extends DoneWithPayload<CatalogAttributes> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener.class */
    public interface StoreItemsListener extends DoneWithPayload<JSONStoreCatalog> {
    }

    static /* synthetic */ CatalogAttributes a(CatalogManager catalogManager, CatalogReqBuilder catalogReqBuilder, JSONStoreCatalog jSONStoreCatalog) {
        CatalogAttributes catalogAttributes = new CatalogAttributes();
        if (catalogManager.f13250c != null) {
            catalogAttributes.f13257a = jSONStoreCatalog.getPlans();
            catalogAttributes.f13258b = jSONStoreCatalog.getStoreItemBanners();
            catalogAttributes.g = jSONStoreCatalog.getThemes();
            catalogAttributes.f13259c = jSONStoreCatalog.getSuperSkins();
            catalogAttributes.f13260d = jSONStoreCatalog.getCovers();
            catalogAttributes.e = jSONStoreCatalog.getBundlesV3();
            catalogAttributes.f = jSONStoreCatalog.getKeypads();
            catalogAttributes.h = jSONStoreCatalog.getAllCallScreenThemes();
            catalogAttributes.o = jSONStoreCatalog.getPremiumItem();
            if (StringUtils.b((CharSequence) catalogReqBuilder.f13261a)) {
                catalogAttributes.i = jSONStoreCatalog.getSuperSkin(catalogReqBuilder.f13261a);
                if (catalogAttributes.i == null) {
                    catalogAttributes.l = jSONStoreCatalog.getTheme(catalogReqBuilder.f13261a);
                    if (catalogAttributes.l == null) {
                        catalogAttributes.k = jSONStoreCatalog.getCover(catalogReqBuilder.f13261a);
                        if (catalogAttributes.k == null) {
                            catalogAttributes.j = jSONStoreCatalog.getInCallThemeItem(catalogReqBuilder.f13261a);
                            if (catalogAttributes.j == null) {
                                catalogAttributes.m = jSONStoreCatalog.getKeypad(catalogReqBuilder.f13261a);
                                if (catalogAttributes.m == null) {
                                    catalogAttributes.n = jSONStoreCatalog.getBundleV3(catalogReqBuilder.f13261a);
                                }
                            }
                        }
                    }
                }
            }
        }
        return catalogAttributes;
    }

    static /* synthetic */ void a(CatalogManager catalogManager, final BillingManager billingManager, final List list, boolean z, final Task.DoneListener doneListener) {
        boolean z2 = true;
        z2 = true;
        if (catalogManager.a(z)) {
            synchronized (catalogManager.f13249b) {
                if (catalogManager.a(z)) {
                    StoreUtils.a(new StoreItemsListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.1
                        @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                        public /* synthetic */ void onDone(JSONStoreCatalog jSONStoreCatalog) {
                            JSONStoreCatalog jSONStoreCatalog2 = jSONStoreCatalog;
                            if (!(CatalogManager.this.f13250c == null || jSONStoreCatalog2 == null || CatalogManager.this.f13250c.getVersion() >= jSONStoreCatalog2.getVersion())) {
                                CatalogManager.a(jSONStoreCatalog2);
                            }
                            if (jSONStoreCatalog2 != null) {
                                ArrayList arrayList = new ArrayList();
                                if (CollectionUtils.b(jSONStoreCatalog2.getCovers())) {
                                    for (JSONStoreItemCover jSONStoreItemCover : jSONStoreCatalog2.getCovers()) {
                                        arrayList.add(jSONStoreItemCover.getSku());
                                    }
                                }
                                if (CollectionUtils.b(jSONStoreCatalog2.getKeypads())) {
                                    for (JSONStoreItemKeypad jSONStoreItemKeypad : jSONStoreCatalog2.getKeypads()) {
                                        arrayList.add(jSONStoreItemKeypad.getSku());
                                    }
                                }
                                if (CollectionUtils.b(jSONStoreCatalog2.getThemes())) {
                                    for (JSONStoreItemTheme jSONStoreItemTheme : jSONStoreCatalog2.getThemes()) {
                                        arrayList.add(jSONStoreItemTheme.getSku());
                                    }
                                }
                                if (CollectionUtils.b(jSONStoreCatalog2.getSuperSkins())) {
                                    for (JSONStoreItemSuperSkin jSONStoreItemSuperSkin : jSONStoreCatalog2.getSuperSkins()) {
                                        arrayList.add(jSONStoreItemSuperSkin.getSku());
                                    }
                                }
                                if (CollectionUtils.b(jSONStoreCatalog2.getAllCallScreenThemes())) {
                                    for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : jSONStoreCatalog2.getAllCallScreenThemes()) {
                                        arrayList.add(jSONStoreCallScreenThemeItem.getSku());
                                    }
                                }
                                StoreUtils.a(billingManager, list, jSONStoreCatalog2, arrayList, new StoreItemsListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.1.1
                                    @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                                    public /* bridge */ /* synthetic */ void onDone(JSONStoreCatalog jSONStoreCatalog3) {
                                        if (doneListener != null) {
                                            doneListener.onDone();
                                        }
                                    }
                                });
                                CatalogManager.this.setCatalog(jSONStoreCatalog2);
                                return;
                            }
                            Task.DoneListener doneListener2 = doneListener;
                            if (doneListener2 != null) {
                                doneListener2.onDone();
                            }
                        }
                    });
                    z2 = false;
                }
            }
        }
        if (z2) {
            doneListener.onDone();
        }
    }

    static /* synthetic */ void a(JSONStoreCatalog jSONStoreCatalog) {
        JSONStoreItemCover cover;
        JSONStoreItemTheme theme;
        String str = Prefs.dh.get();
        if (!StringUtils.b(str, "default_1") && (theme = jSONStoreCatalog.getTheme(str)) != null) {
            StoreUtils.setThemeColors(theme.getColorMap());
            ThemeUtils.a(theme, ((ThemeState) Prefs.di.get()).isLightTheme());
        }
        String str2 = Prefs.dN.get();
        if (StringUtils.b((CharSequence) str2) && (cover = jSONStoreCatalog.getCover(str2)) != null) {
            StoreUtils.setCoverUrls(cover);
        }
    }

    private boolean a(boolean z) {
        return z || this.f13250c == null || isExpired();
    }

    public static CatalogManager get() {
        return Singletons.get().getCatalogManager();
    }

    private boolean isExpired() {
        return this.f13251d < System.currentTimeMillis() - 10800000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCatalog(JSONStoreCatalog jSONStoreCatalog) {
        synchronized (this.f13249b) {
            this.f13250c = jSONStoreCatalog;
            this.f13251d = System.currentTimeMillis();
            if (jSONStoreCatalog != null) {
                Prefs.df.set(Integer.valueOf(jSONStoreCatalog.getVersion()));
            }
        }
    }

    public final CatalogReqBuilder a(BillingManager billingManager, List<i> list) {
        return new CatalogReqBuilder(billingManager, list);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
