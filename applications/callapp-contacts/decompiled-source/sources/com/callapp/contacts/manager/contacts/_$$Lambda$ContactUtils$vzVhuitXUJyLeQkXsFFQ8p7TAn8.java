package com.callapp.contacts.manager.contacts;

import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.manager.contacts.-$;
import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/_$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8.class */
public final /* synthetic */ class _$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8 implements RowCallback {
    public static final /* synthetic */ -$.Lambda.ContactUtils.vzVhuitXUJyLeQkXsFFQ8p7TAn8 INSTANCE = new _$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8();

    private /* synthetic */ _$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8() {
    }

    @Override // com.callapp.contacts.framework.dao.RowCallback
    public final Object onRow(RowContext rowContext) {
        Phone a2;
        a2 = ContactUtils.a(rowContext);
        return a2;
    }
}
