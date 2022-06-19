package io.realm;

import android.util.JsonReader;
import android.util.JsonToken;
import com.telguarder.features.numberLookup.C2210d;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_dRealmProxy.class */
public class com_telguarder_features_numberLookup_dRealmProxy extends C2210d implements RealmObjectProxy, com_telguarder_features_numberLookup_dRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private dColumnInfo columnInfo;
    private ProxyState<C2210d> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_dRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "d";
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_telguarder_features_numberLookup_dRealmProxy$dColumnInfo.class */
    public static final class dColumnInfo extends ColumnInfo {
        long bColKey;
        long cColKey;

        dColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        dColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.bColKey = addColumnDetails("b", "b", objectSchemaInfo);
            this.cColKey = addColumnDetails("c", "c", objectSchemaInfo);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new dColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            dColumnInfo dcolumninfo = (dColumnInfo) columnInfo;
            dColumnInfo dcolumninfo2 = (dColumnInfo) columnInfo2;
            dcolumninfo2.bColKey = dcolumninfo.bColKey;
            dcolumninfo2.cColKey = dcolumninfo.cColKey;
        }
    }

    public com_telguarder_features_numberLookup_dRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static C2210d copy(Realm realm, dColumnInfo dcolumninfo, C2210d c2210d, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(c2210d);
        if (realmObjectProxy != null) {
            return (C2210d) realmObjectProxy;
        }
        C2210d c2210d2 = c2210d;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(C2210d.class), set);
        osObjectBuilder.addInteger(dcolumninfo.bColKey, c2210d2.realmGet$b());
        osObjectBuilder.addInteger(dcolumninfo.cColKey, c2210d2.realmGet$c());
        com_telguarder_features_numberLookup_dRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(c2210d, newProxyInstance);
        return newProxyInstance;
    }

    public static C2210d copyOrUpdate(Realm realm, dColumnInfo dcolumninfo, C2210d c2210d, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if ((c2210d instanceof RealmObjectProxy) && !RealmObject.isFrozen(c2210d)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) c2210d;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                }
                if (realm$realm.getPath().equals(realm.getPath())) {
                    return c2210d;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(c2210d);
        return realmObjectProxy2 != null ? (C2210d) realmObjectProxy2 : copy(realm, dcolumninfo, c2210d, z, map, set);
    }

    public static dColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new dColumnInfo(osSchemaInfo);
    }

    public static C2210d createDetachedCopy(C2210d c2210d, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        C2210d c2210d2;
        if (i > i2 || c2210d == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(c2210d);
        if (cacheData == null) {
            C2210d c2210d3 = new C2210d();
            map.put(c2210d, new RealmObjectProxy.CacheData<>(i, c2210d3));
            c2210d2 = c2210d3;
        } else if (i >= cacheData.minDepth) {
            return (C2210d) cacheData.object;
        } else {
            c2210d2 = (C2210d) cacheData.object;
            cacheData.minDepth = i;
        }
        C2210d c2210d4 = c2210d2;
        C2210d c2210d5 = c2210d;
        c2210d4.realmSet$b(c2210d5.realmGet$b());
        c2210d4.realmSet$c(c2210d5.realmGet$c());
        return c2210d2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, false, 2, 0);
        builder.addPersistedProperty("b", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("c", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    public static C2210d createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        C2210d c2210d = (C2210d) realm.createObjectInternal(C2210d.class, true, Collections.emptyList());
        C2210d c2210d2 = c2210d;
        if (jSONObject.has("b")) {
            if (jSONObject.isNull("b")) {
                c2210d2.realmSet$b(null);
            } else {
                c2210d2.realmSet$b(Long.valueOf(jSONObject.getLong("b")));
            }
        }
        if (jSONObject.has("c")) {
            if (jSONObject.isNull("c")) {
                c2210d2.realmSet$c(null);
            } else {
                c2210d2.realmSet$c(Long.valueOf(jSONObject.getLong("c")));
            }
        }
        return c2210d;
    }

    public static C2210d createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        C2210d c2210d = new C2210d();
        C2210d c2210d2 = c2210d;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("b")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    c2210d2.realmSet$b(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    c2210d2.realmSet$b(null);
                }
            } else if (!nextName.equals("c")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                c2210d2.realmSet$c(Long.valueOf(jsonReader.nextLong()));
            } else {
                jsonReader.skipValue();
                c2210d2.realmSet$c(null);
            }
        }
        jsonReader.endObject();
        return (C2210d) realm.copyToRealm((Realm) c2210d, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, C2210d c2210d, Map<RealmModel, Long> map) {
        if ((c2210d instanceof RealmObjectProxy) && !RealmObject.isFrozen(c2210d)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) c2210d;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(C2210d.class);
        long nativePtr = table.getNativePtr();
        dColumnInfo dcolumninfo = (dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class);
        long createRow = OsObject.createRow(table);
        map.put(c2210d, Long.valueOf(createRow));
        C2210d c2210d2 = c2210d;
        Long realmGet$b = c2210d2.realmGet$b();
        if (realmGet$b != null) {
            Table.nativeSetLong(nativePtr, dcolumninfo.bColKey, createRow, realmGet$b.longValue(), false);
        }
        Long realmGet$c = c2210d2.realmGet$c();
        if (realmGet$c != null) {
            Table.nativeSetLong(nativePtr, dcolumninfo.cColKey, createRow, realmGet$c.longValue(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(C2210d.class);
        long nativePtr = table.getNativePtr();
        dColumnInfo dcolumninfo = (dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class);
        while (it.hasNext()) {
            C2210d c2210d = (C2210d) it.next();
            if (!map.containsKey(c2210d)) {
                if ((c2210d instanceof RealmObjectProxy) && !RealmObject.isFrozen(c2210d)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) c2210d;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(c2210d, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(c2210d, Long.valueOf(createRow));
                C2210d c2210d2 = c2210d;
                Long realmGet$b = c2210d2.realmGet$b();
                if (realmGet$b != null) {
                    Table.nativeSetLong(nativePtr, dcolumninfo.bColKey, createRow, realmGet$b.longValue(), false);
                }
                Long realmGet$c = c2210d2.realmGet$c();
                if (realmGet$c != null) {
                    Table.nativeSetLong(nativePtr, dcolumninfo.cColKey, createRow, realmGet$c.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, C2210d c2210d, Map<RealmModel, Long> map) {
        if ((c2210d instanceof RealmObjectProxy) && !RealmObject.isFrozen(c2210d)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) c2210d;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey();
            }
        }
        Table table = realm.getTable(C2210d.class);
        long nativePtr = table.getNativePtr();
        dColumnInfo dcolumninfo = (dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class);
        long createRow = OsObject.createRow(table);
        map.put(c2210d, Long.valueOf(createRow));
        C2210d c2210d2 = c2210d;
        Long realmGet$b = c2210d2.realmGet$b();
        if (realmGet$b != null) {
            Table.nativeSetLong(nativePtr, dcolumninfo.bColKey, createRow, realmGet$b.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, dcolumninfo.bColKey, createRow, false);
        }
        Long realmGet$c = c2210d2.realmGet$c();
        if (realmGet$c != null) {
            Table.nativeSetLong(nativePtr, dcolumninfo.cColKey, createRow, realmGet$c.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, dcolumninfo.cColKey, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(C2210d.class);
        long nativePtr = table.getNativePtr();
        dColumnInfo dcolumninfo = (dColumnInfo) realm.getSchema().getColumnInfo(C2210d.class);
        while (it.hasNext()) {
            C2210d c2210d = (C2210d) it.next();
            if (!map.containsKey(c2210d)) {
                if ((c2210d instanceof RealmObjectProxy) && !RealmObject.isFrozen(c2210d)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) c2210d;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(c2210d, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getObjectKey()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(c2210d, Long.valueOf(createRow));
                C2210d c2210d2 = c2210d;
                Long realmGet$b = c2210d2.realmGet$b();
                if (realmGet$b != null) {
                    Table.nativeSetLong(nativePtr, dcolumninfo.bColKey, createRow, realmGet$b.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, dcolumninfo.bColKey, createRow, false);
                }
                Long realmGet$c = c2210d2.realmGet$c();
                if (realmGet$c != null) {
                    Table.nativeSetLong(nativePtr, dcolumninfo.cColKey, createRow, realmGet$c.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, dcolumninfo.cColKey, createRow, false);
                }
            }
        }
    }

    static com_telguarder_features_numberLookup_dRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(C2210d.class), false, Collections.emptyList());
        com_telguarder_features_numberLookup_dRealmProxy com_telguarder_features_numberlookup_drealmproxy = new com_telguarder_features_numberLookup_dRealmProxy();
        realmObjectContext.clear();
        return com_telguarder_features_numberlookup_drealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_telguarder_features_numberLookup_dRealmProxy com_telguarder_features_numberlookup_drealmproxy = (com_telguarder_features_numberLookup_dRealmProxy) obj;
        BaseRealm realm$realm = this.proxyState.getRealm$realm();
        BaseRealm realm$realm2 = com_telguarder_features_numberlookup_drealmproxy.proxyState.getRealm$realm();
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
        String name2 = com_telguarder_features_numberlookup_drealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getObjectKey() == com_telguarder_features_numberlookup_drealmproxy.proxyState.getRow$realm().getObjectKey();
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
        this.columnInfo = (dColumnInfo) realmObjectContext.getColumnInfo();
        ProxyState<C2210d> proxyState = new ProxyState<>(this);
        this.proxyState = proxyState;
        proxyState.setRealm$realm(realmObjectContext.getRealm());
        this.proxyState.setRow$realm(realmObjectContext.getRow());
        this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
    }

    @Override // com.telguarder.features.numberLookup.C2210d, io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public Long realmGet$b() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.bColKey)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.bColKey));
    }

    @Override // com.telguarder.features.numberLookup.C2210d, io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public Long realmGet$c() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.cColKey)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.cColKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.telguarder.features.numberLookup.C2210d, io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public void realmSet$b(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.bColKey);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.bColKey, l.longValue());
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.bColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.bColKey, row$realm.getObjectKey(), l.longValue(), true);
            }
        }
    }

    @Override // com.telguarder.features.numberLookup.C2210d, io.realm.com_telguarder_features_numberLookup_dRealmProxyInterface
    public void realmSet$c(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cColKey);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.cColKey, l.longValue());
            }
        } else if (!this.proxyState.getAcceptDefaultValue$realm()) {
        } else {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.cColKey, row$realm.getObjectKey(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.cColKey, row$realm.getObjectKey(), l.longValue(), true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("d = proxy[");
        sb.append("{b:");
        sb.append(realmGet$b() != null ? realmGet$b() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{c:");
        Long l = "null";
        if (realmGet$c() != null) {
            l = realmGet$c();
        }
        sb.append(l);
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
