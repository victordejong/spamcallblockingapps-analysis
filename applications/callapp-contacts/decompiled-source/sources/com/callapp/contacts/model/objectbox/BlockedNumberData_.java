package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.objectbox.BlockedNumberDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberData_.class */
public final class BlockedNumberData_ implements c<BlockedNumberData> {
    public static final g<BlockedNumberData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BlockedNumberData";
    public static final int __ENTITY_ID = 1;
    public static final String __ENTITY_NAME = "BlockedNumberData";
    public static final g<BlockedNumberData> __ID_PROPERTY;
    public static final BlockedNumberData_ __INSTANCE;
    public static final g<BlockedNumberData> blockCall;
    public static final g<BlockedNumberData> blockSms;
    public static final g<BlockedNumberData> fullName;
    public static final g<BlockedNumberData> id;
    public static final g<BlockedNumberData> phoneNum;
    public static final g<BlockedNumberData> when;
    public static final Class<BlockedNumberData> __ENTITY_CLASS = BlockedNumberData.class;
    public static final b<BlockedNumberData> __CURSOR_FACTORY = new BlockedNumberDataCursor.Factory();
    static final BlockedNumberDataIdGetter __ID_GETTER = new BlockedNumberDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter.class */
    static final class BlockedNumberDataIdGetter implements io.objectbox.b.c<BlockedNumberData> {
        BlockedNumberDataIdGetter() {
        }

        public final long getId(BlockedNumberData blockedNumberData) {
            return blockedNumberData.getId();
        }
    }

    static {
        BlockedNumberData_ blockedNumberData_ = new BlockedNumberData_();
        __INSTANCE = blockedNumberData_;
        g<BlockedNumberData> gVar = new g<>(blockedNumberData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<BlockedNumberData> gVar2 = new g<>(blockedNumberData_, 1, 2, String.class, "phoneNum");
        phoneNum = gVar2;
        g<BlockedNumberData> gVar3 = new g<>(blockedNumberData_, 2, 3, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = gVar3;
        g<BlockedNumberData> gVar4 = new g<>(blockedNumberData_, 3, 4, Boolean.TYPE, "blockSms");
        blockSms = gVar4;
        g<BlockedNumberData> gVar5 = new g<>(blockedNumberData_, 4, 5, Boolean.TYPE, "blockCall");
        blockCall = gVar5;
        g<BlockedNumberData> gVar6 = new g<>(blockedNumberData_, 5, 6, Long.TYPE, "when");
        when = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<BlockedNumberData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<BlockedNumberData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "BlockedNumberData";
    }

    @Override // io.objectbox.c
    public final Class<BlockedNumberData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 1;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "BlockedNumberData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<BlockedNumberData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<BlockedNumberData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
