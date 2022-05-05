package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy.class */
public class C10946xebf73ca0 extends WhiteListRealmObject implements RealmObjectProxy, AbstractC10947x13ba8479 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public WhiteListRealmObjectColumnInfo columnInfo;
    public ProxyState<WhiteListRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "WhiteListRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy$WhiteListRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy$WhiteListRealmObjectColumnInfo.class */
    public static final class WhiteListRealmObjectColumnInfo extends ColumnInfo {
        public long _createtimeIndex;
        public long _deletedIndex;
        public long _e164Index;
        public long _statusIndex;
        public long _transactionIndex;
        public long _updatetimeIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public WhiteListRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public WhiteListRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(7);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._deletedIndex = addColumnDetails("_deleted", "_deleted", objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new WhiteListRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo = (WhiteListRealmObjectColumnInfo) columnInfo;
            WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo2 = (WhiteListRealmObjectColumnInfo) columnInfo2;
            whiteListRealmObjectColumnInfo2.idIndex = whiteListRealmObjectColumnInfo.idIndex;
            whiteListRealmObjectColumnInfo2._e164Index = whiteListRealmObjectColumnInfo._e164Index;
            whiteListRealmObjectColumnInfo2._deletedIndex = whiteListRealmObjectColumnInfo._deletedIndex;
            whiteListRealmObjectColumnInfo2._createtimeIndex = whiteListRealmObjectColumnInfo._createtimeIndex;
            whiteListRealmObjectColumnInfo2._updatetimeIndex = whiteListRealmObjectColumnInfo._updatetimeIndex;
            whiteListRealmObjectColumnInfo2._statusIndex = whiteListRealmObjectColumnInfo._statusIndex;
            whiteListRealmObjectColumnInfo2._transactionIndex = whiteListRealmObjectColumnInfo._transactionIndex;
            whiteListRealmObjectColumnInfo2.maxColumnIndexValue = whiteListRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10946xebf73ca0() {
        this.proxyState.setConstructionFinished();
    }

    public static WhiteListRealmObject copy(Realm realm, WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo, WhiteListRealmObject whiteListRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(whiteListRealmObject);
        if (realmObjectProxy != null) {
            return (WhiteListRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(WhiteListRealmObject.class), whiteListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo.idIndex, Long.valueOf(whiteListRealmObject.realmGet$id()));
        osObjectBuilder.addString(whiteListRealmObjectColumnInfo._e164Index, whiteListRealmObject.realmGet$_e164());
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._deletedIndex, Integer.valueOf(whiteListRealmObject.realmGet$_deleted()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(whiteListRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(whiteListRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._statusIndex, Integer.valueOf(whiteListRealmObject.realmGet$_status()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._transactionIndex, Integer.valueOf(whiteListRealmObject.realmGet$_transaction()));
        C10946xebf73ca0 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(whiteListRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10946xebf73ca0.WhiteListRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10946xebf73ca0.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_whitelist_WhiteListRealmObjectRealmProxy$WhiteListRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject");
    }

    public static WhiteListRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new WhiteListRealmObjectColumnInfo(osSchemaInfo);
    }

    public static WhiteListRealmObject createDetachedCopy(WhiteListRealmObject whiteListRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        WhiteListRealmObject whiteListRealmObject2;
        if (i > i2 || whiteListRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(whiteListRealmObject);
        if (cacheData == null) {
            WhiteListRealmObject whiteListRealmObject3 = new WhiteListRealmObject();
            map.put(whiteListRealmObject, new RealmObjectProxy.CacheData<>(i, whiteListRealmObject3));
            whiteListRealmObject2 = whiteListRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (WhiteListRealmObject) cacheData.object;
        } else {
            whiteListRealmObject2 = (WhiteListRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        whiteListRealmObject2.realmSet$id(whiteListRealmObject.realmGet$id());
        whiteListRealmObject2.realmSet$_e164(whiteListRealmObject.realmGet$_e164());
        whiteListRealmObject2.realmSet$_deleted(whiteListRealmObject.realmGet$_deleted());
        whiteListRealmObject2.realmSet$_createtime(whiteListRealmObject.realmGet$_createtime());
        whiteListRealmObject2.realmSet$_updatetime(whiteListRealmObject.realmGet$_updatetime());
        whiteListRealmObject2.realmSet$_status(whiteListRealmObject.realmGet$_status());
        whiteListRealmObject2.realmSet$_transaction(whiteListRealmObject.realmGet$_transaction());
        return whiteListRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 7, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_deleted", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10946xebf73ca0.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject");
    }

    @TargetApi(11)
    public static WhiteListRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        WhiteListRealmObject whiteListRealmObject = new WhiteListRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    whiteListRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_deleted")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$_deleted(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_deleted' to null.");
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    whiteListRealmObject.realmSet$_status(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_status' to null.");
                }
            } else if (!nextName.equals("_transaction")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                whiteListRealmObject.realmSet$_transaction(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field '_transaction' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (WhiteListRealmObject) realm.copyToRealm((Realm) whiteListRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, WhiteListRealmObject whiteListRealmObject, Map<RealmModel, Long> map) {
        if (whiteListRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) whiteListRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(WhiteListRealmObject.class);
        long nativePtr = table.getNativePtr();
        WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo = (WhiteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(WhiteListRealmObject.class);
        long j = whiteListRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(whiteListRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, whiteListRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(whiteListRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(whiteListRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = whiteListRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, whiteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_deleted(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_updatetime(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_status(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_transaction(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(WhiteListRealmObject.class);
        long nativePtr = table.getNativePtr();
        WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo = (WhiteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(WhiteListRealmObject.class);
        long j = whiteListRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            WhiteListRealmObject whiteListRealmObject = (WhiteListRealmObject) it.next();
            if (!map.containsKey(whiteListRealmObject)) {
                if (whiteListRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) whiteListRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(whiteListRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(whiteListRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, whiteListRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(whiteListRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(whiteListRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_e164 = whiteListRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, whiteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_deleted(), false);
                Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_updatetime(), false);
                Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_status(), false);
                Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_transaction(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, WhiteListRealmObject whiteListRealmObject, Map<RealmModel, Long> map) {
        if (whiteListRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) whiteListRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(WhiteListRealmObject.class);
        long nativePtr = table.getNativePtr();
        WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo = (WhiteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(WhiteListRealmObject.class);
        long j = whiteListRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(whiteListRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, whiteListRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(whiteListRealmObject.realmGet$id()));
        }
        map.put(whiteListRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = whiteListRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, whiteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, whiteListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_deleted(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_updatetime(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_status(), false);
        Table.nativeSetLong(nativePtr, whiteListRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, whiteListRealmObject.realmGet$_transaction(), false);
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
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10946xebf73ca0.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10946xebf73ca0 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(WhiteListRealmObject.class), false, Collections.emptyList());
        C10946xebf73ca0 gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy = new C10946xebf73ca0();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy;
    }

    public static WhiteListRealmObject update(Realm realm, WhiteListRealmObjectColumnInfo whiteListRealmObjectColumnInfo, WhiteListRealmObject whiteListRealmObject, WhiteListRealmObject whiteListRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(WhiteListRealmObject.class), whiteListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo.idIndex, Long.valueOf(whiteListRealmObject2.realmGet$id()));
        osObjectBuilder.addString(whiteListRealmObjectColumnInfo._e164Index, whiteListRealmObject2.realmGet$_e164());
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._deletedIndex, Integer.valueOf(whiteListRealmObject2.realmGet$_deleted()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(whiteListRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(whiteListRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._statusIndex, Integer.valueOf(whiteListRealmObject2.realmGet$_status()));
        osObjectBuilder.addInteger(whiteListRealmObjectColumnInfo._transactionIndex, Integer.valueOf(whiteListRealmObject2.realmGet$_transaction()));
        osObjectBuilder.updateExistingObject();
        return whiteListRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10946xebf73ca0.class != obj.getClass()) {
            return false;
        }
        C10946xebf73ca0 gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy = (C10946xebf73ca0) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_whitelist_whitelistrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (WhiteListRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public int realmGet$_deleted() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo._deletedIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public int realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public int realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_deleted(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._deletedIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._deletedIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_status(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._statusIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._statusIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_transaction(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._transactionIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._transactionIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject, io.realm.AbstractC10947x13ba8479
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("WhiteListRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        sb.append(realmGet$_e164() != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_deleted:");
        sb.append(realmGet$_deleted());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_createtime:");
        sb.append(realmGet$_createtime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_updatetime:");
        sb.append(realmGet$_updatetime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_status:");
        sb.append(realmGet$_status());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_transaction:");
        sb.append(realmGet$_transaction());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
