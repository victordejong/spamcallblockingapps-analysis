package com.callapp.contacts.action.local;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallRecordAction.class */
public class DeleteCallRecordAction extends LocalAction {

    /* renamed from: com.callapp.contacts.action.local.DeleteCallRecordAction$3 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallRecordAction$3.class */
    static /* synthetic */ class C55893 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19269a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19269a = iArr;
            try {
                iArr[Action.ContextType.CALL_RECORDER_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && (baseAdapterItemData instanceof CallRecorder) && C55893.f19269a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(Context context, ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Delete call record action", Constants.CLICK);
        PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131886402), Activities.getString(2131886401), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteCallRecordAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.action.local.DeleteCallRecordAction.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorder callRecorder = (CallRecorder) baseAdapterItemData;
                        CallRecorderManager.get().m27870a(Collections.singletonList(callRecorder), (ActionDoneListener) null);
                        Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(callRecorder.getPhone(), callRecorder.contactId);
                        if (contactDataOnlyIfAlreadyLoaded != null && contactDataOnlyIfAlreadyLoaded.first != null) {
                            CallRecorderLoader.m27830a((ContactData) contactDataOnlyIfAlreadyLoaded.first);
                        }
                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f23111a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
                    }
                });
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteCallRecordAction.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }, null));
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return "";
    }
}
