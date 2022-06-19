package io.realm;

import android.util.JsonReader;
import android.util.JsonToken;
import com.telguarder.features.numberLookup.CachedHistoryListItem;
import com.telguarder.features.numberLookup.PhoneCallOrmLiteHelper;
import io.realm.BaseRealm;
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
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: io.realm.com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy.class */
public class C2391xb02eee5e extends CachedHistoryListItem implements RealmObjectProxy, AbstractC2392x331be87b {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CachedHistoryListItemColumnInfo columnInfo;
    private ProxyState<CachedHistoryListItem> proxyState;

    /* renamed from: io.realm.com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$CachedHistoryListItemColumnInfo.class */
    public static final class CachedHistoryListItemColumnInfo extends ColumnInfo {
        long calledPhoneNumberColKey;
        long counterColKey;
        long dateTimeInMillisColKey;
        long infoPageUrlColKey;
        long lastSpamCommentColKey;
        long lastSpamDateColKey;
        long nameColKey;
        long phoneNumberForDisplayingColKey;
        long securityLevelColKey;
        long spamTypeColKey;
        long typeColKey;

        CachedHistoryListItemColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        CachedHistoryListItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.nameColKey = addColumnDetails("name", "name", objectSchemaInfo);
            this.spamTypeColKey = addColumnDetails(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE, PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE, objectSchemaInfo);
            this.phoneNumberForDisplayingColKey = addColumnDetails("phoneNumberForDisplaying", "phoneNumberForDisplaying", objectSchemaInfo);
            this.calledPhoneNumberColKey = addColumnDetails(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, objectSchemaInfo);
            this.counterColKey = addColumnDetails("counter", "counter", objectSchemaInfo);
            this.lastSpamCommentColKey = addColumnDetails("lastSpamComment", "lastSpamComment", objectSchemaInfo);
            this.lastSpamDateColKey = addColumnDetails("lastSpamDate", "lastSpamDate", objectSchemaInfo);
            this.typeColKey = addColumnDetails("type", "type", objectSchemaInfo);
            this.dateTimeInMillisColKey = addColumnDetails(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, PhoneCallOrmLiteHelper.FIELD_DATE_TIME, objectSchemaInfo);
            this.securityLevelColKey = addColumnDetails(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL, PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL, objectSchemaInfo);
            this.infoPageUrlColKey = addColumnDetails(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL, PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL, objectSchemaInfo);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new CachedHistoryListItemColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo = (CachedHistoryListItemColumnInfo) columnInfo;
            CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo2 = (CachedHistoryListItemColumnInfo) columnInfo2;
            cachedHistoryListItemColumnInfo2.nameColKey = cachedHistoryListItemColumnInfo.nameColKey;
            cachedHistoryListItemColumnInfo2.spamTypeColKey = cachedHistoryListItemColumnInfo.spamTypeColKey;
            cachedHistoryListItemColumnInfo2.phoneNumberForDisplayingColKey = cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey;
            cachedHistoryListItemColumnInfo2.calledPhoneNumberColKey = cachedHistoryListItemColumnInfo.calledPhoneNumberColKey;
            cachedHistoryListItemColumnInfo2.counterColKey = cachedHistoryListItemColumnInfo.counterColKey;
            cachedHistoryListItemColumnInfo2.lastSpamCommentColKey = cachedHistoryListItemColumnInfo.lastSpamCommentColKey;
            cachedHistoryListItemColumnInfo2.lastSpamDateColKey = cachedHistoryListItemColumnInfo.lastSpamDateColKey;
            cachedHistoryListItemColumnInfo2.typeColKey = cachedHistoryListItemColumnInfo.typeColKey;
            cachedHistoryListItemColumnInfo2.dateTimeInMillisColKey = cachedHistoryListItemColumnInfo.dateTimeInMillisColKey;
            cachedHistoryListItemColumnInfo2.securityLevelColKey = cachedHistoryListItemColumnInfo.securityLevelColKey;
            cachedHistoryListItemColumnInfo2.infoPageUrlColKey = cachedHistoryListItemColumnInfo.infoPageUrlColKey;
        }
    }

    /* renamed from: io.realm.com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_CachedHistoryListItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "CachedHistoryListItem";
    }

    public C2391xb02eee5e() {
        this.proxyState.setConstructionFinished();
    }

    public static CachedHistoryListItem copy(Realm realm, CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo, CachedHistoryListItem cachedHistoryListItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(cachedHistoryListItem);
        if (realmObjectProxy != null) {
            return (CachedHistoryListItem) realmObjectProxy;
        }
        CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(CachedHistoryListItem.class), set);
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.nameColKey, cachedHistoryListItem2.realmGet$name());
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.spamTypeColKey, cachedHistoryListItem2.realmGet$spamType());
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, cachedHistoryListItem2.realmGet$phoneNumberForDisplaying());
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, cachedHistoryListItem2.realmGet$calledPhoneNumber());
        osObjectBuilder.addInteger(cachedHistoryListItemColumnInfo.counterColKey, Integer.valueOf(cachedHistoryListItem2.realmGet$counter()));
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.lastSpamCommentColKey, cachedHistoryListItem2.realmGet$lastSpamComment());
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.lastSpamDateColKey, cachedHistoryListItem2.realmGet$lastSpamDate());
        osObjectBuilder.addInteger(cachedHistoryListItemColumnInfo.typeColKey, Integer.valueOf(cachedHistoryListItem2.realmGet$type()));
        osObjectBuilder.addInteger(cachedHistoryListItemColumnInfo.dateTimeInMillisColKey, Long.valueOf(cachedHistoryListItem2.realmGet$dateTimeInMillis()));
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.securityLevelColKey, cachedHistoryListItem2.realmGet$securityLevel());
        osObjectBuilder.addString(cachedHistoryListItemColumnInfo.infoPageUrlColKey, cachedHistoryListItem2.realmGet$infoPageUrl());
        C2391xb02eee5e newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(cachedHistoryListItem, newProxyInstance);
        return newProxyInstance;
    }

    public static CachedHistoryListItem copyOrUpdate(Realm realm, CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo, CachedHistoryListItem cachedHistoryListItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((cachedHistoryListItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(cachedHistoryListItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cachedHistoryListItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (realm$realm.getPath().equals(realm.getPath())) {
                    return cachedHistoryListItem;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(cachedHistoryListItem);
        return realmObjectProxy2 != null ? (CachedHistoryListItem) realmObjectProxy2 : copy(realm, cachedHistoryListItemColumnInfo, cachedHistoryListItem, z, map, set);
    }

    public static CachedHistoryListItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CachedHistoryListItemColumnInfo(osSchemaInfo);
    }

    public static CachedHistoryListItem createDetachedCopy(CachedHistoryListItem cachedHistoryListItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        CachedHistoryListItem cachedHistoryListItem2;
        if (i > i2 || cachedHistoryListItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(cachedHistoryListItem);
        if (cacheData == null) {
            CachedHistoryListItem cachedHistoryListItem3 = new CachedHistoryListItem();
            map.put(cachedHistoryListItem, new RealmObjectProxy.CacheData<>(i, cachedHistoryListItem3));
            cachedHistoryListItem2 = cachedHistoryListItem3;
        } else if (i >= cacheData.minDepth) {
            return (CachedHistoryListItem) cacheData.object;
        } else {
            cachedHistoryListItem2 = (CachedHistoryListItem) cacheData.object;
            cacheData.minDepth = i;
        }
        CachedHistoryListItem cachedHistoryListItem4 = cachedHistoryListItem2;
        CachedHistoryListItem cachedHistoryListItem5 = cachedHistoryListItem;
        cachedHistoryListItem4.realmSet$name(cachedHistoryListItem5.realmGet$name());
        cachedHistoryListItem4.realmSet$spamType(cachedHistoryListItem5.realmGet$spamType());
        cachedHistoryListItem4.realmSet$phoneNumberForDisplaying(cachedHistoryListItem5.realmGet$phoneNumberForDisplaying());
        cachedHistoryListItem4.realmSet$calledPhoneNumber(cachedHistoryListItem5.realmGet$calledPhoneNumber());
        cachedHistoryListItem4.realmSet$counter(cachedHistoryListItem5.realmGet$counter());
        cachedHistoryListItem4.realmSet$lastSpamComment(cachedHistoryListItem5.realmGet$lastSpamComment());
        cachedHistoryListItem4.realmSet$lastSpamDate(cachedHistoryListItem5.realmGet$lastSpamDate());
        cachedHistoryListItem4.realmSet$type(cachedHistoryListItem5.realmGet$type());
        cachedHistoryListItem4.realmSet$dateTimeInMillis(cachedHistoryListItem5.realmGet$dateTimeInMillis());
        cachedHistoryListItem4.realmSet$securityLevel(cachedHistoryListItem5.realmGet$securityLevel());
        cachedHistoryListItem4.realmSet$infoPageUrl(cachedHistoryListItem5.realmGet$infoPageUrl());
        return cachedHistoryListItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, false, 11, 0);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("phoneNumberForDisplaying", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("counter", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("lastSpamComment", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("lastSpamDate", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static CachedHistoryListItem createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) realm.createObjectInternal(CachedHistoryListItem.class, true, Collections.emptyList());
        CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                cachedHistoryListItem2.realmSet$name(null);
            } else {
                cachedHistoryListItem2.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE)) {
            if (jSONObject.isNull(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE)) {
                cachedHistoryListItem2.realmSet$spamType(null);
            } else {
                cachedHistoryListItem2.realmSet$spamType(jSONObject.getString(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE));
            }
        }
        if (jSONObject.has("phoneNumberForDisplaying")) {
            if (jSONObject.isNull("phoneNumberForDisplaying")) {
                cachedHistoryListItem2.realmSet$phoneNumberForDisplaying(null);
            } else {
                cachedHistoryListItem2.realmSet$phoneNumberForDisplaying(jSONObject.getString("phoneNumberForDisplaying"));
            }
        }
        if (jSONObject.has(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER)) {
            if (jSONObject.isNull(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER)) {
                cachedHistoryListItem2.realmSet$calledPhoneNumber(null);
            } else {
                cachedHistoryListItem2.realmSet$calledPhoneNumber(jSONObject.getString(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER));
            }
        }
        if (jSONObject.has("counter")) {
            if (jSONObject.isNull("counter")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'counter' to null.");
            }
            cachedHistoryListItem2.realmSet$counter(jSONObject.getInt("counter"));
        }
        if (jSONObject.has("lastSpamComment")) {
            if (jSONObject.isNull("lastSpamComment")) {
                cachedHistoryListItem2.realmSet$lastSpamComment(null);
            } else {
                cachedHistoryListItem2.realmSet$lastSpamComment(jSONObject.getString("lastSpamComment"));
            }
        }
        if (jSONObject.has("lastSpamDate")) {
            if (jSONObject.isNull("lastSpamDate")) {
                cachedHistoryListItem2.realmSet$lastSpamDate(null);
            } else {
                cachedHistoryListItem2.realmSet$lastSpamDate(jSONObject.getString("lastSpamDate"));
            }
        }
        if (jSONObject.has("type")) {
            if (jSONObject.isNull("type")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
            cachedHistoryListItem2.realmSet$type(jSONObject.getInt("type"));
        }
        if (jSONObject.has(PhoneCallOrmLiteHelper.FIELD_DATE_TIME)) {
            if (jSONObject.isNull(PhoneCallOrmLiteHelper.FIELD_DATE_TIME)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'dateTimeInMillis' to null.");
            }
            cachedHistoryListItem2.realmSet$dateTimeInMillis(jSONObject.getLong(PhoneCallOrmLiteHelper.FIELD_DATE_TIME));
        }
        if (jSONObject.has(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL)) {
            if (jSONObject.isNull(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL)) {
                cachedHistoryListItem2.realmSet$securityLevel(null);
            } else {
                cachedHistoryListItem2.realmSet$securityLevel(jSONObject.getString(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL));
            }
        }
        if (jSONObject.has(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL)) {
            if (jSONObject.isNull(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL)) {
                cachedHistoryListItem2.realmSet$infoPageUrl(null);
            } else {
                cachedHistoryListItem2.realmSet$infoPageUrl(jSONObject.getString(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL));
            }
        }
        return cachedHistoryListItem;
    }

    public static CachedHistoryListItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        CachedHistoryListItem cachedHistoryListItem = new CachedHistoryListItem();
        CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$name(null);
                }
            } else if (nextName.equals(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$spamType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$spamType(null);
                }
            } else if (nextName.equals("phoneNumberForDisplaying")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$phoneNumberForDisplaying(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$phoneNumberForDisplaying(null);
                }
            } else if (nextName.equals(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$calledPhoneNumber(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$calledPhoneNumber(null);
                }
            } else if (nextName.equals("counter")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'counter' to null.");
                }
                cachedHistoryListItem2.realmSet$counter(jsonReader.nextInt());
            } else if (nextName.equals("lastSpamComment")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$lastSpamComment(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$lastSpamComment(null);
                }
            } else if (nextName.equals("lastSpamDate")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$lastSpamDate(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$lastSpamDate(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
                cachedHistoryListItem2.realmSet$type(jsonReader.nextInt());
            } else if (nextName.equals(PhoneCallOrmLiteHelper.FIELD_DATE_TIME)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'dateTimeInMillis' to null.");
                }
                cachedHistoryListItem2.realmSet$dateTimeInMillis(jsonReader.nextLong());
            } else if (nextName.equals(PhoneCallOrmLiteHelper.FIELD_SECURITY_LEVEL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    cachedHistoryListItem2.realmSet$securityLevel(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    cachedHistoryListItem2.realmSet$securityLevel(null);
                }
            } else if (!nextName.equals(PhoneCallOrmLiteHelper.FIELD_INFO_PAGE_URL)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                cachedHistoryListItem2.realmSet$infoPageUrl(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                cachedHistoryListItem2.realmSet$infoPageUrl(null);
            }
        }
        jsonReader.endObject();
        return (CachedHistoryListItem) realm.copyToRealm((Realm) cachedHistoryListItem, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, CachedHistoryListItem cachedHistoryListItem, Map<RealmModel, Long> map) {
        if ((cachedHistoryListItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(cachedHistoryListItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cachedHistoryListItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(CachedHistoryListItem.class);
        long nativePtr = table.getNativePtr();
        CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo = (CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class);
        long createRow = OsObject.createRow(table);
        map.put(cachedHistoryListItem, Long.valueOf(createRow));
        CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
        String realmGet$name = cachedHistoryListItem2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, realmGet$name, false);
        }
        String realmGet$spamType = cachedHistoryListItem2.realmGet$spamType();
        if (realmGet$spamType != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, realmGet$spamType, false);
        }
        String realmGet$phoneNumberForDisplaying = cachedHistoryListItem2.realmGet$phoneNumberForDisplaying();
        if (realmGet$phoneNumberForDisplaying != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, realmGet$phoneNumberForDisplaying, false);
        }
        String realmGet$calledPhoneNumber = cachedHistoryListItem2.realmGet$calledPhoneNumber();
        if (realmGet$calledPhoneNumber != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, realmGet$calledPhoneNumber, false);
        }
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.counterColKey, createRow, cachedHistoryListItem2.realmGet$counter(), false);
        String realmGet$lastSpamComment = cachedHistoryListItem2.realmGet$lastSpamComment();
        if (realmGet$lastSpamComment != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, realmGet$lastSpamComment, false);
        }
        String realmGet$lastSpamDate = cachedHistoryListItem2.realmGet$lastSpamDate();
        if (realmGet$lastSpamDate != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, realmGet$lastSpamDate, false);
        }
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.typeColKey, createRow, cachedHistoryListItem2.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.dateTimeInMillisColKey, createRow, cachedHistoryListItem2.realmGet$dateTimeInMillis(), false);
        String realmGet$securityLevel = cachedHistoryListItem2.realmGet$securityLevel();
        if (realmGet$securityLevel != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, realmGet$securityLevel, false);
        }
        String realmGet$infoPageUrl = cachedHistoryListItem2.realmGet$infoPageUrl();
        if (realmGet$infoPageUrl != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, realmGet$infoPageUrl, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CachedHistoryListItem.class);
        long nativePtr = table.getNativePtr();
        CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo = (CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class);
        while (it.hasNext()) {
            CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) it.next();
            if (!map.containsKey(cachedHistoryListItem)) {
                if ((cachedHistoryListItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(cachedHistoryListItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cachedHistoryListItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(cachedHistoryListItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(cachedHistoryListItem, Long.valueOf(createRow));
                CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
                String realmGet$name = cachedHistoryListItem2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, realmGet$name, false);
                }
                String realmGet$spamType = cachedHistoryListItem2.realmGet$spamType();
                if (realmGet$spamType != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, realmGet$spamType, false);
                }
                String realmGet$phoneNumberForDisplaying = cachedHistoryListItem2.realmGet$phoneNumberForDisplaying();
                if (realmGet$phoneNumberForDisplaying != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, realmGet$phoneNumberForDisplaying, false);
                }
                String realmGet$calledPhoneNumber = cachedHistoryListItem2.realmGet$calledPhoneNumber();
                if (realmGet$calledPhoneNumber != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, realmGet$calledPhoneNumber, false);
                }
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.counterColKey, createRow, cachedHistoryListItem2.realmGet$counter(), false);
                String realmGet$lastSpamComment = cachedHistoryListItem2.realmGet$lastSpamComment();
                if (realmGet$lastSpamComment != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, realmGet$lastSpamComment, false);
                }
                String realmGet$lastSpamDate = cachedHistoryListItem2.realmGet$lastSpamDate();
                if (realmGet$lastSpamDate != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, realmGet$lastSpamDate, false);
                }
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.typeColKey, createRow, cachedHistoryListItem2.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.dateTimeInMillisColKey, createRow, cachedHistoryListItem2.realmGet$dateTimeInMillis(), false);
                String realmGet$securityLevel = cachedHistoryListItem2.realmGet$securityLevel();
                if (realmGet$securityLevel != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, realmGet$securityLevel, false);
                }
                String realmGet$infoPageUrl = cachedHistoryListItem2.realmGet$infoPageUrl();
                if (realmGet$infoPageUrl != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, realmGet$infoPageUrl, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, CachedHistoryListItem cachedHistoryListItem, Map<RealmModel, Long> map) {
        if ((cachedHistoryListItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(cachedHistoryListItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cachedHistoryListItem;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(CachedHistoryListItem.class);
        long nativePtr = table.getNativePtr();
        CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo = (CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class);
        long createRow = OsObject.createRow(table);
        map.put(cachedHistoryListItem, Long.valueOf(createRow));
        CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
        String realmGet$name = cachedHistoryListItem2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, false);
        }
        String realmGet$spamType = cachedHistoryListItem2.realmGet$spamType();
        if (realmGet$spamType != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, realmGet$spamType, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, false);
        }
        String realmGet$phoneNumberForDisplaying = cachedHistoryListItem2.realmGet$phoneNumberForDisplaying();
        if (realmGet$phoneNumberForDisplaying != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, realmGet$phoneNumberForDisplaying, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, false);
        }
        String realmGet$calledPhoneNumber = cachedHistoryListItem2.realmGet$calledPhoneNumber();
        if (realmGet$calledPhoneNumber != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, realmGet$calledPhoneNumber, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, false);
        }
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.counterColKey, createRow, cachedHistoryListItem2.realmGet$counter(), false);
        String realmGet$lastSpamComment = cachedHistoryListItem2.realmGet$lastSpamComment();
        if (realmGet$lastSpamComment != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, realmGet$lastSpamComment, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, false);
        }
        String realmGet$lastSpamDate = cachedHistoryListItem2.realmGet$lastSpamDate();
        if (realmGet$lastSpamDate != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, realmGet$lastSpamDate, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, false);
        }
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.typeColKey, createRow, cachedHistoryListItem2.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.dateTimeInMillisColKey, createRow, cachedHistoryListItem2.realmGet$dateTimeInMillis(), false);
        String realmGet$securityLevel = cachedHistoryListItem2.realmGet$securityLevel();
        if (realmGet$securityLevel != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, realmGet$securityLevel, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, false);
        }
        String realmGet$infoPageUrl = cachedHistoryListItem2.realmGet$infoPageUrl();
        if (realmGet$infoPageUrl != null) {
            Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, realmGet$infoPageUrl, false);
        } else {
            Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(CachedHistoryListItem.class);
        long nativePtr = table.getNativePtr();
        CachedHistoryListItemColumnInfo cachedHistoryListItemColumnInfo = (CachedHistoryListItemColumnInfo) realm.getSchema().getColumnInfo(CachedHistoryListItem.class);
        while (it.hasNext()) {
            CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) it.next();
            if (!map.containsKey(cachedHistoryListItem)) {
                if ((cachedHistoryListItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(cachedHistoryListItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) cachedHistoryListItem;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(cachedHistoryListItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(cachedHistoryListItem, Long.valueOf(createRow));
                CachedHistoryListItem cachedHistoryListItem2 = cachedHistoryListItem;
                String realmGet$name = cachedHistoryListItem2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.nameColKey, createRow, false);
                }
                String realmGet$spamType = cachedHistoryListItem2.realmGet$spamType();
                if (realmGet$spamType != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, realmGet$spamType, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.spamTypeColKey, createRow, false);
                }
                String realmGet$phoneNumberForDisplaying = cachedHistoryListItem2.realmGet$phoneNumberForDisplaying();
                if (realmGet$phoneNumberForDisplaying != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, realmGet$phoneNumberForDisplaying, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.phoneNumberForDisplayingColKey, createRow, false);
                }
                String realmGet$calledPhoneNumber = cachedHistoryListItem2.realmGet$calledPhoneNumber();
                if (realmGet$calledPhoneNumber != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, realmGet$calledPhoneNumber, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.calledPhoneNumberColKey, createRow, false);
                }
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.counterColKey, createRow, cachedHistoryListItem2.realmGet$counter(), false);
                String realmGet$lastSpamComment = cachedHistoryListItem2.realmGet$lastSpamComment();
                if (realmGet$lastSpamComment != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, realmGet$lastSpamComment, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.lastSpamCommentColKey, createRow, false);
                }
                String realmGet$lastSpamDate = cachedHistoryListItem2.realmGet$lastSpamDate();
                if (realmGet$lastSpamDate != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, realmGet$lastSpamDate, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.lastSpamDateColKey, createRow, false);
                }
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.typeColKey, createRow, cachedHistoryListItem2.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, cachedHistoryListItemColumnInfo.dateTimeInMillisColKey, createRow, cachedHistoryListItem2.realmGet$dateTimeInMillis(), false);
                String realmGet$securityLevel = cachedHistoryListItem2.realmGet$securityLevel();
                if (realmGet$securityLevel != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, realmGet$securityLevel, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.securityLevelColKey, createRow, false);
                }
                String realmGet$infoPageUrl = cachedHistoryListItem2.realmGet$infoPageUrl();
                if (realmGet$infoPageUrl != null) {
                    Table.nativeSetString(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, realmGet$infoPageUrl, false);
                } else {
                    Table.nativeSetNull(nativePtr, cachedHistoryListItemColumnInfo.infoPageUrlColKey, createRow, false);
                }
            }
        }
    }

    static C2391xb02eee5e newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(CachedHistoryListItem.class), false, Collections.emptyList());
        C2391xb02eee5e c2391xb02eee5e = new C2391xb02eee5e();
        realmObjectContext.clear();
        return c2391xb02eee5e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2391xb02eee5e c2391xb02eee5e = (C2391xb02eee5e) obj;
        BaseRealm realm$realm = this.proxyState.getRealm$realm();
        BaseRealm realm$realm2 = c2391xb02eee5e.proxyState.getRealm$realm();
        String path = realm$realm.getPath();
        String path2 = realm$realm2.getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        if (realm$realm.isFrozen() != realm$realm2.isFrozen() || !realm$realm.sharedRealm.getVersionID().equals(realm$realm2.sharedRealm.getVersionID())) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = c2391xb02eee5e.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getObjectKey() == c2391xb02eee5e.proxyState.getRow$realm().getObjectKey();
    }

    public int hashCode() {
        String path = this.proxyState.getRealm$realm().getPath();
        String name = this.proxyState.getRow$realm().getTable().getName();
        long objectKey = this.proxyState.getRow$realm().getObjectKey();
        int i = 0;
        int hashCode = path != null ? path.hashCode() : 0;
        if (name != null) {
            i = name.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        this.columnInfo = (CachedHistoryListItemColumnInfo) realmObjectContext.getColumnInfo();
        ProxyState<CachedHistoryListItem> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        proxyState.setRealm$realm(realmObjectContext.getRealm());
        this.proxyState.setRow$realm(realmObjectContext.getRow());
        this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$calledPhoneNumber() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.calledPhoneNumberColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public int realmGet$counter() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.counterColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public long realmGet$dateTimeInMillis() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.dateTimeInMillisColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$infoPageUrl() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.infoPageUrlColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$lastSpamComment() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.lastSpamCommentColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$lastSpamDate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.lastSpamDateColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$phoneNumberForDisplaying() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.phoneNumberForDisplayingColKey);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$securityLevel() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.securityLevelColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public String realmGet$spamType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.spamTypeColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeColKey);
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$calledPhoneNumber(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.calledPhoneNumberColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.calledPhoneNumberColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.calledPhoneNumberColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.calledPhoneNumberColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$counter(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.counterColKey, i);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.counterColKey, row$realm.getObjectKey(), i, true);
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$dateTimeInMillis(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.dateTimeInMillisColKey, j);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.dateTimeInMillisColKey, row$realm.getObjectKey(), j, true);
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$infoPageUrl(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.infoPageUrlColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.infoPageUrlColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.infoPageUrlColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.infoPageUrlColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$lastSpamComment(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.lastSpamCommentColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.lastSpamCommentColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.lastSpamCommentColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.lastSpamCommentColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$lastSpamDate(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.lastSpamDateColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.lastSpamDateColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.lastSpamDateColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.lastSpamDateColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.nameColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.nameColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$phoneNumberForDisplaying(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.phoneNumberForDisplayingColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.phoneNumberForDisplayingColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.phoneNumberForDisplayingColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.phoneNumberForDisplayingColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$securityLevel(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.securityLevelColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.securityLevelColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.securityLevelColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.securityLevelColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$spamType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.spamTypeColKey);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.spamTypeColKey, str);
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.spamTypeColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.spamTypeColKey, row$realm.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.CachedHistoryListItem, io.realm.AbstractC2392x331be87b
    public void realmSet$type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeColKey, i);
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeColKey, row$realm.getObjectKey(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("CachedHistoryListItem = proxy[");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{spamType:");
        sb.append(realmGet$spamType() != null ? realmGet$spamType() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{phoneNumberForDisplaying:");
        sb.append(realmGet$phoneNumberForDisplaying() != null ? realmGet$phoneNumberForDisplaying() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{calledPhoneNumber:");
        sb.append(realmGet$calledPhoneNumber() != null ? realmGet$calledPhoneNumber() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{counter:");
        sb.append(realmGet$counter());
        sb.append("}");
        sb.append(",");
        sb.append("{lastSpamComment:");
        sb.append(realmGet$lastSpamComment() != null ? realmGet$lastSpamComment() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{lastSpamDate:");
        sb.append(realmGet$lastSpamDate() != null ? realmGet$lastSpamDate() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{type:");
        sb.append(realmGet$type());
        sb.append("}");
        sb.append(",");
        sb.append("{dateTimeInMillis:");
        sb.append(realmGet$dateTimeInMillis());
        sb.append("}");
        sb.append(",");
        sb.append("{securityLevel:");
        sb.append(realmGet$securityLevel() != null ? realmGet$securityLevel() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{infoPageUrl:");
        String str = "null";
        if (realmGet$infoPageUrl() != null) {
            str = realmGet$infoPageUrl();
        }
        sb.append(str);
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
