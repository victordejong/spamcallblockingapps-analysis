package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.model.invites.ReferAndEarnUserDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData_.class */
public final class ReferAndEarnUserData_ implements AbstractC17957c<ReferAndEarnUserData> {
    public static final C17978g<ReferAndEarnUserData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ReferAndEarnUserData";
    public static final int __ENTITY_ID = 47;
    public static final String __ENTITY_NAME = "ReferAndEarnUserData";
    public static final C17978g<ReferAndEarnUserData> __ID_PROPERTY;
    public static final ReferAndEarnUserData_ __INSTANCE;
    public static final C17978g<ReferAndEarnUserData> date;
    public static final C17978g<ReferAndEarnUserData> globalPhoneNumber;

    /* renamed from: id */
    public static final C17978g<ReferAndEarnUserData> f26746id;
    public static final C17978g<ReferAndEarnUserData> nameOrNumber;
    public static final C17990b<ReferAndEarnUserData, ReferAndEarnData> referAndEarnDataToOne;
    public static final C17978g<ReferAndEarnUserData> referAndEarnDataToOneId;
    public static final C17978g<ReferAndEarnUserData> status;
    public static final Class<ReferAndEarnUserData> __ENTITY_CLASS = ReferAndEarnUserData.class;
    public static final AbstractC17949b<ReferAndEarnUserData> __CURSOR_FACTORY = new ReferAndEarnUserDataCursor.Factory();
    static final ReferAndEarnUserDataIdGetter __ID_GETTER = new ReferAndEarnUserDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter.class */
    public static final class ReferAndEarnUserDataIdGetter implements AbstractC17950c<ReferAndEarnUserData> {
        ReferAndEarnUserDataIdGetter() {
        }

        public final long getId(ReferAndEarnUserData referAndEarnUserData) {
            Long l = referAndEarnUserData.f26745id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ReferAndEarnUserData_ referAndEarnUserData_ = new ReferAndEarnUserData_();
        __INSTANCE = referAndEarnUserData_;
        C17978g<ReferAndEarnUserData> c17978g = new C17978g<>(referAndEarnUserData_, 0, 1, Long.class, "id", true, "id");
        f26746id = c17978g;
        C17978g<ReferAndEarnUserData> c17978g2 = new C17978g<>(referAndEarnUserData_, 1, 6, String.class, "globalPhoneNumber");
        globalPhoneNumber = c17978g2;
        C17978g<ReferAndEarnUserData> c17978g3 = new C17978g<>(referAndEarnUserData_, 2, 7, String.class, "nameOrNumber");
        nameOrNumber = c17978g3;
        C17978g<ReferAndEarnUserData> c17978g4 = new C17978g<>(referAndEarnUserData_, 3, 8, Long.TYPE, "date");
        date = c17978g4;
        C17978g<ReferAndEarnUserData> c17978g5 = new C17978g<>(referAndEarnUserData_, 4, 3, Integer.TYPE, "status", false, "status", ReferAndEarnUserData.ReferAndEarnStatusConverter.class, ReferAndEarnUserData.STATUS.class);
        status = c17978g5;
        C17978g<ReferAndEarnUserData> c17978g6 = new C17978g<>(referAndEarnUserData_, 5, 4, Long.TYPE, "referAndEarnDataToOneId", true);
        referAndEarnDataToOneId = c17978g6;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6};
        __ID_PROPERTY = c17978g;
        referAndEarnDataToOne = new C17990b<>(referAndEarnUserData_, ReferAndEarnData_.__INSTANCE, c17978g6, new AbstractC17956h<ReferAndEarnUserData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnUserData_.1
            public final ToOne<ReferAndEarnData> getToOne(ReferAndEarnUserData referAndEarnUserData) {
                return referAndEarnUserData.referAndEarnDataToOne;
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ReferAndEarnUserData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ReferAndEarnUserData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ReferAndEarnUserData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ReferAndEarnUserData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 47;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ReferAndEarnUserData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ReferAndEarnUserData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ReferAndEarnUserData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
