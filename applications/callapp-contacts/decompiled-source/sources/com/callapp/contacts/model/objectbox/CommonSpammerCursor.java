package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CommonSpammer_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammerCursor.class */
public final class CommonSpammerCursor extends Cursor<CommonSpammer> {
    private static final CommonSpammer_.CommonSpammerIdGetter ID_GETTER = CommonSpammer_.__ID_GETTER;
    private static final int __ID_commonSpammerName = CommonSpammer_.commonSpammerName.f36237c;
    private static final int __ID_commonSpammerPhone = CommonSpammer_.commonSpammerPhone.f36237c;
    private static final int __ID_commonSpammerScore = CommonSpammer_.commonSpammerScore.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammerCursor$Factory.class */
    static final class Factory implements b<CommonSpammer> {
        @Override // io.objectbox.b.b
        public final Cursor<CommonSpammer> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new CommonSpammerCursor(transaction, j, boxStore);
        }
    }

    public CommonSpammerCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, CommonSpammer_.__INSTANCE, boxStore);
    }

    public final long getId(CommonSpammer commonSpammer) {
        return ID_GETTER.getId(commonSpammer);
    }

    public final long put(CommonSpammer commonSpammer) {
        Long l = commonSpammer.id;
        String commonSpammerName = commonSpammer.getCommonSpammerName();
        int i = commonSpammerName != null ? __ID_commonSpammerName : 0;
        String commonSpammerPhone = commonSpammer.getCommonSpammerPhone();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, i, commonSpammerName, commonSpammerPhone != null ? __ID_commonSpammerPhone : 0, commonSpammerPhone, 0, null, 0, null, __ID_commonSpammerScore, commonSpammer.getCommonSpammerScore(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        commonSpammer.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
