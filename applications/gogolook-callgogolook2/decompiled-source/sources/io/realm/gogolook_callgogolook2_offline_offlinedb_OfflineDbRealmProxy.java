package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.offline.offlinedb.OfflineDb;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.class */
public class gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy extends OfflineDb implements RealmObjectProxy, AbstractC10895x85b13b7d {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public OfflineDbColumnInfo columnInfo;
    public ProxyState<OfflineDb> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "OfflineDb";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy$OfflineDbColumnInfo.class */
    public static final class OfflineDbColumnInfo extends ColumnInfo {
        public long categIndex;
        public long dataIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long numberIndex;
        public long typeIndex;

        public OfflineDbColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public OfflineDbColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.categIndex = addColumnDetails("categ", "categ", objectSchemaInfo);
            this.dataIndex = addColumnDetails("data", "data", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new OfflineDbColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OfflineDbColumnInfo offlineDbColumnInfo = (OfflineDbColumnInfo) columnInfo;
            OfflineDbColumnInfo offlineDbColumnInfo2 = (OfflineDbColumnInfo) columnInfo2;
            offlineDbColumnInfo2.numberIndex = offlineDbColumnInfo.numberIndex;
            offlineDbColumnInfo2.nameIndex = offlineDbColumnInfo.nameIndex;
            offlineDbColumnInfo2.typeIndex = offlineDbColumnInfo.typeIndex;
            offlineDbColumnInfo2.categIndex = offlineDbColumnInfo.categIndex;
            offlineDbColumnInfo2.dataIndex = offlineDbColumnInfo.dataIndex;
            offlineDbColumnInfo2.maxColumnIndexValue = offlineDbColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static OfflineDb copy(Realm realm, OfflineDbColumnInfo offlineDbColumnInfo, OfflineDb offlineDb, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offlineDb);
        if (realmObjectProxy != null) {
            return (OfflineDb) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OfflineDb.class), offlineDbColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(offlineDbColumnInfo.numberIndex, offlineDb.realmGet$number());
        osObjectBuilder.addString(offlineDbColumnInfo.nameIndex, offlineDb.realmGet$name());
        osObjectBuilder.addInteger(offlineDbColumnInfo.typeIndex, Integer.valueOf(offlineDb.realmGet$type()));
        osObjectBuilder.addInteger(offlineDbColumnInfo.categIndex, Integer.valueOf(offlineDb.realmGet$categ()));
        osObjectBuilder.addString(offlineDbColumnInfo.dataIndex, offlineDb.realmGet$data());
        gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offlineDb, newProxyInstance);
        return newProxyInstance;
    }

    public static OfflineDb copyOrUpdate(Realm realm, OfflineDbColumnInfo offlineDbColumnInfo, OfflineDb offlineDb, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (offlineDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return offlineDb;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(offlineDb);
        return realmObjectProxy2 != null ? (OfflineDb) realmObjectProxy2 : copy(realm, offlineDbColumnInfo, offlineDb, z, map, set);
    }

    public static OfflineDbColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OfflineDbColumnInfo(osSchemaInfo);
    }

    public static OfflineDb createDetachedCopy(OfflineDb offlineDb, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        OfflineDb offlineDb2;
        if (i > i2 || offlineDb == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offlineDb);
        if (cacheData == null) {
            OfflineDb offlineDb3 = new OfflineDb();
            map.put(offlineDb, new RealmObjectProxy.CacheData<>(i, offlineDb3));
            offlineDb2 = offlineDb3;
        } else if (i >= cacheData.minDepth) {
            return (OfflineDb) cacheData.object;
        } else {
            offlineDb2 = (OfflineDb) cacheData.object;
            cacheData.minDepth = i;
        }
        offlineDb2.realmSet$number(offlineDb.realmGet$number());
        offlineDb2.realmSet$name(offlineDb.realmGet$name());
        offlineDb2.realmSet$type(offlineDb.realmGet$type());
        offlineDb2.realmSet$categ(offlineDb.realmGet$categ());
        offlineDb2.realmSet$data(offlineDb.realmGet$data());
        return offlineDb2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, true);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("categ", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("data", RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    public static OfflineDb createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        OfflineDb offlineDb = (OfflineDb) realm.createObjectInternal(OfflineDb.class, true, Collections.emptyList());
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                offlineDb.realmSet$number(null);
            } else {
                offlineDb.realmSet$number(jSONObject.getString("number"));
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                offlineDb.realmSet$name(null);
            } else {
                offlineDb.realmSet$name(jSONObject.getString("name"));
            }
        }
        if (jSONObject.has("type")) {
            if (!jSONObject.isNull("type")) {
                offlineDb.realmSet$type(jSONObject.getInt("type"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        if (jSONObject.has("categ")) {
            if (!jSONObject.isNull("categ")) {
                offlineDb.realmSet$categ(jSONObject.getInt("categ"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
            }
        }
        if (jSONObject.has("data")) {
            if (jSONObject.isNull("data")) {
                offlineDb.realmSet$data(null);
            } else {
                offlineDb.realmSet$data(jSONObject.getString("data"));
            }
        }
        return offlineDb;
    }

    @TargetApi(11)
    public static OfflineDb createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        OfflineDb offlineDb = new OfflineDb();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDb.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDb.realmSet$number(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDb.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    offlineDb.realmSet$name(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDb.realmSet$type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("categ")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineDb.realmSet$categ(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categ' to null.");
                }
            } else if (!nextName.equals("data")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offlineDb.realmSet$data(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                offlineDb.realmSet$data(null);
            }
        }
        jsonReader.endObject();
        return (OfflineDb) realm.copyToRealm((Realm) offlineDb, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, OfflineDb offlineDb, Map<RealmModel, Long> map) {
        if (offlineDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDb.class);
        long nativePtr = table.getNativePtr();
        OfflineDbColumnInfo offlineDbColumnInfo = (OfflineDbColumnInfo) realm.getSchema().getColumnInfo(OfflineDb.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDb, Long.valueOf(createRow));
        String realmGet$number = offlineDb.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        String realmGet$name = offlineDb.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbColumnInfo.typeIndex, createRow, offlineDb.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbColumnInfo.categIndex, createRow, offlineDb.realmGet$categ(), false);
        String realmGet$data = offlineDb.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.dataIndex, createRow, realmGet$data, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDb.class);
        long nativePtr = table.getNativePtr();
        OfflineDbColumnInfo offlineDbColumnInfo = (OfflineDbColumnInfo) realm.getSchema().getColumnInfo(OfflineDb.class);
        while (it.hasNext()) {
            OfflineDb offlineDb = (OfflineDb) it.next();
            if (!map.containsKey(offlineDb)) {
                if (offlineDb instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDb;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDb, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDb, Long.valueOf(createRow));
                String realmGet$number = offlineDb.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
                String realmGet$name = offlineDb.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbColumnInfo.typeIndex, createRow, offlineDb.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbColumnInfo.categIndex, createRow, offlineDb.realmGet$categ(), false);
                String realmGet$data = offlineDb.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.dataIndex, createRow, realmGet$data, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, OfflineDb offlineDb, Map<RealmModel, Long> map) {
        if (offlineDb instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDb;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineDb.class);
        long nativePtr = table.getNativePtr();
        OfflineDbColumnInfo offlineDbColumnInfo = (OfflineDbColumnInfo) realm.getSchema().getColumnInfo(OfflineDb.class);
        long createRow = OsObject.createRow(table);
        map.put(offlineDb, Long.valueOf(createRow));
        String realmGet$number = offlineDb.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbColumnInfo.numberIndex, createRow, false);
        }
        String realmGet$name = offlineDb.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbColumnInfo.nameIndex, createRow, false);
        }
        Table.nativeSetLong(nativePtr, offlineDbColumnInfo.typeIndex, createRow, offlineDb.realmGet$type(), false);
        Table.nativeSetLong(nativePtr, offlineDbColumnInfo.categIndex, createRow, offlineDb.realmGet$categ(), false);
        String realmGet$data = offlineDb.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, offlineDbColumnInfo.dataIndex, createRow, realmGet$data, false);
        } else {
            Table.nativeSetNull(nativePtr, offlineDbColumnInfo.dataIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineDb.class);
        long nativePtr = table.getNativePtr();
        OfflineDbColumnInfo offlineDbColumnInfo = (OfflineDbColumnInfo) realm.getSchema().getColumnInfo(OfflineDb.class);
        while (it.hasNext()) {
            OfflineDb offlineDb = (OfflineDb) it.next();
            if (!map.containsKey(offlineDb)) {
                if (offlineDb instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineDb;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineDb, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(offlineDb, Long.valueOf(createRow));
                String realmGet$number = offlineDb.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbColumnInfo.numberIndex, createRow, false);
                }
                String realmGet$name = offlineDb.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbColumnInfo.nameIndex, createRow, false);
                }
                Table.nativeSetLong(nativePtr, offlineDbColumnInfo.typeIndex, createRow, offlineDb.realmGet$type(), false);
                Table.nativeSetLong(nativePtr, offlineDbColumnInfo.categIndex, createRow, offlineDb.realmGet$categ(), false);
                String realmGet$data = offlineDb.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, offlineDbColumnInfo.dataIndex, createRow, realmGet$data, false);
                } else {
                    Table.nativeSetNull(nativePtr, offlineDbColumnInfo.dataIndex, createRow, false);
                }
            }
        }
    }

    public static gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(OfflineDb.class), false, Collections.emptyList());
        gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy = new gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy = (gogolook_callgogolook2_offline_offlinedb_OfflineDbRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_offline_offlinedb_offlinedbrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OfflineDbColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public int realmGet$categ() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.categIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public String realmGet$data() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.dataIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public void realmSet$categ(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.categIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.categIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public void realmSet$data(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.dataIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'data' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.dataIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'data' to null.");
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'name' to null.");
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str != null) {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str != null) {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
                return;
            }
            throw new IllegalArgumentException("Trying to set non-nullable field 'number' to null.");
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.OfflineDb, io.realm.AbstractC10895x85b13b7d
    public void realmSet$type(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeIndex, row$realm.getIndex(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "OfflineDb = proxy[{number:" + realmGet$number() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + ",{type:" + realmGet$type() + CssParser.BLOCK_END + ",{categ:" + realmGet$categ() + CssParser.BLOCK_END + ",{data:" + realmGet$data() + CssParser.BLOCK_END + "]";
    }
}
