package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.class */
public class gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy extends NoteRealmObject implements RealmObjectProxy, AbstractC10941x2f61b7e9 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public NoteRealmObjectColumnInfo columnInfo;
    public ProxyState<NoteRealmObject> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "NoteRealmObject";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy$NoteRealmObjectColumnInfo.class */
    public static final class NoteRealmObjectColumnInfo extends ColumnInfo {
        public long _contentIndex;
        public long _createtimeIndex;
        public long _e164Index;
        public long _statusIndex;
        public long _transactionIndex;
        public long _updatetimeIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public NoteRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public NoteRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(7);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._contentIndex = addColumnDetails("_content", "_content", objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new NoteRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            NoteRealmObjectColumnInfo noteRealmObjectColumnInfo = (NoteRealmObjectColumnInfo) columnInfo;
            NoteRealmObjectColumnInfo noteRealmObjectColumnInfo2 = (NoteRealmObjectColumnInfo) columnInfo2;
            noteRealmObjectColumnInfo2.idIndex = noteRealmObjectColumnInfo.idIndex;
            noteRealmObjectColumnInfo2._e164Index = noteRealmObjectColumnInfo._e164Index;
            noteRealmObjectColumnInfo2._contentIndex = noteRealmObjectColumnInfo._contentIndex;
            noteRealmObjectColumnInfo2._createtimeIndex = noteRealmObjectColumnInfo._createtimeIndex;
            noteRealmObjectColumnInfo2._updatetimeIndex = noteRealmObjectColumnInfo._updatetimeIndex;
            noteRealmObjectColumnInfo2._statusIndex = noteRealmObjectColumnInfo._statusIndex;
            noteRealmObjectColumnInfo2._transactionIndex = noteRealmObjectColumnInfo._transactionIndex;
            noteRealmObjectColumnInfo2.maxColumnIndexValue = noteRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static NoteRealmObject copy(Realm realm, NoteRealmObjectColumnInfo noteRealmObjectColumnInfo, NoteRealmObject noteRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(noteRealmObject);
        if (realmObjectProxy != null) {
            return (NoteRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(NoteRealmObject.class), noteRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo.idIndex, Long.valueOf(noteRealmObject.realmGet$id()));
        osObjectBuilder.addString(noteRealmObjectColumnInfo._e164Index, noteRealmObject.realmGet$_e164());
        osObjectBuilder.addString(noteRealmObjectColumnInfo._contentIndex, noteRealmObject.realmGet$_content());
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._createtimeIndex, Long.valueOf(noteRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(noteRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._statusIndex, noteRealmObject.realmGet$_status());
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._transactionIndex, noteRealmObject.realmGet$_transaction());
        gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(noteRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.note.NoteRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.NoteRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.note.NoteRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy$NoteRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.note.NoteRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.note.NoteRealmObject");
    }

    public static NoteRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new NoteRealmObjectColumnInfo(osSchemaInfo);
    }

    public static NoteRealmObject createDetachedCopy(NoteRealmObject noteRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        NoteRealmObject noteRealmObject2;
        if (i > i2 || noteRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(noteRealmObject);
        if (cacheData == null) {
            NoteRealmObject noteRealmObject3 = new NoteRealmObject();
            map.put(noteRealmObject, new RealmObjectProxy.CacheData<>(i, noteRealmObject3));
            noteRealmObject2 = noteRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (NoteRealmObject) cacheData.object;
        } else {
            noteRealmObject2 = (NoteRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        noteRealmObject2.realmSet$id(noteRealmObject.realmGet$id());
        noteRealmObject2.realmSet$_e164(noteRealmObject.realmGet$_e164());
        noteRealmObject2.realmSet$_content(noteRealmObject.realmGet$_content());
        noteRealmObject2.realmSet$_createtime(noteRealmObject.realmGet$_createtime());
        noteRealmObject2.realmSet$_updatetime(noteRealmObject.realmGet$_updatetime());
        noteRealmObject2.realmSet$_status(noteRealmObject.realmGet$_status());
        noteRealmObject2.realmSet$_transaction(noteRealmObject.realmGet$_transaction());
        return noteRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 7, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_content", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.note.NoteRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.note.NoteRealmObject");
    }

    @TargetApi(11)
    public static NoteRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        NoteRealmObject noteRealmObject = new NoteRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    noteRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_content")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$_content(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    noteRealmObject.realmSet$_content(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    noteRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    noteRealmObject.realmSet$_status(null);
                }
            } else if (!nextName.equals("_transaction")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                noteRealmObject.realmSet$_transaction(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                noteRealmObject.realmSet$_transaction(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (NoteRealmObject) realm.copyToRealm((Realm) noteRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, NoteRealmObject noteRealmObject, Map<RealmModel, Long> map) {
        if (noteRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) noteRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(NoteRealmObject.class);
        long nativePtr = table.getNativePtr();
        NoteRealmObjectColumnInfo noteRealmObjectColumnInfo = (NoteRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NoteRealmObject.class);
        long j = noteRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(noteRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, noteRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(noteRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(noteRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = noteRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        String realmGet$_content = noteRealmObject.realmGet$_content();
        if (realmGet$_content != null) {
            Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
        }
        Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = noteRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        Integer realmGet$_transaction = noteRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(NoteRealmObject.class);
        long nativePtr = table.getNativePtr();
        NoteRealmObjectColumnInfo noteRealmObjectColumnInfo = (NoteRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NoteRealmObject.class);
        long j = noteRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            NoteRealmObject noteRealmObject = (NoteRealmObject) it.next();
            if (!map.containsKey(noteRealmObject)) {
                if (noteRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) noteRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(noteRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(noteRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, noteRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(noteRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(noteRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_e164 = noteRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                String realmGet$_content = noteRealmObject.realmGet$_content();
                if (realmGet$_content != null) {
                    Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
                }
                Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = noteRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                Integer realmGet$_transaction = noteRealmObject.realmGet$_transaction();
                if (realmGet$_transaction != null) {
                    Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, NoteRealmObject noteRealmObject, Map<RealmModel, Long> map) {
        if (noteRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) noteRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(NoteRealmObject.class);
        long nativePtr = table.getNativePtr();
        NoteRealmObjectColumnInfo noteRealmObjectColumnInfo = (NoteRealmObjectColumnInfo) realm.getSchema().getColumnInfo(NoteRealmObject.class);
        long j = noteRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(noteRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, noteRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(noteRealmObject.realmGet$id()));
        }
        map.put(noteRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_e164 = noteRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, noteRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        String realmGet$_content = noteRealmObject.realmGet$_content();
        if (realmGet$_content != null) {
            Table.nativeSetString(nativePtr, noteRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
        } else {
            Table.nativeSetNull(nativePtr, noteRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, noteRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = noteRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, noteRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_transaction = noteRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, noteRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, noteRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, false);
        }
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
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(NoteRealmObject.class), false, Collections.emptyList());
        gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy = new gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy;
    }

    public static NoteRealmObject update(Realm realm, NoteRealmObjectColumnInfo noteRealmObjectColumnInfo, NoteRealmObject noteRealmObject, NoteRealmObject noteRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(NoteRealmObject.class), noteRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo.idIndex, Long.valueOf(noteRealmObject2.realmGet$id()));
        osObjectBuilder.addString(noteRealmObjectColumnInfo._e164Index, noteRealmObject2.realmGet$_e164());
        osObjectBuilder.addString(noteRealmObjectColumnInfo._contentIndex, noteRealmObject2.realmGet$_content());
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._createtimeIndex, Long.valueOf(noteRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(noteRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._statusIndex, noteRealmObject2.realmGet$_status());
        osObjectBuilder.addInteger(noteRealmObjectColumnInfo._transactionIndex, noteRealmObject2.realmGet$_transaction());
        osObjectBuilder.updateExistingObject();
        return noteRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy = (gogolook_callgogolook2_realm_obj_note_NoteRealmObjectRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_note_noterealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (NoteRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public String realmGet$_content() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._contentIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public Integer realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._transactionIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_content(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._contentIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._contentIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._contentIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._contentIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
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

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
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

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
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

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.note.NoteRealmObject, io.realm.AbstractC10941x2f61b7e9
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
        StringBuilder sb = new StringBuilder("NoteRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        String realmGet$_e164 = realmGet$_e164();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_e164 != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_content:");
        sb.append(realmGet$_content() != null ? realmGet$_content() : C14247d.f31851f);
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
        sb.append("]");
        return sb.toString();
    }
}
