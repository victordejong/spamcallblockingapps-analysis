package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.analytics.data.AnalyticsExcludeManager;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ExcludeAnalyticsAction.class */
public class ExcludeAnalyticsAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.ExcludeAnalyticsAction$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/ExcludeAnalyticsAction$3.class */
    static /* synthetic */ class C56043 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19299a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19299a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && !AnalyticsExcludeManager.m31616a(contactData.getPhone()) && C56043.f19299a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, final ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Exclude analytics action", Constants.CLICK);
        PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131886835), Activities.getString(2131886834), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.ExcludeAnalyticsAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                new Task() { // from class: com.callapp.contacts.action.local.ExcludeAnalyticsAction.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        AnalyticsExcludeManager.setContactExclude(contactData.getPhone());
                        contactData.updateExcludeAnalytics();
                    }
                }.execute();
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.ExcludeAnalyticsAction.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
