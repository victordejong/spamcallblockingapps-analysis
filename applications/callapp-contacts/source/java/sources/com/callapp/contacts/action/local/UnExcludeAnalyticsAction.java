package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.analytics.data.AnalyticsExcludeManager;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnExcludeAnalyticsAction.class */
public class UnExcludeAnalyticsAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.UnExcludeAnalyticsAction$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/UnExcludeAnalyticsAction$2.class */
    static /* synthetic */ class C56232 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19332a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19332a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && AnalyticsExcludeManager.m31616a(contactData.getPhone()) && C56232.f19332a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "UnExclude analytics action", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.action.local.UnExcludeAnalyticsAction.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                AnalyticsExcludeManager.setContactUnExclude(contactData.getPhone());
                contactData.updateExcludeAnalytics();
            }
        }.execute();
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
