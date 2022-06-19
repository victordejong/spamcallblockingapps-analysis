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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.action.shared.SharedAction$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/shared/SharedAction$4.class */
    public static /* synthetic */ class C56504 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19409a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19409a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: a */
    protected abstract String mo31799a(OutgoingMessage outgoingMessage);

    /* renamed from: a */
    public final void m31797a(final ContactData contactData, final String str) {
        new SmsUtils.SelectNumberListener() { // from class: com.callapp.contacts.action.shared.SharedAction.1
            @Override // com.callapp.contacts.util.SmsUtils.SelectNumberListener
            /* renamed from: a */
            public final void mo27390a(Phone phone) {
                if (phone.isEmpty()) {
                    FeedbackManager.get().m28671a(Activities.m27697a(2131886158, StringUtils.m26020j(contactData.getNameOrNumber())));
                } else {
                    SharedAction.this.m31796b(new OutgoingMessage().setTo(phone.m26101a()).setType(SharedAction.this.getKey()).setBody(str));
                }
            }
        }.mo27390a(contactData.getPhone());
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contactData == null || contactData.isUnknownNumber()) {
            return false;
        }
        if (C56504.f19409a[contextType.ordinal()] == 1) {
            return true;
        }
        return super.mo31798a(contextType, contactData, baseAdapterItemData);
    }

    /* renamed from: b */
    protected final void m31796b(final OutgoingMessage outgoingMessage) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.action.shared.SharedAction.3
            @Override // java.lang.Runnable
            public void run() {
                SmsUtils.m27392b(CallAppApplication.get(), PhoneManager.get().m28239a(outgoingMessage.getTo()), SharedAction.this.mo31799a(outgoingMessage));
            }
        });
    }

    @Override // com.callapp.contacts.action.Action
    public String getKey() {
        return getClass().getSimpleName();
    }
}
