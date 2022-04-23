package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_.class */
public final class PersonalStoreItemUrlData_ implements c<PersonalStoreItemUrlData> {
    public static final g<PersonalStoreItemUrlData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PersonalStoreItemUrlData";
    public static final int __ENTITY_ID = 38;
    public static final String __ENTITY_NAME = "PersonalStoreItemUrlData";
    public static final g<PersonalStoreItemUrlData> __ID_PROPERTY;
    public static final PersonalStoreItemUrlData_ __INSTANCE;
    public static final g<PersonalStoreItemUrlData> id;
    public static final g<PersonalStoreItemUrlData> isUploaded;
    public static final g<PersonalStoreItemUrlData> personalStoreItemType;
    public static final g<PersonalStoreItemUrlData> personalStoreItemUrl;
    public static final b<PersonalStoreItemUrlData, PersonalStoreItemUserData> personalStoreItemUserData;
    public static final g<PersonalStoreItemUrlData> type;
    public static final Class<PersonalStoreItemUrlData> __ENTITY_CLASS = PersonalStoreItemUrlData.class;
    public static final io.objectbox.b.b<PersonalStoreItemUrlData> __CURSOR_FACTORY = new PersonalStoreItemUrlDataCursor.Factory();
    static final PersonalStoreItemUrlDataIdGetter __ID_GETTER = new PersonalStoreItemUrlDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter.class */
    static final class PersonalStoreItemUrlDataIdGetter implements io.objectbox.b.c<PersonalStoreItemUrlData> {
        PersonalStoreItemUrlDataIdGetter() {
        }

        public final long getId(PersonalStoreItemUrlData personalStoreItemUrlData) {
            return personalStoreItemUrlData.getId();
        }
    }

    static {
        PersonalStoreItemUrlData_ personalStoreItemUrlData_ = new PersonalStoreItemUrlData_();
        __INSTANCE = personalStoreItemUrlData_;
        g<PersonalStoreItemUrlData> gVar = new g<>(personalStoreItemUrlData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<PersonalStoreItemUrlData> gVar2 = new g<>(personalStoreItemUrlData_, 1, 2, String.class, "personalStoreItemUrl");
        personalStoreItemUrl = gVar2;
        g<PersonalStoreItemUrlData> gVar3 = new g<>(personalStoreItemUrlData_, 2, 5, Integer.TYPE, "personalStoreItemType", false, "personalStoreItemType", PersonalStoreItemUrlData.ProductTypeConverter.class, PersonalStoreItemUrlData.PersonalStoreItemType.class);
        personalStoreItemType = gVar3;
        g<PersonalStoreItemUrlData> gVar4 = new g<>(personalStoreItemUrlData_, 3, 3, Integer.TYPE, "type");
        type = gVar4;
        g<PersonalStoreItemUrlData> gVar5 = new g<>(personalStoreItemUrlData_, 4, 4, Boolean.TYPE, "isUploaded");
        isUploaded = gVar5;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
        __ID_PROPERTY = gVar;
        personalStoreItemUserData = new b<>(personalStoreItemUrlData_, PersonalStoreItemUserData_.__INSTANCE, new io.objectbox.b.g<PersonalStoreItemUrlData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_.1
            public final List<PersonalStoreItemUserData> getToMany(PersonalStoreItemUrlData personalStoreItemUrlData) {
                return personalStoreItemUrlData.getPersonalStoreItemUserData();
            }
        }, PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId, new h<PersonalStoreItemUserData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_.2
            public final ToOne<PersonalStoreItemUrlData> getToOne(PersonalStoreItemUserData personalStoreItemUserData2) {
                return personalStoreItemUserData2.personalStoreItemUrlDataToOne;
            }
        });
    }

    @Override // io.objectbox.c
    public final g<PersonalStoreItemUrlData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<PersonalStoreItemUrlData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "PersonalStoreItemUrlData";
    }

    @Override // io.objectbox.c
    public final Class<PersonalStoreItemUrlData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 38;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "PersonalStoreItemUrlData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<PersonalStoreItemUrlData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<PersonalStoreItemUrlData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
