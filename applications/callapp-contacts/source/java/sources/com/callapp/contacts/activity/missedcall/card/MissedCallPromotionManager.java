package com.callapp.contacts.activity.missedcall.card;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.calllog.stickyBanner.JSONStickyDataObject;
import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ads.AdUtils;
import java.util.List;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager.class */
public class MissedCallPromotionManager {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType.class */
    public enum MissedCallPromotionType {
        CALL_SCREEN("call_screen"),
        CALL_REMINDER("call_reminder"),
        NOTE("note"),
        CONFIG("config");
        
        private String name;

        MissedCallPromotionType(String str) {
            this.name = str;
        }

        public final String getName() {
            return this.name;
        }
    }

    /* renamed from: a */
    public static MissedCallCardPromotionDataItem m29785a() {
        int nextInt = new Random().nextInt(3);
        return nextInt == 0 ? new MissedCallCardPromotionDataItem(MissedCallPromotionType.CALL_SCREEN.name, Activities.getString(2131887203), Activities.getString(2131887202), 2131231991, null, null, null, null) : nextInt == 1 ? new MissedCallCardPromotionDataItem(MissedCallPromotionType.CALL_REMINDER.name, Activities.getString(2131887201), Activities.getString(2131887200), 2131232013, null, null, null, null) : new MissedCallCardPromotionDataItem(MissedCallPromotionType.NOTE.name, Activities.getString(2131887206), Activities.getString(2131887205), 2131232009, null, null, null, null);
    }

    /* renamed from: a */
    public static void m29784a(List<BaseViewTypeData> list) {
        int nextInt = new Random().nextInt(2);
        List<JsonStickyData> dataFromRemoteConfig = AdUtils.m27285a() ? null : JSONStickyDataObject.getDataFromRemoteConfig("stickyBannerMissedCallConfig");
        if (dataFromRemoteConfig == null || Prefs.f26339cJ.get().booleanValue()) {
            m29783b(list);
        } else {
            JsonStickyData jsonStickyData = dataFromRemoteConfig.get(new Random().nextInt(dataFromRemoteConfig.size()));
            if (!jsonStickyData.getNeedBilling() || BillingManager.isBillingAvailable()) {
                list.add(new MissedCallCardPromotionDataItem(MissedCallPromotionType.CONFIG.name, jsonStickyData.getTitle(), jsonStickyData.getSubTitle(), -1, jsonStickyData.getImg(), jsonStickyData.getAction().getActionText(), jsonStickyData.getAction().getCta(), jsonStickyData.getId()));
            } else {
                m29783b(list);
            }
        }
        if (nextInt == 0) {
            list.add(new MissedCallCardPromotionDataItem(MissedCallPromotionType.NOTE.name, Activities.getString(2131887206), Activities.getString(2131887205), 2131232009, null, null, null, null));
        } else if (nextInt != 1) {
        } else {
            list.add(new MissedCallCardPromotionDataItem(MissedCallPromotionType.CALL_REMINDER.name, Activities.getString(2131887201), Activities.getString(2131887200), 2131232013, null, null, null, null));
        }
    }

    /* renamed from: b */
    private static void m29783b(List<BaseViewTypeData> list) {
        list.add(new MissedCallCardPromotionDataItem(MissedCallPromotionType.CALL_SCREEN.name, Activities.getString(2131887203), Activities.getString(2131887202), 2131231991, null, null, null, null));
    }
}
