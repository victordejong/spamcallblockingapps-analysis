package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import io.realm.BaseRealm;
import io.realm.C10909x2e9544f2;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy.class */
public class C10907x9779850b extends FavoriteGroupRealmObject implements RealmObjectProxy, AbstractC10908xfcfb846e {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public FavoriteGroupRealmObjectColumnInfo columnInfo;
    public RealmList<FavoriteListRealmObject> favoriteListRealmObjectsRealmList;
    public ProxyState<FavoriteGroupRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "FavoriteGroupRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy$FavoriteGroupRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy$FavoriteGroupRealmObjectColumnInfo.class */
    public static final class FavoriteGroupRealmObjectColumnInfo extends ColumnInfo {
        public long _createtimeIndex;
        public long _label_idIndex;
        public long _nameIndex;
        public long _parentidIndex;
        public long _pinnedIndex;
        public long _statusIndex;
        public long _transactionIndex;
        public long _updatetimeIndex;
        public long favoriteListRealmObjectsIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public FavoriteGroupRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public FavoriteGroupRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(10);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._nameIndex = addColumnDetails("_name", "_name", objectSchemaInfo);
            this._parentidIndex = addColumnDetails("_parentid", "_parentid", objectSchemaInfo);
            this._label_idIndex = addColumnDetails(FavoriteGroupRealmObject.LABELID, FavoriteGroupRealmObject.LABELID, objectSchemaInfo);
            this._pinnedIndex = addColumnDetails(FavoriteGroupRealmObject.PINNED, FavoriteGroupRealmObject.PINNED, objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.favoriteListRealmObjectsIndex = addColumnDetails(FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS, FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new FavoriteGroupRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo = (FavoriteGroupRealmObjectColumnInfo) columnInfo;
            FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo2 = (FavoriteGroupRealmObjectColumnInfo) columnInfo2;
            favoriteGroupRealmObjectColumnInfo2.idIndex = favoriteGroupRealmObjectColumnInfo.idIndex;
            favoriteGroupRealmObjectColumnInfo2._nameIndex = favoriteGroupRealmObjectColumnInfo._nameIndex;
            favoriteGroupRealmObjectColumnInfo2._parentidIndex = favoriteGroupRealmObjectColumnInfo._parentidIndex;
            favoriteGroupRealmObjectColumnInfo2._label_idIndex = favoriteGroupRealmObjectColumnInfo._label_idIndex;
            favoriteGroupRealmObjectColumnInfo2._pinnedIndex = favoriteGroupRealmObjectColumnInfo._pinnedIndex;
            favoriteGroupRealmObjectColumnInfo2._createtimeIndex = favoriteGroupRealmObjectColumnInfo._createtimeIndex;
            favoriteGroupRealmObjectColumnInfo2._updatetimeIndex = favoriteGroupRealmObjectColumnInfo._updatetimeIndex;
            favoriteGroupRealmObjectColumnInfo2._statusIndex = favoriteGroupRealmObjectColumnInfo._statusIndex;
            favoriteGroupRealmObjectColumnInfo2._transactionIndex = favoriteGroupRealmObjectColumnInfo._transactionIndex;
            favoriteGroupRealmObjectColumnInfo2.favoriteListRealmObjectsIndex = favoriteGroupRealmObjectColumnInfo.favoriteListRealmObjectsIndex;
            favoriteGroupRealmObjectColumnInfo2.maxColumnIndexValue = favoriteGroupRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10907x9779850b() {
        this.proxyState.setConstructionFinished();
    }

    public static FavoriteGroupRealmObject copy(Realm realm, FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo, FavoriteGroupRealmObject favoriteGroupRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(favoriteGroupRealmObject);
        if (realmObjectProxy != null) {
            return (FavoriteGroupRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(FavoriteGroupRealmObject.class), favoriteGroupRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo.idIndex, Long.valueOf(favoriteGroupRealmObject.realmGet$id()));
        osObjectBuilder.addString(favoriteGroupRealmObjectColumnInfo._nameIndex, favoriteGroupRealmObject.realmGet$_name());
        osObjectBuilder.addString(favoriteGroupRealmObjectColumnInfo._parentidIndex, favoriteGroupRealmObject.realmGet$_parentid());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._label_idIndex, favoriteGroupRealmObject.realmGet$_label_id());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._pinnedIndex, favoriteGroupRealmObject.realmGet$_pinned());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._createtimeIndex, Long.valueOf(favoriteGroupRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(favoriteGroupRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._statusIndex, favoriteGroupRealmObject.realmGet$_status());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._transactionIndex, favoriteGroupRealmObject.realmGet$_transaction());
        C10907x9779850b newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(favoriteGroupRealmObject, newProxyInstance);
        RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects = favoriteGroupRealmObject.realmGet$favoriteListRealmObjects();
        if (realmGet$favoriteListRealmObjects != null) {
            RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects2 = newProxyInstance.realmGet$favoriteListRealmObjects();
            realmGet$favoriteListRealmObjects2.clear();
            for (int i = 0; i < realmGet$favoriteListRealmObjects.size(); i++) {
                FavoriteListRealmObject favoriteListRealmObject = realmGet$favoriteListRealmObjects.get(i);
                FavoriteListRealmObject favoriteListRealmObject2 = (FavoriteListRealmObject) map.get(favoriteListRealmObject);
                if (favoriteListRealmObject2 != null) {
                    realmGet$favoriteListRealmObjects2.add(favoriteListRealmObject2);
                } else {
                    realmGet$favoriteListRealmObjects2.add(C10909x2e9544f2.copyOrUpdate(realm, (C10909x2e9544f2.FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class), favoriteListRealmObject, z, map, set));
                }
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10907x9779850b.FavoriteGroupRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10907x9779850b.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_favorite_FavoriteGroupRealmObjectRealmProxy$FavoriteGroupRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject");
    }

    public static FavoriteGroupRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new FavoriteGroupRealmObjectColumnInfo(osSchemaInfo);
    }

    public static FavoriteGroupRealmObject createDetachedCopy(FavoriteGroupRealmObject favoriteGroupRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        FavoriteGroupRealmObject favoriteGroupRealmObject2;
        if (i > i2 || favoriteGroupRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(favoriteGroupRealmObject);
        if (cacheData == null) {
            favoriteGroupRealmObject2 = new FavoriteGroupRealmObject();
            map.put(favoriteGroupRealmObject, new RealmObjectProxy.CacheData<>(i, favoriteGroupRealmObject2));
        } else if (i >= cacheData.minDepth) {
            return (FavoriteGroupRealmObject) cacheData.object;
        } else {
            favoriteGroupRealmObject2 = (FavoriteGroupRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        favoriteGroupRealmObject2.realmSet$id(favoriteGroupRealmObject.realmGet$id());
        favoriteGroupRealmObject2.realmSet$_name(favoriteGroupRealmObject.realmGet$_name());
        favoriteGroupRealmObject2.realmSet$_parentid(favoriteGroupRealmObject.realmGet$_parentid());
        favoriteGroupRealmObject2.realmSet$_label_id(favoriteGroupRealmObject.realmGet$_label_id());
        favoriteGroupRealmObject2.realmSet$_pinned(favoriteGroupRealmObject.realmGet$_pinned());
        favoriteGroupRealmObject2.realmSet$_createtime(favoriteGroupRealmObject.realmGet$_createtime());
        favoriteGroupRealmObject2.realmSet$_updatetime(favoriteGroupRealmObject.realmGet$_updatetime());
        favoriteGroupRealmObject2.realmSet$_status(favoriteGroupRealmObject.realmGet$_status());
        favoriteGroupRealmObject2.realmSet$_transaction(favoriteGroupRealmObject.realmGet$_transaction());
        if (i == i2) {
            favoriteGroupRealmObject2.realmSet$favoriteListRealmObjects(null);
        } else {
            RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects = favoriteGroupRealmObject.realmGet$favoriteListRealmObjects();
            RealmList<FavoriteListRealmObject> realmList = new RealmList<>();
            favoriteGroupRealmObject2.realmSet$favoriteListRealmObjects(realmList);
            int size = realmGet$favoriteListRealmObjects.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(C10909x2e9544f2.createDetachedCopy(realmGet$favoriteListRealmObjects.get(i3), i + 1, i2, map));
            }
        }
        return favoriteGroupRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 10, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_name", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("_parentid", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(FavoriteGroupRealmObject.LABELID, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(FavoriteGroupRealmObject.PINNED, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedLinkProperty(FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS, RealmFieldType.LIST, C10909x2e9544f2.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x027d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10907x9779850b.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject");
    }

    @TargetApi(11)
    public static FavoriteGroupRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        FavoriteGroupRealmObject favoriteGroupRealmObject = new FavoriteGroupRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_name(null);
                }
            } else if (nextName.equals("_parentid")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_parentid(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_parentid(null);
                }
            } else if (nextName.equals(FavoriteGroupRealmObject.LABELID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_label_id(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_label_id(null);
                }
            } else if (nextName.equals(FavoriteGroupRealmObject.PINNED)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_pinned(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_pinned(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_status(null);
                }
            } else if (nextName.equals("_transaction")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    favoriteGroupRealmObject.realmSet$_transaction(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    favoriteGroupRealmObject.realmSet$_transaction(null);
                }
            } else if (!nextName.equals(FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                favoriteGroupRealmObject.realmSet$favoriteListRealmObjects(null);
            } else {
                favoriteGroupRealmObject.realmSet$favoriteListRealmObjects(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    favoriteGroupRealmObject.realmGet$favoriteListRealmObjects().add(C10909x2e9544f2.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (FavoriteGroupRealmObject) realm.copyToRealm((Realm) favoriteGroupRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, FavoriteGroupRealmObject favoriteGroupRealmObject, Map<RealmModel, Long> map) {
        if (favoriteGroupRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) favoriteGroupRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(FavoriteGroupRealmObject.class);
        long nativePtr = table.getNativePtr();
        FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo = (FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class);
        long j = favoriteGroupRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(favoriteGroupRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, favoriteGroupRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(favoriteGroupRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(favoriteGroupRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_name = favoriteGroupRealmObject.realmGet$_name();
        if (realmGet$_name != null) {
            Table.nativeSetString(nativePtr, favoriteGroupRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, realmGet$_name, false);
        }
        String realmGet$_parentid = favoriteGroupRealmObject.realmGet$_parentid();
        if (realmGet$_parentid != null) {
            Table.nativeSetString(nativePtr, favoriteGroupRealmObjectColumnInfo._parentidIndex, nativeFindFirstInt, realmGet$_parentid, false);
        }
        Integer realmGet$_label_id = favoriteGroupRealmObject.realmGet$_label_id();
        if (realmGet$_label_id != null) {
            Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._label_idIndex, nativeFindFirstInt, realmGet$_label_id.longValue(), false);
        }
        Integer realmGet$_pinned = favoriteGroupRealmObject.realmGet$_pinned();
        if (realmGet$_pinned != null) {
            Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._pinnedIndex, nativeFindFirstInt, realmGet$_pinned.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, favoriteGroupRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, favoriteGroupRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = favoriteGroupRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        Integer realmGet$_transaction = favoriteGroupRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        }
        RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects = favoriteGroupRealmObject.realmGet$favoriteListRealmObjects();
        if (realmGet$favoriteListRealmObjects != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), favoriteGroupRealmObjectColumnInfo.favoriteListRealmObjectsIndex);
            Iterator<FavoriteListRealmObject> it = realmGet$favoriteListRealmObjects.iterator();
            while (it.hasNext()) {
                FavoriteListRealmObject next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(C10909x2e9544f2.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(FavoriteGroupRealmObject.class);
        long nativePtr = table.getNativePtr();
        FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo = (FavoriteGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class);
        long j = favoriteGroupRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            FavoriteGroupRealmObject favoriteGroupRealmObject = (FavoriteGroupRealmObject) it.next();
            if (!map.containsKey(favoriteGroupRealmObject)) {
                if (favoriteGroupRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) favoriteGroupRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(favoriteGroupRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(favoriteGroupRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, favoriteGroupRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(favoriteGroupRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(favoriteGroupRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_name = favoriteGroupRealmObject.realmGet$_name();
                if (realmGet$_name != null) {
                    Table.nativeSetString(nativePtr, favoriteGroupRealmObjectColumnInfo._nameIndex, nativeFindFirstInt, realmGet$_name, false);
                }
                String realmGet$_parentid = favoriteGroupRealmObject.realmGet$_parentid();
                if (realmGet$_parentid != null) {
                    Table.nativeSetString(nativePtr, favoriteGroupRealmObjectColumnInfo._parentidIndex, nativeFindFirstInt, realmGet$_parentid, false);
                }
                Integer realmGet$_label_id = favoriteGroupRealmObject.realmGet$_label_id();
                if (realmGet$_label_id != null) {
                    Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._label_idIndex, nativeFindFirstInt, realmGet$_label_id.longValue(), false);
                }
                Integer realmGet$_pinned = favoriteGroupRealmObject.realmGet$_pinned();
                if (realmGet$_pinned != null) {
                    Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._pinnedIndex, nativeFindFirstInt, realmGet$_pinned.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, favoriteGroupRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, favoriteGroupRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = favoriteGroupRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                Integer realmGet$_transaction = favoriteGroupRealmObject.realmGet$_transaction();
                if (realmGet$_transaction != null) {
                    Table.nativeSetLong(nativePtr, favoriteGroupRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
                }
                RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects = favoriteGroupRealmObject.realmGet$favoriteListRealmObjects();
                if (realmGet$favoriteListRealmObjects != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstInt), favoriteGroupRealmObjectColumnInfo.favoriteListRealmObjectsIndex);
                    Iterator<FavoriteListRealmObject> it2 = realmGet$favoriteListRealmObjects.iterator();
                    while (it2.hasNext()) {
                        FavoriteListRealmObject next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(C10909x2e9544f2.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10907x9779850b.insertOrUpdate(io.realm.Realm, gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, java.util.Map):long");
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
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10907x9779850b.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10907x9779850b newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(FavoriteGroupRealmObject.class), false, Collections.emptyList());
        C10907x9779850b gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy = new C10907x9779850b();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy;
    }

    public static FavoriteGroupRealmObject update(Realm realm, FavoriteGroupRealmObjectColumnInfo favoriteGroupRealmObjectColumnInfo, FavoriteGroupRealmObject favoriteGroupRealmObject, FavoriteGroupRealmObject favoriteGroupRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(FavoriteGroupRealmObject.class), favoriteGroupRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo.idIndex, Long.valueOf(favoriteGroupRealmObject2.realmGet$id()));
        osObjectBuilder.addString(favoriteGroupRealmObjectColumnInfo._nameIndex, favoriteGroupRealmObject2.realmGet$_name());
        osObjectBuilder.addString(favoriteGroupRealmObjectColumnInfo._parentidIndex, favoriteGroupRealmObject2.realmGet$_parentid());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._label_idIndex, favoriteGroupRealmObject2.realmGet$_label_id());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._pinnedIndex, favoriteGroupRealmObject2.realmGet$_pinned());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._createtimeIndex, Long.valueOf(favoriteGroupRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(favoriteGroupRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._statusIndex, favoriteGroupRealmObject2.realmGet$_status());
        osObjectBuilder.addInteger(favoriteGroupRealmObjectColumnInfo._transactionIndex, favoriteGroupRealmObject2.realmGet$_transaction());
        RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects = favoriteGroupRealmObject2.realmGet$favoriteListRealmObjects();
        if (realmGet$favoriteListRealmObjects != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$favoriteListRealmObjects.size(); i++) {
                FavoriteListRealmObject favoriteListRealmObject = realmGet$favoriteListRealmObjects.get(i);
                FavoriteListRealmObject favoriteListRealmObject2 = (FavoriteListRealmObject) map.get(favoriteListRealmObject);
                if (favoriteListRealmObject2 != null) {
                    realmList.add(favoriteListRealmObject2);
                } else {
                    realmList.add(C10909x2e9544f2.copyOrUpdate(realm, (C10909x2e9544f2.FavoriteListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(FavoriteListRealmObject.class), favoriteListRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(favoriteGroupRealmObjectColumnInfo.favoriteListRealmObjectsIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(favoriteGroupRealmObjectColumnInfo.favoriteListRealmObjectsIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return favoriteGroupRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10907x9779850b.class != obj.getClass()) {
            return false;
        }
        C10907x9779850b gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy = (C10907x9779850b) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_favorite_favoritegrouprealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (FavoriteGroupRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_label_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._label_idIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._label_idIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public String realmGet$_name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public String realmGet$_parentid() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._parentidIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_pinned() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._pinnedIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._pinnedIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public Integer realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._transactionIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public RealmList<FavoriteListRealmObject> realmGet$favoriteListRealmObjects() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<FavoriteListRealmObject> realmList = this.favoriteListRealmObjectsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.favoriteListRealmObjectsRealmList = new RealmList<>(FavoriteListRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.favoriteListRealmObjectsIndex), this.proxyState.getRealm$realm());
        return this.favoriteListRealmObjectsRealmList;
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_label_id(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._label_idIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._label_idIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._label_idIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._label_idIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_parentid(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._parentidIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._parentidIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._parentidIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._parentidIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_pinned(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._pinnedIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._pinnedIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._pinnedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._pinnedIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_status(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._statusIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._statusIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._statusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._statusIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_transaction(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._transactionIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._transactionIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._transactionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._transactionIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
    public void realmSet$favoriteListRealmObjects(RealmList<FavoriteListRealmObject> realmList) {
        RealmList<FavoriteListRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(FavoriteGroupRealmObject.FAVORITELISTREALMOBJECTS)) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<FavoriteListRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            FavoriteListRealmObject next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.favoriteListRealmObjectsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    FavoriteListRealmObject favoriteListRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(favoriteListRealmObject);
                    modelList.addRow(((RealmObjectProxy) favoriteListRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            FavoriteListRealmObject favoriteListRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(favoriteListRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) favoriteListRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject, io.realm.AbstractC10908xfcfb846e
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
        StringBuilder sb = new StringBuilder("FavoriteGroupRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_name:");
        String realmGet$_name = realmGet$_name();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_name != null ? realmGet$_name() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_parentid:");
        sb.append(realmGet$_parentid() != null ? realmGet$_parentid() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_label_id:");
        sb.append(realmGet$_label_id() != null ? realmGet$_label_id() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_pinned:");
        sb.append(realmGet$_pinned() != null ? realmGet$_pinned() : C14247d.f31851f);
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
        sb.append(realmGet$_status() != null ? realmGet$_status() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_transaction:");
        if (realmGet$_transaction() != null) {
            obj = realmGet$_transaction();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{favoriteListRealmObjects:");
        sb.append("RealmList<FavoriteListRealmObject>[");
        sb.append(realmGet$favoriteListRealmObjects().size());
        sb.append("]");
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
