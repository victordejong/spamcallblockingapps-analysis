package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.SingleSmsData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsDataCursor.class */
public final class SingleSmsDataCursor extends Cursor<SingleSmsData> {
    private static final SingleSmsData_.SingleSmsDataIdGetter ID_GETTER = SingleSmsData_.__ID_GETTER;
    private static final int __ID_contactId = SingleSmsData_.contactId.f62808c;
    private static final int __ID_smsText = SingleSmsData_.smsText.f62808c;
    private static final int __ID_phone = SingleSmsData_.phone.f62808c;
    private static final int __ID_fullName = SingleSmsData_.fullName.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<SingleSmsData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<SingleSmsData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new SingleSmsDataCursor(transaction, j, boxStore);
        }
    }

    public SingleSmsDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, SingleSmsData_.__INSTANCE, boxStore);
    }

    public final long getId(SingleSmsData singleSmsData) {
        return ID_GETTER.getId(singleSmsData);
    }

    public final long put(SingleSmsData singleSmsData) {
        String smsText = singleSmsData.getSmsText();
        int i = smsText != null ? __ID_smsText : 0;
        String phone = singleSmsData.getPhone();
        int i2 = phone != null ? __ID_phone : 0;
        String fullName = singleSmsData.getFullName();
        long collect313311 = collect313311(this.cursor, singleSmsData.f26797id, 3, i, smsText, i2, phone, fullName != null ? __ID_fullName : 0, fullName, 0, null, __ID_contactId, singleSmsData.getContactId(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        singleSmsData.f26797id = collect313311;
        return collect313311;
    }
}
