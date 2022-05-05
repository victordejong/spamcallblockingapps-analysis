package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.offline.offlinedb.SourceMap;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.class */
public class gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy extends SourceMap implements RealmObjectProxy, AbstractC10898x7988e9fd {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public SourceMapColumnInfo columnInfo;
    public ProxyState<SourceMap> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SourceMap";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy$SourceMapColumnInfo.class */
    public static final class SourceMapColumnInfo extends ColumnInfo {
        public long idIndex;
        public long maxColumnIndexValue;
        public long nameIndex;

        public SourceMapColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public SourceMapColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new SourceMapColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SourceMapColumnInfo sourceMapColumnInfo = (SourceMapColumnInfo) columnInfo;
            SourceMapColumnInfo sourceMapColumnInfo2 = (SourceMapColumnInfo) columnInfo2;
            sourceMapColumnInfo2.idIndex = sourceMapColumnInfo.idIndex;
            sourceMapColumnInfo2.nameIndex = sourceMapColumnInfo.nameIndex;
            sourceMapColumnInfo2.maxColumnIndexValue = sourceMapColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static SourceMap copy(Realm realm, SourceMapColumnInfo sourceMapColumnInfo, SourceMap sourceMap, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(sourceMap);
        if (realmObjectProxy != null) {
            return (SourceMap) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SourceMap.class), sourceMapColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(sourceMapColumnInfo.idIndex, Integer.valueOf(sourceMap.realmGet$id()));
        osObjectBuilder.addString(sourceMapColumnInfo.nameIndex, sourceMap.realmGet$name());
        gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(sourceMap, newProxyInstance);
        return newProxyInstance;
    }

    public static SourceMap copyOrUpdate(Realm realm, SourceMapColumnInfo sourceMapColumnInfo, SourceMap sourceMap, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (sourceMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sourceMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return sourceMap;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(sourceMap);
        return realmObjectProxy2 != null ? (SourceMap) realmObjectProxy2 : copy(realm, sourceMapColumnInfo, sourceMap, z, map, set);
    }

    public static SourceMapColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SourceMapColumnInfo(osSchemaInfo);
    }

    public static SourceMap createDetachedCopy(SourceMap sourceMap, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SourceMap sourceMap2;
        if (i > i2 || sourceMap == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(sourceMap);
        if (cacheData == null) {
            SourceMap sourceMap3 = new SourceMap();
            map.put(sourceMap, new RealmObjectProxy.CacheData<>(i, sourceMap3));
            sourceMap2 = sourceMap3;
        } else if (i >= cacheData.minDepth) {
            return (SourceMap) cacheData.object;
        } else {
            sourceMap2 = (SourceMap) cacheData.object;
            cacheData.minDepth = i;
        }
        sourceMap2.realmSet$id(sourceMap.realmGet$id());
        sourceMap2.realmSet$name(sourceMap.realmGet$name());
        return sourceMap2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, true);
        return builder.build();
    }

    public static SourceMap createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        SourceMap sourceMap = (SourceMap) realm.createObjectInternal(SourceMap.class, true, Collections.emptyList());
        if (jSONObject.has("id")) {
            if (!jSONObject.isNull("id")) {
                sourceMap.realmSet$id(jSONObject.getInt("id"));
            } else {
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
        }
        if (jSONObject.has("name")) {
            if (jSONObject.isNull("name")) {
                sourceMap.realmSet$name(null);
            } else {
                sourceMap.realmSet$name(jSONObject.getString("name"));
            }
        }
        return sourceMap;
    }

    @TargetApi(11)
    public static SourceMap createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SourceMap sourceMap = new SourceMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    sourceMap.realmSet$id(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (!nextName.equals("name")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                sourceMap.realmSet$name(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                sourceMap.realmSet$name(null);
            }
        }
        jsonReader.endObject();
        return (SourceMap) realm.copyToRealm((Realm) sourceMap, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, SourceMap sourceMap, Map<RealmModel, Long> map) {
        if (sourceMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sourceMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SourceMap.class);
        long nativePtr = table.getNativePtr();
        SourceMapColumnInfo sourceMapColumnInfo = (SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class);
        long createRow = OsObject.createRow(table);
        map.put(sourceMap, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, sourceMapColumnInfo.idIndex, createRow, sourceMap.realmGet$id(), false);
        String realmGet$name = sourceMap.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, sourceMapColumnInfo.nameIndex, createRow, realmGet$name, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SourceMap.class);
        long nativePtr = table.getNativePtr();
        SourceMapColumnInfo sourceMapColumnInfo = (SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class);
        while (it.hasNext()) {
            SourceMap sourceMap = (SourceMap) it.next();
            if (!map.containsKey(sourceMap)) {
                if (sourceMap instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sourceMap;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(sourceMap, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(sourceMap, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, sourceMapColumnInfo.idIndex, createRow, sourceMap.realmGet$id(), false);
                String realmGet$name = sourceMap.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, sourceMapColumnInfo.nameIndex, createRow, realmGet$name, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SourceMap sourceMap, Map<RealmModel, Long> map) {
        if (sourceMap instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sourceMap;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SourceMap.class);
        long nativePtr = table.getNativePtr();
        SourceMapColumnInfo sourceMapColumnInfo = (SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class);
        long createRow = OsObject.createRow(table);
        map.put(sourceMap, Long.valueOf(createRow));
        Table.nativeSetLong(nativePtr, sourceMapColumnInfo.idIndex, createRow, sourceMap.realmGet$id(), false);
        String realmGet$name = sourceMap.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, sourceMapColumnInfo.nameIndex, createRow, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, sourceMapColumnInfo.nameIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SourceMap.class);
        long nativePtr = table.getNativePtr();
        SourceMapColumnInfo sourceMapColumnInfo = (SourceMapColumnInfo) realm.getSchema().getColumnInfo(SourceMap.class);
        while (it.hasNext()) {
            SourceMap sourceMap = (SourceMap) it.next();
            if (!map.containsKey(sourceMap)) {
                if (sourceMap instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) sourceMap;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(sourceMap, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(sourceMap, Long.valueOf(createRow));
                Table.nativeSetLong(nativePtr, sourceMapColumnInfo.idIndex, createRow, sourceMap.realmGet$id(), false);
                String realmGet$name = sourceMap.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, sourceMapColumnInfo.nameIndex, createRow, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, sourceMapColumnInfo.nameIndex, createRow, false);
                }
            }
        }
    }

    public static gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SourceMap.class), false, Collections.emptyList());
        gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy = new gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy = (gogolook_callgogolook2_offline_offlinedb_SourceMapRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_offline_offlinedb_sourcemaprealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SourceMapColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.SourceMap, io.realm.AbstractC10898x7988e9fd
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.SourceMap, io.realm.AbstractC10898x7988e9fd
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.SourceMap, io.realm.AbstractC10898x7988e9fd
    public void realmSet$id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.idIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.idIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.offline.offlinedb.SourceMap, io.realm.AbstractC10898x7988e9fd
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

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        return "SourceMap = proxy[{id:" + realmGet$id() + CssParser.BLOCK_END + ",{name:" + realmGet$name() + CssParser.BLOCK_END + "]";
    }
}
