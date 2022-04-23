package com.callapp.contacts.model.objectbox;

import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import io.objectbox.converter.PropertyConverter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule.class */
public class BlockedRule {
    private static final int CONTAINS = 1;
    private static final int ENDS_WITH = 2;
    private static final int STARTS_WITH = 0;
    private BlockRuleType blockRuleType;
    private long id;
    private String number = null;
    private String rawNumber;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType.class */
    public enum BlockRuleType {
        startsWith(0, Activities.getString(2131886351)),
        contains(1, Activities.getString(2131886349)),
        endsWith(2, Activities.getString(2131886350));
        
        public final String text;
        public final int type;

        BlockRuleType(int i, String str) {
            this.type = i;
            this.text = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.text;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter.class */
    static class BlockRuleTypeConverter implements PropertyConverter<BlockRuleType, Integer> {
        public Integer convertToDatabaseValue(BlockRuleType blockRuleType) {
            if (blockRuleType == null) {
                return null;
            }
            return Integer.valueOf(blockRuleType.type);
        }

        public BlockRuleType convertToEntityProperty(Integer num) {
            BlockRuleType[] values;
            if (num == null) {
                return null;
            }
            for (BlockRuleType blockRuleType : BlockRuleType.values()) {
                if (blockRuleType.type == num.intValue()) {
                    return blockRuleType;
                }
            }
            return BlockRuleType.startsWith;
        }
    }

    public BlockedRule() {
    }

    public BlockedRule(long j, String str, BlockRuleType blockRuleType) {
        this.id = j;
        this.rawNumber = str;
        this.blockRuleType = blockRuleType;
    }

    public BlockedRule(String str, BlockRuleType blockRuleType) {
        this.rawNumber = str;
        this.blockRuleType = blockRuleType;
    }

    public BlockRuleType getBlockRuleType() {
        return this.blockRuleType;
    }

    public long getId() {
        return this.id;
    }

    public String getRawNumber() {
        return this.rawNumber;
    }

    public String getTitle() {
        return this.blockRuleType.text;
    }

    public boolean isBlocked(Phone phone) {
        if (this.number == null) {
            this.number = RegexUtils.g(this.rawNumber);
        }
        int i = this.blockRuleType.type;
        if (i != 0) {
            if (i == 1) {
                return phone.getRawNumber().contains(this.number);
            }
            if (i != 2) {
                return false;
            }
            return phone.getRawNumber().endsWith(this.number);
        } else if (StringUtils.e(phone.getRawNumber(), this.number)) {
            return true;
        } else {
            String h = RegexUtils.h(phone.getRawNumber());
            String h2 = RegexUtils.h(this.number);
            if (!h.startsWith(h2)) {
                return StringUtils.e(h2, "0") && String.valueOf(phone.getNationalNumber()).startsWith(StringUtils.h(h2, "0"));
            }
            return true;
        }
    }

    public void setId(long j) {
        this.id = j;
    }

    public String toString() {
        return "BlockedRule{number='" + this.number + "', id=" + this.id + ", rawNumber='" + this.rawNumber + "', blockRuleType=" + this.blockRuleType + '}';
    }
}
