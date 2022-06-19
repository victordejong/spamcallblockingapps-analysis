package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ContactLookupDataCursor;
import com.callapp.contacts.model.objectbox.Converters;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupData_.class */
public final class ContactLookupData_ implements AbstractC17957c<ContactLookupData> {
    public static final C17978g<ContactLookupData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ContactLookupData";
    public static final int __ENTITY_ID = 8;
    public static final String __ENTITY_NAME = "ContactLookupData";
    public static final C17978g<ContactLookupData> __ID_PROPERTY;
    public static final ContactLookupData_ __INSTANCE;
    public static final C17978g<ContactLookupData> contactId;
    public static final C17978g<ContactLookupData> description;
    public static final C17978g<ContactLookupData> descriptionMap;
    public static final C17978g<ContactLookupData> displayName;

    /* renamed from: id */
    public static final C17978g<ContactLookupData> f26770id;
    public static final C17978g<ContactLookupData> lookupKey;
    public static final C17978g<ContactLookupData> nameT9Format;
    public static final C17978g<ContactLookupData> nameT9FormatNoZero;
    public static final C17978g<ContactLookupData> namesMap;
    public static final C17978g<ContactLookupData> phoneNumbers;
    public static final C17978g<ContactLookupData> t9Indexes;
    public static final C17978g<ContactLookupData> unAccentDescription;
    public static final C17978g<ContactLookupData> unAccentName;
    public static final Class<ContactLookupData> __ENTITY_CLASS = ContactLookupData.class;
    public static final AbstractC17949b<ContactLookupData> __CURSOR_FACTORY = new ContactLookupDataCursor.Factory();
    static final ContactLookupDataIdGetter __ID_GETTER = new ContactLookupDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter.class */
    public static final class ContactLookupDataIdGetter implements AbstractC17950c<ContactLookupData> {
        ContactLookupDataIdGetter() {
        }

        public final long getId(ContactLookupData contactLookupData) {
            return contactLookupData.getId();
        }
    }

    static {
        ContactLookupData_ contactLookupData_ = new ContactLookupData_();
        __INSTANCE = contactLookupData_;
        C17978g<ContactLookupData> c17978g = new C17978g<>(contactLookupData_, 0, 1, Long.TYPE, "id", true, "id");
        f26770id = c17978g;
        C17978g<ContactLookupData> c17978g2 = new C17978g<>(contactLookupData_, 1, 2, String.class, "lookupKey");
        lookupKey = c17978g2;
        C17978g<ContactLookupData> c17978g3 = new C17978g<>(contactLookupData_, 2, 3, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = c17978g3;
        C17978g<ContactLookupData> c17978g4 = new C17978g<>(contactLookupData_, 3, 5, String.class, "phoneNumbers", false, "phoneNumbers", Converters.ListStringsConverter.class, List.class);
        phoneNumbers = c17978g4;
        C17978g<ContactLookupData> c17978g5 = new C17978g<>(contactLookupData_, 4, 6, String.class, "nameT9Format");
        nameT9Format = c17978g5;
        C17978g<ContactLookupData> c17978g6 = new C17978g<>(contactLookupData_, 5, 7, String.class, "nameT9FormatNoZero");
        nameT9FormatNoZero = c17978g6;
        C17978g<ContactLookupData> c17978g7 = new C17978g<>(contactLookupData_, 6, 8, String.class, "displayName");
        displayName = c17978g7;
        C17978g<ContactLookupData> c17978g8 = new C17978g<>(contactLookupData_, 7, 9, String.class, "unAccentName");
        unAccentName = c17978g8;
        C17978g<ContactLookupData> c17978g9 = new C17978g<>(contactLookupData_, 8, 12, String.class, "description");
        description = c17978g9;
        C17978g<ContactLookupData> c17978g10 = new C17978g<>(contactLookupData_, 9, 13, String.class, "unAccentDescription");
        unAccentDescription = c17978g10;
        C17978g<ContactLookupData> c17978g11 = new C17978g<>(contactLookupData_, 10, 14, String.class, "t9Indexes", false, "t9Indexes", Converters.ListIntegersConverter.class, List.class);
        t9Indexes = c17978g11;
        C17978g<ContactLookupData> c17978g12 = new C17978g<>(contactLookupData_, 11, 15, String.class, "namesMap", false, "namesMap", Converters.MapStringIntConverter.class, Map.class);
        namesMap = c17978g12;
        C17978g<ContactLookupData> c17978g13 = new C17978g<>(contactLookupData_, 12, 16, String.class, "descriptionMap", false, "descriptionMap", Converters.MapStringIntConverter.class, Map.class);
        descriptionMap = c17978g13;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9, c17978g10, c17978g11, c17978g12, c17978g13};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ContactLookupData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ContactLookupData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ContactLookupData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ContactLookupData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 8;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ContactLookupData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ContactLookupData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ContactLookupData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
