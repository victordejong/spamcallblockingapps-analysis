package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BlockedNumberData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberDataCursor.class */
public final class BlockedNumberDataCursor extends Cursor<BlockedNumberData> {
    private static final BlockedNumberData_.BlockedNumberDataIdGetter ID_GETTER = BlockedNumberData_.__ID_GETTER;
    private static final int __ID_phoneNum = BlockedNumberData_.phoneNum.f62808c;
    private static final int __ID_fullName = BlockedNumberData_.fullName.f62808c;
    private static final int __ID_blockSms = BlockedNumberData_.blockSms.f62808c;
    private static final int __ID_blockCall = BlockedNumberData_.blockCall.f62808c;
    private static final int __ID_when = BlockedNumberData_.when.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<BlockedNumberData> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<BlockedNumberData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new BlockedNumberDataCursor(transaction, j, boxStore);
        }
    }

    public BlockedNumberDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, BlockedNumberData_.__INSTANCE, boxStore);
    }

    public final long getId(BlockedNumberData blockedNumberData) {
        return ID_GETTER.getId(blockedNumberData);
    }

    public final long put(BlockedNumberData blockedNumberData) {
        String phoneNum = blockedNumberData.getPhoneNum();
        int i = phoneNum != null ? __ID_phoneNum : 0;
        String fullName = blockedNumberData.getFullName();
        int i2 = fullName != null ? __ID_fullName : 0;
        long collect313311 = collect313311(this.cursor, blockedNumberData.getId(), 3, i, phoneNum, i2, fullName, 0, null, 0, null, __ID_when, blockedNumberData.when, __ID_blockSms, (blockedNumberData.isBlockSms() ? 1 : null) == 1 ? 1L : 0L, __ID_blockCall, (blockedNumberData.isBlockCall() ? 1 : null) == 1 ? 1L : 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        blockedNumberData.setId(collect313311);
        return collect313311;
    }
}
