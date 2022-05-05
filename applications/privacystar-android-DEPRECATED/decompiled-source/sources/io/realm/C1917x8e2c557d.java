package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.PendingBulkLookupNumber;
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
/* renamed from: io.realm.com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy.class */
public class C1917x8e2c557d extends PendingBulkLookupNumber implements RealmObjectProxy, AbstractC1918xe327143c {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PendingBulkLookupNumberColumnInfo columnInfo;
    private ProxyState<PendingBulkLookupNumber> proxyState;

    /* renamed from: io.realm.com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PendingBulkLookupNumber";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy$PendingBulkLookupNumberColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PendingBulkLookupNumberRealmProxy$PendingBulkLookupNumberColumnInfo.class */
    public static final class PendingBulkLookupNumberColumnInfo extends ColumnInfo {
        long maxColumnIndexValue;
        long numberIndex;

        PendingBulkLookupNumberColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        PendingBulkLookupNumberColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(1);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new PendingBulkLookupNumberColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo = (PendingBulkLookupNumberColumnInfo) columnInfo;
            PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo2 = (PendingBulkLookupNumberColumnInfo) columnInfo2;
            pendingBulkLookupNumberColumnInfo2.numberIndex = pendingBulkLookupNumberColumnInfo.numberIndex;
            pendingBulkLookupNumberColumnInfo2.maxColumnIndexValue = pendingBulkLookupNumberColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1917x8e2c557d() {
        this.proxyState.setConstructionFinished();
    }

    public static PendingBulkLookupNumber copy(Realm realm, PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo, PendingBulkLookupNumber pendingBulkLookupNumber, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(pendingBulkLookupNumber);
        if (realmObjectProxy != null) {
            return (PendingBulkLookupNumber) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PendingBulkLookupNumber.class), pendingBulkLookupNumberColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(pendingBulkLookupNumberColumnInfo.numberIndex, pendingBulkLookupNumber.realmGet$number());
        C1917x8e2c557d newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(pendingBulkLookupNumber, newProxyInstance);
        return newProxyInstance;
    }

    public static PendingBulkLookupNumber copyOrUpdate(Realm realm, PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo, PendingBulkLookupNumber pendingBulkLookupNumber, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (pendingBulkLookupNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookupNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return pendingBulkLookupNumber;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(pendingBulkLookupNumber);
        return realmObjectProxy2 != null ? (PendingBulkLookupNumber) realmObjectProxy2 : copy(realm, pendingBulkLookupNumberColumnInfo, pendingBulkLookupNumber, z, map, set);
    }

    public static PendingBulkLookupNumberColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PendingBulkLookupNumberColumnInfo(osSchemaInfo);
    }

    public static PendingBulkLookupNumber createDetachedCopy(PendingBulkLookupNumber pendingBulkLookupNumber, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PendingBulkLookupNumber pendingBulkLookupNumber2;
        if (i > i2 || pendingBulkLookupNumber == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(pendingBulkLookupNumber);
        if (cacheData == null) {
            PendingBulkLookupNumber pendingBulkLookupNumber3 = new PendingBulkLookupNumber();
            map.put(pendingBulkLookupNumber, new RealmObjectProxy.CacheData<>(i, pendingBulkLookupNumber3));
            pendingBulkLookupNumber2 = pendingBulkLookupNumber3;
        } else if (i >= cacheData.minDepth) {
            return (PendingBulkLookupNumber) cacheData.object;
        } else {
            pendingBulkLookupNumber2 = (PendingBulkLookupNumber) cacheData.object;
            cacheData.minDepth = i;
        }
        pendingBulkLookupNumber2.realmSet$number(pendingBulkLookupNumber.realmGet$number());
        return pendingBulkLookupNumber2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 1, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static PendingBulkLookupNumber createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        PendingBulkLookupNumber pendingBulkLookupNumber = (PendingBulkLookupNumber) realm.createObjectInternal(PendingBulkLookupNumber.class, true, Collections.emptyList());
        PendingBulkLookupNumber pendingBulkLookupNumber2 = pendingBulkLookupNumber;
        if (jSONObject.has("number")) {
            if (jSONObject.isNull("number")) {
                pendingBulkLookupNumber2.realmSet$number(null);
            } else {
                pendingBulkLookupNumber2.realmSet$number(jSONObject.getString("number"));
            }
        }
        return pendingBulkLookupNumber;
    }

    @TargetApi(11)
    public static PendingBulkLookupNumber createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PendingBulkLookupNumber pendingBulkLookupNumber = new PendingBulkLookupNumber();
        PendingBulkLookupNumber pendingBulkLookupNumber2 = pendingBulkLookupNumber;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (!jsonReader.nextName().equals("number")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                pendingBulkLookupNumber2.realmSet$number(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                pendingBulkLookupNumber2.realmSet$number(null);
            }
        }
        jsonReader.endObject();
        return (PendingBulkLookupNumber) realm.copyToRealm((Realm) pendingBulkLookupNumber, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PendingBulkLookupNumber pendingBulkLookupNumber, Map<RealmModel, Long> map) {
        if (pendingBulkLookupNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookupNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PendingBulkLookupNumber.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo = (PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class);
        long createRow = OsObject.createRow(table);
        map.put(pendingBulkLookupNumber, Long.valueOf(createRow));
        String realmGet$number = pendingBulkLookupNumber.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, realmGet$number, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PendingBulkLookupNumber.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo = (PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class);
        while (it.hasNext()) {
            PendingBulkLookupNumber pendingBulkLookupNumber = (PendingBulkLookupNumber) it.next();
            if (!map.containsKey(pendingBulkLookupNumber)) {
                if (pendingBulkLookupNumber instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookupNumber;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(pendingBulkLookupNumber, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(pendingBulkLookupNumber, Long.valueOf(createRow));
                String realmGet$number = pendingBulkLookupNumber.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, realmGet$number, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PendingBulkLookupNumber pendingBulkLookupNumber, Map<RealmModel, Long> map) {
        if (pendingBulkLookupNumber instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookupNumber;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PendingBulkLookupNumber.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo = (PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class);
        long createRow = OsObject.createRow(table);
        map.put(pendingBulkLookupNumber, Long.valueOf(createRow));
        String realmGet$number = pendingBulkLookupNumber.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PendingBulkLookupNumber.class);
        long nativePtr = table.getNativePtr();
        PendingBulkLookupNumberColumnInfo pendingBulkLookupNumberColumnInfo = (PendingBulkLookupNumberColumnInfo) realm.getSchema().getColumnInfo(PendingBulkLookupNumber.class);
        while (it.hasNext()) {
            PendingBulkLookupNumber pendingBulkLookupNumber = (PendingBulkLookupNumber) it.next();
            if (!map.containsKey(pendingBulkLookupNumber)) {
                if (pendingBulkLookupNumber instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) pendingBulkLookupNumber;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(pendingBulkLookupNumber, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(pendingBulkLookupNumber, Long.valueOf(createRow));
                String realmGet$number = pendingBulkLookupNumber.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, realmGet$number, false);
                } else {
                    Table.nativeSetNull(nativePtr, pendingBulkLookupNumberColumnInfo.numberIndex, createRow, false);
                }
            }
        }
    }

    private static C1917x8e2c557d newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PendingBulkLookupNumber.class), false, Collections.emptyList());
        C1917x8e2c557d com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy = new C1917x8e2c557d();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1917x8e2c557d com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy = (C1917x8e2c557d) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_pendingbulklookupnumberrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PendingBulkLookupNumberColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.PendingBulkLookupNumber, io.realm.AbstractC1918xe327143c
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.PendingBulkLookupNumber, io.realm.AbstractC1918xe327143c
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

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("PendingBulkLookupNumber = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
