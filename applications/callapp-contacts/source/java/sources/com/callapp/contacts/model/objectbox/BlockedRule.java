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

    /* renamed from: id */
    private long f26755id;
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
        this.f26755id = j;
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
        return this.f26755id;
    }

    public String getRawNumber() {
        return this.rawNumber;
    }

    public String getTitle() {
        return this.blockRuleType.text;
    }

    public boolean isBlocked(Phone phone) {
        if (this.number == null) {
            this.number = RegexUtils.m31897g(this.rawNumber);
        }
        int i = this.blockRuleType.type;
        if (i != 0) {
            if (i == 1) {
                return phone.getRawNumber().contains(this.number);
            }
            if (i == 2) {
                return phone.getRawNumber().endsWith(this.number);
            }
            return false;
        } else if (StringUtils.m26030e(phone.getRawNumber(), this.number)) {
            return true;
        } else {
            String m31895h = RegexUtils.m31895h(phone.getRawNumber());
            String m31895h2 = RegexUtils.m31895h(this.number);
            if (m31895h.startsWith(m31895h2)) {
                return true;
            }
            return StringUtils.m26030e(m31895h2, "0") && String.valueOf(phone.getNationalNumber()).startsWith(StringUtils.m26023h(m31895h2, "0"));
        }
    }

    public void setId(long j) {
        this.f26755id = j;
    }

    public String toString() {
        return "BlockedRule{number='" + this.number + "', id=" + this.f26755id + ", rawNumber='" + this.rawNumber + "', blockRuleType=" + this.blockRuleType + '}';
    }
}
