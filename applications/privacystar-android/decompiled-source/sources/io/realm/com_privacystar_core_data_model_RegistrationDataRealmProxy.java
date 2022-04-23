package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.RegistrationDataFields;
import io.realm.BaseRealm;
import io.realm.com_privacystar_core_data_model_PlayStorePurchaseRealmProxy;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RegistrationDataRealmProxy.class */
public class com_privacystar_core_data_model_RegistrationDataRealmProxy extends RegistrationData implements RealmObjectProxy, AbstractC1922x55998d49 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RegistrationDataColumnInfo columnInfo;
    private RealmList<PlayStorePurchase> playStorePurchasesRealmList;
    private ProxyState<RegistrationData> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RegistrationDataRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "RegistrationData";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_RegistrationDataRealmProxy$RegistrationDataColumnInfo.class */
    public static final class RegistrationDataColumnInfo extends ColumnInfo {
        long cachedApkVersionIndex;
        long cachedMccIndex;
        long cachedMncIndex;
        long cachedOsVersionIndex;
        long cachedPhoneNumberIndex;
        long dataStatusIndex;
        long deviceIdIndex;
        long fcmKeyIndex;
        long maxColumnIndexValue;
        long packageNameIndex;
        long playStorePurchasesIndex;

        RegistrationDataColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        RegistrationDataColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(10);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.dataStatusIndex = addColumnDetails(RegistrationDataFields.DATA_STATUS, RegistrationDataFields.DATA_STATUS, objectSchemaInfo);
            this.deviceIdIndex = addColumnDetails(RegistrationDataFields.DEVICE_ID, RegistrationDataFields.DEVICE_ID, objectSchemaInfo);
            this.fcmKeyIndex = addColumnDetails(RegistrationDataFields.FCM_KEY, RegistrationDataFields.FCM_KEY, objectSchemaInfo);
            this.packageNameIndex = addColumnDetails("packageName", "packageName", objectSchemaInfo);
            this.cachedApkVersionIndex = addColumnDetails(RegistrationDataFields.CACHED_APK_VERSION, RegistrationDataFields.CACHED_APK_VERSION, objectSchemaInfo);
            this.cachedPhoneNumberIndex = addColumnDetails(RegistrationDataFields.CACHED_PHONE_NUMBER, RegistrationDataFields.CACHED_PHONE_NUMBER, objectSchemaInfo);
            this.cachedMccIndex = addColumnDetails(RegistrationDataFields.CACHED_MCC, RegistrationDataFields.CACHED_MCC, objectSchemaInfo);
            this.cachedMncIndex = addColumnDetails(RegistrationDataFields.CACHED_MNC, RegistrationDataFields.CACHED_MNC, objectSchemaInfo);
            this.cachedOsVersionIndex = addColumnDetails(RegistrationDataFields.CACHED_OS_VERSION, RegistrationDataFields.CACHED_OS_VERSION, objectSchemaInfo);
            this.playStorePurchasesIndex = addColumnDetails(RegistrationDataFields.PLAY_STORE_PURCHASES.f260$, RegistrationDataFields.PLAY_STORE_PURCHASES.f260$, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new RegistrationDataColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            RegistrationDataColumnInfo registrationDataColumnInfo = (RegistrationDataColumnInfo) columnInfo;
            RegistrationDataColumnInfo registrationDataColumnInfo2 = (RegistrationDataColumnInfo) columnInfo2;
            registrationDataColumnInfo2.dataStatusIndex = registrationDataColumnInfo.dataStatusIndex;
            registrationDataColumnInfo2.deviceIdIndex = registrationDataColumnInfo.deviceIdIndex;
            registrationDataColumnInfo2.fcmKeyIndex = registrationDataColumnInfo.fcmKeyIndex;
            registrationDataColumnInfo2.packageNameIndex = registrationDataColumnInfo.packageNameIndex;
            registrationDataColumnInfo2.cachedApkVersionIndex = registrationDataColumnInfo.cachedApkVersionIndex;
            registrationDataColumnInfo2.cachedPhoneNumberIndex = registrationDataColumnInfo.cachedPhoneNumberIndex;
            registrationDataColumnInfo2.cachedMccIndex = registrationDataColumnInfo.cachedMccIndex;
            registrationDataColumnInfo2.cachedMncIndex = registrationDataColumnInfo.cachedMncIndex;
            registrationDataColumnInfo2.cachedOsVersionIndex = registrationDataColumnInfo.cachedOsVersionIndex;
            registrationDataColumnInfo2.playStorePurchasesIndex = registrationDataColumnInfo.playStorePurchasesIndex;
            registrationDataColumnInfo2.maxColumnIndexValue = registrationDataColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_RegistrationDataRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static RegistrationData copy(Realm realm, RegistrationDataColumnInfo registrationDataColumnInfo, RegistrationData registrationData, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(registrationData);
        if (realmObjectProxy != null) {
            return (RegistrationData) realmObjectProxy;
        }
        RegistrationData registrationData2 = registrationData;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(RegistrationData.class), registrationDataColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(registrationDataColumnInfo.dataStatusIndex, registrationData2.realmGet$dataStatus());
        osObjectBuilder.addString(registrationDataColumnInfo.deviceIdIndex, registrationData2.realmGet$deviceId());
        osObjectBuilder.addString(registrationDataColumnInfo.fcmKeyIndex, registrationData2.realmGet$fcmKey());
        osObjectBuilder.addString(registrationDataColumnInfo.packageNameIndex, registrationData2.realmGet$packageName());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedApkVersionIndex, registrationData2.realmGet$cachedApkVersion());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedPhoneNumberIndex, registrationData2.realmGet$cachedPhoneNumber());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedMccIndex, registrationData2.realmGet$cachedMcc());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedMncIndex, registrationData2.realmGet$cachedMnc());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedOsVersionIndex, registrationData2.realmGet$cachedOsVersion());
        com_privacystar_core_data_model_RegistrationDataRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(registrationData, newProxyInstance);
        RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData2.realmGet$playStorePurchases();
        if (realmGet$playStorePurchases != null) {
            RealmList<PlayStorePurchase> realmGet$playStorePurchases2 = newProxyInstance.realmGet$playStorePurchases();
            realmGet$playStorePurchases2.clear();
            for (int i = 0; i < realmGet$playStorePurchases.size(); i++) {
                PlayStorePurchase playStorePurchase = realmGet$playStorePurchases.get(i);
                PlayStorePurchase playStorePurchase2 = (PlayStorePurchase) map.get(playStorePurchase);
                if (playStorePurchase2 != null) {
                    realmGet$playStorePurchases2.add(playStorePurchase2);
                } else {
                    realmGet$playStorePurchases2.add(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class), playStorePurchase, z, map, set));
                }
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.RegistrationData copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxy.RegistrationDataColumnInfo r8, com.privacystar.core.data.model.RegistrationData r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxy$RegistrationDataColumnInfo, com.privacystar.core.data.model.RegistrationData, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.RegistrationData");
    }

    public static RegistrationDataColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new RegistrationDataColumnInfo(osSchemaInfo);
    }

    public static RegistrationData createDetachedCopy(RegistrationData registrationData, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        RegistrationData registrationData2;
        if (i > i2 || registrationData == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(registrationData);
        if (cacheData == null) {
            registrationData2 = new RegistrationData();
            map.put(registrationData, new RealmObjectProxy.CacheData<>(i, registrationData2));
        } else if (i >= cacheData.minDepth) {
            return (RegistrationData) cacheData.object;
        } else {
            registrationData2 = (RegistrationData) cacheData.object;
            cacheData.minDepth = i;
        }
        RegistrationData registrationData3 = registrationData2;
        RegistrationData registrationData4 = registrationData;
        registrationData3.realmSet$dataStatus(registrationData4.realmGet$dataStatus());
        registrationData3.realmSet$deviceId(registrationData4.realmGet$deviceId());
        registrationData3.realmSet$fcmKey(registrationData4.realmGet$fcmKey());
        registrationData3.realmSet$packageName(registrationData4.realmGet$packageName());
        registrationData3.realmSet$cachedApkVersion(registrationData4.realmGet$cachedApkVersion());
        registrationData3.realmSet$cachedPhoneNumber(registrationData4.realmGet$cachedPhoneNumber());
        registrationData3.realmSet$cachedMcc(registrationData4.realmGet$cachedMcc());
        registrationData3.realmSet$cachedMnc(registrationData4.realmGet$cachedMnc());
        registrationData3.realmSet$cachedOsVersion(registrationData4.realmGet$cachedOsVersion());
        if (i == i2) {
            registrationData3.realmSet$playStorePurchases(null);
        } else {
            RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData4.realmGet$playStorePurchases();
            RealmList<PlayStorePurchase> realmList = new RealmList<>();
            registrationData3.realmSet$playStorePurchases(realmList);
            int size = realmGet$playStorePurchases.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createDetachedCopy(realmGet$playStorePurchases.get(i3), i + 1, i2, map));
            }
        }
        return registrationData2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 10, 0);
        builder.addPersistedProperty(RegistrationDataFields.DATA_STATUS, RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty(RegistrationDataFields.DEVICE_ID, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.FCM_KEY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("packageName", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.CACHED_APK_VERSION, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.CACHED_PHONE_NUMBER, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.CACHED_MCC, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.CACHED_MNC, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(RegistrationDataFields.CACHED_OS_VERSION, RealmFieldType.STRING, false, false, false);
        builder.addPersistedLinkProperty(RegistrationDataFields.PLAY_STORE_PURCHASES.f260$, RealmFieldType.LIST, com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.RegistrationData createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_RegistrationDataRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.RegistrationData");
    }

    @TargetApi(11)
    public static RegistrationData createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        RegistrationData registrationData = new RegistrationData();
        RegistrationData registrationData2 = registrationData;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(RegistrationDataFields.DATA_STATUS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$dataStatus(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$dataStatus(null);
                }
                z = true;
            } else if (nextName.equals(RegistrationDataFields.DEVICE_ID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$deviceId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$deviceId(null);
                }
            } else if (nextName.equals(RegistrationDataFields.FCM_KEY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$fcmKey(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$fcmKey(null);
                }
            } else if (nextName.equals("packageName")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$packageName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$packageName(null);
                }
            } else if (nextName.equals(RegistrationDataFields.CACHED_APK_VERSION)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$cachedApkVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$cachedApkVersion(null);
                }
            } else if (nextName.equals(RegistrationDataFields.CACHED_PHONE_NUMBER)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$cachedPhoneNumber(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$cachedPhoneNumber(null);
                }
            } else if (nextName.equals(RegistrationDataFields.CACHED_MCC)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$cachedMcc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$cachedMcc(null);
                }
            } else if (nextName.equals(RegistrationDataFields.CACHED_MNC)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$cachedMnc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$cachedMnc(null);
                }
            } else if (nextName.equals(RegistrationDataFields.CACHED_OS_VERSION)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    registrationData2.realmSet$cachedOsVersion(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    registrationData2.realmSet$cachedOsVersion(null);
                }
            } else if (!nextName.equals(RegistrationDataFields.PLAY_STORE_PURCHASES.f260$)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                registrationData2.realmSet$playStorePurchases(null);
            } else {
                registrationData2.realmSet$playStorePurchases(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    registrationData2.realmGet$playStorePurchases().add(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (RegistrationData) realm.copyToRealm((Realm) registrationData, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'dataStatus'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, RegistrationData registrationData, Map<RealmModel, Long> map) {
        if (registrationData instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) registrationData;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(RegistrationData.class);
        long nativePtr = table.getNativePtr();
        RegistrationDataColumnInfo registrationDataColumnInfo = (RegistrationDataColumnInfo) realm.getSchema().getColumnInfo(RegistrationData.class);
        long j = registrationDataColumnInfo.dataStatusIndex;
        RegistrationData registrationData2 = registrationData;
        String realmGet$dataStatus = registrationData2.realmGet$dataStatus();
        long nativeFindFirstNull = realmGet$dataStatus == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$dataStatus);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$dataStatus);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$dataStatus);
        }
        map.put(registrationData, Long.valueOf(nativeFindFirstNull));
        String realmGet$deviceId = registrationData2.realmGet$deviceId();
        if (realmGet$deviceId != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, realmGet$deviceId, false);
        }
        String realmGet$fcmKey = registrationData2.realmGet$fcmKey();
        if (realmGet$fcmKey != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, realmGet$fcmKey, false);
        }
        String realmGet$packageName = registrationData2.realmGet$packageName();
        if (realmGet$packageName != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, realmGet$packageName, false);
        }
        String realmGet$cachedApkVersion = registrationData2.realmGet$cachedApkVersion();
        if (realmGet$cachedApkVersion != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, realmGet$cachedApkVersion, false);
        }
        String realmGet$cachedPhoneNumber = registrationData2.realmGet$cachedPhoneNumber();
        if (realmGet$cachedPhoneNumber != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, realmGet$cachedPhoneNumber, false);
        }
        String realmGet$cachedMcc = registrationData2.realmGet$cachedMcc();
        if (realmGet$cachedMcc != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, realmGet$cachedMcc, false);
        }
        String realmGet$cachedMnc = registrationData2.realmGet$cachedMnc();
        if (realmGet$cachedMnc != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, realmGet$cachedMnc, false);
        }
        String realmGet$cachedOsVersion = registrationData2.realmGet$cachedOsVersion();
        if (realmGet$cachedOsVersion != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, realmGet$cachedOsVersion, false);
        }
        RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData2.realmGet$playStorePurchases();
        if (realmGet$playStorePurchases != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), registrationDataColumnInfo.playStorePurchasesIndex);
            Iterator<PlayStorePurchase> it = realmGet$playStorePurchases.iterator();
            while (it.hasNext()) {
                PlayStorePurchase next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(RegistrationData.class);
        long nativePtr = table.getNativePtr();
        RegistrationDataColumnInfo registrationDataColumnInfo = (RegistrationDataColumnInfo) realm.getSchema().getColumnInfo(RegistrationData.class);
        long j = registrationDataColumnInfo.dataStatusIndex;
        while (it.hasNext()) {
            RegistrationData registrationData = (RegistrationData) it.next();
            if (!map.containsKey(registrationData)) {
                if (registrationData instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) registrationData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(registrationData, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                RegistrationData registrationData2 = registrationData;
                String realmGet$dataStatus = registrationData2.realmGet$dataStatus();
                long nativeFindFirstNull = realmGet$dataStatus == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$dataStatus);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$dataStatus);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$dataStatus);
                }
                map.put(registrationData, Long.valueOf(nativeFindFirstNull));
                String realmGet$deviceId = registrationData2.realmGet$deviceId();
                if (realmGet$deviceId != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, realmGet$deviceId, false);
                }
                String realmGet$fcmKey = registrationData2.realmGet$fcmKey();
                if (realmGet$fcmKey != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, realmGet$fcmKey, false);
                }
                String realmGet$packageName = registrationData2.realmGet$packageName();
                if (realmGet$packageName != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, realmGet$packageName, false);
                }
                String realmGet$cachedApkVersion = registrationData2.realmGet$cachedApkVersion();
                if (realmGet$cachedApkVersion != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, realmGet$cachedApkVersion, false);
                }
                String realmGet$cachedPhoneNumber = registrationData2.realmGet$cachedPhoneNumber();
                if (realmGet$cachedPhoneNumber != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, realmGet$cachedPhoneNumber, false);
                }
                String realmGet$cachedMcc = registrationData2.realmGet$cachedMcc();
                if (realmGet$cachedMcc != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, realmGet$cachedMcc, false);
                }
                String realmGet$cachedMnc = registrationData2.realmGet$cachedMnc();
                if (realmGet$cachedMnc != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, realmGet$cachedMnc, false);
                }
                String realmGet$cachedOsVersion = registrationData2.realmGet$cachedOsVersion();
                if (realmGet$cachedOsVersion != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, realmGet$cachedOsVersion, false);
                }
                RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData2.realmGet$playStorePurchases();
                if (realmGet$playStorePurchases != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), registrationDataColumnInfo.playStorePurchasesIndex);
                    Iterator<PlayStorePurchase> it2 = realmGet$playStorePurchases.iterator();
                    while (it2.hasNext()) {
                        PlayStorePurchase next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, RegistrationData registrationData, Map<RealmModel, Long> map) {
        if (registrationData instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) registrationData;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(RegistrationData.class);
        long nativePtr = table.getNativePtr();
        RegistrationDataColumnInfo registrationDataColumnInfo = (RegistrationDataColumnInfo) realm.getSchema().getColumnInfo(RegistrationData.class);
        long j = registrationDataColumnInfo.dataStatusIndex;
        RegistrationData registrationData2 = registrationData;
        String realmGet$dataStatus = registrationData2.realmGet$dataStatus();
        long nativeFindFirstNull = realmGet$dataStatus == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$dataStatus);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$dataStatus);
        }
        map.put(registrationData, Long.valueOf(nativeFindFirstNull));
        String realmGet$deviceId = registrationData2.realmGet$deviceId();
        if (realmGet$deviceId != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, realmGet$deviceId, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, false);
        }
        String realmGet$fcmKey = registrationData2.realmGet$fcmKey();
        if (realmGet$fcmKey != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, realmGet$fcmKey, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, false);
        }
        String realmGet$packageName = registrationData2.realmGet$packageName();
        if (realmGet$packageName != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, realmGet$packageName, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, false);
        }
        String realmGet$cachedApkVersion = registrationData2.realmGet$cachedApkVersion();
        if (realmGet$cachedApkVersion != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, realmGet$cachedApkVersion, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, false);
        }
        String realmGet$cachedPhoneNumber = registrationData2.realmGet$cachedPhoneNumber();
        if (realmGet$cachedPhoneNumber != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, realmGet$cachedPhoneNumber, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, false);
        }
        String realmGet$cachedMcc = registrationData2.realmGet$cachedMcc();
        if (realmGet$cachedMcc != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, realmGet$cachedMcc, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, false);
        }
        String realmGet$cachedMnc = registrationData2.realmGet$cachedMnc();
        if (realmGet$cachedMnc != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, realmGet$cachedMnc, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, false);
        }
        String realmGet$cachedOsVersion = registrationData2.realmGet$cachedOsVersion();
        if (realmGet$cachedOsVersion != null) {
            Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, realmGet$cachedOsVersion, false);
        } else {
            Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, false);
        }
        OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), registrationDataColumnInfo.playStorePurchasesIndex);
        RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData2.realmGet$playStorePurchases();
        if (realmGet$playStorePurchases == null || realmGet$playStorePurchases.size() != osList.size()) {
            osList.removeAll();
            if (realmGet$playStorePurchases != null) {
                Iterator<PlayStorePurchase> it = realmGet$playStorePurchases.iterator();
                while (it.hasNext()) {
                    PlayStorePurchase next = it.next();
                    Long l = map.get(next);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, next, map));
                    }
                    osList.addRow(l2.longValue());
                }
            }
        } else {
            int size = realmGet$playStorePurchases.size();
            for (int i = 0; i < size; i++) {
                PlayStorePurchase playStorePurchase = realmGet$playStorePurchases.get(i);
                Long l3 = map.get(playStorePurchase);
                Long l4 = l3;
                if (l3 == null) {
                    l4 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, playStorePurchase, map));
                }
                osList.setRow(i, l4.longValue());
            }
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(RegistrationData.class);
        long nativePtr = table.getNativePtr();
        RegistrationDataColumnInfo registrationDataColumnInfo = (RegistrationDataColumnInfo) realm.getSchema().getColumnInfo(RegistrationData.class);
        long j = registrationDataColumnInfo.dataStatusIndex;
        while (it.hasNext()) {
            RegistrationData registrationData = (RegistrationData) it.next();
            if (!map.containsKey(registrationData)) {
                if (registrationData instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) registrationData;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(registrationData, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                RegistrationData registrationData2 = registrationData;
                String realmGet$dataStatus = registrationData2.realmGet$dataStatus();
                long nativeFindFirstNull = realmGet$dataStatus == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$dataStatus);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$dataStatus);
                }
                map.put(registrationData, Long.valueOf(nativeFindFirstNull));
                String realmGet$deviceId = registrationData2.realmGet$deviceId();
                if (realmGet$deviceId != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, realmGet$deviceId, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.deviceIdIndex, nativeFindFirstNull, false);
                }
                String realmGet$fcmKey = registrationData2.realmGet$fcmKey();
                if (realmGet$fcmKey != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, realmGet$fcmKey, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.fcmKeyIndex, nativeFindFirstNull, false);
                }
                String realmGet$packageName = registrationData2.realmGet$packageName();
                if (realmGet$packageName != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, realmGet$packageName, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.packageNameIndex, nativeFindFirstNull, false);
                }
                String realmGet$cachedApkVersion = registrationData2.realmGet$cachedApkVersion();
                if (realmGet$cachedApkVersion != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, realmGet$cachedApkVersion, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedApkVersionIndex, nativeFindFirstNull, false);
                }
                String realmGet$cachedPhoneNumber = registrationData2.realmGet$cachedPhoneNumber();
                if (realmGet$cachedPhoneNumber != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, realmGet$cachedPhoneNumber, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedPhoneNumberIndex, nativeFindFirstNull, false);
                }
                String realmGet$cachedMcc = registrationData2.realmGet$cachedMcc();
                if (realmGet$cachedMcc != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, realmGet$cachedMcc, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedMccIndex, nativeFindFirstNull, false);
                }
                String realmGet$cachedMnc = registrationData2.realmGet$cachedMnc();
                if (realmGet$cachedMnc != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, realmGet$cachedMnc, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedMncIndex, nativeFindFirstNull, false);
                }
                String realmGet$cachedOsVersion = registrationData2.realmGet$cachedOsVersion();
                if (realmGet$cachedOsVersion != null) {
                    Table.nativeSetString(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, realmGet$cachedOsVersion, false);
                } else {
                    Table.nativeSetNull(nativePtr, registrationDataColumnInfo.cachedOsVersionIndex, nativeFindFirstNull, false);
                }
                OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), registrationDataColumnInfo.playStorePurchasesIndex);
                RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData2.realmGet$playStorePurchases();
                if (realmGet$playStorePurchases == null || realmGet$playStorePurchases.size() != osList.size()) {
                    osList.removeAll();
                    if (realmGet$playStorePurchases != null) {
                        Iterator<PlayStorePurchase> it2 = realmGet$playStorePurchases.iterator();
                        while (it2.hasNext()) {
                            PlayStorePurchase next = it2.next();
                            Long l = map.get(next);
                            Long l2 = l;
                            if (l == null) {
                                l2 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, next, map));
                            }
                            osList.addRow(l2.longValue());
                        }
                    }
                } else {
                    int size = realmGet$playStorePurchases.size();
                    for (int i = 0; i < size; i++) {
                        PlayStorePurchase playStorePurchase = realmGet$playStorePurchases.get(i);
                        Long l3 = map.get(playStorePurchase);
                        Long l4 = l3;
                        if (l3 == null) {
                            l4 = Long.valueOf(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.insertOrUpdate(realm, playStorePurchase, map));
                        }
                        osList.setRow(i, l4.longValue());
                    }
                }
            }
        }
    }

    private static com_privacystar_core_data_model_RegistrationDataRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(RegistrationData.class), false, Collections.emptyList());
        com_privacystar_core_data_model_RegistrationDataRealmProxy com_privacystar_core_data_model_registrationdatarealmproxy = new com_privacystar_core_data_model_RegistrationDataRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_registrationdatarealmproxy;
    }

    static RegistrationData update(Realm realm, RegistrationDataColumnInfo registrationDataColumnInfo, RegistrationData registrationData, RegistrationData registrationData2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RegistrationData registrationData3 = registrationData2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(RegistrationData.class), registrationDataColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(registrationDataColumnInfo.dataStatusIndex, registrationData3.realmGet$dataStatus());
        osObjectBuilder.addString(registrationDataColumnInfo.deviceIdIndex, registrationData3.realmGet$deviceId());
        osObjectBuilder.addString(registrationDataColumnInfo.fcmKeyIndex, registrationData3.realmGet$fcmKey());
        osObjectBuilder.addString(registrationDataColumnInfo.packageNameIndex, registrationData3.realmGet$packageName());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedApkVersionIndex, registrationData3.realmGet$cachedApkVersion());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedPhoneNumberIndex, registrationData3.realmGet$cachedPhoneNumber());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedMccIndex, registrationData3.realmGet$cachedMcc());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedMncIndex, registrationData3.realmGet$cachedMnc());
        osObjectBuilder.addString(registrationDataColumnInfo.cachedOsVersionIndex, registrationData3.realmGet$cachedOsVersion());
        RealmList<PlayStorePurchase> realmGet$playStorePurchases = registrationData3.realmGet$playStorePurchases();
        if (realmGet$playStorePurchases != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$playStorePurchases.size(); i++) {
                PlayStorePurchase playStorePurchase = realmGet$playStorePurchases.get(i);
                PlayStorePurchase playStorePurchase2 = (PlayStorePurchase) map.get(playStorePurchase);
                if (playStorePurchase2 != null) {
                    realmList.add(playStorePurchase2);
                } else {
                    realmList.add(com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_PlayStorePurchaseRealmProxy.PlayStorePurchaseColumnInfo) realm.getSchema().getColumnInfo(PlayStorePurchase.class), playStorePurchase, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(registrationDataColumnInfo.playStorePurchasesIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(registrationDataColumnInfo.playStorePurchasesIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return registrationData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_RegistrationDataRealmProxy com_privacystar_core_data_model_registrationdatarealmproxy = (com_privacystar_core_data_model_RegistrationDataRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_registrationdatarealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_registrationdatarealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_registrationdatarealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (RegistrationDataColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$cachedApkVersion() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cachedApkVersionIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$cachedMcc() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cachedMccIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$cachedMnc() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cachedMncIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$cachedOsVersion() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cachedOsVersionIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$cachedPhoneNumber() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.cachedPhoneNumberIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$dataStatus() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.dataStatusIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$deviceId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.deviceIdIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$fcmKey() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.fcmKeyIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public String realmGet$packageName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.packageNameIndex);
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public RealmList<PlayStorePurchase> realmGet$playStorePurchases() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.playStorePurchasesRealmList != null) {
            return this.playStorePurchasesRealmList;
        }
        this.playStorePurchasesRealmList = new RealmList<>(PlayStorePurchase.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.playStorePurchasesIndex), this.proxyState.getRealm$realm());
        return this.playStorePurchasesRealmList;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$cachedApkVersion(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cachedApkVersionIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cachedApkVersionIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cachedApkVersionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cachedApkVersionIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$cachedMcc(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cachedMccIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cachedMccIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cachedMccIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cachedMccIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$cachedMnc(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cachedMncIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cachedMncIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cachedMncIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cachedMncIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$cachedOsVersion(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cachedOsVersionIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cachedOsVersionIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cachedOsVersionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cachedOsVersionIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$cachedPhoneNumber(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cachedPhoneNumberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.cachedPhoneNumberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.cachedPhoneNumberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.cachedPhoneNumberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$dataStatus(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'dataStatus' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$deviceId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.deviceIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.deviceIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.deviceIdIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.deviceIdIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$fcmKey(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.fcmKeyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.fcmKeyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.fcmKeyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.fcmKeyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$packageName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.packageNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.packageNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.packageNameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.packageNameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // com.privacystar.core.data.model.RegistrationData, io.realm.AbstractC1922x55998d49
    public void realmSet$playStorePurchases(RealmList<PlayStorePurchase> realmList) {
        RealmList<PlayStorePurchase> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(RegistrationDataFields.PLAY_STORE_PURCHASES.f260$)) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<PlayStorePurchase> it = realmList.iterator();
                        while (it.hasNext()) {
                            PlayStorePurchase next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.playStorePurchasesIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    PlayStorePurchase playStorePurchase = realmList2.get(i);
                    this.proxyState.checkValidObject(playStorePurchase);
                    modelList.addRow(((RealmObjectProxy) playStorePurchase).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PlayStorePurchase playStorePurchase2 = realmList2.get(i2);
            this.proxyState.checkValidObject(playStorePurchase2);
            modelList.setRow(i2, ((RealmObjectProxy) playStorePurchase2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("RegistrationData = proxy[");
        sb.append("{dataStatus:");
        sb.append(realmGet$dataStatus() != null ? realmGet$dataStatus() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{deviceId:");
        sb.append(realmGet$deviceId() != null ? realmGet$deviceId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{fcmKey:");
        sb.append(realmGet$fcmKey() != null ? realmGet$fcmKey() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{packageName:");
        sb.append(realmGet$packageName() != null ? realmGet$packageName() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{cachedApkVersion:");
        sb.append(realmGet$cachedApkVersion() != null ? realmGet$cachedApkVersion() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{cachedPhoneNumber:");
        sb.append(realmGet$cachedPhoneNumber() != null ? realmGet$cachedPhoneNumber() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{cachedMcc:");
        sb.append(realmGet$cachedMcc() != null ? realmGet$cachedMcc() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{cachedMnc:");
        sb.append(realmGet$cachedMnc() != null ? realmGet$cachedMnc() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{cachedOsVersion:");
        sb.append(realmGet$cachedOsVersion() != null ? realmGet$cachedOsVersion() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{playStorePurchases:");
        sb.append("RealmList<PlayStorePurchase>[");
        sb.append(realmGet$playStorePurchases().size());
        sb.append("]");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
