package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy.class */
public class C10942x426b3945 extends OfflineBadgeRecordObj implements RealmObjectProxy, AbstractC10943xd57f174 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public OfflineBadgeRecordObjColumnInfo columnInfo;
    public ProxyState<OfflineBadgeRecordObj> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "OfflineBadgeRecordObj";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$OfflineBadgeRecordObjColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$OfflineBadgeRecordObjColumnInfo.class */
    public static final class OfflineBadgeRecordObjColumnInfo extends ColumnInfo {
        public long maxColumnIndexValue;
        public long timeIndex;
        public long typeIndex;

        public OfflineBadgeRecordObjColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public OfflineBadgeRecordObjColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.timeIndex = addColumnDetails("time", "time", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new OfflineBadgeRecordObjColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo = (OfflineBadgeRecordObjColumnInfo) columnInfo;
            OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo2 = (OfflineBadgeRecordObjColumnInfo) columnInfo2;
            offlineBadgeRecordObjColumnInfo2.timeIndex = offlineBadgeRecordObjColumnInfo.timeIndex;
            offlineBadgeRecordObjColumnInfo2.typeIndex = offlineBadgeRecordObjColumnInfo.typeIndex;
            offlineBadgeRecordObjColumnInfo2.maxColumnIndexValue = offlineBadgeRecordObjColumnInfo.maxColumnIndexValue;
        }
    }

    public C10942x426b3945() {
        this.proxyState.setConstructionFinished();
    }

    public static OfflineBadgeRecordObj copy(Realm realm, OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo, OfflineBadgeRecordObj offlineBadgeRecordObj, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offlineBadgeRecordObj);
        if (realmObjectProxy != null) {
            return (OfflineBadgeRecordObj) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OfflineBadgeRecordObj.class), offlineBadgeRecordObjColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offlineBadgeRecordObjColumnInfo.timeIndex, Long.valueOf(offlineBadgeRecordObj.realmGet$time()));
        osObjectBuilder.addInteger(offlineBadgeRecordObjColumnInfo.typeIndex, Integer.valueOf(offlineBadgeRecordObj.realmGet$type()));
        C10942x426b3945 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offlineBadgeRecordObj, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj copyOrUpdate(io.realm.Realm r7, io.realm.C10942x426b3945.OfflineBadgeRecordObjColumnInfo r8, gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10942x426b3945.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$OfflineBadgeRecordObjColumnInfo, gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj");
    }

    public static OfflineBadgeRecordObjColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OfflineBadgeRecordObjColumnInfo(osSchemaInfo);
    }

    public static OfflineBadgeRecordObj createDetachedCopy(OfflineBadgeRecordObj offlineBadgeRecordObj, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        OfflineBadgeRecordObj offlineBadgeRecordObj2;
        if (i > i2 || offlineBadgeRecordObj == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offlineBadgeRecordObj);
        if (cacheData == null) {
            OfflineBadgeRecordObj offlineBadgeRecordObj3 = new OfflineBadgeRecordObj();
            map.put(offlineBadgeRecordObj, new RealmObjectProxy.CacheData<>(i, offlineBadgeRecordObj3));
            offlineBadgeRecordObj2 = offlineBadgeRecordObj3;
        } else if (i >= cacheData.minDepth) {
            return (OfflineBadgeRecordObj) cacheData.object;
        } else {
            offlineBadgeRecordObj2 = (OfflineBadgeRecordObj) cacheData.object;
            cacheData.minDepth = i;
        }
        offlineBadgeRecordObj2.realmSet$time(offlineBadgeRecordObj.realmGet$time());
        offlineBadgeRecordObj2.realmSet$type(offlineBadgeRecordObj.realmGet$type());
        return offlineBadgeRecordObj2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty("time", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10942x426b3945.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj");
    }

    @TargetApi(11)
    public static OfflineBadgeRecordObj createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        OfflineBadgeRecordObj offlineBadgeRecordObj = new OfflineBadgeRecordObj();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offlineBadgeRecordObj.realmSet$time(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'time' to null.");
                }
            } else if (!nextName.equals("type")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offlineBadgeRecordObj.realmSet$type(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (OfflineBadgeRecordObj) realm.copyToRealm((Realm) offlineBadgeRecordObj, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'time'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, OfflineBadgeRecordObj offlineBadgeRecordObj, Map<RealmModel, Long> map) {
        if (offlineBadgeRecordObj instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineBadgeRecordObj;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineBadgeRecordObj.class);
        long nativePtr = table.getNativePtr();
        OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo = (OfflineBadgeRecordObjColumnInfo) realm.getSchema().getColumnInfo(OfflineBadgeRecordObj.class);
        long j = offlineBadgeRecordObjColumnInfo.timeIndex;
        Long valueOf = Long.valueOf(offlineBadgeRecordObj.realmGet$time());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, offlineBadgeRecordObj.realmGet$time()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(offlineBadgeRecordObj.realmGet$time()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(offlineBadgeRecordObj, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, offlineBadgeRecordObjColumnInfo.typeIndex, nativeFindFirstInt, offlineBadgeRecordObj.realmGet$type(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(OfflineBadgeRecordObj.class);
        long nativePtr = table.getNativePtr();
        OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo = (OfflineBadgeRecordObjColumnInfo) realm.getSchema().getColumnInfo(OfflineBadgeRecordObj.class);
        long j = offlineBadgeRecordObjColumnInfo.timeIndex;
        while (it.hasNext()) {
            OfflineBadgeRecordObj offlineBadgeRecordObj = (OfflineBadgeRecordObj) it.next();
            if (!map.containsKey(offlineBadgeRecordObj)) {
                if (offlineBadgeRecordObj instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineBadgeRecordObj;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offlineBadgeRecordObj, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(offlineBadgeRecordObj.realmGet$time());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, offlineBadgeRecordObj.realmGet$time()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(offlineBadgeRecordObj.realmGet$time()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(offlineBadgeRecordObj, Long.valueOf(nativeFindFirstInt));
                Table.nativeSetLong(nativePtr, offlineBadgeRecordObjColumnInfo.typeIndex, nativeFindFirstInt, offlineBadgeRecordObj.realmGet$type(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, OfflineBadgeRecordObj offlineBadgeRecordObj, Map<RealmModel, Long> map) {
        if (offlineBadgeRecordObj instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offlineBadgeRecordObj;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(OfflineBadgeRecordObj.class);
        long nativePtr = table.getNativePtr();
        OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo = (OfflineBadgeRecordObjColumnInfo) realm.getSchema().getColumnInfo(OfflineBadgeRecordObj.class);
        long j = offlineBadgeRecordObjColumnInfo.timeIndex;
        long nativeFindFirstInt = Long.valueOf(offlineBadgeRecordObj.realmGet$time()) != null ? Table.nativeFindFirstInt(nativePtr, j, offlineBadgeRecordObj.realmGet$time()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(offlineBadgeRecordObj.realmGet$time()));
        }
        map.put(offlineBadgeRecordObj, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, offlineBadgeRecordObjColumnInfo.typeIndex, nativeFindFirstInt, offlineBadgeRecordObj.realmGet$type(), false);
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
            r0 = r10
            java.lang.Class<gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj> r1 = gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj.class
            io.realm.internal.Table r0 = r0.getTable(r1)
            r13 = r0
            r0 = r13
            long r0 = r0.getNativePtr()
            r14 = r0
            r0 = r10
            io.realm.RealmSchema r0 = r0.getSchema()
            java.lang.Class<gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj> r1 = gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj.class
            io.realm.internal.ColumnInfo r0 = r0.getColumnInfo(r1)
            io.realm.gogolook_callgogolook2_realm_obj_offlinedb_OfflineBadgeRecordObjRealmProxy$OfflineBadgeRecordObjColumnInfo r0 = (io.realm.C10942x426b3945.OfflineBadgeRecordObjColumnInfo) r0
            r16 = r0
            r0 = r16
            long r0 = r0.timeIndex
            r17 = r0
        L_0x0022:
            r0 = r11
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00ff
            r0 = r11
            java.lang.Object r0 = r0.next()
            gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj r0 = (gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj) r0
            r19 = r0
            r0 = r12
            r1 = r19
            boolean r0 = r0.containsKey(r1)
            if (r0 == 0) goto L_0x0044
            goto L_0x0022
        L_0x0044:
            r0 = r19
            boolean r0 = r0 instanceof io.realm.internal.RealmObjectProxy
            if (r0 == 0) goto L_0x0095
            r0 = r19
            io.realm.internal.RealmObjectProxy r0 = (io.realm.internal.RealmObjectProxy) r0
            r20 = r0
            r0 = r20
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.getRealm$realm()
            if (r0 == 0) goto L_0x0095
            r0 = r20
            io.realm.ProxyState r0 = r0.realmGet$proxyState()
            io.realm.BaseRealm r0 = r0.getRealm$realm()
            java.lang.String r0 = r0.getPath()
            r1 = r10
            java.lang.String r1 = r1.getPath()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0095
            r0 = r12
            r1 = r19
            r2 = r20
            io.realm.ProxyState r2 = r2.realmGet$proxyState()
            io.realm.internal.Row r2 = r2.getRow$realm()
            long r2 = r2.getIndex()
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0022
        L_0x0095:
            r0 = r19
            long r0 = r0.realmGet$time()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            if (r0 == 0) goto L_0x00b5
            r0 = r14
            r1 = r17
            r2 = r19
            long r2 = r2.realmGet$time()
            long r0 = io.realm.internal.Table.nativeFindFirstInt(r0, r1, r2)
            r21 = r0
            goto L_0x00ba
        L_0x00b5:
            r0 = -1
            r21 = r0
        L_0x00ba:
            r0 = r21
            r23 = r0
            r0 = r21
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00d9
            r0 = r13
            r1 = r17
            r2 = r19
            long r2 = r2.realmGet$time()
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            long r0 = io.realm.internal.OsObject.createRowWithPrimaryKey(r0, r1, r2)
            r23 = r0
        L_0x00d9:
            r0 = r12
            r1 = r19
            r2 = r23
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r14
            r1 = r16
            long r1 = r1.typeIndex
            r2 = r23
            r3 = r19
            int r3 = r3.realmGet$type()
            long r3 = (long) r3
            r4 = 0
            io.realm.internal.Table.nativeSetLong(r0, r1, r2, r3, r4)
            goto L_0x0022
        L_0x00ff:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10942x426b3945.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10942x426b3945 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(OfflineBadgeRecordObj.class), false, Collections.emptyList());
        C10942x426b3945 gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy = new C10942x426b3945();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy;
    }

    public static OfflineBadgeRecordObj update(Realm realm, OfflineBadgeRecordObjColumnInfo offlineBadgeRecordObjColumnInfo, OfflineBadgeRecordObj offlineBadgeRecordObj, OfflineBadgeRecordObj offlineBadgeRecordObj2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(OfflineBadgeRecordObj.class), offlineBadgeRecordObjColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offlineBadgeRecordObjColumnInfo.timeIndex, Long.valueOf(offlineBadgeRecordObj2.realmGet$time()));
        osObjectBuilder.addInteger(offlineBadgeRecordObjColumnInfo.typeIndex, Integer.valueOf(offlineBadgeRecordObj2.realmGet$type()));
        osObjectBuilder.updateExistingObject();
        return offlineBadgeRecordObj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10942x426b3945.class != obj.getClass()) {
            return false;
        }
        C10942x426b3945 gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy = (C10942x426b3945) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_offlinedb_offlinebadgerecordobjrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OfflineBadgeRecordObjColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj, io.realm.AbstractC10943xd57f174
    public long realmGet$time() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.timeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj, io.realm.AbstractC10943xd57f174
    public int realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj, io.realm.AbstractC10943xd57f174
    public void realmSet$time(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'time' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.offlinedb.OfflineBadgeRecordObj, io.realm.AbstractC10943xd57f174
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
        return "OfflineBadgeRecordObj = proxy[{time:" + realmGet$time() + CssParser.BLOCK_END + ",{type:" + realmGet$type() + CssParser.BLOCK_END + "]";
    }
}
