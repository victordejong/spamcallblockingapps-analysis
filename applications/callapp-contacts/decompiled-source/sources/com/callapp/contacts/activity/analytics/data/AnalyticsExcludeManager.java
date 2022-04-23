package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact;
import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact_;
import com.callapp.framework.phone.Phone;
import io.objectbox.a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager.class */
public class AnalyticsExcludeManager {
    public static boolean a(Phone phone) {
        return ((AnalyticsExcludeContact) CallAppApplication.get().getObjectBoxStore().d(AnalyticsExcludeContact.class).e().a(AnalyticsExcludeContact_.phoneAsGlobal, phone.a()).a().a()) != null;
    }

    public static void setContactExclude(Phone phone) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(AnalyticsExcludeContact.class);
        AnalyticsExcludeContact analyticsExcludeContact = (AnalyticsExcludeContact) d2.e().a(AnalyticsExcludeContact_.phoneAsGlobal, phone.a()).a().a();
        AnalyticsExcludeContact analyticsExcludeContact2 = analyticsExcludeContact;
        if (analyticsExcludeContact == null) {
            analyticsExcludeContact2 = new AnalyticsExcludeContact(phone.a());
        }
        AnalyticsDataManager.a(phone, true);
        d2.a((a) analyticsExcludeContact2);
    }

    public static void setContactUnExclude(Phone phone) {
        CallAppApplication.get().getObjectBoxStore().d(AnalyticsExcludeContact.class).e().a(AnalyticsExcludeContact_.phoneAsGlobal, phone.a()).a().f();
        AnalyticsDataManager.a(phone, false);
    }
}
