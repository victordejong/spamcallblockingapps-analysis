package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.BlockedRule_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRuleCursor.class */
public final class BlockedRuleCursor extends Cursor<BlockedRule> {
    private final BlockedRule.BlockRuleTypeConverter blockRuleTypeConverter = new BlockedRule.BlockRuleTypeConverter();
    private static final BlockedRule_.BlockedRuleIdGetter ID_GETTER = BlockedRule_.__ID_GETTER;
    private static final int __ID_rawNumber = BlockedRule_.rawNumber.f62808c;
    private static final int __ID_blockRuleType = BlockedRule_.blockRuleType.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRuleCursor$Factory.class */
    static final class Factory implements AbstractC17949b<BlockedRule> {
        @Override // io.objectbox.p502b.AbstractC17949b
        public final Cursor<BlockedRule> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new BlockedRuleCursor(transaction, j, boxStore);
        }
    }

    public BlockedRuleCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, BlockedRule_.__INSTANCE, boxStore);
    }

    public final long getId(BlockedRule blockedRule) {
        return ID_GETTER.getId(blockedRule);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r44v0 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r44v3 */
    public final long put(BlockedRule blockedRule) {
        String rawNumber = blockedRule.getRawNumber();
        int i = rawNumber != null ? __ID_rawNumber : 0;
        BlockedRule.BlockRuleType blockRuleType = blockedRule.getBlockRuleType();
        int i2 = blockRuleType != null ? __ID_blockRuleType : 0;
        long collect313311 = collect313311(this.cursor, blockedRule.getId(), 3, i, rawNumber, 0, null, 0, null, 0, null, i2, (i2 != 0 ? (long) this.blockRuleTypeConverter.convertToDatabaseValue(blockRuleType).intValue() : false) == true ? 1L : 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        blockedRule.setId(collect313311);
        return collect313311;
    }
}
