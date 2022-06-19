package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.MissedCallCardIdsCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIds_.class */
public final class MissedCallCardIds_ implements AbstractC17957c<MissedCallCardIds> {
    public static final C17978g<MissedCallCardIds>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "MissedCallCardIds";
    public static final int __ENTITY_ID = 35;
    public static final String __ENTITY_NAME = "MissedCallCardIds";
    public static final C17978g<MissedCallCardIds> __ID_PROPERTY;
    public static final MissedCallCardIds_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<MissedCallCardIds> f26782id;
    public static final C17978g<MissedCallCardIds> lastMissedCall;
    public static final C17978g<MissedCallCardIds> missedCallType;
    public static final C17978g<MissedCallCardIds> numberOfMissedCalls;
    public static final C17978g<MissedCallCardIds> phoneAsRaw;
    public static final C17978g<MissedCallCardIds> phoneNumber;
    public static final Class<MissedCallCardIds> __ENTITY_CLASS = MissedCallCardIds.class;
    public static final AbstractC17949b<MissedCallCardIds> __CURSOR_FACTORY = new MissedCallCardIdsCursor.Factory();
    static final MissedCallCardIdsIdGetter __ID_GETTER = new MissedCallCardIdsIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/MissedCallCardIds_$MissedCallCardIdsIdGetter.class */
    public static final class MissedCallCardIdsIdGetter implements AbstractC17950c<MissedCallCardIds> {
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
        C17978g<MissedCallCardIds> c17978g = new C17978g<>(missedCallCardIds_, 0, 1, Long.class, "id", true, "id");
        f26782id = c17978g;
        C17978g<MissedCallCardIds> c17978g2 = new C17978g<>(missedCallCardIds_, 1, 3, String.class, "phoneNumber");
        phoneNumber = c17978g2;
        C17978g<MissedCallCardIds> c17978g3 = new C17978g<>(missedCallCardIds_, 2, 6, String.class, "phoneAsRaw");
        phoneAsRaw = c17978g3;
        C17978g<MissedCallCardIds> c17978g4 = new C17978g<>(missedCallCardIds_, 3, 4, Integer.TYPE, "numberOfMissedCalls");
        numberOfMissedCalls = c17978g4;
        C17978g<MissedCallCardIds> c17978g5 = new C17978g<>(missedCallCardIds_, 4, 5, Long.TYPE, "lastMissedCall");
        lastMissedCall = c17978g5;
        C17978g<MissedCallCardIds> c17978g6 = new C17978g<>(missedCallCardIds_, 5, 7, Integer.TYPE, "missedCallType");
        missedCallType = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<MissedCallCardIds>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<MissedCallCardIds> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "MissedCallCardIds";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<MissedCallCardIds> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 35;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "MissedCallCardIds";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<MissedCallCardIds> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<MissedCallCardIds> getIdProperty() {
        return __ID_PROPERTY;
    }
}
