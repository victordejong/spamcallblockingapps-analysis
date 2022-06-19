package com.callapp.contacts.activity.analytics.data;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact;
import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact_;
import com.callapp.framework.phone.Phone;
import io.objectbox.C17944a;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/data/AnalyticsExcludeManager.class */
public class AnalyticsExcludeManager {
    /* renamed from: a */
    public static boolean m31616a(Phone phone) {
        return ((AnalyticsExcludeContact) CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsExcludeContact.class).m4700e().m4611a(AnalyticsExcludeContact_.phoneAsGlobal, phone.m26101a()).m4618a().m4641a()) != null;
    }

    public static void setContactExclude(Phone phone) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsExcludeContact.class);
        AnalyticsExcludeContact analyticsExcludeContact = (AnalyticsExcludeContact) m4727d.m4700e().m4611a(AnalyticsExcludeContact_.phoneAsGlobal, phone.m26101a()).m4618a().m4641a();
        AnalyticsExcludeContact analyticsExcludeContact2 = analyticsExcludeContact;
        if (analyticsExcludeContact == null) {
            analyticsExcludeContact2 = new AnalyticsExcludeContact(phone.m26101a());
        }
        AnalyticsDataManager.m31628a(phone, true);
        m4727d.m4711a((C17944a) analyticsExcludeContact2);
    }

    public static void setContactUnExclude(Phone phone) {
        CallAppApplication.get().getObjectBoxStore().m4727d(AnalyticsExcludeContact.class).m4700e().m4611a(AnalyticsExcludeContact_.phoneAsGlobal, phone.m26101a()).m4618a().m4624f();
        AnalyticsDataManager.m31628a(phone, false);
    }
}
