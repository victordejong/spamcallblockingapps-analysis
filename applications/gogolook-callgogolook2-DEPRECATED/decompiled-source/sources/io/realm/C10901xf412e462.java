package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy.class */
public class C10901xf412e462 extends BlockLogRealmObject implements RealmObjectProxy, AbstractC10902x27276f7 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public BlockLogRealmObjectColumnInfo columnInfo;
    public ProxyState<BlockLogRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy$BlockLogRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy$BlockLogRealmObjectColumnInfo.class */
    public static final class BlockLogRealmObjectColumnInfo extends ColumnInfo {
        public long _cause_wordingIndex;
        public long _contentIndex;
        public long _createtimeIndex;
        public long _e164Index;
        public long _keywordIndex;
        public long _kindIndex;
        public long _modeIndex;
        public long _numberIndex;
        public long _statusIndex;
        public long _updatetimeIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public BlockLogRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public BlockLogRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._numberIndex = addColumnDetails("_number", "_number", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._contentIndex = addColumnDetails("_content", "_content", objectSchemaInfo);
            this._kindIndex = addColumnDetails("_kind", "_kind", objectSchemaInfo);
            this._modeIndex = addColumnDetails(BlockLogRealmObject.MODE, BlockLogRealmObject.MODE, objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._cause_wordingIndex = addColumnDetails(BlockLogRealmObject.CAUSE_WORDING, BlockLogRealmObject.CAUSE_WORDING, objectSchemaInfo);
            this._keywordIndex = addColumnDetails(BlockLogRealmObject.KEYWORD, BlockLogRealmObject.KEYWORD, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new BlockLogRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo = (BlockLogRealmObjectColumnInfo) columnInfo;
            BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo2 = (BlockLogRealmObjectColumnInfo) columnInfo2;
            blockLogRealmObjectColumnInfo2.idIndex = blockLogRealmObjectColumnInfo.idIndex;
            blockLogRealmObjectColumnInfo2._numberIndex = blockLogRealmObjectColumnInfo._numberIndex;
            blockLogRealmObjectColumnInfo2._e164Index = blockLogRealmObjectColumnInfo._e164Index;
            blockLogRealmObjectColumnInfo2._contentIndex = blockLogRealmObjectColumnInfo._contentIndex;
            blockLogRealmObjectColumnInfo2._kindIndex = blockLogRealmObjectColumnInfo._kindIndex;
            blockLogRealmObjectColumnInfo2._modeIndex = blockLogRealmObjectColumnInfo._modeIndex;
            blockLogRealmObjectColumnInfo2._createtimeIndex = blockLogRealmObjectColumnInfo._createtimeIndex;
            blockLogRealmObjectColumnInfo2._updatetimeIndex = blockLogRealmObjectColumnInfo._updatetimeIndex;
            blockLogRealmObjectColumnInfo2._statusIndex = blockLogRealmObjectColumnInfo._statusIndex;
            blockLogRealmObjectColumnInfo2._cause_wordingIndex = blockLogRealmObjectColumnInfo._cause_wordingIndex;
            blockLogRealmObjectColumnInfo2._keywordIndex = blockLogRealmObjectColumnInfo._keywordIndex;
            blockLogRealmObjectColumnInfo2.maxColumnIndexValue = blockLogRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BlockLogRealmObject";
    }

    public C10901xf412e462() {
        this.proxyState.setConstructionFinished();
    }

    public static BlockLogRealmObject copy(Realm realm, BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo, BlockLogRealmObject blockLogRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(blockLogRealmObject);
        if (realmObjectProxy != null) {
            return (BlockLogRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockLogRealmObject.class), blockLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo.idIndex, Long.valueOf(blockLogRealmObject.realmGet$id()));
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._numberIndex, blockLogRealmObject.realmGet$_number());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._e164Index, blockLogRealmObject.realmGet$_e164());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._contentIndex, blockLogRealmObject.realmGet$_content());
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._kindIndex, Integer.valueOf(blockLogRealmObject.realmGet$_kind()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._modeIndex, Integer.valueOf(blockLogRealmObject.realmGet$_mode()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._createtimeIndex, Long.valueOf(blockLogRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(blockLogRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._statusIndex, blockLogRealmObject.realmGet$_status());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._cause_wordingIndex, blockLogRealmObject.realmGet$_cause_wording());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._keywordIndex, blockLogRealmObject.realmGet$_keyword());
        C10901xf412e462 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(blockLogRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10901xf412e462.BlockLogRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10901xf412e462.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_block_BlockLogRealmObjectRealmProxy$BlockLogRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject");
    }

    public static BlockLogRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new BlockLogRealmObjectColumnInfo(osSchemaInfo);
    }

    public static BlockLogRealmObject createDetachedCopy(BlockLogRealmObject blockLogRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        BlockLogRealmObject blockLogRealmObject2;
        if (i > i2 || blockLogRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(blockLogRealmObject);
        if (cacheData == null) {
            BlockLogRealmObject blockLogRealmObject3 = new BlockLogRealmObject();
            map.put(blockLogRealmObject, new RealmObjectProxy.CacheData<>(i, blockLogRealmObject3));
            blockLogRealmObject2 = blockLogRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (BlockLogRealmObject) cacheData.object;
        } else {
            blockLogRealmObject2 = (BlockLogRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        blockLogRealmObject2.realmSet$id(blockLogRealmObject.realmGet$id());
        blockLogRealmObject2.realmSet$_number(blockLogRealmObject.realmGet$_number());
        blockLogRealmObject2.realmSet$_e164(blockLogRealmObject.realmGet$_e164());
        blockLogRealmObject2.realmSet$_content(blockLogRealmObject.realmGet$_content());
        blockLogRealmObject2.realmSet$_kind(blockLogRealmObject.realmGet$_kind());
        blockLogRealmObject2.realmSet$_mode(blockLogRealmObject.realmGet$_mode());
        blockLogRealmObject2.realmSet$_createtime(blockLogRealmObject.realmGet$_createtime());
        blockLogRealmObject2.realmSet$_updatetime(blockLogRealmObject.realmGet$_updatetime());
        blockLogRealmObject2.realmSet$_status(blockLogRealmObject.realmGet$_status());
        blockLogRealmObject2.realmSet$_cause_wording(blockLogRealmObject.realmGet$_cause_wording());
        blockLogRealmObject2.realmSet$_keyword(blockLogRealmObject.realmGet$_keyword());
        return blockLogRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("_content", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_kind", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(BlockLogRealmObject.MODE, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(BlockLogRealmObject.CAUSE_WORDING, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(BlockLogRealmObject.KEYWORD, RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x028e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10901xf412e462.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject");
    }

    @TargetApi(11)
    public static BlockLogRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        BlockLogRealmObject blockLogRealmObject = new BlockLogRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockLogRealmObject.realmSet$_number(null);
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockLogRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_content")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_content(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockLogRealmObject.realmSet$_content(null);
                }
            } else if (nextName.equals("_kind")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_kind(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_kind' to null.");
                }
            } else if (nextName.equals(BlockLogRealmObject.MODE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_mode(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_mode' to null.");
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    blockLogRealmObject.realmSet$_status(null);
                }
            } else if (nextName.equals(BlockLogRealmObject.CAUSE_WORDING)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockLogRealmObject.realmSet$_cause_wording(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockLogRealmObject.realmSet$_cause_wording(null);
                }
            } else if (!nextName.equals(BlockLogRealmObject.KEYWORD)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                blockLogRealmObject.realmSet$_keyword(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                blockLogRealmObject.realmSet$_keyword(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (BlockLogRealmObject) realm.copyToRealm((Realm) blockLogRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, BlockLogRealmObject blockLogRealmObject, Map<RealmModel, Long> map) {
        if (blockLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo = (BlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockLogRealmObject.class);
        long j = blockLogRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(blockLogRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, blockLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockLogRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(blockLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = blockLogRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        }
        String realmGet$_e164 = blockLogRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        String realmGet$_content = blockLogRealmObject.realmGet$_content();
        if (realmGet$_content != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
        }
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_kind(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._modeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_mode(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = blockLogRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        String realmGet$_cause_wording = blockLogRealmObject.realmGet$_cause_wording();
        if (realmGet$_cause_wording != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._cause_wordingIndex, nativeFindFirstInt, realmGet$_cause_wording, false);
        }
        String realmGet$_keyword = blockLogRealmObject.realmGet$_keyword();
        if (realmGet$_keyword != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._keywordIndex, nativeFindFirstInt, realmGet$_keyword, false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo = (BlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockLogRealmObject.class);
        long j = blockLogRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            BlockLogRealmObject blockLogRealmObject = (BlockLogRealmObject) it.next();
            if (!map.containsKey(blockLogRealmObject)) {
                if (blockLogRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockLogRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockLogRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(blockLogRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, blockLogRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockLogRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(blockLogRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_number = blockLogRealmObject.realmGet$_number();
                if (realmGet$_number != null) {
                    Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
                }
                String realmGet$_e164 = blockLogRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                String realmGet$_content = blockLogRealmObject.realmGet$_content();
                if (realmGet$_content != null) {
                    Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
                }
                Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_kind(), false);
                Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._modeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_mode(), false);
                Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = blockLogRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                String realmGet$_cause_wording = blockLogRealmObject.realmGet$_cause_wording();
                if (realmGet$_cause_wording != null) {
                    Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._cause_wordingIndex, nativeFindFirstInt, realmGet$_cause_wording, false);
                }
                String realmGet$_keyword = blockLogRealmObject.realmGet$_keyword();
                if (realmGet$_keyword != null) {
                    Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._keywordIndex, nativeFindFirstInt, realmGet$_keyword, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, BlockLogRealmObject blockLogRealmObject, Map<RealmModel, Long> map) {
        if (blockLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo = (BlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockLogRealmObject.class);
        long j = blockLogRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(blockLogRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, blockLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockLogRealmObject.realmGet$id()));
        }
        map.put(blockLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = blockLogRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, false);
        }
        String realmGet$_e164 = blockLogRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        String realmGet$_content = blockLogRealmObject.realmGet$_content();
        if (realmGet$_content != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, realmGet$_content, false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._contentIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_kind(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._modeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_mode(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockLogRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = blockLogRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, blockLogRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, false);
        }
        String realmGet$_cause_wording = blockLogRealmObject.realmGet$_cause_wording();
        if (realmGet$_cause_wording != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._cause_wordingIndex, nativeFindFirstInt, realmGet$_cause_wording, false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._cause_wordingIndex, nativeFindFirstInt, false);
        }
        String realmGet$_keyword = blockLogRealmObject.realmGet$_keyword();
        if (realmGet$_keyword != null) {
            Table.nativeSetString(nativePtr, blockLogRealmObjectColumnInfo._keywordIndex, nativeFindFirstInt, realmGet$_keyword, false);
        } else {
            Table.nativeSetNull(nativePtr, blockLogRealmObjectColumnInfo._keywordIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10901xf412e462.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10901xf412e462 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(BlockLogRealmObject.class), false, Collections.emptyList());
        C10901xf412e462 gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy = new C10901xf412e462();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy;
    }

    public static BlockLogRealmObject update(Realm realm, BlockLogRealmObjectColumnInfo blockLogRealmObjectColumnInfo, BlockLogRealmObject blockLogRealmObject, BlockLogRealmObject blockLogRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockLogRealmObject.class), blockLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo.idIndex, Long.valueOf(blockLogRealmObject2.realmGet$id()));
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._numberIndex, blockLogRealmObject2.realmGet$_number());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._e164Index, blockLogRealmObject2.realmGet$_e164());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._contentIndex, blockLogRealmObject2.realmGet$_content());
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._kindIndex, Integer.valueOf(blockLogRealmObject2.realmGet$_kind()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._modeIndex, Integer.valueOf(blockLogRealmObject2.realmGet$_mode()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._createtimeIndex, Long.valueOf(blockLogRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(blockLogRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(blockLogRealmObjectColumnInfo._statusIndex, blockLogRealmObject2.realmGet$_status());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._cause_wordingIndex, blockLogRealmObject2.realmGet$_cause_wording());
        osObjectBuilder.addString(blockLogRealmObjectColumnInfo._keywordIndex, blockLogRealmObject2.realmGet$_keyword());
        osObjectBuilder.updateExistingObject();
        return blockLogRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10901xf412e462.class != obj.getClass()) {
            return false;
        }
        C10901xf412e462 gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy = (C10901xf412e462) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_block_blocklogrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (BlockLogRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public String realmGet$_cause_wording() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._cause_wordingIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public String realmGet$_content() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._contentIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public String realmGet$_keyword() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._keywordIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public int realmGet$_kind() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo._kindIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public int realmGet$_mode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo._modeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public String realmGet$_number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._numberIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_cause_wording(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._cause_wordingIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._cause_wordingIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._cause_wordingIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._cause_wordingIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_keyword(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._keywordIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._keywordIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._keywordIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._keywordIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_kind(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._kindIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._kindIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_mode(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._modeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._modeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._numberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._numberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject, io.realm.AbstractC10902x27276f7
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
        StringBuilder sb = new StringBuilder("BlockLogRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_number:");
        String realmGet$_number = realmGet$_number();
        String str = C14247d.f31851f;
        sb.append(realmGet$_number != null ? realmGet$_number() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        sb.append(realmGet$_e164() != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_content:");
        sb.append(realmGet$_content() != null ? realmGet$_content() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_kind:");
        sb.append(realmGet$_kind());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_mode:");
        sb.append(realmGet$_mode());
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
        sb.append("{_cause_wording:");
        sb.append(realmGet$_cause_wording() != null ? realmGet$_cause_wording() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_keyword:");
        if (realmGet$_keyword() != null) {
            str = realmGet$_keyword();
        }
        sb.append(str);
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
