package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_.class */
public final class PersonalStoreItemUrlData_ implements AbstractC17957c<PersonalStoreItemUrlData> {
    public static final C17978g<PersonalStoreItemUrlData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "PersonalStoreItemUrlData";
    public static final int __ENTITY_ID = 38;
    public static final String __ENTITY_NAME = "PersonalStoreItemUrlData";
    public static final C17978g<PersonalStoreItemUrlData> __ID_PROPERTY;
    public static final PersonalStoreItemUrlData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<PersonalStoreItemUrlData> f26786id;
    public static final C17978g<PersonalStoreItemUrlData> isUploaded;
    public static final C17978g<PersonalStoreItemUrlData> personalStoreItemType;
    public static final C17978g<PersonalStoreItemUrlData> personalStoreItemUrl;
    public static final C17990b<PersonalStoreItemUrlData, PersonalStoreItemUserData> personalStoreItemUserData;
    public static final C17978g<PersonalStoreItemUrlData> type;
    public static final Class<PersonalStoreItemUrlData> __ENTITY_CLASS = PersonalStoreItemUrlData.class;
    public static final AbstractC17949b<PersonalStoreItemUrlData> __CURSOR_FACTORY = new PersonalStoreItemUrlDataCursor.Factory();
    static final PersonalStoreItemUrlDataIdGetter __ID_GETTER = new PersonalStoreItemUrlDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter.class */
    public static final class PersonalStoreItemUrlDataIdGetter implements AbstractC17950c<PersonalStoreItemUrlData> {
        PersonalStoreItemUrlDataIdGetter() {
        }

        public final long getId(PersonalStoreItemUrlData personalStoreItemUrlData) {
            return personalStoreItemUrlData.getId();
        }
    }

    static {
        PersonalStoreItemUrlData_ personalStoreItemUrlData_ = new PersonalStoreItemUrlData_();
        __INSTANCE = personalStoreItemUrlData_;
        C17978g<PersonalStoreItemUrlData> c17978g = new C17978g<>(personalStoreItemUrlData_, 0, 1, Long.TYPE, "id", true, "id");
        f26786id = c17978g;
        C17978g<PersonalStoreItemUrlData> c17978g2 = new C17978g<>(personalStoreItemUrlData_, 1, 2, String.class, "personalStoreItemUrl");
        personalStoreItemUrl = c17978g2;
        C17978g<PersonalStoreItemUrlData> c17978g3 = new C17978g<>(personalStoreItemUrlData_, 2, 5, Integer.TYPE, "personalStoreItemType", false, "personalStoreItemType", PersonalStoreItemUrlData.ProductTypeConverter.class, PersonalStoreItemUrlData.PersonalStoreItemType.class);
        personalStoreItemType = c17978g3;
        C17978g<PersonalStoreItemUrlData> c17978g4 = new C17978g<>(personalStoreItemUrlData_, 3, 3, Integer.TYPE, "type");
        type = c17978g4;
        C17978g<PersonalStoreItemUrlData> c17978g5 = new C17978g<>(personalStoreItemUrlData_, 4, 4, Boolean.TYPE, "isUploaded");
        isUploaded = c17978g5;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5};
        __ID_PROPERTY = c17978g;
        personalStoreItemUserData = new C17990b<>(personalStoreItemUrlData_, PersonalStoreItemUserData_.__INSTANCE, new AbstractC17955g<PersonalStoreItemUrlData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_.1
            public final List<PersonalStoreItemUserData> getToMany(PersonalStoreItemUrlData personalStoreItemUrlData) {
                return personalStoreItemUrlData.getPersonalStoreItemUserData();
            }
        }, PersonalStoreItemUserData_.personalStoreItemUrlDataToOneId, new AbstractC17956h<PersonalStoreItemUserData>() { // from class: com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData_.2
            public final ToOne<PersonalStoreItemUrlData> getToOne(PersonalStoreItemUserData personalStoreItemUserData2) {
                return personalStoreItemUserData2.personalStoreItemUrlDataToOne;
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<PersonalStoreItemUrlData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<PersonalStoreItemUrlData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "PersonalStoreItemUrlData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<PersonalStoreItemUrlData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 38;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "PersonalStoreItemUrlData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<PersonalStoreItemUrlData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<PersonalStoreItemUrlData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
