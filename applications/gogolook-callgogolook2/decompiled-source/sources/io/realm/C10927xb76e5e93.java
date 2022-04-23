package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy.class */
public class C10927xb76e5e93 extends NumberIndexRealmObject implements RealmObjectProxy, AbstractC10928x976ee3e6 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public NumberIndexRealmObjectColumnInfo columnInfo;
    public ProxyState<NumberIndexRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "NumberIndexRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy$NumberIndexRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy$NumberIndexRealmObjectColumnInfo.class */
    public static final class NumberIndexRealmObjectColumnInfo extends ColumnInfo {
        public long _idIndex;
        public long cache_idIndex;
        public long maxColumnIndexValue;
        public long normalized_indexIndex;

        public NumberIndexRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public NumberIndexRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this._idIndex = addColumnDetails("_id", "_id", objectSchemaInfo);
            this.normalized_indexIndex = addColumnDetails("normalized_index", "normalized_index", objectSchemaInfo);
            this.cache_idIndex = addColumnDetails("cache_id", "cache_id", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new NumberIndexRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo = (NumberIndexRealmObjectColumnInfo) columnInfo;
            NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo2 = (NumberIndexRealmObjectColumnInfo) columnInfo2;
            numberIndexRealmObjectColumnInfo2._idIndex = numberIndexRealmObjectColumnInfo._idIndex;
            numberIndexRealmObjectColumnInfo2.normalized_indexIndex = numberIndexRealmObjectColumnInfo.normalized_indexIndex;
            numberIndexRealmObjectColumnInfo2.cache_idIndex = numberIndexRealmObjectColumnInfo.cache_idIndex;
            numberIndexRealmObjectColumnInfo2.maxColumnIndexValue = numberIndexRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10927xb76e5e93() {
        this.proxyState.setConstructionFinished();
    }

    public static NumberIndexRealmObject copy(Realm realm, NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo, NumberIndexRealmObject numberIndexRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(numberIndexRealmObject);
        if (realmObjectProxy != null) {
            return (NumberIndexRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(NumberIndexRealmObject.class), numberIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(numberIndexRealmObjectColumnInfo._idIndex, Long.valueOf(numberIndexRealmObject.realmGet$_id()));
        osObjectBuilder.addString(numberIndexRealmObjectColumnInfo.normalized_indexIndex, numberIndexRealmObject.realmGet$normalized_index());
        osObjectBuilder.addInteger(numberIndexRealmObjectColumnInfo.cache_idIndex, Integer.valueOf(numberIndexRealmObject.realmGet$cache_id()));
        C10927xb76e5e93 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(numberIndexRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10927xb76e5e93.NumberIndexRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10927xb76e5e93.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_index_NumberIndexRealmObjectRealmProxy$NumberIndexRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject");
    }

    public static NumberIndexRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new NumberIndexRealmObjectColumnInfo(osSchemaInfo);
    }

    public static NumberIndexRealmObject createDetachedCopy(NumberIndexRealmObject numberIndexRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        NumberIndexRealmObject numberIndexRealmObject2;
        if (i > i2 || numberIndexRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(numberIndexRealmObject);
        if (cacheData == null) {
            NumberIndexRealmObject numberIndexRealmObject3 = new NumberIndexRealmObject();
            map.put(numberIndexRealmObject, new RealmObjectProxy.CacheData<>(i, numberIndexRealmObject3));
            numberIndexRealmObject2 = numberIndexRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (NumberIndexRealmObject) cacheData.object;
        } else {
            numberIndexRealmObject2 = (NumberIndexRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        numberIndexRealmObject2.realmSet$_id(numberIndexRealmObject.realmGet$_id());
        numberIndexRealmObject2.realmSet$normalized_index(numberIndexRealmObject.realmGet$normalized_index());
        numberIndexRealmObject2.realmSet$cache_id(numberIndexRealmObject.realmGet$cache_id());
        return numberIndexRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("_id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("normalized_index", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("cache_id", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10927xb76e5e93.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject");
    }

    @TargetApi(11)
    public static NumberIndexRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        NumberIndexRealmObject numberIndexRealmObject = new NumberIndexRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    numberIndexRealmObject.realmSet$_id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_id' to null.");
                }
            } else if (nextName.equals("normalized_index")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    numberIndexRealmObject.realmSet$normalized_index(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    numberIndexRealmObject.realmSet$normalized_index(null);
                }
            } else if (!nextName.equals("cache_id")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                numberIndexRealmObject.realmSet$cache_id(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'cache_id' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (NumberIndexRealmObject) realm.copyToRealm((Realm) numberIndexRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field '_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, NumberIndexRealmObject numberIndexRealmObject, Map<RealmModel, Long> map) {
        if (numberIndexRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) numberIndexRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(NumberIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo = (NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class);
        long j = numberIndexRealmObjectColumnInfo._idIndex;
        Long valueOf = Long.valueOf(numberIndexRealmObject.realmGet$_id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, numberIndexRealmObject.realmGet$_id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(numberIndexRealmObject.realmGet$_id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(numberIndexRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$normalized_index = numberIndexRealmObject.realmGet$normalized_index();
        if (realmGet$normalized_index != null) {
            Table.nativeSetString(nativePtr, numberIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
        }
        Table.nativeSetLong(nativePtr, numberIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, numberIndexRealmObject.realmGet$cache_id(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(NumberIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo = (NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class);
        long j = numberIndexRealmObjectColumnInfo._idIndex;
        while (it.hasNext()) {
            NumberIndexRealmObject numberIndexRealmObject = (NumberIndexRealmObject) it.next();
            if (!map.containsKey(numberIndexRealmObject)) {
                if (numberIndexRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) numberIndexRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(numberIndexRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(numberIndexRealmObject.realmGet$_id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, numberIndexRealmObject.realmGet$_id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(numberIndexRealmObject.realmGet$_id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(numberIndexRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$normalized_index = numberIndexRealmObject.realmGet$normalized_index();
                if (realmGet$normalized_index != null) {
                    Table.nativeSetString(nativePtr, numberIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
                }
                Table.nativeSetLong(nativePtr, numberIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, numberIndexRealmObject.realmGet$cache_id(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, NumberIndexRealmObject numberIndexRealmObject, Map<RealmModel, Long> map) {
        if (numberIndexRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) numberIndexRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(NumberIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo = (NumberIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NumberIndexRealmObject.class);
        long j = numberIndexRealmObjectColumnInfo._idIndex;
        long nativeFindFirstInt = Long.valueOf(numberIndexRealmObject.realmGet$_id()) != null ? Table.nativeFindFirstInt(nativePtr, j, numberIndexRealmObject.realmGet$_id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(numberIndexRealmObject.realmGet$_id()));
        }
        map.put(numberIndexRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$normalized_index = numberIndexRealmObject.realmGet$normalized_index();
        if (realmGet$normalized_index != null) {
            Table.nativeSetString(nativePtr, numberIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
        } else {
            Table.nativeSetNull(nativePtr, numberIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, numberIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, numberIndexRealmObject.realmGet$cache_id(), false);
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
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10927xb76e5e93.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10927xb76e5e93 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(NumberIndexRealmObject.class), false, Collections.emptyList());
        C10927xb76e5e93 gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy = new C10927xb76e5e93();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy;
    }

    public static NumberIndexRealmObject update(Realm realm, NumberIndexRealmObjectColumnInfo numberIndexRealmObjectColumnInfo, NumberIndexRealmObject numberIndexRealmObject, NumberIndexRealmObject numberIndexRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(NumberIndexRealmObject.class), numberIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(numberIndexRealmObjectColumnInfo._idIndex, Long.valueOf(numberIndexRealmObject2.realmGet$_id()));
        osObjectBuilder.addString(numberIndexRealmObjectColumnInfo.normalized_indexIndex, numberIndexRealmObject2.realmGet$normalized_index());
        osObjectBuilder.addInteger(numberIndexRealmObjectColumnInfo.cache_idIndex, Integer.valueOf(numberIndexRealmObject2.realmGet$cache_id()));
        osObjectBuilder.updateExistingObject();
        return numberIndexRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10927xb76e5e93.class != obj.getClass()) {
            return false;
        }
        C10927xb76e5e93 gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy = (C10927xb76e5e93) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_index_numberindexrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (NumberIndexRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public long realmGet$_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public int realmGet$cache_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.cache_idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public String realmGet$normalized_index() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.normalized_indexIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public void realmSet$_id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field '_id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public void realmSet$cache_id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.cache_idIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.cache_idIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.NumberIndexRealmObject, io.realm.AbstractC10928x976ee3e6
    public void realmSet$normalized_index(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.normalized_indexIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.normalized_indexIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.normalized_indexIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.normalized_indexIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("NumberIndexRealmObject = proxy[");
        sb.append("{_id:");
        sb.append(realmGet$_id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{normalized_index:");
        sb.append(realmGet$normalized_index() != null ? realmGet$normalized_index() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{cache_id:");
        sb.append(realmGet$cache_id());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
