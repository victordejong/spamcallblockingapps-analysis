package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CommonSpammer_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammerCursor.class */
public final class CommonSpammerCursor extends Cursor<CommonSpammer> {
    private static final CommonSpammer_.CommonSpammerIdGetter ID_GETTER = CommonSpammer_.__ID_GETTER;
    private static final int __ID_commonSpammerName = CommonSpammer_.commonSpammerName.f62808c;
    private static final int __ID_commonSpammerPhone = CommonSpammer_.commonSpammerPhone.f62808c;
    private static final int __ID_commonSpammerScore = CommonSpammer_.commonSpammerScore.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CommonSpammerCursor$Factory.class */
    static final class Factory implements AbstractC17949b<CommonSpammer> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r43v0 */
    /* JADX WARN: Type inference failed for: r43v2 */
    /* JADX WARN: Type inference failed for: r43v3 */
    public final long put(CommonSpammer commonSpammer) {
        Long l = commonSpammer.f26767id;
        String commonSpammerName = commonSpammer.getCommonSpammerName();
        int i = commonSpammerName != null ? __ID_commonSpammerName : 0;
        String commonSpammerPhone = commonSpammer.getCommonSpammerPhone();
        int i2 = commonSpammerPhone != null ? __ID_commonSpammerPhone : 0;
        long collect313311 = collect313311(this.cursor, (l != null ? l.longValue() : false) == true ? 1L : 0L, 3, i, commonSpammerName, i2, commonSpammerPhone, 0, null, 0, null, __ID_commonSpammerScore, commonSpammer.getCommonSpammerScore(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        commonSpammer.f26767id = Long.valueOf(collect313311);
        return collect313311;
    }
}
