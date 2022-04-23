package com.callapp.contacts.activity.marketplace.catalog;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import androidx.core.e.b;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.android.billingclient.api.k;
import com.android.billingclient.api.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.OnUseMarketItemListener;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/catalog/StoreUtils.class */
public class StoreUtils {
    public static JSONStoreItemPremiumAppItem a(List<JSONStoreItemPremiumAppItem> list, boolean z) {
        if (!CollectionUtils.b(list)) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            JSONStoreItemPremiumAppItem jSONStoreItemPremiumAppItem = list.get(i);
            if (jSONStoreItemPremiumAppItem.isEnabled() && jSONStoreItemPremiumAppItem.isSubscription()) {
                int groupDimension = AbTestUtils.getGroupDimension();
                for (int i2 : jSONStoreItemPremiumAppItem.getGroups()) {
                    if (i2 == groupDimension) {
                        return jSONStoreItemPremiumAppItem;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private static String a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return str;
        }
        int indexOf = str.indexOf(" (");
        String str2 = str;
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends JSONStoreItem> List<T> a(List<T> list) {
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(list)) {
            for (T t : list) {
                if (StringUtils.b((CharSequence) t.getSku()) && t.isEnabled()) {
                    arrayList.add(t);
                }
            }
        }
        return arrayList;
    }

    public static void a() {
        int i;
        if (CallAppRemoteConfigManager.get().c("will_churn")) {
            if (Prefs.cY.get() == null) {
                Prefs.cY.set(new Date());
                AnalyticsManager.get().a(Constants.RETENTION, "got will_churn true");
            }
            if (!Prefs.cJ.get().booleanValue() && CallAppApplication.get().getDaysSinceInstall() > 3 && (i = Calendar.getInstance().get(11)) >= 8 && i < 23 && AnalyticsManager.get().a(Constants.RETENTION, "will_churn popup shown", (String) null, 0L)) {
                PopupManager.get().a(CallAppApplication.get(), new DialogMessageWithTopImage(2131230846, (CharSequence) Activities.getString(2131888242), (CharSequence) HtmlUtils.b(Activities.getString(2131888241)), Activities.getString(2131887338), true, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        AnalyticsManager.get().a(Constants.RETENTION, "will_churn popup clicked", "yes");
                        Activities.b(activity, Activities.c("show_free_gift_dialog"));
                    }
                }, Activities.getString(2131886505), ThemeUtils.a(CallAppApplication.get(), 2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.3
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        AnalyticsManager.get().a(Constants.RETENTION, "will_churn popup clicked", "no");
                    }
                }));
            }
        }
        if (Prefs.cY.get() != null && DateUtils.b(new Date(), Prefs.cY.get()) == 7) {
            AnalyticsManager.get().a(Constants.RETENTION, "got will_churn true after 7 days", (String) null, 0L);
        }
    }

    public static void a(Activity activity, Intent intent, int i, View[] viewArr) {
        ArrayList arrayList = new ArrayList();
        String string = Activities.getString(2131887916);
        int i2 = 0;
        String string2 = Activities.getString(2131887917);
        String string3 = Activities.getString(2131887918);
        int min = Math.min(viewArr.length, 3);
        for (int i3 = 0; i3 < min; i3++) {
            View view = viewArr[i3];
            if (view != null) {
                arrayList.add(b.a(view, new String[]{string, string2, string3}[i3]));
            }
        }
        b[] bVarArr = null;
        if (CollectionUtils.b(arrayList)) {
            b[] bVarArr2 = new b[arrayList.size()];
            while (true) {
                bVarArr = bVarArr2;
                if (i2 >= arrayList.size()) {
                    break;
                }
                bVarArr2[i2] = (b) arrayList.get(i2);
                i2++;
            }
        }
        if (i == -1) {
            Activities.a(activity, intent, bVarArr);
        } else {
            Activities.a(activity, intent, i, bVarArr);
        }
    }

    public static void a(Activity activity, Intent intent, View[] viewArr) {
        a(activity, intent, -1, viewArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final CatalogManager.StoreItemsListener storeItemsListener) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.catalog._$$Lambda$StoreUtils$s_1AJt5yoBHIbrWHujOkPZtWQEQ
            @Override // java.lang.Runnable
            public final void run() {
                StoreUtils.b(CatalogManager.StoreItemsListener.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final BillingManager billingManager, final List<i> list, final JSONStoreCatalog jSONStoreCatalog, final List<String> list2, final CatalogManager.StoreItemsListener storeItemsListener) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.1
            @Override // java.lang.Runnable
            public final void run() {
                if (JSONStoreCatalog.this != null) {
                    billingManager.a("inapp", list2, new m() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.1.1
                        @Override // com.android.billingclient.api.m
                        public final void b(g gVar, List<k> list3) {
                            if (CollectionUtils.b(list3)) {
                                HashMap b2 = StoreUtils.b(list3);
                                for (String str : list2) {
                                    JSONStoreItemAppAppearance jsonStoreItem = JSONStoreCatalog.this.getJsonStoreItem(str);
                                    if (jsonStoreItem != null) {
                                        StoreUtils.a(list, b2, jsonStoreItem);
                                    }
                                }
                                if (storeItemsListener != null) {
                                    storeItemsListener.onDone(JSONStoreCatalog.this);
                                }
                            } else if (storeItemsListener != null) {
                                storeItemsListener.onDone(null);
                            }
                        }
                    });
                    return;
                }
                CatalogManager.StoreItemsListener storeItemsListener2 = storeItemsListener;
                if (storeItemsListener2 != null) {
                    storeItemsListener2.onDone(null);
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
        if (r10 == false) goto L_0x0070;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
        if (r10 != false) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bc, code lost:
        r6.setPurchased(true);
        r6.setNotValidForPromotion(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c6, code lost:
        r6.setPrice(((float) r0.c()) / 1000000.0f);
        r6.setPriceWithCurrency(r0.f6996b.optString("price"));
        r6.setTitle(a(r0.e()));
        r6.setCurrencyCode(r0.d());
        r6.setDescription(r0.f());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(java.util.List r4, java.util.HashMap r5, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem r6) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.a(java.util.List, java.util.HashMap, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem):void");
    }

    public static <T extends JSONStoreItem> boolean a(T t) {
        return t.getPrice() > BitmapDescriptorFactory.HUE_RED && t.getPromotionPercent() > 0;
    }

    public static boolean a(JSONStoreItemTheme jSONStoreItemTheme) {
        return !StringUtils.b(ThemeUtils.getThemeName(), jSONStoreItemTheme.getSku()) && !jSONStoreItemTheme.isPurchased() && jSONStoreItemTheme.getPrice() > BitmapDescriptorFactory.HUE_RED;
    }

    public static boolean a(List<i> list, List<String> list2) {
        if (!CollectionUtils.b(list2) || !CollectionUtils.b(list)) {
            return false;
        }
        for (i iVar : list) {
            if (list2.contains(iVar.b())) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ HashMap b(List list) {
        HashMap hashMap = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            k kVar = (k) it2.next();
            hashMap.put(kVar.a(), kVar);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(CatalogManager.StoreItemsListener storeItemsListener) {
        boolean booleanValue = Prefs.en.get().booleanValue();
        String a2 = CallAppRemoteConfigManager.get().a(booleanValue ? "StoreCatalogUrlDebug" : "StoreCatalogUrl", booleanValue);
        if (StringUtils.b((CharSequence) a2)) {
            try {
                JSONStoreCatalog jSONStoreCatalog = (JSONStoreCatalog) Parser.a(a2, JSONStoreCatalog.class);
                if (!(jSONStoreCatalog == null || storeItemsListener == null)) {
                    storeItemsListener.onDone(jSONStoreCatalog);
                    return;
                }
            } catch (Throwable th) {
                CallAppRemoteConfigManager.get().a(true, (Task.DoneListener) null);
            }
        } else {
            CallAppRemoteConfigManager.get().a(true, (Task.DoneListener) null);
        }
        if (storeItemsListener != null) {
            storeItemsListener.onDone(null);
        }
    }

    public static void setCoverUrls(JSONStoreItemCover jSONStoreItemCover) {
        String[] imageUrls = jSONStoreItemCover.getImageUrls();
        if (imageUrls != null) {
            int min = Math.min(imageUrls.length, Prefs.dT.length);
            for (int i = 0; i < min; i++) {
                Prefs.dT[i].set(imageUrls[i]);
            }
        }
        setOverlayChosenCoverUrlsPref(jSONStoreItemCover);
        for (int i2 = 0; i2 < 5; i2++) {
            Prefs.dI[i2].set(null);
            Prefs.dJ[i2].set(null);
        }
        Prefs.dK.set(null);
        Prefs.dL.set(null);
        Prefs.dM.set(null);
        Prefs.dH.set(null);
        Prefs.dG.set(null);
        Prefs.dZ.set(Boolean.FALSE);
        EventBusManager.f14368a.a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f12956a, (EventType<OnUseMarketItemListener, Object>) null, false);
    }

    public static void setOverlayChosenCoverUrlsPref(JSONStoreItemCover jSONStoreItemCover) {
        String[] overlayUrls;
        if (!(jSONStoreItemCover == null || (overlayUrls = jSONStoreItemCover.getOverlayUrls()) == null)) {
            int min = Math.min(overlayUrls.length, Prefs.dq.length);
            for (int i = 0; i < min; i++) {
                Prefs.dq[i].set(overlayUrls[i]);
            }
        }
    }

    public static void setSuperSkin(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
        Prefs.dN.set(jSONStoreItemSuperSkin.getSku());
        for (StringPref stringPref : Prefs.dT) {
            stringPref.set(null);
        }
        for (int i = 0; i < Prefs.dq.length; i++) {
            Prefs.dq[i].set(null);
        }
        setCoverUrls(jSONStoreItemSuperSkin);
        int min = Math.min(Prefs.dI.length, jSONStoreItemSuperSkin.getTopBarBackgroundUrls().length);
        for (int i2 = 0; i2 < min; i2++) {
            Prefs.dI[i2].set(jSONStoreItemSuperSkin.getTopBarBackgroundUrls()[i2].getLightBackground());
            Prefs.dJ[i2].set(jSONStoreItemSuperSkin.getTopBarBackgroundUrls()[i2].getDarkBackground());
        }
        Prefs.dK.set(jSONStoreItemSuperSkin.getCardUrl()[0]);
        Prefs.dL.set(jSONStoreItemSuperSkin.getWizardImageUrls()[0]);
        Prefs.dM.set((!CollectionUtils.b(jSONStoreItemSuperSkin.getGifFileUrls()) || !StringUtils.c(jSONStoreItemSuperSkin.getGifFileUrls()[0], ".gif")) ? null : jSONStoreItemSuperSkin.getGifFileUrls()[0]);
        Prefs.dH.set(jSONStoreItemSuperSkin.getListBackgroundUrls()[0].getDarkBackground());
        Prefs.dG.set(jSONStoreItemSuperSkin.getListBackgroundUrls()[0].getLightBackground());
        Prefs.dZ.set(Boolean.TRUE);
        EventBusManager.f14368a.a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f12956a, (EventType<OnUseMarketItemListener, Object>) null, false);
    }

    public static void setThemeColors(Map<String, String> map) {
        if (CollectionUtils.b(map)) {
            Prefs.dj.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR));
            Prefs.dk.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_LIGHT));
            Prefs.dl.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_DARK));
            Prefs.dm.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR));
            Prefs.dn.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_LIGHT));
            Prefs.f364do.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_DARK));
        }
    }
}
