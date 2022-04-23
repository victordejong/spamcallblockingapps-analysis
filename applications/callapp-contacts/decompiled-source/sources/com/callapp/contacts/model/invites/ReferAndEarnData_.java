package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnData_.class */
public final class ReferAndEarnData_ implements c<ReferAndEarnData> {
    public static final g<ReferAndEarnData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ReferAndEarnData";
    public static final int __ENTITY_ID = 46;
    public static final String __ENTITY_NAME = "ReferAndEarnData";
    public static final g<ReferAndEarnData> __ID_PROPERTY;
    public static final ReferAndEarnData_ __INSTANCE;
    public static final g<ReferAndEarnData> earnedPoints;
    public static final g<ReferAndEarnData> id;
    public static final b<ReferAndEarnData, ReferAndEarnUserData> referAndEarnUserDataToMany;
    public static final g<ReferAndEarnData> referId;
    public static final Class<ReferAndEarnData> __ENTITY_CLASS = ReferAndEarnData.class;
    public static final io.objectbox.b.b<ReferAndEarnData> __CURSOR_FACTORY = new ReferAndEarnDataCursor.Factory();
    static final ReferAndEarnDataIdGetter __ID_GETTER = new ReferAndEarnDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter.class */
    public static final class ReferAndEarnDataIdGetter implements io.objectbox.b.c<ReferAndEarnData> {
        ReferAndEarnDataIdGetter() {
        }

        public final long getId(ReferAndEarnData referAndEarnData) {
            Long l = referAndEarnData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ReferAndEarnData_ referAndEarnData_ = new ReferAndEarnData_();
        __INSTANCE = referAndEarnData_;
        g<ReferAndEarnData> gVar = new g<>(referAndEarnData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<ReferAndEarnData> gVar2 = new g<>(referAndEarnData_, 1, 3, String.class, "referId");
        referId = gVar2;
        g<ReferAndEarnData> gVar3 = new g<>(referAndEarnData_, 2, 6, Integer.TYPE, "earnedPoints");
        earnedPoints = gVar3;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3};
        __ID_PROPERTY = gVar;
        referAndEarnUserDataToMany = new b<>(referAndEarnData_, ReferAndEarnUserData_.__INSTANCE, new io.objectbox.b.g<ReferAndEarnData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnData_.1
            public final List<ReferAndEarnUserData> getToMany(ReferAndEarnData referAndEarnData) {
                return referAndEarnData.getReferAndEarnUserDataToMany();
            }
        }, ReferAndEarnUserData_.referAndEarnDataToOneId, new h<ReferAndEarnUserData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnData_.2
            public final ToOne<ReferAndEarnData> getToOne(ReferAndEarnUserData referAndEarnUserData) {
                return referAndEarnUserData.referAndEarnDataToOne;
            }
        });
    }

    @Override // io.objectbox.c
    public final g<ReferAndEarnData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<ReferAndEarnData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ReferAndEarnData";
    }

    @Override // io.objectbox.c
    public final Class<ReferAndEarnData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 46;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ReferAndEarnData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ReferAndEarnData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ReferAndEarnData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
