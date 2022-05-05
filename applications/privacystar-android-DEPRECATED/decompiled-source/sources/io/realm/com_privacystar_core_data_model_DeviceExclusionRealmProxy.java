package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.DeviceExclusion;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_DeviceExclusionRealmProxy.class */
public class com_privacystar_core_data_model_DeviceExclusionRealmProxy extends DeviceExclusion implements RealmObjectProxy, AbstractC1914x8c8cddf0 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private DeviceExclusionColumnInfo columnInfo;
    private ProxyState<DeviceExclusion> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_DeviceExclusionRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "DeviceExclusion";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_DeviceExclusionRealmProxy$DeviceExclusionColumnInfo.class */
    public static final class DeviceExclusionColumnInfo extends ColumnInfo {
        long makeIndex;
        long maxColumnIndexValue;
        long modelIndex;
        long osIndex;

        DeviceExclusionColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        DeviceExclusionColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.makeIndex = addColumnDetails("make", "make", objectSchemaInfo);
            this.modelIndex = addColumnDetails("model", "model", objectSchemaInfo);
            this.osIndex = addColumnDetails("os", "os", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new DeviceExclusionColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            DeviceExclusionColumnInfo deviceExclusionColumnInfo = (DeviceExclusionColumnInfo) columnInfo;
            DeviceExclusionColumnInfo deviceExclusionColumnInfo2 = (DeviceExclusionColumnInfo) columnInfo2;
            deviceExclusionColumnInfo2.makeIndex = deviceExclusionColumnInfo.makeIndex;
            deviceExclusionColumnInfo2.modelIndex = deviceExclusionColumnInfo.modelIndex;
            deviceExclusionColumnInfo2.osIndex = deviceExclusionColumnInfo.osIndex;
            deviceExclusionColumnInfo2.maxColumnIndexValue = deviceExclusionColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_DeviceExclusionRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static DeviceExclusion copy(Realm realm, DeviceExclusionColumnInfo deviceExclusionColumnInfo, DeviceExclusion deviceExclusion, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(deviceExclusion);
        if (realmObjectProxy != null) {
            return (DeviceExclusion) realmObjectProxy;
        }
        DeviceExclusion deviceExclusion2 = deviceExclusion;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(DeviceExclusion.class), deviceExclusionColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(deviceExclusionColumnInfo.makeIndex, deviceExclusion2.realmGet$make());
        osObjectBuilder.addString(deviceExclusionColumnInfo.modelIndex, deviceExclusion2.realmGet$model());
        osObjectBuilder.addString(deviceExclusionColumnInfo.osIndex, deviceExclusion2.realmGet$os());
        com_privacystar_core_data_model_DeviceExclusionRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(deviceExclusion, newProxyInstance);
        return newProxyInstance;
    }

    public static DeviceExclusion copyOrUpdate(Realm realm, DeviceExclusionColumnInfo deviceExclusionColumnInfo, DeviceExclusion deviceExclusion, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (deviceExclusion instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) deviceExclusion;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return deviceExclusion;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(deviceExclusion);
        return realmObjectProxy2 != null ? (DeviceExclusion) realmObjectProxy2 : copy(realm, deviceExclusionColumnInfo, deviceExclusion, z, map, set);
    }

    public static DeviceExclusionColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new DeviceExclusionColumnInfo(osSchemaInfo);
    }

    public static DeviceExclusion createDetachedCopy(DeviceExclusion deviceExclusion, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        DeviceExclusion deviceExclusion2;
        if (i > i2 || deviceExclusion == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(deviceExclusion);
        if (cacheData == null) {
            DeviceExclusion deviceExclusion3 = new DeviceExclusion();
            map.put(deviceExclusion, new RealmObjectProxy.CacheData<>(i, deviceExclusion3));
            deviceExclusion2 = deviceExclusion3;
        } else if (i >= cacheData.minDepth) {
            return (DeviceExclusion) cacheData.object;
        } else {
            deviceExclusion2 = (DeviceExclusion) cacheData.object;
            cacheData.minDepth = i;
        }
        DeviceExclusion deviceExclusion4 = deviceExclusion2;
        DeviceExclusion deviceExclusion5 = deviceExclusion;
        deviceExclusion4.realmSet$make(deviceExclusion5.realmGet$make());
        deviceExclusion4.realmSet$model(deviceExclusion5.realmGet$model());
        deviceExclusion4.realmSet$os(deviceExclusion5.realmGet$os());
        return deviceExclusion2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("make", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("model", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("os", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static DeviceExclusion createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        DeviceExclusion deviceExclusion = (DeviceExclusion) realm.createObjectInternal(DeviceExclusion.class, true, Collections.emptyList());
        DeviceExclusion deviceExclusion2 = deviceExclusion;
        if (jSONObject.has("make")) {
            if (jSONObject.isNull("make")) {
                deviceExclusion2.realmSet$make(null);
            } else {
                deviceExclusion2.realmSet$make(jSONObject.getString("make"));
            }
        }
        if (jSONObject.has("model")) {
            if (jSONObject.isNull("model")) {
                deviceExclusion2.realmSet$model(null);
            } else {
                deviceExclusion2.realmSet$model(jSONObject.getString("model"));
            }
        }
        if (jSONObject.has("os")) {
            if (jSONObject.isNull("os")) {
                deviceExclusion2.realmSet$os(null);
            } else {
                deviceExclusion2.realmSet$os(jSONObject.getString("os"));
            }
        }
        return deviceExclusion;
    }

    @TargetApi(11)
    public static DeviceExclusion createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        DeviceExclusion deviceExclusion = new DeviceExclusion();
        DeviceExclusion deviceExclusion2 = deviceExclusion;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("make")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    deviceExclusion2.realmSet$make(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    deviceExclusion2.realmSet$make(null);
                }
            } else if (nextName.equals("model")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    deviceExclusion2.realmSet$model(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    deviceExclusion2.realmSet$model(null);
                }
            } else if (!nextName.equals("os")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                deviceExclusion2.realmSet$os(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                deviceExclusion2.realmSet$os(null);
            }
        }
        jsonReader.endObject();
        return (DeviceExclusion) realm.copyToRealm((Realm) deviceExclusion, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, DeviceExclusion deviceExclusion, Map<RealmModel, Long> map) {
        if (deviceExclusion instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) deviceExclusion;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(DeviceExclusion.class);
        long nativePtr = table.getNativePtr();
        DeviceExclusionColumnInfo deviceExclusionColumnInfo = (DeviceExclusionColumnInfo) realm.getSchema().getColumnInfo(DeviceExclusion.class);
        long createRow = OsObject.createRow(table);
        map.put(deviceExclusion, Long.valueOf(createRow));
        DeviceExclusion deviceExclusion2 = deviceExclusion;
        String realmGet$make = deviceExclusion2.realmGet$make();
        if (realmGet$make != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, realmGet$make, false);
        }
        String realmGet$model = deviceExclusion2.realmGet$model();
        if (realmGet$model != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, realmGet$model, false);
        }
        String realmGet$os = deviceExclusion2.realmGet$os();
        if (realmGet$os != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, realmGet$os, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(DeviceExclusion.class);
        long nativePtr = table.getNativePtr();
        DeviceExclusionColumnInfo deviceExclusionColumnInfo = (DeviceExclusionColumnInfo) realm.getSchema().getColumnInfo(DeviceExclusion.class);
        while (it.hasNext()) {
            DeviceExclusion deviceExclusion = (DeviceExclusion) it.next();
            if (!map.containsKey(deviceExclusion)) {
                if (deviceExclusion instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) deviceExclusion;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(deviceExclusion, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(deviceExclusion, Long.valueOf(createRow));
                DeviceExclusion deviceExclusion2 = deviceExclusion;
                String realmGet$make = deviceExclusion2.realmGet$make();
                if (realmGet$make != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, realmGet$make, false);
                }
                String realmGet$model = deviceExclusion2.realmGet$model();
                if (realmGet$model != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, realmGet$model, false);
                }
                String realmGet$os = deviceExclusion2.realmGet$os();
                if (realmGet$os != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, realmGet$os, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, DeviceExclusion deviceExclusion, Map<RealmModel, Long> map) {
        if (deviceExclusion instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) deviceExclusion;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(DeviceExclusion.class);
        long nativePtr = table.getNativePtr();
        DeviceExclusionColumnInfo deviceExclusionColumnInfo = (DeviceExclusionColumnInfo) realm.getSchema().getColumnInfo(DeviceExclusion.class);
        long createRow = OsObject.createRow(table);
        map.put(deviceExclusion, Long.valueOf(createRow));
        DeviceExclusion deviceExclusion2 = deviceExclusion;
        String realmGet$make = deviceExclusion2.realmGet$make();
        if (realmGet$make != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, realmGet$make, false);
        } else {
            Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, false);
        }
        String realmGet$model = deviceExclusion2.realmGet$model();
        if (realmGet$model != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, realmGet$model, false);
        } else {
            Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, false);
        }
        String realmGet$os = deviceExclusion2.realmGet$os();
        if (realmGet$os != null) {
            Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, realmGet$os, false);
        } else {
            Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(DeviceExclusion.class);
        long nativePtr = table.getNativePtr();
        DeviceExclusionColumnInfo deviceExclusionColumnInfo = (DeviceExclusionColumnInfo) realm.getSchema().getColumnInfo(DeviceExclusion.class);
        while (it.hasNext()) {
            DeviceExclusion deviceExclusion = (DeviceExclusion) it.next();
            if (!map.containsKey(deviceExclusion)) {
                if (deviceExclusion instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) deviceExclusion;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(deviceExclusion, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(deviceExclusion, Long.valueOf(createRow));
                DeviceExclusion deviceExclusion2 = deviceExclusion;
                String realmGet$make = deviceExclusion2.realmGet$make();
                if (realmGet$make != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, realmGet$make, false);
                } else {
                    Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.makeIndex, createRow, false);
                }
                String realmGet$model = deviceExclusion2.realmGet$model();
                if (realmGet$model != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, realmGet$model, false);
                } else {
                    Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.modelIndex, createRow, false);
                }
                String realmGet$os = deviceExclusion2.realmGet$os();
                if (realmGet$os != null) {
                    Table.nativeSetString(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, realmGet$os, false);
                } else {
                    Table.nativeSetNull(nativePtr, deviceExclusionColumnInfo.osIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_DeviceExclusionRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(DeviceExclusion.class), false, Collections.emptyList());
        com_privacystar_core_data_model_DeviceExclusionRealmProxy com_privacystar_core_data_model_deviceexclusionrealmproxy = new com_privacystar_core_data_model_DeviceExclusionRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_deviceexclusionrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_DeviceExclusionRealmProxy com_privacystar_core_data_model_deviceexclusionrealmproxy = (com_privacystar_core_data_model_DeviceExclusionRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_deviceexclusionrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_deviceexclusionrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_deviceexclusionrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (DeviceExclusionColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public String realmGet$make() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.makeIndex);
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public String realmGet$model() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.modelIndex);
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public String realmGet$os() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.osIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public void realmSet$make(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.makeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.makeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.makeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.makeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public void realmSet$model(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.modelIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.modelIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.modelIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.modelIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.DeviceExclusion, io.realm.AbstractC1914x8c8cddf0
    public void realmSet$os(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.osIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.osIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.osIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.osIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("DeviceExclusion = proxy[");
        sb.append("{make:");
        sb.append(realmGet$make() != null ? realmGet$make() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{model:");
        sb.append(realmGet$model() != null ? realmGet$model() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{os:");
        sb.append(realmGet$os() != null ? realmGet$os() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
