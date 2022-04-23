package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.MissedCallCardIdsCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIds_.class */
public final class MissedCallCardIds_ implements c<MissedCallCardIds> {
    public static final g<MissedCallCardIds>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "MissedCallCardIds";
    public static final int __ENTITY_ID = 35;
    public static final String __ENTITY_NAME = "MissedCallCardIds";
    public static final g<MissedCallCardIds> __ID_PROPERTY;
    public static final MissedCallCardIds_ __INSTANCE;
    public static final g<MissedCallCardIds> id;
    public static final g<MissedCallCardIds> lastMissedCall;
    public static final g<MissedCallCardIds> missedCallType;
    public static final g<MissedCallCardIds> numberOfMissedCalls;
    public static final g<MissedCallCardIds> phoneAsRaw;
    public static final g<MissedCallCardIds> phoneNumber;
    public static final Class<MissedCallCardIds> __ENTITY_CLASS = MissedCallCardIds.class;
    public static final b<MissedCallCardIds> __CURSOR_FACTORY = new MissedCallCardIdsCursor.Factory();
    static final MissedCallCardIdsIdGetter __ID_GETTER = new MissedCallCardIdsIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter.class */
    static final class MissedCallCardIdsIdGetter implements io.objectbox.b.c<MissedCallCardIds> {
        MissedCallCardIdsIdGetter() {
        }

        public final long getId(MissedCallCardIds missedCallCardIds) {
            Long id = missedCallCardIds.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        MissedCallCardIds_ missedCallCardIds_ = new MissedCallCardIds_();
        __INSTANCE = missedCallCardIds_;
        g<MissedCallCardIds> gVar = new g<>(missedCallCardIds_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<MissedCallCardIds> gVar2 = new g<>(missedCallCardIds_, 1, 3, String.class, "phoneNumber");
        phoneNumber = gVar2;
        g<MissedCallCardIds> gVar3 = new g<>(missedCallCardIds_, 2, 6, String.class, "phoneAsRaw");
        phoneAsRaw = gVar3;
        g<MissedCallCardIds> gVar4 = new g<>(missedCallCardIds_, 3, 4, Integer.TYPE, "numberOfMissedCalls");
        numberOfMissedCalls = gVar4;
        g<MissedCallCardIds> gVar5 = new g<>(missedCallCardIds_, 4, 5, Long.TYPE, "lastMissedCall");
        lastMissedCall = gVar5;
        g<MissedCallCardIds> gVar6 = new g<>(missedCallCardIds_, 5, 7, Integer.TYPE, "missedCallType");
        missedCallType = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<MissedCallCardIds>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<MissedCallCardIds> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "MissedCallCardIds";
    }

    @Override // io.objectbox.c
    public final Class<MissedCallCardIds> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 35;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "MissedCallCardIds";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<MissedCallCardIds> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<MissedCallCardIds> getIdProperty() {
        return __ID_PROPERTY;
    }
}
