package com.callapp.contacts.activity.marketplace.catalog;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import androidx.core.p036e.C0828b;
import com.android.billingclient.api.AbstractC3350m;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
import com.android.billingclient.api.C3347k;
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
    /* renamed from: a */
    public static JSONStoreItemPremiumAppItem m29944a(List<JSONStoreItemPremiumAppItem> list, boolean z) {
        if (CollectionUtils.m26068b(list)) {
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
        return null;
    }

    /* renamed from: a */
    private static String m29948a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return str;
        }
        int indexOf = str.indexOf(" (");
        String str2 = str;
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
        }
        return str2;
    }

    /* renamed from: a */
    public static <T extends JSONStoreItem> List<T> m29947a(List<T> list) {
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(list)) {
            for (T t : list) {
                if (StringUtils.m26045b((CharSequence) t.getSku()) && t.isEnabled()) {
                    arrayList.add(t);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m29955a() {
        int i;
        if (CallAppRemoteConfigManager.get().m28698c("will_churn")) {
            if (Prefs.f26354cY.get() == null) {
                Prefs.f26354cY.set(new Date());
                AnalyticsManager.get().m28450a(Constants.RETENTION, "got will_churn true");
            }
            if (!Prefs.f26339cJ.get().booleanValue() && CallAppApplication.get().getDaysSinceInstall() > 3 && (i = Calendar.getInstance().get(11)) >= 8 && i < 23 && AnalyticsManager.get().m28443a(Constants.RETENTION, "will_churn popup shown", (String) null, 0L)) {
                PopupManager.get().m28209a(CallAppApplication.get(), new DialogMessageWithTopImage(2131230846, (CharSequence) Activities.getString(2131888242), (CharSequence) HtmlUtils.m27537b(Activities.getString(2131888241)), Activities.getString(2131887338), true, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        AnalyticsManager.get().m28449a(Constants.RETENTION, "will_churn popup clicked", "yes");
                        Activities.m27656b(activity, Activities.m27645c("show_free_gift_dialog"));
                    }
                }, Activities.getString(2131886505), ThemeUtils.m27386a(CallAppApplication.get(), 2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.3
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        AnalyticsManager.get().m28449a(Constants.RETENTION, "will_churn popup clicked", "no");
                    }
                }));
            }
        }
        if (Prefs.f26354cY.get() == null || DateUtils.m27118b(new Date(), Prefs.f26354cY.get()) != 7) {
            return;
        }
        AnalyticsManager.get().m28443a(Constants.RETENTION, "got will_churn true after 7 days", (String) null, 0L);
    }

    /* renamed from: a */
    public static void m29954a(Activity activity, Intent intent, int i, View[] viewArr) {
        ArrayList arrayList = new ArrayList();
        String string = Activities.getString(2131887916);
        String string2 = Activities.getString(2131887917);
        String string3 = Activities.getString(2131887918);
        int min = Math.min(viewArr.length, 3);
        for (int i2 = 0; i2 < min; i2++) {
            View view = viewArr[i2];
            if (view != null) {
                arrayList.add(C0828b.m44412a(view, new String[]{string, string2, string3}[i2]));
            }
        }
        C0828b[] c0828bArr = null;
        if (CollectionUtils.m26068b(arrayList)) {
            C0828b[] c0828bArr2 = new C0828b[arrayList.size()];
            int i3 = 0;
            while (true) {
                c0828bArr = c0828bArr2;
                if (i3 >= arrayList.size()) {
                    break;
                }
                c0828bArr2[i3] = (C0828b) arrayList.get(i3);
                i3++;
            }
        }
        if (i == -1) {
            Activities.m27692a(activity, intent, c0828bArr);
        } else {
            Activities.m27693a(activity, intent, i, c0828bArr);
        }
    }

    /* renamed from: a */
    public static void m29953a(Activity activity, Intent intent, View[] viewArr) {
        m29954a(activity, intent, -1, viewArr);
    }

    /* renamed from: a */
    public static void m29952a(final CatalogManager.StoreItemsListener storeItemsListener) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.catalog._$$Lambda$StoreUtils$s_1AJt5yoBHIbrWHujOkPZtWQEQ
            @Override // java.lang.Runnable
            public final void run() {
                StoreUtils.m29943b(CatalogManager.StoreItemsListener.this);
            }
        });
    }

    /* renamed from: a */
    public static void m29949a(final BillingManager billingManager, final List<C3344i> list, final JSONStoreCatalog jSONStoreCatalog, final List<String> list2, final CatalogManager.StoreItemsListener storeItemsListener) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.1
            @Override // java.lang.Runnable
            public final void run() {
                if (jSONStoreCatalog != null) {
                    billingManager.m28292a("inapp", list2, new AbstractC3350m() { // from class: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.1.1
                        @Override // com.android.billingclient.api.AbstractC3350m
                        /* renamed from: b */
                        public final void mo28284b(C3341g c3341g, List<C3347k> list3) {
                            if (!CollectionUtils.m26068b(list3)) {
                                if (storeItemsListener == null) {
                                    return;
                                }
                                storeItemsListener.onDone(null);
                                return;
                            }
                            HashMap m29942b = StoreUtils.m29942b(list3);
                            for (String str : list2) {
                                JSONStoreItemAppAppearance jsonStoreItem = jSONStoreCatalog.getJsonStoreItem(str);
                                if (jsonStoreItem != null) {
                                    StoreUtils.m29946a(list, m29942b, jsonStoreItem);
                                }
                            }
                            if (storeItemsListener == null) {
                                return;
                            }
                            storeItemsListener.onDone(jSONStoreCatalog);
                        }
                    });
                    return;
                }
                CatalogManager.StoreItemsListener storeItemsListener2 = storeItemsListener;
                if (storeItemsListener2 == null) {
                    return;
                }
                storeItemsListener2.onDone(null);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006d, code lost:
        if (r10 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
        if (r10 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bc, code lost:
        r6.setPurchased(true);
        r6.setNotValidForPromotion(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c6, code lost:
        r6.setPrice(((float) r0.m38182c()) / 1000000.0f);
        r6.setPriceWithCurrency(r0.f12619b.optString("price"));
        r6.setTitle(m29948a(r0.m38180e()));
        r6.setCurrencyCode(r0.m38181d());
        r6.setDescription(r0.m38179f());
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void m29946a(java.util.List r4, java.util.HashMap r5, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem r6) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.marketplace.catalog.StoreUtils.m29946a(java.util.List, java.util.HashMap, com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem):void");
    }

    /* renamed from: a */
    public static <T extends JSONStoreItem> boolean m29951a(T t) {
        return t.getPrice() > BitmapDescriptorFactory.HUE_RED && t.getPromotionPercent() > 0;
    }

    /* renamed from: a */
    public static boolean m29950a(JSONStoreItemTheme jSONStoreItemTheme) {
        return !StringUtils.m26042b(ThemeUtils.getThemeName(), jSONStoreItemTheme.getSku()) && !jSONStoreItemTheme.isPurchased() && jSONStoreItemTheme.getPrice() > BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: a */
    public static boolean m29945a(List<C3344i> list, List<String> list2) {
        if (!CollectionUtils.m26068b(list2) || !CollectionUtils.m26068b(list)) {
            return false;
        }
        for (C3344i c3344i : list) {
            if (list2.contains(c3344i.m38188b())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    static /* synthetic */ HashMap m29942b(List list) {
        HashMap hashMap = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            C3347k c3347k = (C3347k) it2.next();
            hashMap.put(c3347k.m38184a(), c3347k);
        }
        return hashMap;
    }

    /* renamed from: b */
    public static /* synthetic */ void m29943b(CatalogManager.StoreItemsListener storeItemsListener) {
        boolean booleanValue = Prefs.f26475en.get().booleanValue();
        String m28702a = CallAppRemoteConfigManager.get().m28702a(booleanValue ? "StoreCatalogUrlDebug" : "StoreCatalogUrl", booleanValue);
        if (StringUtils.m26045b((CharSequence) m28702a)) {
            try {
                JSONStoreCatalog jSONStoreCatalog = (JSONStoreCatalog) Parser.m26915a(m28702a, JSONStoreCatalog.class);
                if (jSONStoreCatalog != null && storeItemsListener != null) {
                    storeItemsListener.onDone(jSONStoreCatalog);
                    return;
                }
            } catch (Throwable th) {
                CallAppRemoteConfigManager.get().m28701a(true, (Task.DoneListener) null);
            }
        } else {
            CallAppRemoteConfigManager.get().m28701a(true, (Task.DoneListener) null);
        }
        if (storeItemsListener != null) {
            storeItemsListener.onDone(null);
        }
    }

    public static void setCoverUrls(JSONStoreItemCover jSONStoreItemCover) {
        String[] imageUrls = jSONStoreItemCover.getImageUrls();
        if (imageUrls != null) {
            int min = Math.min(imageUrls.length, Prefs.f26402dT.length);
            for (int i = 0; i < min; i++) {
                Prefs.f26402dT[i].set(imageUrls[i]);
            }
        }
        setOverlayChosenCoverUrlsPref(jSONStoreItemCover);
        for (int i2 = 0; i2 < 5; i2++) {
            Prefs.f26391dI[i2].set(null);
            Prefs.f26392dJ[i2].set(null);
        }
        Prefs.f26393dK.set(null);
        Prefs.f26394dL.set(null);
        Prefs.f26395dM.set(null);
        Prefs.f26390dH.set(null);
        Prefs.f26389dG.set(null);
        Prefs.f26408dZ.set(Boolean.FALSE);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f23130a, (EventType<OnUseMarketItemListener, Object>) null, false);
    }

    public static void setOverlayChosenCoverUrlsPref(JSONStoreItemCover jSONStoreItemCover) {
        String[] overlayUrls;
        if (jSONStoreItemCover == null || (overlayUrls = jSONStoreItemCover.getOverlayUrls()) == null) {
            return;
        }
        int min = Math.min(overlayUrls.length, Prefs.f26425dq.length);
        for (int i = 0; i < min; i++) {
            Prefs.f26425dq[i].set(overlayUrls[i]);
        }
    }

    public static void setSuperSkin(JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
        Prefs.f26396dN.set(jSONStoreItemSuperSkin.getSku());
        for (StringPref stringPref : Prefs.f26402dT) {
            stringPref.set(null);
        }
        for (int i = 0; i < Prefs.f26425dq.length; i++) {
            Prefs.f26425dq[i].set(null);
        }
        setCoverUrls(jSONStoreItemSuperSkin);
        int min = Math.min(Prefs.f26391dI.length, jSONStoreItemSuperSkin.getTopBarBackgroundUrls().length);
        for (int i2 = 0; i2 < min; i2++) {
            Prefs.f26391dI[i2].set(jSONStoreItemSuperSkin.getTopBarBackgroundUrls()[i2].getLightBackground());
            Prefs.f26392dJ[i2].set(jSONStoreItemSuperSkin.getTopBarBackgroundUrls()[i2].getDarkBackground());
        }
        Prefs.f26393dK.set(jSONStoreItemSuperSkin.getCardUrl()[0]);
        Prefs.f26394dL.set(jSONStoreItemSuperSkin.getWizardImageUrls()[0]);
        Prefs.f26395dM.set((!CollectionUtils.m26066b(jSONStoreItemSuperSkin.getGifFileUrls()) || !StringUtils.m26037c(jSONStoreItemSuperSkin.getGifFileUrls()[0], ".gif")) ? null : jSONStoreItemSuperSkin.getGifFileUrls()[0]);
        Prefs.f26390dH.set(jSONStoreItemSuperSkin.getListBackgroundUrls()[0].getDarkBackground());
        Prefs.f26389dG.set(jSONStoreItemSuperSkin.getListBackgroundUrls()[0].getLightBackground());
        Prefs.f26408dZ.set(Boolean.TRUE);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnUseMarketItemListener, Object>>) OnUseMarketItemListener.f23130a, (EventType<OnUseMarketItemListener, Object>) null, false);
    }

    public static void setThemeColors(Map<String, String> map) {
        if (CollectionUtils.m26067b(map)) {
            Prefs.f26418dj.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR));
            Prefs.f26419dk.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_LIGHT));
            Prefs.f26420dl.set(map.get(JSONStoreItemTheme.KEY_PRIMARY_COLOR_DARK));
            Prefs.f26421dm.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR));
            Prefs.f26422dn.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_LIGHT));
            Prefs.f26423do.set(map.get(JSONStoreItemTheme.KEY_DARK_PRIMARY_COLOR_DARK));
        }
    }
}
