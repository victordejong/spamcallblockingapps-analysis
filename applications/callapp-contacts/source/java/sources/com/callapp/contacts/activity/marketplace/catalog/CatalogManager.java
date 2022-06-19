package com.callapp.contacts.activity.marketplace.catalog;

import com.android.billingclient.api.C3344i;
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

    /* renamed from: a */
    public static final String f23569a = "callapp-store" + File.separator + "covers" + File.separator;

    /* renamed from: b */
    private final Object f23570b = new Object();

    /* renamed from: c */
    private JSONStoreCatalog f23571c;

    /* renamed from: d */
    private long f23572d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes.class */
    public static class CatalogAttributes {

        /* renamed from: a */
        public List<JSONStoreItemPremiumAppItem> f23578a;

        /* renamed from: b */
        private List<JSONStoreItemBanner> f23579b;

        /* renamed from: c */
        private List<JSONStoreItemSuperSkin> f23580c;

        /* renamed from: d */
        private List<JSONStoreItemCover> f23581d;

        /* renamed from: e */
        private List<JSONStoreItemBundle> f23582e;

        /* renamed from: f */
        private List<JSONStoreItemKeypad> f23583f;

        /* renamed from: g */
        private List<JSONStoreItemTheme> f23584g;

        /* renamed from: h */
        private List<JSONStoreCallScreenThemeItem> f23585h;

        /* renamed from: i */
        private JSONStoreItemSuperSkin f23586i;

        /* renamed from: j */
        private JSONStoreCallScreenThemeItem f23587j;

        /* renamed from: k */
        private JSONStoreItemCover f23588k;

        /* renamed from: l */
        private JSONStoreItemTheme f23589l;

        /* renamed from: m */
        private JSONStoreItemKeypad f23590m;

        /* renamed from: n */
        private JSONStoreItemBundle f23591n;

        /* renamed from: o */
        private JSONStoreItemPremium f23592o;

        public List<JSONStoreItemSuperSkin> getAllSuperSkins() {
            return this.f23580c;
        }

        public List<JSONStoreCallScreenThemeItem> getAvailableCallScreenThemes() {
            return StoreUtils.m29947a(this.f23585h);
        }

        public List<JSONStoreItemSuperSkin> getAvailableSuperSkins() {
            return StoreUtils.m29947a(this.f23580c);
        }

        public List<JSONStoreItemBundle> getAvilableBundles() {
            return StoreUtils.m29947a(this.f23582e);
        }

        public List<JSONStoreItemCover> getAvilableCovers() {
            return StoreUtils.m29947a(this.f23581d);
        }

        public List<JSONStoreItemKeypad> getAvilableKeypads() {
            return StoreUtils.m29947a(this.f23583f);
        }

        public List<JSONStoreItemTheme> getAvilableThemes() {
            return StoreUtils.m29947a(this.f23584g);
        }

        public List<JSONStoreItemBanner> getBanners() {
            return this.f23579b;
        }

        public JSONStoreItemBundle getBundle() {
            return this.f23591n;
        }

        public JSONStoreCallScreenThemeItem getCallScreenTheme() {
            return this.f23587j;
        }

        public JSONStoreItemCover getCover() {
            return this.f23588k;
        }

        public List<JSONStoreItemCover> getCovers() {
            return this.f23581d;
        }

        public JSONStoreItemKeypad getKeypad() {
            return this.f23590m;
        }

        public JSONStoreItemSuperSkin getSuperSkin() {
            return this.f23586i;
        }

        public JSONStoreItemTheme getTheme() {
            return this.f23589l;
        }

        public List<JSONStoreItemTheme> getThemes() {
            return this.f23584g;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder.class */
    public class CatalogReqBuilder {

        /* renamed from: a */
        public String f23593a;

        /* renamed from: b */
        public boolean f23594b;

        /* renamed from: d */
        private List<C3344i> f23596d;

        /* renamed from: e */
        private BillingManager f23597e;

        private CatalogReqBuilder(BillingManager billingManager, List<C3344i> list) {
            CatalogManager.this = r4;
            this.f23593a = null;
            this.f23594b = false;
            this.f23597e = billingManager;
            this.f23596d = list;
        }

        /* renamed from: a */
        public final void m29956a(final OnCatalogAttributesLoaded onCatalogAttributesLoaded) {
            CatalogManager.m29981a(CatalogManager.get(), this.f23597e, this.f23596d, this.f23594b, new Task.DoneListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.CatalogReqBuilder.1
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    OnCatalogAttributesLoaded onCatalogAttributesLoaded2 = onCatalogAttributesLoaded;
                    if (onCatalogAttributesLoaded2 != null) {
                        CatalogManager catalogManager = CatalogManager.this;
                        CatalogReqBuilder catalogReqBuilder = CatalogReqBuilder.this;
                        onCatalogAttributesLoaded2.onDone(CatalogManager.m29983a(catalogManager, catalogReqBuilder, CatalogManager.this.f23571c));
                    }
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$DoneWithPayload.class */
    public interface DoneWithPayload<Payload> {
        void onDone(Payload payload);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded.class */
    public interface OnCatalogAttributesLoaded extends DoneWithPayload<CatalogAttributes> {
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/CatalogManager$StoreItemsListener.class */
    public interface StoreItemsListener extends DoneWithPayload<JSONStoreCatalog> {
    }

    /* renamed from: a */
    static /* synthetic */ CatalogAttributes m29983a(CatalogManager catalogManager, CatalogReqBuilder catalogReqBuilder, JSONStoreCatalog jSONStoreCatalog) {
        CatalogAttributes catalogAttributes = new CatalogAttributes();
        if (catalogManager.f23571c != null) {
            catalogAttributes.f23578a = jSONStoreCatalog.getPlans();
            catalogAttributes.f23579b = jSONStoreCatalog.getStoreItemBanners();
            catalogAttributes.f23584g = jSONStoreCatalog.getThemes();
            catalogAttributes.f23580c = jSONStoreCatalog.getSuperSkins();
            catalogAttributes.f23581d = jSONStoreCatalog.getCovers();
            catalogAttributes.f23582e = jSONStoreCatalog.getBundlesV3();
            catalogAttributes.f23583f = jSONStoreCatalog.getKeypads();
            catalogAttributes.f23585h = jSONStoreCatalog.getAllCallScreenThemes();
            catalogAttributes.f23592o = jSONStoreCatalog.getPremiumItem();
            if (StringUtils.m26045b((CharSequence) catalogReqBuilder.f23593a)) {
                catalogAttributes.f23586i = jSONStoreCatalog.getSuperSkin(catalogReqBuilder.f23593a);
                if (catalogAttributes.f23586i == null) {
                    catalogAttributes.f23589l = jSONStoreCatalog.getTheme(catalogReqBuilder.f23593a);
                    if (catalogAttributes.f23589l == null) {
                        catalogAttributes.f23588k = jSONStoreCatalog.getCover(catalogReqBuilder.f23593a);
                        if (catalogAttributes.f23588k == null) {
                            catalogAttributes.f23587j = jSONStoreCatalog.getInCallThemeItem(catalogReqBuilder.f23593a);
                            if (catalogAttributes.f23587j == null) {
                                catalogAttributes.f23590m = jSONStoreCatalog.getKeypad(catalogReqBuilder.f23593a);
                                if (catalogAttributes.f23590m == null) {
                                    catalogAttributes.f23591n = jSONStoreCatalog.getBundleV3(catalogReqBuilder.f23593a);
                                }
                            }
                        }
                    }
                }
            }
        }
        return catalogAttributes;
    }

    /* renamed from: a */
    static /* synthetic */ void m29981a(CatalogManager catalogManager, final BillingManager billingManager, final List list, boolean z, final Task.DoneListener doneListener) {
        boolean z2 = true;
        if (catalogManager.m29978a(z)) {
            synchronized (catalogManager.f23570b) {
                z2 = true;
                if (catalogManager.m29978a(z)) {
                    StoreUtils.m29952a(new StoreItemsListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.1
                        @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                        public /* synthetic */ void onDone(JSONStoreCatalog jSONStoreCatalog) {
                            JSONStoreCatalog jSONStoreCatalog2 = jSONStoreCatalog;
                            if (CatalogManager.this.f23571c != null && jSONStoreCatalog2 != null && CatalogManager.this.f23571c.getVersion() < jSONStoreCatalog2.getVersion()) {
                                CatalogManager.m29980a(jSONStoreCatalog2);
                            }
                            if (jSONStoreCatalog2 == null) {
                                Task.DoneListener doneListener2 = doneListener;
                                if (doneListener2 == null) {
                                    return;
                                }
                                doneListener2.onDone();
                                return;
                            }
                            ArrayList arrayList = new ArrayList();
                            if (CollectionUtils.m26068b(jSONStoreCatalog2.getCovers())) {
                                for (JSONStoreItemCover jSONStoreItemCover : jSONStoreCatalog2.getCovers()) {
                                    arrayList.add(jSONStoreItemCover.getSku());
                                }
                            }
                            if (CollectionUtils.m26068b(jSONStoreCatalog2.getKeypads())) {
                                for (JSONStoreItemKeypad jSONStoreItemKeypad : jSONStoreCatalog2.getKeypads()) {
                                    arrayList.add(jSONStoreItemKeypad.getSku());
                                }
                            }
                            if (CollectionUtils.m26068b(jSONStoreCatalog2.getThemes())) {
                                for (JSONStoreItemTheme jSONStoreItemTheme : jSONStoreCatalog2.getThemes()) {
                                    arrayList.add(jSONStoreItemTheme.getSku());
                                }
                            }
                            if (CollectionUtils.m26068b(jSONStoreCatalog2.getSuperSkins())) {
                                for (JSONStoreItemSuperSkin jSONStoreItemSuperSkin : jSONStoreCatalog2.getSuperSkins()) {
                                    arrayList.add(jSONStoreItemSuperSkin.getSku());
                                }
                            }
                            if (CollectionUtils.m26068b(jSONStoreCatalog2.getAllCallScreenThemes())) {
                                for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : jSONStoreCatalog2.getAllCallScreenThemes()) {
                                    arrayList.add(jSONStoreCallScreenThemeItem.getSku());
                                }
                            }
                            StoreUtils.m29949a(billingManager, list, jSONStoreCatalog2, arrayList, new StoreItemsListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.CatalogManager.1.1
                                @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                                public /* bridge */ /* synthetic */ void onDone(JSONStoreCatalog jSONStoreCatalog3) {
                                    if (doneListener != null) {
                                        doneListener.onDone();
                                    }
                                }
                            });
                            CatalogManager.this.setCatalog(jSONStoreCatalog2);
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

    /* renamed from: a */
    static /* synthetic */ void m29980a(JSONStoreCatalog jSONStoreCatalog) {
        JSONStoreItemCover cover;
        JSONStoreItemTheme theme;
        String str = Prefs.f26416dh.get();
        if (!StringUtils.m26042b(str, "default_1") && (theme = jSONStoreCatalog.getTheme(str)) != null) {
            StoreUtils.setThemeColors(theme.getColorMap());
            ThemeUtils.m27381a(theme, ((ThemeState) Prefs.f26417di.get()).isLightTheme());
        }
        String str2 = Prefs.f26396dN.get();
        if (!StringUtils.m26045b((CharSequence) str2) || (cover = jSONStoreCatalog.getCover(str2)) == null) {
            return;
        }
        StoreUtils.setCoverUrls(cover);
    }

    /* renamed from: a */
    private boolean m29978a(boolean z) {
        return z || this.f23571c == null || isExpired();
    }

    public static CatalogManager get() {
        return Singletons.get().getCatalogManager();
    }

    private boolean isExpired() {
        return this.f23572d < System.currentTimeMillis() - 10800000;
    }

    public void setCatalog(JSONStoreCatalog jSONStoreCatalog) {
        synchronized (this.f23570b) {
            this.f23571c = jSONStoreCatalog;
            this.f23572d = System.currentTimeMillis();
            if (jSONStoreCatalog != null) {
                Prefs.f26414df.set(Integer.valueOf(jSONStoreCatalog.getVersion()));
            }
        }
    }

    /* renamed from: a */
    public final CatalogReqBuilder m29979a(BillingManager billingManager, List<C3344i> list) {
        return new CatalogReqBuilder(billingManager, list);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
