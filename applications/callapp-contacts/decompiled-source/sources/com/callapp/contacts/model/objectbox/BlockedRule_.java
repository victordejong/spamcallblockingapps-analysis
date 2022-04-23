package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.BlockedRuleCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule_.class */
public final class BlockedRule_ implements c<BlockedRule> {
    public static final g<BlockedRule>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BlockedRule";
    public static final int __ENTITY_ID = 2;
    public static final String __ENTITY_NAME = "BlockedRule";
    public static final g<BlockedRule> __ID_PROPERTY;
    public static final BlockedRule_ __INSTANCE;
    public static final g<BlockedRule> blockRuleType;
    public static final g<BlockedRule> id;
    public static final g<BlockedRule> rawNumber;
    public static final Class<BlockedRule> __ENTITY_CLASS = BlockedRule.class;
    public static final b<BlockedRule> __CURSOR_FACTORY = new BlockedRuleCursor.Factory();
    static final BlockedRuleIdGetter __ID_GETTER = new BlockedRuleIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter.class */
    static final class BlockedRuleIdGetter implements io.objectbox.b.c<BlockedRule> {
        BlockedRuleIdGetter() {
        }

        public final long getId(BlockedRule blockedRule) {
            return blockedRule.getId();
        }
    }

    static {
        BlockedRule_ blockedRule_ = new BlockedRule_();
        __INSTANCE = blockedRule_;
        g<BlockedRule> gVar = new g<>(blockedRule_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<BlockedRule> gVar2 = new g<>(blockedRule_, 1, 2, String.class, "rawNumber");
        rawNumber = gVar2;
        g<BlockedRule> gVar3 = new g<>(blockedRule_, 2, 3, Integer.TYPE, "blockRuleType", false, "blockRuleType", BlockedRule.BlockRuleTypeConverter.class, BlockedRule.BlockRuleType.class);
        blockRuleType = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<BlockedRule>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<BlockedRule> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "BlockedRule";
    }

    @Override // io.objectbox.c
    public final Class<BlockedRule> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 2;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "BlockedRule";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<BlockedRule> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<BlockedRule> getIdProperty() {
        return __ID_PROPERTY;
    }
}
