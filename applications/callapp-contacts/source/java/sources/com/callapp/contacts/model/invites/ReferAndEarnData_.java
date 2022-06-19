package com.callapp.contacts.model.invites;

import com.callapp.contacts.model.invites.ReferAndEarnDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnData_.class */
public final class ReferAndEarnData_ implements AbstractC17957c<ReferAndEarnData> {
    public static final C17978g<ReferAndEarnData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ReferAndEarnData";
    public static final int __ENTITY_ID = 46;
    public static final String __ENTITY_NAME = "ReferAndEarnData";
    public static final C17978g<ReferAndEarnData> __ID_PROPERTY;
    public static final ReferAndEarnData_ __INSTANCE;
    public static final C17978g<ReferAndEarnData> earnedPoints;

    /* renamed from: id */
    public static final C17978g<ReferAndEarnData> f26744id;
    public static final C17990b<ReferAndEarnData, ReferAndEarnUserData> referAndEarnUserDataToMany;
    public static final C17978g<ReferAndEarnData> referId;
    public static final Class<ReferAndEarnData> __ENTITY_CLASS = ReferAndEarnData.class;
    public static final AbstractC17949b<ReferAndEarnData> __CURSOR_FACTORY = new ReferAndEarnDataCursor.Factory();
    static final ReferAndEarnDataIdGetter __ID_GETTER = new ReferAndEarnDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/invites/ReferAndEarnData_$ReferAndEarnDataIdGetter.class */
    public static final class ReferAndEarnDataIdGetter implements AbstractC17950c<ReferAndEarnData> {
        ReferAndEarnDataIdGetter() {
        }

        public final long getId(ReferAndEarnData referAndEarnData) {
            Long l = referAndEarnData.f26743id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ReferAndEarnData_ referAndEarnData_ = new ReferAndEarnData_();
        __INSTANCE = referAndEarnData_;
        C17978g<ReferAndEarnData> c17978g = new C17978g<>(referAndEarnData_, 0, 1, Long.class, "id", true, "id");
        f26744id = c17978g;
        C17978g<ReferAndEarnData> c17978g2 = new C17978g<>(referAndEarnData_, 1, 3, String.class, "referId");
        referId = c17978g2;
        C17978g<ReferAndEarnData> c17978g3 = new C17978g<>(referAndEarnData_, 2, 6, Integer.TYPE, "earnedPoints");
        earnedPoints = c17978g3;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3};
        __ID_PROPERTY = c17978g;
        referAndEarnUserDataToMany = new C17990b<>(referAndEarnData_, ReferAndEarnUserData_.__INSTANCE, new AbstractC17955g<ReferAndEarnData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnData_.1
            public final List<ReferAndEarnUserData> getToMany(ReferAndEarnData referAndEarnData) {
                return referAndEarnData.getReferAndEarnUserDataToMany();
            }
        }, ReferAndEarnUserData_.referAndEarnDataToOneId, new AbstractC17956h<ReferAndEarnUserData>() { // from class: com.callapp.contacts.model.invites.ReferAndEarnData_.2
            public final ToOne<ReferAndEarnData> getToOne(ReferAndEarnUserData referAndEarnUserData) {
                return referAndEarnUserData.referAndEarnDataToOne;
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ReferAndEarnData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ReferAndEarnData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ReferAndEarnData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ReferAndEarnData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 46;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ReferAndEarnData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ReferAndEarnData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ReferAndEarnData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
