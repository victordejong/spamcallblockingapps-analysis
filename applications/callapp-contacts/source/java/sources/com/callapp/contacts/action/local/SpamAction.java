package com.callapp.contacts.action.local;

import android.content.Context;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/SpamAction.class */
public class SpamAction extends SpamOrUnSpamAction {

    /* renamed from: com.callapp.contacts.action.local.SpamAction$2 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/action/local/SpamAction$2.class */
    static /* synthetic */ class C56192 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19327a;

        static {
            int[] iArr = new int[Action.ContextType.values().length];
            f19327a = iArr;
            try {
                iArr[Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: a */
    public final boolean mo31798a(Action.ContextType contextType, ContactData contactData, BaseAdapterItemData baseAdapterItemData) {
        if (contextType != Action.ContextType.CONTACT_DETAILS_ACTION_BOTTOM_SHEET) {
            return false;
        }
        boolean z = false;
        if (contactData != null) {
            z = false;
            if (!contactData.isContactInDevice()) {
                z = false;
                if (!UserCorrectedInfoUtil.m27345a(contactData)) {
                    if (CallLogUtils.m27556b(contactData.getPhone().getRawNumber())) {
                        z = false;
                    } else {
                        z = true;
                        if (C56192.f19327a[contextType.ordinal()] != 1) {
                            return super.mo31798a(contextType, contactData, baseAdapterItemData);
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // com.callapp.contacts.action.Action
    /* renamed from: b */
    public final void mo31800b(final Context context, final ContactData contactData, final BaseAdapterItemData baseAdapterItemData) {
        AnalyticsManager.get().m28449a(Constants.ACTIONS, "Spam action", Constants.CLICK);
        new Task() { // from class: com.callapp.contacts.action.local.SpamAction.1
            /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
            @Override // com.callapp.contacts.manager.task.Task
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void doTask() {
                /*
                    r12 = this;
                    r0 = r12
                    com.callapp.contacts.model.contact.ContactData r0 = r5
                    java.lang.String r0 = r0.getFullName()
                    boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
                    if (r0 == 0) goto L24
                    r0 = r12
                    com.callapp.contacts.activity.base.BaseAdapterItemData r0 = r6
                    r13 = r0
                    r0 = r13
                    boolean r0 = r0 instanceof com.callapp.contacts.activity.base.BaseCallLogData
                    if (r0 == 0) goto L24
                    r0 = r13
                    com.callapp.contacts.activity.base.BaseCallLogData r0 = (com.callapp.contacts.activity.base.BaseCallLogData) r0
                    java.lang.String r0 = r0.displayName
                    r13 = r0
                    goto L27
                L24:
                    java.lang.String r0 = ""
                    r13 = r0
                L27:
                    r0 = r13
                    r14 = r0
                    r0 = r13
                    boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
                    if (r0 == 0) goto L3b
                    r0 = r12
                    com.callapp.contacts.model.contact.ContactData r0 = r5
                    java.lang.String r0 = r0.getNameOrNumber()
                    java.lang.String r0 = com.callapp.framework.util.StringUtils.m26020j(r0)
                    r14 = r0
                L3b:
                    r0 = r12
                    com.callapp.contacts.model.contact.ContactData r0 = r5
                    com.callapp.framework.phone.Phone r0 = r0.getPhone()
                    r13 = r0
                    java.lang.String r0 = "Contact Details"
                    java.lang.String r1 = "Spam action - User corrected a contact info data"
                    r2 = r12
                    android.content.Context r2 = r7
                    r3 = r14
                    r4 = 1
                    r5 = 1
                    r6 = r12
                    com.callapp.contacts.model.contact.ContactData r6 = r5
                    r7 = r13
                    com.callapp.contacts.action.local.SpamAction$1$1 r8 = new com.callapp.contacts.action.local.SpamAction$1$1
                    r9 = r8
                    r10 = r12
                    r9.<init>()
                    com.callapp.contacts.util.UserCorrectedInfoUtil.m27340a(r0, r1, r2, r3, r4, r5, r6, r7, r8)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.action.local.SpamAction.C56171.doTask():void");
            }
        }.execute();
    }
}
