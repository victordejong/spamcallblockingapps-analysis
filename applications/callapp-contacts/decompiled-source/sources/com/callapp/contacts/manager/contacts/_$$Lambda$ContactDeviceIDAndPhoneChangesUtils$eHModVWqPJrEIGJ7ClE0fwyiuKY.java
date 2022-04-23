package com.callapp.contacts.manager.contacts;

import com.callapp.contacts.manager.contacts.-$;
import com.callapp.contacts.model.objectbox.ContactLookupData;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/_$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY.class */
public final /* synthetic */ class _$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY implements Comparator {
    public static final /* synthetic */ -$.Lambda.ContactDeviceIDAndPhoneChangesUtils.eHModVWqPJrEIGJ7ClE0fwyiuKY INSTANCE = new _$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY();

    private /* synthetic */ _$$Lambda$ContactDeviceIDAndPhoneChangesUtils$eHModVWqPJrEIGJ7ClE0fwyiuKY() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int a2;
        a2 = ContactDeviceIDAndPhoneChangesUtils.a((ContactLookupData) obj, (ContactLookupData) obj2);
        return a2;
    }
}
