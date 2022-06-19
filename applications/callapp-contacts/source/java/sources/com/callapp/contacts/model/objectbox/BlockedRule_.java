package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.BlockedRuleCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule_.class */
public final class BlockedRule_ implements AbstractC17957c<BlockedRule> {
    public static final C17978g<BlockedRule>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BlockedRule";
    public static final int __ENTITY_ID = 2;
    public static final String __ENTITY_NAME = "BlockedRule";
    public static final C17978g<BlockedRule> __ID_PROPERTY;
    public static final BlockedRule_ __INSTANCE;
    public static final C17978g<BlockedRule> blockRuleType;

    /* renamed from: id */
    public static final C17978g<BlockedRule> f26756id;
    public static final C17978g<BlockedRule> rawNumber;
    public static final Class<BlockedRule> __ENTITY_CLASS = BlockedRule.class;
    public static final AbstractC17949b<BlockedRule> __CURSOR_FACTORY = new BlockedRuleCursor.Factory();
    static final BlockedRuleIdGetter __ID_GETTER = new BlockedRuleIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter.class */
    public static final class BlockedRuleIdGetter implements AbstractC17950c<BlockedRule> {
        BlockedRuleIdGetter() {
        }

        public final long getId(BlockedRule blockedRule) {
            return blockedRule.getId();
        }
    }

    static {
        BlockedRule_ blockedRule_ = new BlockedRule_();
        __INSTANCE = blockedRule_;
        C17978g<BlockedRule> c17978g = new C17978g<>(blockedRule_, 0, 1, Long.TYPE, "id", true, "id");
        f26756id = c17978g;
        C17978g<BlockedRule> c17978g2 = new C17978g<>(blockedRule_, 1, 2, String.class, "rawNumber");
        rawNumber = c17978g2;
        C17978g<BlockedRule> c17978g3 = new C17978g<>(blockedRule_, 2, 3, Integer.TYPE, "blockRuleType", false, "blockRuleType", BlockedRule.BlockRuleTypeConverter.class, BlockedRule.BlockRuleType.class);
        blockRuleType = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<BlockedRule>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<BlockedRule> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "BlockedRule";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<BlockedRule> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 2;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "BlockedRule";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<BlockedRule> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<BlockedRule> getIdProperty() {
        return __ID_PROPERTY;
    }
}
