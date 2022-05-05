package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy.class */
public class C10937xd77908c0 extends SmsUrlScanResultRealmObject implements RealmObjectProxy, AbstractC10938x98ac5c59 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public SmsUrlScanResultRealmObjectColumnInfo columnInfo;
    public ProxyState<SmsUrlScanResultRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SmsUrlScanResultRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy$SmsUrlScanResultRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy$SmsUrlScanResultRealmObjectColumnInfo.class */
    public static final class SmsUrlScanResultRealmObjectColumnInfo extends ColumnInfo {
        public long addressIndex;
        public long bodyIndex;
        public long idIndex;
        public long maxColumnIndexValue;
        public long ratingIndex;
        public long refUriIndex;
        public long sourceIndex;
        public long updateDateIndex;
        public long urlIndex;
        public long urlIndexIndex;

        public SmsUrlScanResultRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public SmsUrlScanResultRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(9);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.refUriIndex = addColumnDetails(SmsUrlScanResultRealmObject.REF_URI, SmsUrlScanResultRealmObject.REF_URI, objectSchemaInfo);
            this.addressIndex = addColumnDetails("address", "address", objectSchemaInfo);
            this.bodyIndex = addColumnDetails("body", "body", objectSchemaInfo);
            this.updateDateIndex = addColumnDetails(SmsUrlScanResultRealmObject.UPDATE_DATE, SmsUrlScanResultRealmObject.UPDATE_DATE, objectSchemaInfo);
            this.urlIndexIndex = addColumnDetails(SmsUrlScanResultRealmObject.URL_INDEX, SmsUrlScanResultRealmObject.URL_INDEX, objectSchemaInfo);
            this.urlIndex = addColumnDetails("url", "url", objectSchemaInfo);
            this.ratingIndex = addColumnDetails(SmsUrlScanResultRealmObject.RATING, SmsUrlScanResultRealmObject.RATING, objectSchemaInfo);
            this.sourceIndex = addColumnDetails("source", "source", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new SmsUrlScanResultRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo = (SmsUrlScanResultRealmObjectColumnInfo) columnInfo;
            SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo2 = (SmsUrlScanResultRealmObjectColumnInfo) columnInfo2;
            smsUrlScanResultRealmObjectColumnInfo2.idIndex = smsUrlScanResultRealmObjectColumnInfo.idIndex;
            smsUrlScanResultRealmObjectColumnInfo2.refUriIndex = smsUrlScanResultRealmObjectColumnInfo.refUriIndex;
            smsUrlScanResultRealmObjectColumnInfo2.addressIndex = smsUrlScanResultRealmObjectColumnInfo.addressIndex;
            smsUrlScanResultRealmObjectColumnInfo2.bodyIndex = smsUrlScanResultRealmObjectColumnInfo.bodyIndex;
            smsUrlScanResultRealmObjectColumnInfo2.updateDateIndex = smsUrlScanResultRealmObjectColumnInfo.updateDateIndex;
            smsUrlScanResultRealmObjectColumnInfo2.urlIndexIndex = smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex;
            smsUrlScanResultRealmObjectColumnInfo2.urlIndex = smsUrlScanResultRealmObjectColumnInfo.urlIndex;
            smsUrlScanResultRealmObjectColumnInfo2.ratingIndex = smsUrlScanResultRealmObjectColumnInfo.ratingIndex;
            smsUrlScanResultRealmObjectColumnInfo2.sourceIndex = smsUrlScanResultRealmObjectColumnInfo.sourceIndex;
            smsUrlScanResultRealmObjectColumnInfo2.maxColumnIndexValue = smsUrlScanResultRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10937xd77908c0() {
        this.proxyState.setConstructionFinished();
    }

    public static SmsUrlScanResultRealmObject copy(Realm realm, SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo, SmsUrlScanResultRealmObject smsUrlScanResultRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(smsUrlScanResultRealmObject);
        if (realmObjectProxy != null) {
            return (SmsUrlScanResultRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SmsUrlScanResultRealmObject.class), smsUrlScanResultRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.idIndex, Long.valueOf(smsUrlScanResultRealmObject.realmGet$id()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.refUriIndex, smsUrlScanResultRealmObject.realmGet$refUri());
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.addressIndex, smsUrlScanResultRealmObject.realmGet$address());
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.bodyIndex, smsUrlScanResultRealmObject.realmGet$body());
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.updateDateIndex, Long.valueOf(smsUrlScanResultRealmObject.realmGet$updateDate()));
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex, Integer.valueOf(smsUrlScanResultRealmObject.realmGet$urlIndex()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.urlIndex, smsUrlScanResultRealmObject.realmGet$url());
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.ratingIndex, Integer.valueOf(smsUrlScanResultRealmObject.realmGet$rating()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.sourceIndex, smsUrlScanResultRealmObject.realmGet$source());
        C10937xd77908c0 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(smsUrlScanResultRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10937xd77908c0.SmsUrlScanResultRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10937xd77908c0.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_messaging_SmsUrlScanResultRealmObjectRealmProxy$SmsUrlScanResultRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject");
    }

    public static SmsUrlScanResultRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SmsUrlScanResultRealmObjectColumnInfo(osSchemaInfo);
    }

    public static SmsUrlScanResultRealmObject createDetachedCopy(SmsUrlScanResultRealmObject smsUrlScanResultRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SmsUrlScanResultRealmObject smsUrlScanResultRealmObject2;
        if (i > i2 || smsUrlScanResultRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(smsUrlScanResultRealmObject);
        if (cacheData == null) {
            SmsUrlScanResultRealmObject smsUrlScanResultRealmObject3 = new SmsUrlScanResultRealmObject();
            map.put(smsUrlScanResultRealmObject, new RealmObjectProxy.CacheData<>(i, smsUrlScanResultRealmObject3));
            smsUrlScanResultRealmObject2 = smsUrlScanResultRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (SmsUrlScanResultRealmObject) cacheData.object;
        } else {
            smsUrlScanResultRealmObject2 = (SmsUrlScanResultRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        smsUrlScanResultRealmObject2.realmSet$id(smsUrlScanResultRealmObject.realmGet$id());
        smsUrlScanResultRealmObject2.realmSet$refUri(smsUrlScanResultRealmObject.realmGet$refUri());
        smsUrlScanResultRealmObject2.realmSet$address(smsUrlScanResultRealmObject.realmGet$address());
        smsUrlScanResultRealmObject2.realmSet$body(smsUrlScanResultRealmObject.realmGet$body());
        smsUrlScanResultRealmObject2.realmSet$updateDate(smsUrlScanResultRealmObject.realmGet$updateDate());
        smsUrlScanResultRealmObject2.realmSet$urlIndex(smsUrlScanResultRealmObject.realmGet$urlIndex());
        smsUrlScanResultRealmObject2.realmSet$url(smsUrlScanResultRealmObject.realmGet$url());
        smsUrlScanResultRealmObject2.realmSet$rating(smsUrlScanResultRealmObject.realmGet$rating());
        smsUrlScanResultRealmObject2.realmSet$source(smsUrlScanResultRealmObject.realmGet$source());
        return smsUrlScanResultRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 9, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty(SmsUrlScanResultRealmObject.REF_URI, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("address", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("body", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(SmsUrlScanResultRealmObject.UPDATE_DATE, RealmFieldType.INTEGER, false, true, true);
        builder.addPersistedProperty(SmsUrlScanResultRealmObject.URL_INDEX, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("url", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(SmsUrlScanResultRealmObject.RATING, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("source", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x022e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10937xd77908c0.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject");
    }

    @TargetApi(11)
    public static SmsUrlScanResultRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SmsUrlScanResultRealmObject smsUrlScanResultRealmObject = new SmsUrlScanResultRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals(SmsUrlScanResultRealmObject.REF_URI)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$refUri(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    smsUrlScanResultRealmObject.realmSet$refUri(null);
                }
            } else if (nextName.equals("address")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$address(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    smsUrlScanResultRealmObject.realmSet$address(null);
                }
            } else if (nextName.equals("body")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$body(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    smsUrlScanResultRealmObject.realmSet$body(null);
                }
            } else if (nextName.equals(SmsUrlScanResultRealmObject.UPDATE_DATE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$updateDate(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'updateDate' to null.");
                }
            } else if (nextName.equals(SmsUrlScanResultRealmObject.URL_INDEX)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$urlIndex(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'urlIndex' to null.");
                }
            } else if (nextName.equals("url")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    smsUrlScanResultRealmObject.realmSet$url(null);
                }
            } else if (nextName.equals(SmsUrlScanResultRealmObject.RATING)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    smsUrlScanResultRealmObject.realmSet$rating(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'rating' to null.");
                }
            } else if (!nextName.equals("source")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                smsUrlScanResultRealmObject.realmSet$source(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                smsUrlScanResultRealmObject.realmSet$source(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SmsUrlScanResultRealmObject) realm.copyToRealm((Realm) smsUrlScanResultRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, SmsUrlScanResultRealmObject smsUrlScanResultRealmObject, Map<RealmModel, Long> map) {
        if (smsUrlScanResultRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) smsUrlScanResultRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SmsUrlScanResultRealmObject.class);
        long nativePtr = table.getNativePtr();
        SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo = (SmsUrlScanResultRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SmsUrlScanResultRealmObject.class);
        long j = smsUrlScanResultRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(smsUrlScanResultRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, smsUrlScanResultRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(smsUrlScanResultRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(smsUrlScanResultRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$refUri = smsUrlScanResultRealmObject.realmGet$refUri();
        if (realmGet$refUri != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.refUriIndex, nativeFindFirstInt, realmGet$refUri, false);
        }
        String realmGet$address = smsUrlScanResultRealmObject.realmGet$address();
        if (realmGet$address != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
        }
        String realmGet$body = smsUrlScanResultRealmObject.realmGet$body();
        if (realmGet$body != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.bodyIndex, nativeFindFirstInt, realmGet$body, false);
        }
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.updateDateIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$updateDate(), false);
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$urlIndex(), false);
        String realmGet$url = smsUrlScanResultRealmObject.realmGet$url();
        if (realmGet$url != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndex, nativeFindFirstInt, realmGet$url, false);
        }
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.ratingIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$rating(), false);
        String realmGet$source = smsUrlScanResultRealmObject.realmGet$source();
        if (realmGet$source != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.sourceIndex, nativeFindFirstInt, realmGet$source, false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SmsUrlScanResultRealmObject.class);
        long nativePtr = table.getNativePtr();
        SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo = (SmsUrlScanResultRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SmsUrlScanResultRealmObject.class);
        long j = smsUrlScanResultRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            SmsUrlScanResultRealmObject smsUrlScanResultRealmObject = (SmsUrlScanResultRealmObject) it.next();
            if (!map.containsKey(smsUrlScanResultRealmObject)) {
                if (smsUrlScanResultRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) smsUrlScanResultRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(smsUrlScanResultRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(smsUrlScanResultRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, smsUrlScanResultRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(smsUrlScanResultRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(smsUrlScanResultRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$refUri = smsUrlScanResultRealmObject.realmGet$refUri();
                if (realmGet$refUri != null) {
                    Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.refUriIndex, nativeFindFirstInt, realmGet$refUri, false);
                }
                String realmGet$address = smsUrlScanResultRealmObject.realmGet$address();
                if (realmGet$address != null) {
                    Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
                }
                String realmGet$body = smsUrlScanResultRealmObject.realmGet$body();
                if (realmGet$body != null) {
                    Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.bodyIndex, nativeFindFirstInt, realmGet$body, false);
                }
                Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.updateDateIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$updateDate(), false);
                Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$urlIndex(), false);
                String realmGet$url = smsUrlScanResultRealmObject.realmGet$url();
                if (realmGet$url != null) {
                    Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndex, nativeFindFirstInt, realmGet$url, false);
                }
                Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.ratingIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$rating(), false);
                String realmGet$source = smsUrlScanResultRealmObject.realmGet$source();
                if (realmGet$source != null) {
                    Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.sourceIndex, nativeFindFirstInt, realmGet$source, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SmsUrlScanResultRealmObject smsUrlScanResultRealmObject, Map<RealmModel, Long> map) {
        if (smsUrlScanResultRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) smsUrlScanResultRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SmsUrlScanResultRealmObject.class);
        long nativePtr = table.getNativePtr();
        SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo = (SmsUrlScanResultRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SmsUrlScanResultRealmObject.class);
        long j = smsUrlScanResultRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(smsUrlScanResultRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, smsUrlScanResultRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(smsUrlScanResultRealmObject.realmGet$id()));
        }
        map.put(smsUrlScanResultRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$refUri = smsUrlScanResultRealmObject.realmGet$refUri();
        if (realmGet$refUri != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.refUriIndex, nativeFindFirstInt, realmGet$refUri, false);
        } else {
            Table.nativeSetNull(nativePtr, smsUrlScanResultRealmObjectColumnInfo.refUriIndex, nativeFindFirstInt, false);
        }
        String realmGet$address = smsUrlScanResultRealmObject.realmGet$address();
        if (realmGet$address != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, realmGet$address, false);
        } else {
            Table.nativeSetNull(nativePtr, smsUrlScanResultRealmObjectColumnInfo.addressIndex, nativeFindFirstInt, false);
        }
        String realmGet$body = smsUrlScanResultRealmObject.realmGet$body();
        if (realmGet$body != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.bodyIndex, nativeFindFirstInt, realmGet$body, false);
        } else {
            Table.nativeSetNull(nativePtr, smsUrlScanResultRealmObjectColumnInfo.bodyIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.updateDateIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$updateDate(), false);
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$urlIndex(), false);
        String realmGet$url = smsUrlScanResultRealmObject.realmGet$url();
        if (realmGet$url != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndex, nativeFindFirstInt, realmGet$url, false);
        } else {
            Table.nativeSetNull(nativePtr, smsUrlScanResultRealmObjectColumnInfo.urlIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, smsUrlScanResultRealmObjectColumnInfo.ratingIndex, nativeFindFirstInt, smsUrlScanResultRealmObject.realmGet$rating(), false);
        String realmGet$source = smsUrlScanResultRealmObject.realmGet$source();
        if (realmGet$source != null) {
            Table.nativeSetString(nativePtr, smsUrlScanResultRealmObjectColumnInfo.sourceIndex, nativeFindFirstInt, realmGet$source, false);
        } else {
            Table.nativeSetNull(nativePtr, smsUrlScanResultRealmObjectColumnInfo.sourceIndex, nativeFindFirstInt, false);
        }
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
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10937xd77908c0.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10937xd77908c0 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SmsUrlScanResultRealmObject.class), false, Collections.emptyList());
        C10937xd77908c0 gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy = new C10937xd77908c0();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy;
    }

    public static SmsUrlScanResultRealmObject update(Realm realm, SmsUrlScanResultRealmObjectColumnInfo smsUrlScanResultRealmObjectColumnInfo, SmsUrlScanResultRealmObject smsUrlScanResultRealmObject, SmsUrlScanResultRealmObject smsUrlScanResultRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SmsUrlScanResultRealmObject.class), smsUrlScanResultRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.idIndex, Long.valueOf(smsUrlScanResultRealmObject2.realmGet$id()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.refUriIndex, smsUrlScanResultRealmObject2.realmGet$refUri());
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.addressIndex, smsUrlScanResultRealmObject2.realmGet$address());
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.bodyIndex, smsUrlScanResultRealmObject2.realmGet$body());
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.updateDateIndex, Long.valueOf(smsUrlScanResultRealmObject2.realmGet$updateDate()));
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.urlIndexIndex, Integer.valueOf(smsUrlScanResultRealmObject2.realmGet$urlIndex()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.urlIndex, smsUrlScanResultRealmObject2.realmGet$url());
        osObjectBuilder.addInteger(smsUrlScanResultRealmObjectColumnInfo.ratingIndex, Integer.valueOf(smsUrlScanResultRealmObject2.realmGet$rating()));
        osObjectBuilder.addString(smsUrlScanResultRealmObjectColumnInfo.sourceIndex, smsUrlScanResultRealmObject2.realmGet$source());
        osObjectBuilder.updateExistingObject();
        return smsUrlScanResultRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10937xd77908c0.class != obj.getClass()) {
            return false;
        }
        C10937xd77908c0 gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy = (C10937xd77908c0) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_messaging_smsurlscanresultrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SmsUrlScanResultRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public String realmGet$address() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.addressIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public String realmGet$body() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.bodyIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public int realmGet$rating() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.ratingIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public String realmGet$refUri() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.refUriIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public String realmGet$source() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.sourceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public long realmGet$updateDate() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.updateDateIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public String realmGet$url() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.urlIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public int realmGet$urlIndex() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.urlIndexIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
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

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$body(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.bodyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.bodyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.bodyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.bodyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$rating(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.ratingIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.ratingIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$refUri(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.refUriIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.refUriIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.refUriIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.refUriIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$source(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.sourceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.sourceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.sourceIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.sourceIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$updateDate(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.updateDateIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.updateDateIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$url(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.urlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.urlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.urlIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.urlIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject, io.realm.AbstractC10938x98ac5c59
    public void realmSet$urlIndex(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.urlIndexIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.urlIndexIndex, row$realm.getIndex(), i, true);
        }
    }
}
