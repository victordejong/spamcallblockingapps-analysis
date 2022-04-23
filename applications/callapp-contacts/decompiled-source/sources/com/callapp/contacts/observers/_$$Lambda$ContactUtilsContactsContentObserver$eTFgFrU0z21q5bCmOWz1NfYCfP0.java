package com.callapp.contacts.observers;

import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.observers.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/_$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0.class */
public final /* synthetic */ class _$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0 implements RowCallback {
    public static final /* synthetic */ -$.Lambda.ContactUtilsContactsContentObserver.eTFgFrU0z21q5bCmOWz1NfYCfP0 INSTANCE = new _$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0();

    private /* synthetic */ _$$Lambda$ContactUtilsContactsContentObserver$eTFgFrU0z21q5bCmOWz1NfYCfP0() {
    }

    @Override // com.callapp.contacts.framework.dao.RowCallback
    public final Object onRow(RowContext rowContext) {
        Long a2;
        a2 = ContactUtilsContactsContentObserver.a(rowContext);
        return a2;
    }
}
