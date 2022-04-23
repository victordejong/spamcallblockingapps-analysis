package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.util.Activities;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction.class */
public class AddRemoveCallRecorderFavoritesAction extends LocalAction {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10474a;

    /* renamed from: com.callapp.contacts.action.local.AddRemoveCallRecorderFavoritesAction$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10475a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10475a = iArr;
            try {
                iArr[Action.ContextType.CALL_RECORDER_ITEM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public AddRemoveCallRecorderFavoritesAction(boolean z) {
        this.f10474a = z;
    }

    @Override // com.callapp.contacts.action.Action
    public final boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || !(baseAdapterItemData instanceof CallRecorder)) {
            return false;
        }
        boolean starred = ((CallRecorder) baseAdapterItemData).getStarred();
        if (this.f10474a) {
            if (starred) {
                return false;
            }
        } else if (!starred) {
            return false;
        }
        return AnonymousClass1.f10475a[contextType.ordinal()] == 1;
    }

    @Override // com.callapp.contacts.action.Action
    public final void b(Context context, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().a(Constants.ACTIONS, "Add or remove CallRecorder favorite action", Constants.CLICK);
        CallRecorderManager.get().a((CallRecorder) baseAdapterItemData, contactData);
    }

    @Override // com.callapp.contacts.action.Action
    public final String getDescriptionMessage$469752d4() {
        return Activities.getString(this.f10474a ? 2131886398 : 2131886424);
    }

    @Override // com.callapp.contacts.action.local.LocalAction, com.callapp.contacts.action.Action
    public String getKey() {
        return getClass().getSimpleName() + this.f10474a;
    }
}
