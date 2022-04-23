package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.ContactLookupData_;
import com.callapp.contacts.model.objectbox.Converters;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupDataCursor.class */
public final class ContactLookupDataCursor extends Cursor<ContactLookupData> {
    private static final ContactLookupData_.ContactLookupDataIdGetter ID_GETTER = ContactLookupData_.__ID_GETTER;
    private static final int __ID_lookupKey = ContactLookupData_.lookupKey.f36237c;
    private static final int __ID_contactId = ContactLookupData_.contactId.f36237c;
    private static final int __ID_phoneNumbers = ContactLookupData_.phoneNumbers.f36237c;
    private static final int __ID_nameT9Format = ContactLookupData_.nameT9Format.f36237c;
    private static final int __ID_nameT9FormatNoZero = ContactLookupData_.nameT9FormatNoZero.f36237c;
    private static final int __ID_displayName = ContactLookupData_.displayName.f36237c;
    private static final int __ID_unAccentName = ContactLookupData_.unAccentName.f36237c;
    private static final int __ID_description = ContactLookupData_.description.f36237c;
    private static final int __ID_unAccentDescription = ContactLookupData_.unAccentDescription.f36237c;
    private static final int __ID_t9Indexes = ContactLookupData_.t9Indexes.f36237c;
    private static final int __ID_namesMap = ContactLookupData_.namesMap.f36237c;
    private static final int __ID_descriptionMap = ContactLookupData_.descriptionMap.f36237c;
    private final Converters.ListStringsConverter phoneNumbersConverter = new Converters.ListStringsConverter();
    private final Converters.ListIntegersConverter t9IndexesConverter = new Converters.ListIntegersConverter();
    private final Converters.MapStringIntConverter namesMapConverter = new Converters.MapStringIntConverter();
    private final Converters.MapStringIntConverter descriptionMapConverter = new Converters.MapStringIntConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ContactLookupDataCursor$Factory.class */
    static final class Factory implements b<ContactLookupData> {
        @Override // io.objectbox.b.b
        public final Cursor<ContactLookupData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new ContactLookupDataCursor(transaction, j, boxStore);
        }
    }

    public ContactLookupDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, ContactLookupData_.__INSTANCE, boxStore);
    }

    public final long getId(ContactLookupData contactLookupData) {
        return ID_GETTER.getId(contactLookupData);
    }

    public final long put(ContactLookupData contactLookupData) {
        String lookupKey = contactLookupData.getLookupKey();
        int i = lookupKey != null ? __ID_lookupKey : 0;
        List<String> phoneNumbers = contactLookupData.getPhoneNumbers();
        int i2 = phoneNumbers != null ? __ID_phoneNumbers : 0;
        String str = contactLookupData.nameT9Format;
        int i3 = str != null ? __ID_nameT9Format : 0;
        String str2 = contactLookupData.nameT9FormatNoZero;
        String str3 = null;
        collect400000(this.cursor, 0L, 1, i, lookupKey, i2, i2 != 0 ? this.phoneNumbersConverter.convertToDatabaseValue(phoneNumbers) : null, i3, str, str2 != null ? __ID_nameT9FormatNoZero : 0, str2);
        String str4 = contactLookupData.displayName;
        int i4 = str4 != null ? __ID_displayName : 0;
        String str5 = contactLookupData.unAccentName;
        int i5 = str5 != null ? __ID_unAccentName : 0;
        String str6 = contactLookupData.description;
        int i6 = str6 != null ? __ID_description : 0;
        String str7 = contactLookupData.unAccentDescription;
        collect400000(this.cursor, 0L, 0, i4, str4, i5, str5, i6, str6, str7 != null ? __ID_unAccentDescription : 0, str7);
        List<Integer> list = contactLookupData.t9Indexes;
        int i7 = list != null ? __ID_t9Indexes : 0;
        Map<String, Integer> map = contactLookupData.namesMap;
        int i8 = map != null ? __ID_namesMap : 0;
        Map<String, Integer> map2 = contactLookupData.descriptionMap;
        int i9 = map2 != null ? __ID_descriptionMap : 0;
        long j = this.cursor;
        long id = contactLookupData.getId();
        String convertToDatabaseValue = i7 != 0 ? this.t9IndexesConverter.convertToDatabaseValue(list) : null;
        String convertToDatabaseValue2 = i8 != 0 ? this.namesMapConverter.convertToDatabaseValue(map) : null;
        if (i9 != 0) {
            str3 = this.descriptionMapConverter.convertToDatabaseValue(map2);
        }
        long collect313311 = collect313311(j, id, 2, i7, convertToDatabaseValue, i8, convertToDatabaseValue2, i9, str3, 0, null, __ID_contactId, contactLookupData.getContactId(), 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        contactLookupData.setId(collect313311);
        return collect313311;
    }
}
