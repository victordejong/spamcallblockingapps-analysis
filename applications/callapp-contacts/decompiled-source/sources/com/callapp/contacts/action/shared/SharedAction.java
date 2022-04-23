package com.callapp.contacts.action.shared;

import com.callapp.common.model.message.OutgoingMessage;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/SharedAction.class */
public abstract class SharedAction extends Action {

    /* renamed from: com.callapp.contacts.action.shared.SharedAction$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/SharedAction$4.class */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10636a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f10636a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    protected abstract String a(OutgoingMessage outgoingMessage);

    public final void a(final ContactData contactData, final String str) {
        new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.SharedAction.1
            @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
            public final void a(Phone phone) {
                if (phone.isEmpty()) {
                    FeedbackManager.get().a(Activities.a(2131886158, StringUtils.j(contactData.getNameOrNumber())));
                } else {
                    SharedAction.this.b(new OutgoingMessage().setTo(phone.a()).setType(SharedAction.this.getKey()).setBody(str));
                }
            }
        }.a(contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    public boolean a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || contactData.isUnknownNumber()) {
            return false;
        }
        if (AnonymousClass4.f10636a[contextType.ordinal()] != 1) {
            return super.a(contextType, contactData, baseAdapterItemData);
        }
        return true;
    }

    protected final void b(final OutgoingMessage outgoingMessage) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.action.shared.SharedAction.3
            @Override // java.lang.Runnable
            public void run() {
                SmsUtils.b(CallAppApplication.get(), PhoneManager.get().a(outgoingMessage.getTo()), SharedAction.this.a(outgoingMessage));
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public String getKey() {
        return getClass().getSimpleName();
    }
}
