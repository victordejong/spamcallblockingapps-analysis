package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.ContactLookupDataCursor;
import com.callapp.contacts.model.objectbox.Converters;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupData_.class */
public final class ContactLookupData_ implements c<ContactLookupData> {
    public static final g<ContactLookupData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ContactLookupData";
    public static final int __ENTITY_ID = 8;
    public static final String __ENTITY_NAME = "ContactLookupData";
    public static final g<ContactLookupData> __ID_PROPERTY;
    public static final ContactLookupData_ __INSTANCE;
    public static final g<ContactLookupData> contactId;
    public static final g<ContactLookupData> description;
    public static final g<ContactLookupData> descriptionMap;
    public static final g<ContactLookupData> displayName;
    public static final g<ContactLookupData> id;
    public static final g<ContactLookupData> lookupKey;
    public static final g<ContactLookupData> nameT9Format;
    public static final g<ContactLookupData> nameT9FormatNoZero;
    public static final g<ContactLookupData> namesMap;
    public static final g<ContactLookupData> phoneNumbers;
    public static final g<ContactLookupData> t9Indexes;
    public static final g<ContactLookupData> unAccentDescription;
    public static final g<ContactLookupData> unAccentName;
    public static final Class<ContactLookupData> __ENTITY_CLASS = ContactLookupData.class;
    public static final b<ContactLookupData> __CURSOR_FACTORY = new ContactLookupDataCursor.Factory();
    static final ContactLookupDataIdGetter __ID_GETTER = new ContactLookupDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter.class */
    static final class ContactLookupDataIdGetter implements io.objectbox.b.c<ContactLookupData> {
        ContactLookupDataIdGetter() {
        }

        public final long getId(ContactLookupData contactLookupData) {
            return contactLookupData.getId();
        }
    }

    static {
        ContactLookupData_ contactLookupData_ = new ContactLookupData_();
        __INSTANCE = contactLookupData_;
        g<ContactLookupData> gVar = new g<>(contactLookupData_, 0, 1, Long.TYPE, "id", true, "id");
        id = gVar;
        g<ContactLookupData> gVar2 = new g<>(contactLookupData_, 1, 2, String.class, "lookupKey");
        lookupKey = gVar2;
        g<ContactLookupData> gVar3 = new g<>(contactLookupData_, 2, 3, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = gVar3;
        g<ContactLookupData> gVar4 = new g<>(contactLookupData_, 3, 5, String.class, "phoneNumbers", false, "phoneNumbers", Converters.ListStringsConverter.class, List.class);
        phoneNumbers = gVar4;
        g<ContactLookupData> gVar5 = new g<>(contactLookupData_, 4, 6, String.class, "nameT9Format");
        nameT9Format = gVar5;
        g<ContactLookupData> gVar6 = new g<>(contactLookupData_, 5, 7, String.class, "nameT9FormatNoZero");
        nameT9FormatNoZero = gVar6;
        g<ContactLookupData> gVar7 = new g<>(contactLookupData_, 6, 8, String.class, "displayName");
        displayName = gVar7;
        g<ContactLookupData> gVar8 = new g<>(contactLookupData_, 7, 9, String.class, "unAccentName");
        unAccentName = gVar8;
        g<ContactLookupData> gVar9 = new g<>(contactLookupData_, 8, 12, String.class, "description");
        description = gVar9;
        g<ContactLookupData> gVar10 = new g<>(contactLookupData_, 9, 13, String.class, "unAccentDescription");
        unAccentDescription = gVar10;
        g<ContactLookupData> gVar11 = new g<>(contactLookupData_, 10, 14, String.class, "t9Indexes", false, "t9Indexes", Converters.ListIntegersConverter.class, List.class);
        t9Indexes = gVar11;
        g<ContactLookupData> gVar12 = new g<>(contactLookupData_, 11, 15, String.class, "namesMap", false, "namesMap", Converters.MapStringIntConverter.class, Map.class);
        namesMap = gVar12;
        g<ContactLookupData> gVar13 = new g<>(contactLookupData_, 12, 16, String.class, "descriptionMap", false, "descriptionMap", Converters.MapStringIntConverter.class, Map.class);
        descriptionMap = gVar13;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, gVar12, gVar13};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<ContactLookupData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<ContactLookupData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ContactLookupData";
    }

    @Override // io.objectbox.c
    public final Class<ContactLookupData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 8;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ContactLookupData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ContactLookupData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ContactLookupData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
