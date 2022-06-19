package com.callapp.contacts.action.local;

import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DateRange;
import com.callapp.contacts.util.http.HttpUtils;
import net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ICSEventAction.class */
public class ICSEventAction extends EventAction {
    @Override // com.callapp.contacts.action.local.EventAction
    /* renamed from: a */
    public final boolean mo31824a(Context context, ContactData contactData, String str) {
        DateRange dateRange = getDateRange();
        Intent putExtra = new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_BEGIN_TIME, dateRange.getStartDate()).putExtra(MRAIDNativeFeatureProvider.EXTRA_EVENT_END_TIME, dateRange.getEndDate()).putExtra("title", m31826a(contactData)).putExtra(MRAIDNativeFeatureProvider.EVENT_LOCATION, contactData.getAddress() != null ? contactData.getAddress().getFullAddress() : ContactUtils.m28308b(false).getAddress() != null ? ContactUtils.m28308b(false).getAddress().getFullAddress() : contactData.getPhone() != null ? Activities.m27697a(2131886162, contactData.getPhone().m26087e()) : "").putExtra("android.intent.extra.EMAIL", str).putExtra("availability", 0).putExtra("description", Activities.m27697a(2131887629, Activities.m27697a(2131886719, HttpUtils.getCallAppDomain()))).putExtra("eventTimezone", getDefaultTimezone());
        if (Activities.m27672a(putExtra)) {
            Activities.m27685a(context, putExtra);
            return true;
        } else if (super.mo31824a(context, contactData, str)) {
            return true;
        } else {
            FeedbackManager.get().m28671a(Activities.getString(2131887302));
            return false;
        }
    }
}
