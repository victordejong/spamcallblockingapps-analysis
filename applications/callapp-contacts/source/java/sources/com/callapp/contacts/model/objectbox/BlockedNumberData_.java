package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.objectbox.BlockedNumberDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberData_.class */
public final class BlockedNumberData_ implements AbstractC17957c<BlockedNumberData> {
    public static final C17978g<BlockedNumberData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BlockedNumberData";
    public static final int __ENTITY_ID = 1;
    public static final String __ENTITY_NAME = "BlockedNumberData";
    public static final C17978g<BlockedNumberData> __ID_PROPERTY;
    public static final BlockedNumberData_ __INSTANCE;
    public static final C17978g<BlockedNumberData> blockCall;
    public static final C17978g<BlockedNumberData> blockSms;
    public static final C17978g<BlockedNumberData> fullName;

    /* renamed from: id */
    public static final C17978g<BlockedNumberData> f26754id;
    public static final C17978g<BlockedNumberData> phoneNum;
    public static final C17978g<BlockedNumberData> when;
    public static final Class<BlockedNumberData> __ENTITY_CLASS = BlockedNumberData.class;
    public static final AbstractC17949b<BlockedNumberData> __CURSOR_FACTORY = new BlockedNumberDataCursor.Factory();
    static final BlockedNumberDataIdGetter __ID_GETTER = new BlockedNumberDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BlockedNumberData_$BlockedNumberDataIdGetter.class */
    public static final class BlockedNumberDataIdGetter implements AbstractC17950c<BlockedNumberData> {
        BlockedNumberDataIdGetter() {
        }

        public final long getId(BlockedNumberData blockedNumberData) {
            return blockedNumberData.getId();
        }
    }

    static {
        BlockedNumberData_ blockedNumberData_ = new BlockedNumberData_();
        __INSTANCE = blockedNumberData_;
        C17978g<BlockedNumberData> c17978g = new C17978g<>(blockedNumberData_, 0, 1, Long.TYPE, "id", true, "id");
        f26754id = c17978g;
        C17978g<BlockedNumberData> c17978g2 = new C17978g<>(blockedNumberData_, 1, 2, String.class, "phoneNum");
        phoneNum = c17978g2;
        C17978g<BlockedNumberData> c17978g3 = new C17978g<>(blockedNumberData_, 2, 3, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = c17978g3;
        C17978g<BlockedNumberData> c17978g4 = new C17978g<>(blockedNumberData_, 3, 4, Boolean.TYPE, "blockSms");
        blockSms = c17978g4;
        C17978g<BlockedNumberData> c17978g5 = new C17978g<>(blockedNumberData_, 4, 5, Boolean.TYPE, "blockCall");
        blockCall = c17978g5;
        C17978g<BlockedNumberData> c17978g6 = new C17978g<>(blockedNumberData_, 5, 6, Long.TYPE, "when");
        when = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<BlockedNumberData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<BlockedNumberData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "BlockedNumberData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<BlockedNumberData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 1;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "BlockedNumberData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<BlockedNumberData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<BlockedNumberData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
