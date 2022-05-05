package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy.class */
public class C10925xffa95e67 extends DialerIndexRealmObject implements RealmObjectProxy, AbstractC10926x64f47292 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public DialerIndexRealmObjectColumnInfo columnInfo;
    public ProxyState<DialerIndexRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "DialerIndexRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy$DialerIndexRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy$DialerIndexRealmObjectColumnInfo.class */
    public static final class DialerIndexRealmObjectColumnInfo extends ColumnInfo {
        public long _idIndex;
        public long cache_idIndex;
        public long maxColumnIndexValue;
        public long normalized_indexIndex;

        public DialerIndexRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public DialerIndexRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this._idIndex = addColumnDetails("_id", "_id", objectSchemaInfo);
            this.normalized_indexIndex = addColumnDetails("normalized_index", "normalized_index", objectSchemaInfo);
            this.cache_idIndex = addColumnDetails("cache_id", "cache_id", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new DialerIndexRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo = (DialerIndexRealmObjectColumnInfo) columnInfo;
            DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo2 = (DialerIndexRealmObjectColumnInfo) columnInfo2;
            dialerIndexRealmObjectColumnInfo2._idIndex = dialerIndexRealmObjectColumnInfo._idIndex;
            dialerIndexRealmObjectColumnInfo2.normalized_indexIndex = dialerIndexRealmObjectColumnInfo.normalized_indexIndex;
            dialerIndexRealmObjectColumnInfo2.cache_idIndex = dialerIndexRealmObjectColumnInfo.cache_idIndex;
            dialerIndexRealmObjectColumnInfo2.maxColumnIndexValue = dialerIndexRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10925xffa95e67() {
        this.proxyState.setConstructionFinished();
    }

    public static DialerIndexRealmObject copy(Realm realm, DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo, DialerIndexRealmObject dialerIndexRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(dialerIndexRealmObject);
        if (realmObjectProxy != null) {
            return (DialerIndexRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(DialerIndexRealmObject.class), dialerIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(dialerIndexRealmObjectColumnInfo._idIndex, Long.valueOf(dialerIndexRealmObject.realmGet$_id()));
        osObjectBuilder.addString(dialerIndexRealmObjectColumnInfo.normalized_indexIndex, dialerIndexRealmObject.realmGet$normalized_index());
        osObjectBuilder.addInteger(dialerIndexRealmObjectColumnInfo.cache_idIndex, Integer.valueOf(dialerIndexRealmObject.realmGet$cache_id()));
        C10925xffa95e67 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(dialerIndexRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10925xffa95e67.DialerIndexRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10925xffa95e67.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_index_DialerIndexRealmObjectRealmProxy$DialerIndexRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject");
    }

    public static DialerIndexRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new DialerIndexRealmObjectColumnInfo(osSchemaInfo);
    }

    public static DialerIndexRealmObject createDetachedCopy(DialerIndexRealmObject dialerIndexRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        DialerIndexRealmObject dialerIndexRealmObject2;
        if (i > i2 || dialerIndexRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(dialerIndexRealmObject);
        if (cacheData == null) {
            DialerIndexRealmObject dialerIndexRealmObject3 = new DialerIndexRealmObject();
            map.put(dialerIndexRealmObject, new RealmObjectProxy.CacheData<>(i, dialerIndexRealmObject3));
            dialerIndexRealmObject2 = dialerIndexRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (DialerIndexRealmObject) cacheData.object;
        } else {
            dialerIndexRealmObject2 = (DialerIndexRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        dialerIndexRealmObject2.realmSet$_id(dialerIndexRealmObject.realmGet$_id());
        dialerIndexRealmObject2.realmSet$normalized_index(dialerIndexRealmObject.realmGet$normalized_index());
        dialerIndexRealmObject2.realmSet$cache_id(dialerIndexRealmObject.realmGet$cache_id());
        return dialerIndexRealmObject2;
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
    public static gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10925xffa95e67.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject");
    }

    @TargetApi(11)
    public static DialerIndexRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        DialerIndexRealmObject dialerIndexRealmObject = new DialerIndexRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dialerIndexRealmObject.realmSet$_id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_id' to null.");
                }
            } else if (nextName.equals("normalized_index")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    dialerIndexRealmObject.realmSet$normalized_index(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    dialerIndexRealmObject.realmSet$normalized_index(null);
                }
            } else if (!nextName.equals("cache_id")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                dialerIndexRealmObject.realmSet$cache_id(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'cache_id' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (DialerIndexRealmObject) realm.copyToRealm((Realm) dialerIndexRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field '_id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, DialerIndexRealmObject dialerIndexRealmObject, Map<RealmModel, Long> map) {
        if (dialerIndexRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) dialerIndexRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(DialerIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo = (DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class);
        long j = dialerIndexRealmObjectColumnInfo._idIndex;
        Long valueOf = Long.valueOf(dialerIndexRealmObject.realmGet$_id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, dialerIndexRealmObject.realmGet$_id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(dialerIndexRealmObject.realmGet$_id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(dialerIndexRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$normalized_index = dialerIndexRealmObject.realmGet$normalized_index();
        if (realmGet$normalized_index != null) {
            Table.nativeSetString(nativePtr, dialerIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
        }
        Table.nativeSetLong(nativePtr, dialerIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, dialerIndexRealmObject.realmGet$cache_id(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(DialerIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo = (DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class);
        long j = dialerIndexRealmObjectColumnInfo._idIndex;
        while (it.hasNext()) {
            DialerIndexRealmObject dialerIndexRealmObject = (DialerIndexRealmObject) it.next();
            if (!map.containsKey(dialerIndexRealmObject)) {
                if (dialerIndexRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) dialerIndexRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(dialerIndexRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(dialerIndexRealmObject.realmGet$_id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, dialerIndexRealmObject.realmGet$_id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(dialerIndexRealmObject.realmGet$_id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(dialerIndexRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$normalized_index = dialerIndexRealmObject.realmGet$normalized_index();
                if (realmGet$normalized_index != null) {
                    Table.nativeSetString(nativePtr, dialerIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
                }
                Table.nativeSetLong(nativePtr, dialerIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, dialerIndexRealmObject.realmGet$cache_id(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, DialerIndexRealmObject dialerIndexRealmObject, Map<RealmModel, Long> map) {
        if (dialerIndexRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) dialerIndexRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(DialerIndexRealmObject.class);
        long nativePtr = table.getNativePtr();
        DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo = (DialerIndexRealmObjectColumnInfo) realm.getSchema().getColumnInfo(DialerIndexRealmObject.class);
        long j = dialerIndexRealmObjectColumnInfo._idIndex;
        long nativeFindFirstInt = Long.valueOf(dialerIndexRealmObject.realmGet$_id()) != null ? Table.nativeFindFirstInt(nativePtr, j, dialerIndexRealmObject.realmGet$_id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(dialerIndexRealmObject.realmGet$_id()));
        }
        map.put(dialerIndexRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$normalized_index = dialerIndexRealmObject.realmGet$normalized_index();
        if (realmGet$normalized_index != null) {
            Table.nativeSetString(nativePtr, dialerIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, realmGet$normalized_index, false);
        } else {
            Table.nativeSetNull(nativePtr, dialerIndexRealmObjectColumnInfo.normalized_indexIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, dialerIndexRealmObjectColumnInfo.cache_idIndex, nativeFindFirstInt, dialerIndexRealmObject.realmGet$cache_id(), false);
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
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10925xffa95e67.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10925xffa95e67 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(DialerIndexRealmObject.class), false, Collections.emptyList());
        C10925xffa95e67 gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy = new C10925xffa95e67();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy;
    }

    public static DialerIndexRealmObject update(Realm realm, DialerIndexRealmObjectColumnInfo dialerIndexRealmObjectColumnInfo, DialerIndexRealmObject dialerIndexRealmObject, DialerIndexRealmObject dialerIndexRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(DialerIndexRealmObject.class), dialerIndexRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(dialerIndexRealmObjectColumnInfo._idIndex, Long.valueOf(dialerIndexRealmObject2.realmGet$_id()));
        osObjectBuilder.addString(dialerIndexRealmObjectColumnInfo.normalized_indexIndex, dialerIndexRealmObject2.realmGet$normalized_index());
        osObjectBuilder.addInteger(dialerIndexRealmObjectColumnInfo.cache_idIndex, Integer.valueOf(dialerIndexRealmObject2.realmGet$cache_id()));
        osObjectBuilder.updateExistingObject();
        return dialerIndexRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10925xffa95e67.class != obj.getClass()) {
            return false;
        }
        C10925xffa95e67 gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy = (C10925xffa95e67) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_index_dialerindexrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (DialerIndexRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
    public long realmGet$_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
    public int realmGet$cache_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.cache_idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
    public String realmGet$normalized_index() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.normalized_indexIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
    public void realmSet$_id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field '_id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
    public void realmSet$cache_id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.cache_idIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.cache_idIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.index.DialerIndexRealmObject, io.realm.AbstractC10926x64f47292
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
        StringBuilder sb = new StringBuilder("DialerIndexRealmObject = proxy[");
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
