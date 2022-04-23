package com.callapp.contacts.observers;

import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.observers.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/_$$Lambda$ContactUtilsContactsContentObserver$m_8L_ssfj3RqLMIii4TsRCOLmhs.class */
public final /* synthetic */ class _$$Lambda$ContactUtilsContactsContentObserver$m_8L_ssfj3RqLMIii4TsRCOLmhs implements RowCallback {
    public static final /* synthetic */ -$.Lambda.ContactUtilsContactsContentObserver.m-8L-ssfj3RqLMIii4TsRCOLmhs INSTANCE = new _$$Lambda$ContactUtilsContactsContentObserver$m_8L_ssfj3RqLMIii4TsRCOLmhs();

    private /* synthetic */ _$$Lambda$ContactUtilsContactsContentObserver$m_8L_ssfj3RqLMIii4TsRCOLmhs() {
    }

    @Override // com.callapp.contacts.framework.dao.RowCallback
    public final Object onRow(RowContext rowContext) {
        Long b2;
        b2 = ContactUtilsContactsContentObserver.b(rowContext);
        return b2;
    }
}
