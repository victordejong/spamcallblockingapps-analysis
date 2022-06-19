package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUserDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserData_.class */
public final class PersonalStoreItemUserData_ implements AbstractC17957c<PersonalStoreItemUserData> {
    public static final C17978g<PersonalStoreItemUserData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PersonalStoreItemUserData";
    public static final int __ENTITY_ID = 41;
    public static final String __ENTITY_NAME = "PersonalStoreItemUserData";
    public static final C17978g<PersonalStoreItemUserData> __ID_PROPERTY;
    public static final PersonalStoreItemUserData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<PersonalStoreItemUserData> f26788id;
    public static final C17978g<PersonalStoreItemUserData> personalStoreItemType;
    public static final C17990b<PersonalStoreItemUserData, PersonalStoreItemUrlData> personalStoreItemUrlDataToOne;
    public static final C17978g<PersonalStoreItemUserData> personalStoreItemUrlDataToOneId;
    public static final C17978g<PersonalStoreItemUserData> phoneOrIdKey;
    public static final Class<PersonalStoreItemUserData> __ENTITY_CLASS = PersonalStoreItemUserData.class;
    public static final AbstractC17949b<PersonalStoreItemUserData> __CURSOR_FACTORY = new PersonalStoreItemUserDataCursor.Factory();
    static final PersonalStoreItemUserDataIdGetter __ID_GETTER = new PersonalStoreItemUserDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUserData_$PersonalStoreItemUserDataIdGetter.class */
    public static final class PersonalStoreItemUserDataIdGetter implements AbstractC17950c<PersonalStoreItemUserData> {
        PersonalStoreItemUserDataIdGetter() {
        }

        public final long getId(PersonalStoreItemUserData personalStoreItemUserData) {
            Long l = personalStoreItemUserData.f26787id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        PersonalStoreItemUserData_ personalStoreItemUserData_ = new PersonalStoreItemUserData_();
        __INSTANCE = personalStoreItemUserData_;
        C17978g<PersonalStoreItemUserData> c17978g = new C17978g<>(personalStoreItemUserData_, 0, 1, Long.class, "id", true, "id");
        f26788id = c17978g;
        C17978g<PersonalStoreItemUserData> c17978g2 = new C17978g<>(personalStoreItemUserData_, 1, 4, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<PersonalStoreItemUserData> c17978g3 = new C17978g<>(personalStoreItemUserData_, 2, 5, Integer.TYPE, "personalStoreItemType", false, "personalStoreItemType", PersonalStoreItemUrlData.ProductTypeConverter.class, PersonalStoreItemUrlData.PersonalStoreItemType.class);
        personalStoreItemType = c17978g3;
        C17978g<PersonalStoreItemUserData> c17978g4 = new C17978g<>(personalStoreItemUserData_, 3, 3, Long.TYPE, "personalStoreItemUrlDataToOneId", true);
        personalStoreItemUrlDataToOneId = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
        personalStoreItemUrlDataToOne = new C17990b<>(personalStoreItemUserData_, PersonalStoreItemUrlData_.__INSTANCE, c17978g4, new AbstractC17956h<PersonalStoreItemUserData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUserData_.1
            public final ToOne<PersonalStoreItemUrlData> getToOne(PersonalStoreItemUserData personalStoreItemUserData) {
                return personalStoreItemUserData.personalStoreItemUrlDataToOne;
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<PersonalStoreItemUserData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<PersonalStoreItemUserData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "PersonalStoreItemUserData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<PersonalStoreItemUserData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 41;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "PersonalStoreItemUserData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<PersonalStoreItemUserData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<PersonalStoreItemUserData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
