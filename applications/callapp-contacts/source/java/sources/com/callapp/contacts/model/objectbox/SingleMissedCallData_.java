package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleMissedCallDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallData_.class */
public final class SingleMissedCallData_ implements AbstractC17957c<SingleMissedCallData> {
    public static final C17978g<SingleMissedCallData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SingleMissedCallData";
    public static final int __ENTITY_ID = 42;
    public static final String __ENTITY_NAME = "SingleMissedCallData";
    public static final C17978g<SingleMissedCallData> __ID_PROPERTY;
    public static final SingleMissedCallData_ __INSTANCE;
    public static final C17978g<SingleMissedCallData> contactId;

    /* renamed from: id */
    public static final C17978g<SingleMissedCallData> f26796id;
    public static final C17978g<SingleMissedCallData> missedCallTime;
    public static final C17978g<SingleMissedCallData> missedCallType;
    public static final C17978g<SingleMissedCallData> numberOfMissedCalls;
    public static final C17978g<SingleMissedCallData> phoneAsRaw;
    public static final Class<SingleMissedCallData> __ENTITY_CLASS = SingleMissedCallData.class;
    public static final AbstractC17949b<SingleMissedCallData> __CURSOR_FACTORY = new SingleMissedCallDataCursor.Factory();
    static final SingleMissedCallDataIdGetter __ID_GETTER = new SingleMissedCallDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleMissedCallData_$SingleMissedCallDataIdGetter.class */
    public static final class SingleMissedCallDataIdGetter implements AbstractC17950c<SingleMissedCallData> {
        SingleMissedCallDataIdGetter() {
        }

        public final long getId(SingleMissedCallData singleMissedCallData) {
            Long l = singleMissedCallData.f26795id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        SingleMissedCallData_ singleMissedCallData_ = new SingleMissedCallData_();
        __INSTANCE = singleMissedCallData_;
        C17978g<SingleMissedCallData> c17978g = new C17978g<>(singleMissedCallData_, 0, 1, Long.class, "id", true, "id");
        f26796id = c17978g;
        C17978g<SingleMissedCallData> c17978g2 = new C17978g<>(singleMissedCallData_, 1, 2, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = c17978g2;
        C17978g<SingleMissedCallData> c17978g3 = new C17978g<>(singleMissedCallData_, 2, 7, String.class, "phoneAsRaw");
        phoneAsRaw = c17978g3;
        C17978g<SingleMissedCallData> c17978g4 = new C17978g<>(singleMissedCallData_, 3, 4, Long.TYPE, "missedCallTime");
        missedCallTime = c17978g4;
        C17978g<SingleMissedCallData> c17978g5 = new C17978g<>(singleMissedCallData_, 4, 5, Integer.TYPE, "numberOfMissedCalls");
        numberOfMissedCalls = c17978g5;
        C17978g<SingleMissedCallData> c17978g6 = new C17978g<>(singleMissedCallData_, 5, 6, Integer.TYPE, "missedCallType");
        missedCallType = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SingleMissedCallData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SingleMissedCallData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SingleMissedCallData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SingleMissedCallData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 42;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SingleMissedCallData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SingleMissedCallData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SingleMissedCallData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
