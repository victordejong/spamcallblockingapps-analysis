package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnUserData;
import com.callapp.contacts.model.invites.ReferAndEarnUserDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData_.class */
public final class ReferAndEarnUserData_ implements c<ReferAndEarnUserData> {
    public static final g<ReferAndEarnUserData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ReferAndEarnUserData";
    public static final int __ENTITY_ID = 47;
    public static final String __ENTITY_NAME = "ReferAndEarnUserData";
    public static final g<ReferAndEarnUserData> __ID_PROPERTY;
    public static final ReferAndEarnUserData_ __INSTANCE;
    public static final g<ReferAndEarnUserData> date;
    public static final g<ReferAndEarnUserData> globalPhoneNumber;
    public static final g<ReferAndEarnUserData> id;
    public static final g<ReferAndEarnUserData> nameOrNumber;
    public static final b<ReferAndEarnUserData, ReferAndEarnData> referAndEarnDataToOne;
    public static final g<ReferAndEarnUserData> referAndEarnDataToOneId;
    public static final g<ReferAndEarnUserData> status;
    public static final Class<ReferAndEarnUserData> __ENTITY_CLASS = ReferAndEarnUserData.class;
    public static final io.objectbox.b.b<ReferAndEarnUserData> __CURSOR_FACTORY = new ReferAndEarnUserDataCursor.Factory();
    static final ReferAndEarnUserDataIdGetter __ID_GETTER = new ReferAndEarnUserDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnUserData_$ReferAndEarnUserDataIdGetter.class */
    static final class ReferAndEarnUserDataIdGetter implements io.objectbox.b.c<ReferAndEarnUserData> {
        ReferAndEarnUserDataIdGetter() {
        }

        public final long getId(ReferAndEarnUserData referAndEarnUserData) {
            Long l = referAndEarnUserData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ReferAndEarnUserData_ referAndEarnUserData_ = new ReferAndEarnUserData_();
        __INSTANCE = referAndEarnUserData_;
        g<ReferAndEarnUserData> gVar = new g<>(referAndEarnUserData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<ReferAndEarnUserData> gVar2 = new g<>(referAndEarnUserData_, 1, 6, String.class, "globalPhoneNumber");
        globalPhoneNumber = gVar2;
        g<ReferAndEarnUserData> gVar3 = new g<>(referAndEarnUserData_, 2, 7, String.class, "nameOrNumber");
        nameOrNumber = gVar3;
        g<ReferAndEarnUserData> gVar4 = new g<>(referAndEarnUserData_, 3, 8, Long.TYPE, "date");
        date = gVar4;
        g<ReferAndEarnUserData> gVar5 = new g<>(referAndEarnUserData_, 4, 3, Integer.TYPE, "status", false, "status", ReferAndEarnUserData.ReferAndEarnStatusConverter.class, ReferAndEarnUserData.STATUS.class);
        status = gVar5;
        g<ReferAndEarnUserData> gVar6 = new g<>(referAndEarnUserData_, 5, 4, Long.TYPE, "referAndEarnDataToOneId", true);
        referAndEarnDataToOneId = gVar6;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        __ID_PROPERTY = gVar;
        referAndEarnDataToOne = new b<>(referAndEarnUserData_, ReferAndEarnData_.__INSTANCE, gVar6, new h<ReferAndEarnUserData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnUserData_.1
            public final ToOne<ReferAndEarnData> getToOne(ReferAndEarnUserData referAndEarnUserData) {
                return referAndEarnUserData.referAndEarnDataToOne;
            }
        });
    }

    @Override // io.objectbox.c
    public final g<ReferAndEarnUserData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<ReferAndEarnUserData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ReferAndEarnUserData";
    }

    @Override // io.objectbox.c
    public final Class<ReferAndEarnUserData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 47;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ReferAndEarnUserData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ReferAndEarnUserData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ReferAndEarnUserData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
