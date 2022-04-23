package com.callapp.contacts.activity.marketplace.catalog;

import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/JSONStoreCatalog.class */
public class JSONStoreCatalog {
    private List<JSONStoreItemAppAppearance> allItems;
    @JsonProperty("bundlesV3")
    private List<JSONStoreItemBundle> bundlesV3;
    @JsonProperty("inCallThemes")
    private List<JSONStoreCallScreenThemeItem> callScreenThemeItems;
    @JsonIgnore
    private List<JSONStoreCallScreenThemeItem> combinedCallScreenThemeItems;
    @JsonIgnore
    private List<JSONStoreItemCover> combinedCoverItems;
    @JsonIgnore
    private List<JSONStoreItemKeypad> combinedKeypadItems;
    @JsonProperty("covers")
    private List<JSONStoreItemCover> covers;
    @JsonProperty("customizedInCallThemes")
    private List<JSONStoreCallScreenThemeItem> customizedCallScreenThemeItems;
    @JsonProperty("customizedCovers")
    private List<JSONStoreItemCover> customizedCovers;
    @JsonProperty("customizedKeypads")
    private List<JSONStoreItemKeypad> customizedKeypads;
    @JsonProperty("keypads")
    private List<JSONStoreItemKeypad> keypads;
    @JsonProperty("plans")
    private List<JSONStoreItemPremiumAppItem> plans;
    @JsonProperty("premiumItem")
    private JSONStoreItemPremium premiumItem;
    @JsonProperty("storeItemCustomizedBanners")
    private List<JSONStoreItemBanner> storeItemBanners;
    @JsonProperty("superSkins")
    private List<JSONStoreItemSuperSkin> superSkins;
    @JsonProperty("themes")
    private List<JSONStoreItemTheme> themes;
    @JsonProperty("version")
    private int version;

    JSONStoreCatalog() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONStoreCatalog jSONStoreCatalog = (JSONStoreCatalog) obj;
        if (this.version == jSONStoreCatalog.version && Objects.equals(this.customizedCallScreenThemeItems, jSONStoreCatalog.customizedCallScreenThemeItems) && Objects.equals(this.callScreenThemeItems, jSONStoreCatalog.callScreenThemeItems) && Objects.equals(this.superSkins, jSONStoreCatalog.superSkins) && Objects.equals(this.themes, jSONStoreCatalog.themes) && Objects.equals(this.covers, jSONStoreCatalog.covers) && Objects.equals(this.bundlesV3, jSONStoreCatalog.bundlesV3) && Objects.equals(this.customizedKeypads, jSONStoreCatalog.customizedKeypads) && Objects.equals(this.keypads, jSONStoreCatalog.keypads) && Objects.equals(this.storeItemBanners, jSONStoreCatalog.storeItemBanners) && Objects.equals(this.premiumItem, jSONStoreCatalog.premiumItem) && Objects.equals(this.plans, jSONStoreCatalog.plans) && Objects.equals(this.allItems, jSONStoreCatalog.allItems) && Objects.equals(this.combinedCallScreenThemeItems, jSONStoreCatalog.combinedCallScreenThemeItems) && Objects.equals(this.combinedCoverItems, jSONStoreCatalog.combinedCoverItems)) {
            return Objects.equals(this.combinedKeypadItems, jSONStoreCatalog.combinedKeypadItems);
        }
        return false;
    }

    public List<JSONStoreCallScreenThemeItem> getAllCallScreenThemes() {
        if (this.combinedCallScreenThemeItems == null) {
            this.combinedCallScreenThemeItems = new ArrayList();
            if (CollectionUtils.b(this.customizedCallScreenThemeItems)) {
                this.combinedCallScreenThemeItems.addAll(this.customizedCallScreenThemeItems);
            }
            if (CollectionUtils.b(this.callScreenThemeItems)) {
                this.combinedCallScreenThemeItems.addAll(this.callScreenThemeItems);
            }
        }
        return this.combinedCallScreenThemeItems;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONStoreItemBundle getBundleV3(String str) {
        List<JSONStoreItemBundle> list = this.bundlesV3;
        if (list == null) {
            return null;
        }
        for (JSONStoreItemBundle jSONStoreItemBundle : list) {
            if (StringUtils.b((Object) jSONStoreItemBundle.getSku(), (Object) str)) {
                return jSONStoreItemBundle;
            }
        }
        return null;
    }

    public List<JSONStoreItemBundle> getBundlesV3() {
        return this.bundlesV3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONStoreItemCover getCover(String str) {
        List<JSONStoreItemCover> covers = getCovers();
        if (!CollectionUtils.b(covers)) {
            return null;
        }
        for (JSONStoreItemCover jSONStoreItemCover : covers) {
            if (StringUtils.b((Object) jSONStoreItemCover.getSku(), (Object) str)) {
                return jSONStoreItemCover;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<JSONStoreItemCover> getCovers() {
        if (this.combinedCoverItems == null) {
            this.combinedCoverItems = new ArrayList();
            if (CollectionUtils.b(this.customizedCovers)) {
                this.combinedCoverItems.addAll(this.customizedCovers);
            }
            if (CollectionUtils.b(this.covers)) {
                this.combinedCoverItems.addAll(this.covers);
            }
        }
        return this.combinedCoverItems;
    }

    public JSONStoreCallScreenThemeItem getInCallThemeItem(String str) {
        List<JSONStoreCallScreenThemeItem> allCallScreenThemes = getAllCallScreenThemes();
        if (!CollectionUtils.b(allCallScreenThemes)) {
            return null;
        }
        for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : allCallScreenThemes) {
            if (StringUtils.b((Object) str, (Object) jSONStoreCallScreenThemeItem.getSku())) {
                return jSONStoreCallScreenThemeItem;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONStoreItemAppAppearance getJsonStoreItem(final String str) {
        if (CollectionUtils.a(this.allItems)) {
            ArrayList arrayList = new ArrayList();
            this.allItems = arrayList;
            CollectionUtils.a((List) arrayList, (List) getThemes());
            CollectionUtils.a((List) this.allItems, (List) getSuperSkins());
            CollectionUtils.a((List) this.allItems, (List) getAllCallScreenThemes());
            CollectionUtils.a((List) this.allItems, (List) getKeypads());
            CollectionUtils.a((List) this.allItems, (List) getCovers());
        }
        return (JSONStoreItemAppAppearance) CollectionUtils.a(this.allItems, new CollectionUtils.Predicate() { // from class: com.callapp.contacts.activity.marketplace.catalog._$$Lambda$JSONStoreCatalog$OMIMV1VWmzHMINpIyr5MHWxRkV0
            @Override // com.callapp.framework.util.CollectionUtils.Predicate
            public final boolean apply(Object obj) {
                boolean b2;
                b2 = StringUtils.b((Object) str, (Object) ((JSONStoreItemAppAppearance) obj).getSku());
                return b2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONStoreItemKeypad getKeypad(String str) {
        List<JSONStoreItemKeypad> keypads = getKeypads();
        if (!CollectionUtils.b(keypads)) {
            return null;
        }
        for (JSONStoreItemKeypad jSONStoreItemKeypad : keypads) {
            if (StringUtils.b((Object) jSONStoreItemKeypad.getSku(), (Object) str)) {
                return jSONStoreItemKeypad;
            }
        }
        return null;
    }

    public List<JSONStoreItemKeypad> getKeypads() {
        if (this.combinedKeypadItems == null) {
            this.combinedKeypadItems = new ArrayList();
            if (CollectionUtils.b(this.customizedKeypads)) {
                this.combinedKeypadItems.addAll(this.customizedKeypads);
            }
            if (CollectionUtils.b(this.keypads)) {
                this.combinedKeypadItems.addAll(this.keypads);
            }
        }
        return this.combinedKeypadItems;
    }

    public List<JSONStoreItemPremiumAppItem> getPlans() {
        return this.plans;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONStoreItemPremium getPremiumItem() {
        return this.premiumItem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<JSONStoreItemBanner> getStoreItemBanners() {
        return this.storeItemBanners;
    }

    public JSONStoreItemSuperSkin getSuperSkin(String str) {
        List<JSONStoreItemSuperSkin> list = this.superSkins;
        if (list == null) {
            return null;
        }
        for (JSONStoreItemSuperSkin jSONStoreItemSuperSkin : list) {
            if (StringUtils.b((Object) str, (Object) jSONStoreItemSuperSkin.getSku())) {
                return jSONStoreItemSuperSkin;
            }
        }
        return null;
    }

    public List<JSONStoreItemSuperSkin> getSuperSkins() {
        return this.superSkins;
    }

    public JSONStoreItemTheme getTheme(String str) {
        List<JSONStoreItemTheme> list = this.themes;
        if (list == null) {
            return null;
        }
        for (JSONStoreItemTheme jSONStoreItemTheme : list) {
            if (StringUtils.b((Object) jSONStoreItemTheme.getSku(), (Object) str)) {
                return jSONStoreItemTheme;
            }
        }
        return null;
    }

    public List<JSONStoreItemTheme> getThemes() {
        return this.themes;
    }

    public int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int i = this.version;
        List<JSONStoreCallScreenThemeItem> list = this.customizedCallScreenThemeItems;
        int i2 = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<JSONStoreCallScreenThemeItem> list2 = this.callScreenThemeItems;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        List<JSONStoreItemSuperSkin> list3 = this.superSkins;
        int hashCode3 = list3 != null ? list3.hashCode() : 0;
        List<JSONStoreItemTheme> list4 = this.themes;
        int hashCode4 = list4 != null ? list4.hashCode() : 0;
        List<JSONStoreItemCover> list5 = this.covers;
        int hashCode5 = list5 != null ? list5.hashCode() : 0;
        List<JSONStoreItemBundle> list6 = this.bundlesV3;
        int hashCode6 = list6 != null ? list6.hashCode() : 0;
        List<JSONStoreItemKeypad> list7 = this.customizedKeypads;
        int hashCode7 = list7 != null ? list7.hashCode() : 0;
        List<JSONStoreItemKeypad> list8 = this.keypads;
        int hashCode8 = list8 != null ? list8.hashCode() : 0;
        List<JSONStoreItemBanner> list9 = this.storeItemBanners;
        int hashCode9 = list9 != null ? list9.hashCode() : 0;
        JSONStoreItemPremium jSONStoreItemPremium = this.premiumItem;
        int hashCode10 = jSONStoreItemPremium != null ? jSONStoreItemPremium.hashCode() : 0;
        List<JSONStoreItemPremiumAppItem> list10 = this.plans;
        int hashCode11 = list10 != null ? list10.hashCode() : 0;
        List<JSONStoreItemAppAppearance> list11 = this.allItems;
        int hashCode12 = list11 != null ? list11.hashCode() : 0;
        List<JSONStoreCallScreenThemeItem> list12 = this.combinedCallScreenThemeItems;
        int hashCode13 = list12 != null ? list12.hashCode() : 0;
        List<JSONStoreItemKeypad> list13 = this.combinedKeypadItems;
        int hashCode14 = list13 != null ? list13.hashCode() : 0;
        List<JSONStoreItemCover> list14 = this.combinedCoverItems;
        if (list14 != null) {
            i2 = list14.hashCode();
        }
        return (((((((((((((((((((((((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + i2;
    }

    boolean isSubscriptionSkuLoaded() {
        if (!CollectionUtils.b(this.plans)) {
            return false;
        }
        for (int i = 0; i < this.plans.size(); i++) {
            JSONStoreItemPremiumAppItem jSONStoreItemPremiumAppItem = this.plans.get(i);
            if (jSONStoreItemPremiumAppItem.isEnabled() && jSONStoreItemPremiumAppItem.isSubscription()) {
                return StringUtils.b((CharSequence) jSONStoreItemPremiumAppItem.getPriceWithCurrency());
            }
        }
        return false;
    }

    public void setCallScreenThemeItems(List<JSONStoreCallScreenThemeItem> list) {
        this.callScreenThemeItems = list;
    }

    public void setCovers(List<JSONStoreItemCover> list) {
        this.covers = list;
    }

    public void setKeypads(List<JSONStoreItemKeypad> list) {
        this.keypads = list;
    }
}
