package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy.class */
public class C10931x96fcdba7 extends PurchaseLogRealmObject implements RealmObjectProxy, AbstractC10932x4999dd52 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public PurchaseLogRealmObjectColumnInfo columnInfo;
    public ProxyState<PurchaseLogRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PurchaseLogRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy$PurchaseLogRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy$PurchaseLogRealmObjectColumnInfo.class */
    public static final class PurchaseLogRealmObjectColumnInfo extends ColumnInfo {
        public long createTimeIndex;
        public long idIndex;
        public long logIndex;
        public long maxColumnIndexValue;

        public PurchaseLogRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public PurchaseLogRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.logIndex = addColumnDetails("log", "log", objectSchemaInfo);
            this.createTimeIndex = addColumnDetails("createTime", "createTime", objectSchemaInfo);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new PurchaseLogRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo = (PurchaseLogRealmObjectColumnInfo) columnInfo;
            PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo2 = (PurchaseLogRealmObjectColumnInfo) columnInfo2;
            purchaseLogRealmObjectColumnInfo2.logIndex = purchaseLogRealmObjectColumnInfo.logIndex;
            purchaseLogRealmObjectColumnInfo2.createTimeIndex = purchaseLogRealmObjectColumnInfo.createTimeIndex;
            purchaseLogRealmObjectColumnInfo2.idIndex = purchaseLogRealmObjectColumnInfo.idIndex;
            purchaseLogRealmObjectColumnInfo2.maxColumnIndexValue = purchaseLogRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10931x96fcdba7() {
        this.proxyState.setConstructionFinished();
    }

    public static PurchaseLogRealmObject copy(Realm realm, PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo, PurchaseLogRealmObject purchaseLogRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(purchaseLogRealmObject);
        if (realmObjectProxy != null) {
            return (PurchaseLogRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PurchaseLogRealmObject.class), purchaseLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(purchaseLogRealmObjectColumnInfo.logIndex, purchaseLogRealmObject.realmGet$log());
        osObjectBuilder.addInteger(purchaseLogRealmObjectColumnInfo.createTimeIndex, Long.valueOf(purchaseLogRealmObject.realmGet$createTime()));
        osObjectBuilder.addInteger(purchaseLogRealmObjectColumnInfo.idIndex, Long.valueOf(purchaseLogRealmObject.realmGet$id()));
        C10931x96fcdba7 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(purchaseLogRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10931x96fcdba7.PurchaseLogRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10931x96fcdba7.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_log_PurchaseLogRealmObjectRealmProxy$PurchaseLogRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject");
    }

    public static PurchaseLogRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PurchaseLogRealmObjectColumnInfo(osSchemaInfo);
    }

    public static PurchaseLogRealmObject createDetachedCopy(PurchaseLogRealmObject purchaseLogRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PurchaseLogRealmObject purchaseLogRealmObject2;
        if (i > i2 || purchaseLogRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(purchaseLogRealmObject);
        if (cacheData == null) {
            PurchaseLogRealmObject purchaseLogRealmObject3 = new PurchaseLogRealmObject();
            map.put(purchaseLogRealmObject, new RealmObjectProxy.CacheData<>(i, purchaseLogRealmObject3));
            purchaseLogRealmObject2 = purchaseLogRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (PurchaseLogRealmObject) cacheData.object;
        } else {
            purchaseLogRealmObject2 = (PurchaseLogRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        purchaseLogRealmObject2.realmSet$log(purchaseLogRealmObject.realmGet$log());
        purchaseLogRealmObject2.realmSet$createTime(purchaseLogRealmObject.realmGet$createTime());
        purchaseLogRealmObject2.realmSet$id(purchaseLogRealmObject.realmGet$id());
        return purchaseLogRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("log", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("createTime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10931x96fcdba7.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject");
    }

    @TargetApi(11)
    public static PurchaseLogRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PurchaseLogRealmObject purchaseLogRealmObject = new PurchaseLogRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("log")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    purchaseLogRealmObject.realmSet$log(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    purchaseLogRealmObject.realmSet$log(null);
                }
            } else if (nextName.equals("createTime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    purchaseLogRealmObject.realmSet$createTime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'createTime' to null.");
                }
            } else if (!nextName.equals("id")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                purchaseLogRealmObject.realmSet$id(jsonReader.nextLong());
                z = true;
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (PurchaseLogRealmObject) realm.copyToRealm((Realm) purchaseLogRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PurchaseLogRealmObject purchaseLogRealmObject, Map<RealmModel, Long> map) {
        if (purchaseLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) purchaseLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PurchaseLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo = (PurchaseLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PurchaseLogRealmObject.class);
        long j = purchaseLogRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(purchaseLogRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, purchaseLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(purchaseLogRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(purchaseLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$log = purchaseLogRealmObject.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, purchaseLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
        }
        Table.nativeSetLong(nativePtr, purchaseLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, purchaseLogRealmObject.realmGet$createTime(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PurchaseLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo = (PurchaseLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PurchaseLogRealmObject.class);
        long j = purchaseLogRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            PurchaseLogRealmObject purchaseLogRealmObject = (PurchaseLogRealmObject) it.next();
            if (!map.containsKey(purchaseLogRealmObject)) {
                if (purchaseLogRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) purchaseLogRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(purchaseLogRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(purchaseLogRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, purchaseLogRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(purchaseLogRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(purchaseLogRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$log = purchaseLogRealmObject.realmGet$log();
                if (realmGet$log != null) {
                    Table.nativeSetString(nativePtr, purchaseLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
                }
                Table.nativeSetLong(nativePtr, purchaseLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, purchaseLogRealmObject.realmGet$createTime(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PurchaseLogRealmObject purchaseLogRealmObject, Map<RealmModel, Long> map) {
        if (purchaseLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) purchaseLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PurchaseLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo = (PurchaseLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PurchaseLogRealmObject.class);
        long j = purchaseLogRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(purchaseLogRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, purchaseLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(purchaseLogRealmObject.realmGet$id()));
        }
        map.put(purchaseLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$log = purchaseLogRealmObject.realmGet$log();
        if (realmGet$log != null) {
            Table.nativeSetString(nativePtr, purchaseLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, realmGet$log, false);
        } else {
            Table.nativeSetNull(nativePtr, purchaseLogRealmObjectColumnInfo.logIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, purchaseLogRealmObjectColumnInfo.createTimeIndex, nativeFindFirstInt, purchaseLogRealmObject.realmGet$createTime(), false);
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
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10931x96fcdba7.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10931x96fcdba7 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PurchaseLogRealmObject.class), false, Collections.emptyList());
        C10931x96fcdba7 gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy = new C10931x96fcdba7();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy;
    }

    public static PurchaseLogRealmObject update(Realm realm, PurchaseLogRealmObjectColumnInfo purchaseLogRealmObjectColumnInfo, PurchaseLogRealmObject purchaseLogRealmObject, PurchaseLogRealmObject purchaseLogRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PurchaseLogRealmObject.class), purchaseLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(purchaseLogRealmObjectColumnInfo.logIndex, purchaseLogRealmObject2.realmGet$log());
        osObjectBuilder.addInteger(purchaseLogRealmObjectColumnInfo.createTimeIndex, Long.valueOf(purchaseLogRealmObject2.realmGet$createTime()));
        osObjectBuilder.addInteger(purchaseLogRealmObjectColumnInfo.idIndex, Long.valueOf(purchaseLogRealmObject2.realmGet$id()));
        osObjectBuilder.updateExistingObject();
        return purchaseLogRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10931x96fcdba7.class != obj.getClass()) {
            return false;
        }
        C10931x96fcdba7 gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy = (C10931x96fcdba7) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_log_purchaselogrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PurchaseLogRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public long realmGet$createTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.createTimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public String realmGet$log() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.logIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public void realmSet$createTime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.createTimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.createTimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.log.PurchaseLogRealmObject, io.realm.AbstractC10932x4999dd52
    public void realmSet$log(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.logIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.logIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.logIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.logIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("PurchaseLogRealmObject = proxy[");
        sb.append("{log:");
        sb.append(realmGet$log() != null ? realmGet$log() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{createTime:");
        sb.append(realmGet$createTime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
