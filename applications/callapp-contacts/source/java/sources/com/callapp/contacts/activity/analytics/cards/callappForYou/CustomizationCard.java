package com.callapp.contacts.activity.analytics.cards.callappForYou;

import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0790b;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard;
import com.callapp.contacts.activity.contact.cards.MultiCardContainer;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.Promotion;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.mopub.mobileads.InlineVisibilityTracker;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard.class */
public class CustomizationCard extends AnalyticsWrapperCard<CustomizationCardHolder, CallAppForYouCardItemCustomization> {
    private CustomizationCardAdapter adapter;
    private InlineVisibilityTracker customizationVisibilityTracker;
    private PresentersContainer.MODE mode;
    CallAppForYouCardItemCustomization purchasesData;
    private boolean noData = false;
    private int covers = 0;
    private int callScreen = 0;
    private int keypads = 0;
    private int theme = 0;
    private int superSkin = 0;
    private boolean shouldShowAnimation = false;
    private boolean alreadyBounded = false;
    private BillingManager billingManager = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard.1
        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26177a() {
            if (CustomizationCard.this.billingManager != null) {
                CustomizationCard.this.billingManager.m28298a();
            }
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
            BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: a */
        public final void mo26175a(final List<C3344i> list) {
            CatalogManager.get().m29979a(CustomizationCard.this.billingManager, list).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard.1.1
                @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                    CatalogManager.CatalogAttributes catalogAttributes2 = catalogAttributes;
                    Map mapCatalogSkuToType = CustomizationCard.this.mapCatalogSkuToType(catalogAttributes2);
                    String[] strArr = Prefs.f26352cW.get();
                    for (C3344i c3344i : list) {
                        CustomizationCard.this.countData((String) mapCatalogSkuToType.get(c3344i.m38188b()));
                    }
                    if (CollectionUtils.m26066b(strArr)) {
                        for (String str : strArr) {
                            CustomizationCard.this.countData((String) mapCatalogSkuToType.get(str));
                        }
                    }
                    CallAppForYouCardItemCustomization callAppForYouCardItemCustomization = new CallAppForYouCardItemCustomization();
                    int size = CollectionUtils.m26068b(catalogAttributes2.getAvilableCovers()) ? catalogAttributes2.getAvilableCovers().size() : 0;
                    callAppForYouCardItemCustomization.setCover(CustomizationCard.this.covers);
                    callAppForYouCardItemCustomization.setMaxCover(size);
                    callAppForYouCardItemCustomization.setMaxForProgress(size);
                    int size2 = CollectionUtils.m26068b(catalogAttributes2.getAvailableCallScreenThemes()) ? catalogAttributes2.getAvailableCallScreenThemes().size() : 0;
                    callAppForYouCardItemCustomization.setMaxCallScreen(size2);
                    callAppForYouCardItemCustomization.setCallScreen(CustomizationCard.this.callScreen);
                    if (size2 > callAppForYouCardItemCustomization.getMaxForProgress()) {
                        callAppForYouCardItemCustomization.setMaxForProgress(size2);
                    }
                    int size3 = CollectionUtils.m26068b(catalogAttributes2.getAvilableKeypads()) ? catalogAttributes2.getAvilableKeypads().size() : 0;
                    callAppForYouCardItemCustomization.setMaxKeypad(size3);
                    callAppForYouCardItemCustomization.setKeypad(CustomizationCard.this.keypads);
                    if (size3 > callAppForYouCardItemCustomization.getMaxForProgress()) {
                        callAppForYouCardItemCustomization.setMaxForProgress(size3);
                    }
                    int size4 = CollectionUtils.m26068b(catalogAttributes2.getAvilableThemes()) ? catalogAttributes2.getAvilableThemes().size() : 0;
                    callAppForYouCardItemCustomization.setTheme(CustomizationCard.this.theme);
                    callAppForYouCardItemCustomization.setMaxTheme(size4);
                    if (size4 > callAppForYouCardItemCustomization.getMaxForProgress()) {
                        callAppForYouCardItemCustomization.setMaxForProgress(size4);
                    }
                    int i = 0;
                    if (CollectionUtils.m26068b(catalogAttributes2.getAvilableKeypads())) {
                        i = catalogAttributes2.getAvilableKeypads().size();
                    }
                    callAppForYouCardItemCustomization.setSuperSkin(CustomizationCard.this.superSkin);
                    callAppForYouCardItemCustomization.setMaxSuperSkin(i);
                    if (i > callAppForYouCardItemCustomization.getMaxForProgress()) {
                        callAppForYouCardItemCustomization.setMaxForProgress(i);
                    }
                    CustomizationCard.this.updateCardData(callAppForYouCardItemCustomization, true);
                }
            });
        }

        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
        /* renamed from: b */
        public /* synthetic */ void mo26174b(List list) {
            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
        }
    });

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder.class */
    public static class CustomizationCardHolder {

        /* renamed from: a */
        final RecyclerView f19728a;

        /* renamed from: b */
        final TextView f19729b;

        /* renamed from: c */
        final TextView f19730c;

        /* renamed from: d */
        final TextView f19731d;

        /* renamed from: e */
        final RelativeLayout f19732e;

        private CustomizationCardHolder(View view) {
            this.f19732e = (RelativeLayout) view.findViewById(2131362516);
            RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363648);
            this.f19728a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 1, false));
            recyclerView.setNestedScrollingEnabled(false);
            this.f19729b = (TextView) view.findViewById(2131364130);
            this.f19730c = (TextView) view.findViewById(2131364013);
            this.f19731d = (TextView) view.findViewById(2131362510);
        }
    }

    public CustomizationCard(MultiCardContainer multiCardContainer) {
        super(multiCardContainer, 2131558481);
    }

    public void countData(String str) {
        if (str != null) {
            if (str.equals(Promotion.ProductType.SUPER_SKIN.getType())) {
                this.superSkin++;
            } else if (str.equals(Promotion.ProductType.THEME.getType())) {
                this.theme++;
            } else if (str.equals(Promotion.ProductType.COVER.getType())) {
                this.covers++;
            } else if (str.equals(Promotion.ProductType.KEYPAD.getType())) {
                this.keypads++;
            } else if (!str.equals(Promotion.ProductType.CALL_SCREEN.getType())) {
            } else {
                this.callScreen++;
            }
        }
    }

    public void handleGraph(CustomizationCardHolder customizationCardHolder) {
        if (this.shouldShowAnimation) {
            final List<CustomizationCardData> customizationData = getCustomizationData(this.purchasesData);
            if (this.adapter == null) {
                this.adapter = new CustomizationCardAdapter(customizationData);
            } else {
                this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard.4
                    @Override // java.lang.Runnable
                    public void run() {
                        CustomizationCard.this.adapter.setData(customizationData);
                    }
                });
            }
            customizationCardHolder.f19728a.setAdapter(this.adapter);
        }
    }

    public Map<String, String> mapCatalogSkuToType(CatalogManager.CatalogAttributes catalogAttributes) {
        HashMap hashMap = new HashMap();
        for (JSONStoreItemSuperSkin jSONStoreItemSuperSkin : catalogAttributes.getAllSuperSkins()) {
            hashMap.put(jSONStoreItemSuperSkin.getSku(), Promotion.ProductType.SUPER_SKIN.getType());
        }
        for (JSONStoreItemCover jSONStoreItemCover : catalogAttributes.getAvilableCovers()) {
            hashMap.put(jSONStoreItemCover.getSku(), Promotion.ProductType.COVER.getType());
        }
        for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : catalogAttributes.getAvailableCallScreenThemes()) {
            hashMap.put(jSONStoreCallScreenThemeItem.getSku(), Promotion.ProductType.CALL_SCREEN.getType());
        }
        for (JSONStoreItemKeypad jSONStoreItemKeypad : catalogAttributes.getAvilableKeypads()) {
            hashMap.put(jSONStoreItemKeypad.getSku(), Promotion.ProductType.KEYPAD.getType());
        }
        for (JSONStoreItemTheme jSONStoreItemTheme : catalogAttributes.getAvilableThemes()) {
            hashMap.put(jSONStoreItemTheme.getSku(), Promotion.ProductType.THEME.getType());
        }
        return hashMap;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardBgColor() {
        return ThemeUtils.m27386a(CallAppApplication.get(), 2131100145);
    }

    public List<CustomizationCardData> getCustomizationData(CallAppForYouCardItemCustomization callAppForYouCardItemCustomization) {
        ArrayList arrayList = new ArrayList();
        if (callAppForYouCardItemCustomization.getCallScreen() > 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099719), Activities.getString(2131886706), Activities.getString(2131886705), callAppForYouCardItemCustomization.getCallScreen(), callAppForYouCardItemCustomization.getMaxForProgress()));
        }
        if (callAppForYouCardItemCustomization.getSuperSkin() > 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099717), Activities.getString(2131886702), Activities.getString(2131886701), callAppForYouCardItemCustomization.getSuperSkin(), callAppForYouCardItemCustomization.getMaxForProgress()));
        }
        if (callAppForYouCardItemCustomization.getCover() > 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099715), Activities.getString(2131886693), Activities.getString(2131886692), callAppForYouCardItemCustomization.getCover(), callAppForYouCardItemCustomization.getMaxForProgress()));
        }
        if (callAppForYouCardItemCustomization.getTheme() > 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099718), Activities.getString(2131886704), Activities.getString(2131886703), callAppForYouCardItemCustomization.getTheme(), callAppForYouCardItemCustomization.getMaxForProgress()));
        }
        if (callAppForYouCardItemCustomization.getKeypad() > 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099716), Activities.getString(2131886695), Activities.getString(2131886694), callAppForYouCardItemCustomization.getKeypad(), callAppForYouCardItemCustomization.getMaxForProgress()));
        }
        if (arrayList.size() == 0) {
            arrayList.add(new CustomizationCardData(ThemeUtils.getColor(2131099919), Activities.getString(2131886697), Activities.getString(2131886696), 0, 0));
            this.noData = true;
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phone);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 43;
    }

    @Override // com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent
    public void onAnalyticsRefreshCard(PresentersContainer.MODE mode) {
        this.mode = mode;
    }

    public void onBindViewHolder(final CustomizationCardHolder customizationCardHolder) {
        this.alreadyBounded = true;
        customizationCardHolder.f19732e.setBackgroundResource(2131230878);
        int color = ThemeUtils.getColor(2131099818);
        ViewUtils.m27316a(customizationCardHolder.f19732e, Integer.valueOf(color), Integer.valueOf(color));
        customizationCardHolder.f19729b.setText(Activities.getString(2131886691));
        customizationCardHolder.f19730c.setText(Activities.getString(2131886690));
        if (this.noData) {
            customizationCardHolder.f19731d.setText(Activities.getString(2131886688));
        } else {
            customizationCardHolder.f19731d.setText(Activities.getString(2131886689));
        }
        customizationCardHolder.f19731d.setBackgroundResource(2131232136);
        ViewUtils.m27316a(customizationCardHolder.f19731d, Integer.valueOf(ThemeUtils.getColor(2131099817)), Integer.valueOf(ThemeUtils.getColor(2131099817)));
        if (Build.VERSION.SDK_INT >= 23) {
            customizationCardHolder.f19731d.setForeground(C0790b.m44502a(CallAppApplication.get(), 2131230873));
        }
        customizationCardHolder.f19731d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(customizationCardHolder.f19731d, 1);
                AnalyticsManager.get().m28450a(Constants.INSIGHTS, "ClickInsightsCustomizationContinue");
                Activities.m27656b(CustomizationCard.this.presentersContainer.getRealContext(), new Intent(CustomizationCard.this.presentersContainer.getRealContext(), MarketPlaceActivity.class));
            }
        });
        handleGraph(customizationCardHolder);
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public CustomizationCardHolder onCreateViewHolder(ViewGroup viewGroup) {
        final CustomizationCardHolder customizationCardHolder = new CustomizationCardHolder(viewGroup);
        InlineVisibilityTracker inlineVisibilityTracker = new InlineVisibilityTracker(this.presentersContainer.getRealContext(), viewGroup, (RelativeLayout) viewGroup.findViewById(2131362516), 500, 500);
        this.customizationVisibilityTracker = inlineVisibilityTracker;
        inlineVisibilityTracker.setInlineVisibilityTrackerListener(new InlineVisibilityTracker.InlineVisibilityTrackerListener() { // from class: com.callapp.contacts.activity.analytics.cards.callappForYou.CustomizationCard.2
            @Override // com.mopub.mobileads.InlineVisibilityTracker.InlineVisibilityTrackerListener
            public void onVisibilityChanged() {
                CustomizationCard.this.shouldShowAnimation = true;
                if (CustomizationCard.this.alreadyBounded) {
                    CustomizationCard.this.handleGraph(customizationCardHolder);
                }
                if (CustomizationCard.this.customizationVisibilityTracker != null) {
                    CustomizationCard.this.customizationVisibilityTracker.destroy();
                    CustomizationCard.this.customizationVisibilityTracker = null;
                }
            }
        });
        return customizationCardHolder;
    }

    @Override // com.callapp.contacts.activity.analytics.cards.base.AnalyticsWrapperCard, com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        InlineVisibilityTracker inlineVisibilityTracker = this.customizationVisibilityTracker;
        if (inlineVisibilityTracker != null) {
            inlineVisibilityTracker.destroy();
            this.customizationVisibilityTracker = null;
        }
        BillingManager billingManager = this.billingManager;
        if (billingManager != null) {
            billingManager.m28290b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(CallAppForYouCardItemCustomization callAppForYouCardItemCustomization, boolean z) {
        this.purchasesData = callAppForYouCardItemCustomization;
        showCard(true);
    }
}
