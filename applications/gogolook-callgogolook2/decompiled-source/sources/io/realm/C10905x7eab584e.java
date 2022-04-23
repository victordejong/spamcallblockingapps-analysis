package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import io.realm.BaseRealm;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy.class */
public class C10905x7eab584e extends ContactRealmObject implements RealmObjectProxy, AbstractC10906x145fac8b {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public ContactRealmObjectColumnInfo columnInfo;
    public ProxyState<ContactRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "ContactRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy$ContactRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy$ContactRealmObjectColumnInfo.class */
    public static final class ContactRealmObjectColumnInfo extends ColumnInfo {
        public long addressIndex;
        public long companyIndex;
        public long contactIdIndex;
        public long createTimeIndex;
        public long e164Index;
        public long idIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long numberIndex;
        public long photoUriIndex;
        public long statusIndex;
        public long updateTimeIndex;

        public ContactRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public ContactRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.contactIdIndex = addColumnDetails(ContactRealmObject.CONTACT_ID, ContactRealmObject.CONTACT_ID, objectSchemaInfo);
            this.e164Index = addColumnDetails("e164", "e164", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.photoUriIndex = addColumnDetails(ContactRealmObject.PHOTO_URI, ContactRealmObject.PHOTO_URI, objectSchemaInfo);
            this.addressIndex = addColumnDetails("address", "address", objectSchemaInfo);
            this.companyIndex = addColumnDetails("company", "company", objectSchemaInfo);
            this.createTimeIndex = addColumnDetails("createTime", "createTime", objectSchemaInfo);
            this.updateTimeIndex = addColumnDetails(ContactRealmObject.UPDATE_TIME, ContactRealmObject.UPDATE_TIME, objectSchemaInfo);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new ContactRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ContactRealmObjectColumnInfo contactRealmObjectColumnInfo = (ContactRealmObjectColumnInfo) columnInfo;
            ContactRealmObjectColumnInfo contactRealmObjectColumnInfo2 = (ContactRealmObjectColumnInfo) columnInfo2;
            contactRealmObjectColumnInfo2.idIndex = contactRealmObjectColumnInfo.idIndex;
            contactRealmObjectColumnInfo2.numberIndex = contactRealmObjectColumnInfo.numberIndex;
            contactRealmObjectColumnInfo2.contactIdIndex = contactRealmObjectColumnInfo.contactIdIndex;
            contactRealmObjectColumnInfo2.e164Index = contactRealmObjectColumnInfo.e164Index;
            contactRealmObjectColumnInfo2.nameIndex = contactRealmObjectColumnInfo.nameIndex;
            contactRealmObjectColumnInfo2.photoUriIndex = contactRealmObjectColumnInfo.photoUriIndex;
            contactRealmObjectColumnInfo2.addressIndex = contactRealmObjectColumnInfo.addressIndex;
            contactRealmObjectColumnInfo2.companyIndex = contactRealmObjectColumnInfo.companyIndex;
            contactRealmObjectColumnInfo2.createTimeIndex = contactRealmObjectColumnInfo.createTimeIndex;
            contactRealmObjectColumnInfo2.updateTimeIndex = contactRealmObjectColumnInfo.updateTimeIndex;
            contactRealmObjectColumnInfo2.statusIndex = contactRealmObjectColumnInfo.statusIndex;
            contactRealmObjectColumnInfo2.maxColumnIndexValue = contactRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10905x7eab584e() {
        this.proxyState.setConstructionFinished();
    }

    public static ContactRealmObject copy(Realm realm, ContactRealmObjectColumnInfo contactRealmObjectColumnInfo, ContactRealmObject contactRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(contactRealmObject);
        if (realmObjectProxy != null) {
            return (ContactRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ContactRealmObject.class), contactRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.idIndex, Long.valueOf(contactRealmObject.realmGet$id()));
        osObjectBuilder.addString(contactRealmObjectColumnInfo.numberIndex, contactRealmObject.realmGet$number());
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.contactIdIndex, Long.valueOf(contactRealmObject.realmGet$contactId()));
        osObjectBuilder.addString(contactRealmObjectColumnInfo.e164Index, contactRealmObject.realmGet$e164());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.nameIndex, contactRealmObject.realmGet$name());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.photoUriIndex, contactRealmObject.realmGet$photoUri());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.addressIndex, contactRealmObject.realmGet$address());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.companyIndex, contactRealmObject.realmGet$company());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.createTimeIndex, contactRealmObject.realmGet$createTime());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.updateTimeIndex, contactRealmObject.realmGet$updateTime());
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.statusIndex, Integer.valueOf(contactRealmObject.realmGet$status()));
        C10905x7eab584e newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(contactRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.contact.ContactRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10905x7eab584e.ContactRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.contact.ContactRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10905x7eab584e.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_contact_ContactRealmObjectRealmProxy$ContactRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.contact.ContactRealmObject");
    }

    public static ContactRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new ContactRealmObjectColumnInfo(osSchemaInfo);
    }

    public static ContactRealmObject createDetachedCopy(ContactRealmObject contactRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        ContactRealmObject contactRealmObject2;
        if (i > i2 || contactRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(contactRealmObject);
        if (cacheData == null) {
            ContactRealmObject contactRealmObject3 = new ContactRealmObject();
            map.put(contactRealmObject, new RealmObjectProxy.CacheData<>(i, contactRealmObject3));
            contactRealmObject2 = contactRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (ContactRealmObject) cacheData.object;
        } else {
            contactRealmObject2 = (ContactRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        contactRealmObject2.realmSet$id(contactRealmObject.realmGet$id());
        contactRealmObject2.realmSet$number(contactRealmObject.realmGet$number());
        contactRealmObject2.realmSet$contactId(contactRealmObject.realmGet$contactId());
        contactRealmObject2.realmSet$e164(contactRealmObject.realmGet$e164());
        contactRealmObject2.realmSet$name(contactRealmObject.realmGet$name());
        contactRealmObject2.realmSet$photoUri(contactRealmObject.realmGet$photoUri());
        contactRealmObject2.realmSet$address(contactRealmObject.realmGet$address());
        contactRealmObject2.realmSet$company(contactRealmObject.realmGet$company());
        contactRealmObject2.realmSet$createTime(contactRealmObject.realmGet$createTime());
        contactRealmObject2.realmSet$updateTime(contactRealmObject.realmGet$updateTime());
        contactRealmObject2.realmSet$status(contactRealmObject.realmGet$status());
        return contactRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(ContactRealmObject.CONTACT_ID, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(ContactRealmObject.PHOTO_URI, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("address", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("company", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("createTime", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(ContactRealmObject.UPDATE_TIME, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("status", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0282  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.contact.ContactRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10905x7eab584e.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.contact.ContactRealmObject");
    }

    @TargetApi(11)
    public static ContactRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        ContactRealmObject contactRealmObject = new ContactRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$number(null);
                }
            } else if (nextName.equals(ContactRealmObject.CONTACT_ID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$contactId(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'contactId' to null.");
                }
            } else if (nextName.equals("e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$e164(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$name(null);
                }
            } else if (nextName.equals(ContactRealmObject.PHOTO_URI)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$photoUri(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$photoUri(null);
                }
            } else if (nextName.equals("address")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$address(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$address(null);
                }
            } else if (nextName.equals("company")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$company(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$company(null);
                }
            } else if (nextName.equals("createTime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$createTime(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$createTime(null);
                }
            } else if (nextName.equals(ContactRealmObject.UPDATE_TIME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    contactRealmObject.realmSet$updateTime(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    contactRealmObject.realmSet$updateTime(null);
                }
            } else if (!nextName.equals("status")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                contactRealmObject.realmSet$status(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ContactRealmObject) realm.copyToRealm((Realm) contactRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, ContactRealmObject contactRealmObject, Map<RealmModel, Long> map) {
        if (contactRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) contactRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ContactRealmObject.class);
        long nativePtr = table.getNativePtr();
        ContactRealmObjectColumnInfo contactRealmObjectColumnInfo = (ContactRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ContactRealmObject.class);
        long j = contactRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(contactRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, contactRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(contactRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(contactRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$number = contactRealmObject.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
        }
        Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.contactIdIndex, nativeFindFirstInt, contactRealmObject.realmGet$contactId(), false);
        String realmGet$e164 = contactRealmObject.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        }
        String realmGet$name = contactRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
        }
        String realmGet$photoUri = contactRealmObject.realmGet$photoUri();
        if (realmGet$photoUri != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.photoUriIndex, nativeFindFirstInt, realmGet$photoUri, false);
        }
        String realmGet$address = contactRealmObject.realmGet$address();
        if (realmGet$address != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
        }
        String realmGet$company = contactRealmObject.realmGet$company();
        if (realmGet$company != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.companyIndex, nativeFindFirstInt, realmGet$company, false);
        }
        String realmGet$createTime = contactRealmObject.realmGet$createTime();
        if (realmGet$createTime != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, realmGet$createTime, false);
        }
        String realmGet$updateTime = contactRealmObject.realmGet$updateTime();
        if (realmGet$updateTime != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.updateTimeIndex, nativeFindFirstInt, realmGet$updateTime, false);
        }
        Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.statusIndex, nativeFindFirstInt, contactRealmObject.realmGet$status(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(ContactRealmObject.class);
        long nativePtr = table.getNativePtr();
        ContactRealmObjectColumnInfo contactRealmObjectColumnInfo = (ContactRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ContactRealmObject.class);
        long j = contactRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            ContactRealmObject contactRealmObject = (ContactRealmObject) it.next();
            if (!map.containsKey(contactRealmObject)) {
                if (contactRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) contactRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(contactRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(contactRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, contactRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(contactRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(contactRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$number = contactRealmObject.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
                }
                Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.contactIdIndex, nativeFindFirstInt, contactRealmObject.realmGet$contactId(), false);
                String realmGet$e164 = contactRealmObject.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
                }
                String realmGet$name = contactRealmObject.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
                }
                String realmGet$photoUri = contactRealmObject.realmGet$photoUri();
                if (realmGet$photoUri != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.photoUriIndex, nativeFindFirstInt, realmGet$photoUri, false);
                }
                String realmGet$address = contactRealmObject.realmGet$address();
                if (realmGet$address != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
                }
                String realmGet$company = contactRealmObject.realmGet$company();
                if (realmGet$company != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.companyIndex, nativeFindFirstInt, realmGet$company, false);
                }
                String realmGet$createTime = contactRealmObject.realmGet$createTime();
                if (realmGet$createTime != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, realmGet$createTime, false);
                }
                String realmGet$updateTime = contactRealmObject.realmGet$updateTime();
                if (realmGet$updateTime != null) {
                    Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.updateTimeIndex, nativeFindFirstInt, realmGet$updateTime, false);
                }
                Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.statusIndex, nativeFindFirstInt, contactRealmObject.realmGet$status(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, ContactRealmObject contactRealmObject, Map<RealmModel, Long> map) {
        if (contactRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) contactRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(ContactRealmObject.class);
        long nativePtr = table.getNativePtr();
        ContactRealmObjectColumnInfo contactRealmObjectColumnInfo = (ContactRealmObjectColumnInfo) realm.getSchema().getColumnInfo(ContactRealmObject.class);
        long j = contactRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(contactRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, contactRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(contactRealmObject.realmGet$id()));
        }
        map.put(contactRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$number = contactRealmObject.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.contactIdIndex, nativeFindFirstInt, contactRealmObject.realmGet$contactId(), false);
        String realmGet$e164 = contactRealmObject.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.e164Index, nativeFindFirstInt, false);
        }
        String realmGet$name = contactRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.nameIndex, nativeFindFirstInt, false);
        }
        String realmGet$photoUri = contactRealmObject.realmGet$photoUri();
        if (realmGet$photoUri != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.photoUriIndex, nativeFindFirstInt, realmGet$photoUri, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.photoUriIndex, nativeFindFirstInt, false);
        }
        String realmGet$address = contactRealmObject.realmGet$address();
        if (realmGet$address != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, false);
        }
        String realmGet$company = contactRealmObject.realmGet$company();
        if (realmGet$company != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.companyIndex, nativeFindFirstInt, realmGet$company, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.companyIndex, nativeFindFirstInt, false);
        }
        String realmGet$createTime = contactRealmObject.realmGet$createTime();
        if (realmGet$createTime != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, realmGet$createTime, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, false);
        }
        String realmGet$updateTime = contactRealmObject.realmGet$updateTime();
        if (realmGet$updateTime != null) {
            Table.nativeSetString(nativePtr, contactRealmObjectColumnInfo.updateTimeIndex, nativeFindFirstInt, realmGet$updateTime, false);
        } else {
            Table.nativeSetNull(nativePtr, contactRealmObjectColumnInfo.updateTimeIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, contactRealmObjectColumnInfo.statusIndex, nativeFindFirstInt, contactRealmObject.realmGet$status(), false);
        return nativeFindFirstInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map<io.realm.RealmModel, java.lang.Long>, java.util.Map] */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertOrUpdate(io.realm.Realm r10, java.util.Iterator<? extends io.realm.RealmModel> r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10905x7eab584e.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10905x7eab584e newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(ContactRealmObject.class), false, Collections.emptyList());
        C10905x7eab584e gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy = new C10905x7eab584e();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy;
    }

    public static ContactRealmObject update(Realm realm, ContactRealmObjectColumnInfo contactRealmObjectColumnInfo, ContactRealmObject contactRealmObject, ContactRealmObject contactRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(ContactRealmObject.class), contactRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.idIndex, Long.valueOf(contactRealmObject2.realmGet$id()));
        osObjectBuilder.addString(contactRealmObjectColumnInfo.numberIndex, contactRealmObject2.realmGet$number());
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.contactIdIndex, Long.valueOf(contactRealmObject2.realmGet$contactId()));
        osObjectBuilder.addString(contactRealmObjectColumnInfo.e164Index, contactRealmObject2.realmGet$e164());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.nameIndex, contactRealmObject2.realmGet$name());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.photoUriIndex, contactRealmObject2.realmGet$photoUri());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.addressIndex, contactRealmObject2.realmGet$address());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.companyIndex, contactRealmObject2.realmGet$company());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.createTimeIndex, contactRealmObject2.realmGet$createTime());
        osObjectBuilder.addString(contactRealmObjectColumnInfo.updateTimeIndex, contactRealmObject2.realmGet$updateTime());
        osObjectBuilder.addInteger(contactRealmObjectColumnInfo.statusIndex, Integer.valueOf(contactRealmObject2.realmGet$status()));
        osObjectBuilder.updateExistingObject();
        return contactRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10905x7eab584e.class != obj.getClass()) {
            return false;
        }
        C10905x7eab584e gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy = (C10905x7eab584e) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_contact_contactrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long index = this.proxyState.getRow$realm().getIndex();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((index >>> 32) ^ index));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
            this.columnInfo = (ContactRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$address() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.addressIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$company() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.companyIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public long realmGet$contactId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.contactIdIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$createTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.createTimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$photoUri() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.photoUriIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public int realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public String realmGet$updateTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.updateTimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$address(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.addressIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.addressIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.addressIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.addressIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$company(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.companyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.companyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.companyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.companyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$contactId(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.contactIdIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.contactIdIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$createTime(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.createTimeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.createTimeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.createTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.createTimeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.numberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$photoUri(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.photoUriIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.photoUriIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.photoUriIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.photoUriIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$status(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.statusIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.statusIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.contact.ContactRealmObject, io.realm.AbstractC10906x145fac8b
    public void realmSet$updateTime(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.updateTimeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.updateTimeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.updateTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.updateTimeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("ContactRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{number:");
        String realmGet$number = realmGet$number();
        String str = C14247d.f31851f;
        sb.append(realmGet$number != null ? realmGet$number() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{contactId:");
        sb.append(realmGet$contactId());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{e164:");
        sb.append(realmGet$e164() != null ? realmGet$e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{photoUri:");
        sb.append(realmGet$photoUri() != null ? realmGet$photoUri() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{address:");
        sb.append(realmGet$address() != null ? realmGet$address() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{company:");
        sb.append(realmGet$company() != null ? realmGet$company() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{createTime:");
        sb.append(realmGet$createTime() != null ? realmGet$createTime() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{updateTime:");
        if (realmGet$updateTime() != null) {
            str = realmGet$updateTime();
        }
        sb.append(str);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{status:");
        sb.append(realmGet$status());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
