package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserData_.class */
public final class PersonalStoreItemUserData_ implements c<PersonalStoreItemUserData> {
    public static final g<PersonalStoreItemUserData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PersonalStoreItemUserData";
    public static final int __ENTITY_ID = 41;
    public static final String __ENTITY_NAME = "PersonalStoreItemUserData";
    public static final g<PersonalStoreItemUserData> __ID_PROPERTY;
    public static final PersonalStoreItemUserData_ __INSTANCE;
    public static final g<PersonalStoreItemUserData> id;
    public static final g<PersonalStoreItemUserData> personalStoreItemType;
    public static final b<PersonalStoreItemUserData, PersonalStoreItemUrlData> personalStoreItemUrlDataToOne;
    public static final g<PersonalStoreItemUserData> personalStoreItemUrlDataToOneId;
    public static final g<PersonalStoreItemUserData> phoneOrIdKey;
    public static final Class<PersonalStoreItemUserData> __ENTITY_CLASS = PersonalStoreItemUserData.class;
    public static final io.objectbox.b.b<PersonalStoreItemUserData> __CURSOR_FACTORY = new PersonalStoreItemUserDataCursor.Factory();
    static final PersonalStoreItemUserDataIdGetter __ID_GETTER = new PersonalStoreItemUserDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter.class */
    public static final class PersonalStoreItemUserDataIdGetter implements io.objectbox.b.c<PersonalStoreItemUserData> {
        PersonalStoreItemUserDataIdGetter() {
        }

        public final long getId(PersonalStoreItemUserData personalStoreItemUserData) {
            Long l = personalStoreItemUserData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        PersonalStoreItemUserData_ personalStoreItemUserData_ = new PersonalStoreItemUserData_();
        __INSTANCE = personalStoreItemUserData_;
        g<PersonalStoreItemUserData> gVar = new g<>(personalStoreItemUserData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<PersonalStoreItemUserData> gVar2 = new g<>(personalStoreItemUserData_, 1, 4, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<PersonalStoreItemUserData> gVar3 = new g<>(personalStoreItemUserData_, 2, 5, Integer.TYPE, "personalStoreItemType", false, "personalStoreItemType", PersonalStoreItemUrlData.ProductTypeConverter.class, PersonalStoreItemUrlData.PersonalStoreItemType.class);
        personalStoreItemType = gVar3;
        g<PersonalStoreItemUserData> gVar4 = new g<>(personalStoreItemUserData_, 3, 3, Long.TYPE, "personalStoreItemUrlDataToOneId", true);
        personalStoreItemUrlDataToOneId = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
        personalStoreItemUrlDataToOne = new b<>(personalStoreItemUserData_, PersonalStoreItemUrlData_.__INSTANCE, gVar4, new h<PersonalStoreItemUserData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_.1
            public final ToOne<PersonalStoreItemUrlData> getToOne(PersonalStoreItemUserData personalStoreItemUserData) {
                return personalStoreItemUserData.personalStoreItemUrlDataToOne;
            }
        });
    }

    @Override // io.objectbox.c
    public final g<PersonalStoreItemUserData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<PersonalStoreItemUserData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "PersonalStoreItemUserData";
    }

    @Override // io.objectbox.c
    public final Class<PersonalStoreItemUserData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 41;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "PersonalStoreItemUserData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<PersonalStoreItemUserData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<PersonalStoreItemUserData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
