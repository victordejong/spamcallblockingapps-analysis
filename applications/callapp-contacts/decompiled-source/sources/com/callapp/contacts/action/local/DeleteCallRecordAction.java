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

    /* renamed from: com.callapp.contacts.action.local.DeleteCallRecordAction$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/DeleteCallRecordAction$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10501a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10501a = iArr;
            try {
                iArr[Action.ContextType.CALL_RECORDER_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        return contactData != null && (baseAdapterItemData instanceof CallRecorder) && AnonymousClass3.f10501a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Delete call record action", Constants.CLICK);
        PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(2131886402), Activities.getString(2131886401), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.action.local.DeleteCallRecordAction.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.action.local.DeleteCallRecordAction.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorder callRecorder = (CallRecorder) baseAdapterItemData;
                        CallRecorderManager.get().a(Collections.singletonList(callRecorder), (ActionDoneListener) null);
                        Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(callRecorder.getPhone(), callRecorder.contactId);
                        if (!(contactDataOnlyIfAlreadyLoaded == null || contactDataOnlyIfAlreadyLoaded.first == null)) {
                            CallRecorderLoader.a((ContactData) contactDataOnlyIfAlreadyLoaded.first);
                        }
                        EventBusManager.f14368a.a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f12938a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
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
