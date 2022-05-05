package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.SimpleOffender;
import com.privacystar.core.data.model.SimpleOffenderFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SimpleOffenderRealmProxy.class */
public class com_privacystar_core_data_model_SimpleOffenderRealmProxy extends SimpleOffender implements RealmObjectProxy, AbstractC1923x99c73e41 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private SimpleOffenderColumnInfo columnInfo;
    private ProxyState<SimpleOffender> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SimpleOffenderRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SimpleOffender";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SimpleOffenderRealmProxy$SimpleOffenderColumnInfo.class */
    public static final class SimpleOffenderColumnInfo extends ColumnInfo {
        long maxColumnIndexValue;
        long numIndex;
        long typeIndex;

        SimpleOffenderColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        SimpleOffenderColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numIndex = addColumnDetails(SimpleOffenderFields.NUM, SimpleOffenderFields.NUM, objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new SimpleOffenderColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SimpleOffenderColumnInfo simpleOffenderColumnInfo = (SimpleOffenderColumnInfo) columnInfo;
            SimpleOffenderColumnInfo simpleOffenderColumnInfo2 = (SimpleOffenderColumnInfo) columnInfo2;
            simpleOffenderColumnInfo2.numIndex = simpleOffenderColumnInfo.numIndex;
            simpleOffenderColumnInfo2.typeIndex = simpleOffenderColumnInfo.typeIndex;
            simpleOffenderColumnInfo2.maxColumnIndexValue = simpleOffenderColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_SimpleOffenderRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static SimpleOffender copy(Realm realm, SimpleOffenderColumnInfo simpleOffenderColumnInfo, SimpleOffender simpleOffender, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(simpleOffender);
        if (realmObjectProxy != null) {
            return (SimpleOffender) realmObjectProxy;
        }
        SimpleOffender simpleOffender2 = simpleOffender;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SimpleOffender.class), simpleOffenderColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(simpleOffenderColumnInfo.numIndex, simpleOffender2.realmGet$num());
        osObjectBuilder.addInteger(simpleOffenderColumnInfo.typeIndex, Long.valueOf(simpleOffender2.realmGet$type()));
        com_privacystar_core_data_model_SimpleOffenderRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(simpleOffender, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.SimpleOffender copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_SimpleOffenderRealmProxy.SimpleOffenderColumnInfo r8, com.privacystar.core.data.model.SimpleOffender r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_SimpleOffenderRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_SimpleOffenderRealmProxy$SimpleOffenderColumnInfo, com.privacystar.core.data.model.SimpleOffender, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.SimpleOffender");
    }

    public static SimpleOffenderColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SimpleOffenderColumnInfo(osSchemaInfo);
    }

    public static SimpleOffender createDetachedCopy(SimpleOffender simpleOffender, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SimpleOffender simpleOffender2;
        if (i > i2 || simpleOffender == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(simpleOffender);
        if (cacheData == null) {
            SimpleOffender simpleOffender3 = new SimpleOffender();
            map.put(simpleOffender, new RealmObjectProxy.CacheData<>(i, simpleOffender3));
            simpleOffender2 = simpleOffender3;
        } else if (i >= cacheData.minDepth) {
            return (SimpleOffender) cacheData.object;
        } else {
            simpleOffender2 = (SimpleOffender) cacheData.object;
            cacheData.minDepth = i;
        }
        SimpleOffender simpleOffender4 = simpleOffender2;
        SimpleOffender simpleOffender5 = simpleOffender;
        simpleOffender4.realmSet$num(simpleOffender5.realmGet$num());
        simpleOffender4.realmSet$type(simpleOffender5.realmGet$type());
        return simpleOffender2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty(SimpleOffenderFields.NUM, RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.SimpleOffender createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_SimpleOffenderRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.SimpleOffender");
    }

    @TargetApi(11)
    public static SimpleOffender createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SimpleOffender simpleOffender = new SimpleOffender();
        SimpleOffender simpleOffender2 = simpleOffender;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(SimpleOffenderFields.NUM)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    simpleOffender2.realmSet$num(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    simpleOffender2.realmSet$num(null);
                }
                z = true;
            } else if (!nextName.equals("type")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                simpleOffender2.realmSet$type(jsonReader.nextLong());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SimpleOffender) realm.copyToRealm((Realm) simpleOffender, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'num'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, SimpleOffender simpleOffender, Map<RealmModel, Long> map) {
        if (simpleOffender instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) simpleOffender;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SimpleOffender.class);
        long nativePtr = table.getNativePtr();
        SimpleOffenderColumnInfo simpleOffenderColumnInfo = (SimpleOffenderColumnInfo) realm.getSchema().getColumnInfo(SimpleOffender.class);
        long j = simpleOffenderColumnInfo.numIndex;
        SimpleOffender simpleOffender2 = simpleOffender;
        String realmGet$num = simpleOffender2.realmGet$num();
        long nativeFindFirstNull = realmGet$num == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$num);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$num);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$num);
        }
        map.put(simpleOffender, Long.valueOf(nativeFindFirstNull));
        Table.nativeSetLong(nativePtr, simpleOffenderColumnInfo.typeIndex, nativeFindFirstNull, simpleOffender2.realmGet$type(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SimpleOffender.class);
        long nativePtr = table.getNativePtr();
        SimpleOffenderColumnInfo simpleOffenderColumnInfo = (SimpleOffenderColumnInfo) realm.getSchema().getColumnInfo(SimpleOffender.class);
        long j = simpleOffenderColumnInfo.numIndex;
        while (it.hasNext()) {
            SimpleOffender simpleOffender = (SimpleOffender) it.next();
            if (!map.containsKey(simpleOffender)) {
                if (simpleOffender instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) simpleOffender;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(simpleOffender, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                SimpleOffender simpleOffender2 = simpleOffender;
                String realmGet$num = simpleOffender2.realmGet$num();
                long nativeFindFirstNull = realmGet$num == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$num);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$num);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$num);
                }
                map.put(simpleOffender, Long.valueOf(nativeFindFirstNull));
                Table.nativeSetLong(nativePtr, simpleOffenderColumnInfo.typeIndex, nativeFindFirstNull, simpleOffender2.realmGet$type(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SimpleOffender simpleOffender, Map<RealmModel, Long> map) {
        if (simpleOffender instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) simpleOffender;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SimpleOffender.class);
        long nativePtr = table.getNativePtr();
        SimpleOffenderColumnInfo simpleOffenderColumnInfo = (SimpleOffenderColumnInfo) realm.getSchema().getColumnInfo(SimpleOffender.class);
        long j = simpleOffenderColumnInfo.numIndex;
        SimpleOffender simpleOffender2 = simpleOffender;
        String realmGet$num = simpleOffender2.realmGet$num();
        long nativeFindFirstNull = realmGet$num == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$num);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$num);
        }
        map.put(simpleOffender, Long.valueOf(nativeFindFirstNull));
        Table.nativeSetLong(nativePtr, simpleOffenderColumnInfo.typeIndex, nativeFindFirstNull, simpleOffender2.realmGet$type(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SimpleOffender.class);
        long nativePtr = table.getNativePtr();
        SimpleOffenderColumnInfo simpleOffenderColumnInfo = (SimpleOffenderColumnInfo) realm.getSchema().getColumnInfo(SimpleOffender.class);
        long j = simpleOffenderColumnInfo.numIndex;
        while (it.hasNext()) {
            SimpleOffender simpleOffender = (SimpleOffender) it.next();
            if (!map.containsKey(simpleOffender)) {
                if (simpleOffender instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) simpleOffender;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(simpleOffender, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                SimpleOffender simpleOffender2 = simpleOffender;
                String realmGet$num = simpleOffender2.realmGet$num();
                long nativeFindFirstNull = realmGet$num == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$num);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$num);
                }
                map.put(simpleOffender, Long.valueOf(nativeFindFirstNull));
                Table.nativeSetLong(nativePtr, simpleOffenderColumnInfo.typeIndex, nativeFindFirstNull, simpleOffender2.realmGet$type(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_SimpleOffenderRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SimpleOffender.class), false, Collections.emptyList());
        com_privacystar_core_data_model_SimpleOffenderRealmProxy com_privacystar_core_data_model_simpleoffenderrealmproxy = new com_privacystar_core_data_model_SimpleOffenderRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_simpleoffenderrealmproxy;
    }

    static SimpleOffender update(Realm realm, SimpleOffenderColumnInfo simpleOffenderColumnInfo, SimpleOffender simpleOffender, SimpleOffender simpleOffender2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        SimpleOffender simpleOffender3 = simpleOffender2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SimpleOffender.class), simpleOffenderColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(simpleOffenderColumnInfo.numIndex, simpleOffender3.realmGet$num());
        osObjectBuilder.addInteger(simpleOffenderColumnInfo.typeIndex, Long.valueOf(simpleOffender3.realmGet$type()));
        osObjectBuilder.updateExistingObject();
        return simpleOffender;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_SimpleOffenderRealmProxy com_privacystar_core_data_model_simpleoffenderrealmproxy = (com_privacystar_core_data_model_SimpleOffenderRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_simpleoffenderrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_simpleoffenderrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_simpleoffenderrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SimpleOffenderColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.SimpleOffender, io.realm.AbstractC1923x99c73e41
    public String realmGet$num() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.SimpleOffender, io.realm.AbstractC1923x99c73e41
    public long realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // com.privacystar.core.data.model.SimpleOffender, io.realm.AbstractC1923x99c73e41
    public void realmSet$num(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'num' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.SimpleOffender, io.realm.AbstractC1923x99c73e41
    public void realmSet$type(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.typeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.typeIndex, row$realm.getIndex(), j, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("SimpleOffender = proxy[");
        sb.append("{num:");
        sb.append(realmGet$num() != null ? realmGet$num() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{type:");
        sb.append(realmGet$type());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
