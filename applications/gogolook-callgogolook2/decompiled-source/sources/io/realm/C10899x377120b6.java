package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy.class */
public class C10899x377120b6 extends BlockListRealmObject implements RealmObjectProxy, AbstractC10900x770d923 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public BlockListRealmObjectColumnInfo columnInfo;
    public ProxyState<BlockListRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy$BlockListRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy$BlockListRealmObjectColumnInfo.class */
    public static final class BlockListRealmObjectColumnInfo extends ColumnInfo {
        public long _ccatIndex;
        public long _createtimeIndex;
        public long _ctypeIndex;
        public long _e164Index;
        public long _kindIndex;
        public long _numberIndex;
        public long _reasonIndex;
        public long _statusIndex;
        public long _typeIndex;
        public long _updatetimeIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public BlockListRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public BlockListRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._numberIndex = addColumnDetails("_number", "_number", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._typeIndex = addColumnDetails("_type", "_type", objectSchemaInfo);
            this._kindIndex = addColumnDetails("_kind", "_kind", objectSchemaInfo);
            this._reasonIndex = addColumnDetails("_reason", "_reason", objectSchemaInfo);
            this._ctypeIndex = addColumnDetails("_ctype", "_ctype", objectSchemaInfo);
            this._ccatIndex = addColumnDetails("_ccat", "_ccat", objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new BlockListRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo = (BlockListRealmObjectColumnInfo) columnInfo;
            BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo2 = (BlockListRealmObjectColumnInfo) columnInfo2;
            blockListRealmObjectColumnInfo2.idIndex = blockListRealmObjectColumnInfo.idIndex;
            blockListRealmObjectColumnInfo2._numberIndex = blockListRealmObjectColumnInfo._numberIndex;
            blockListRealmObjectColumnInfo2._e164Index = blockListRealmObjectColumnInfo._e164Index;
            blockListRealmObjectColumnInfo2._typeIndex = blockListRealmObjectColumnInfo._typeIndex;
            blockListRealmObjectColumnInfo2._kindIndex = blockListRealmObjectColumnInfo._kindIndex;
            blockListRealmObjectColumnInfo2._reasonIndex = blockListRealmObjectColumnInfo._reasonIndex;
            blockListRealmObjectColumnInfo2._ctypeIndex = blockListRealmObjectColumnInfo._ctypeIndex;
            blockListRealmObjectColumnInfo2._ccatIndex = blockListRealmObjectColumnInfo._ccatIndex;
            blockListRealmObjectColumnInfo2._createtimeIndex = blockListRealmObjectColumnInfo._createtimeIndex;
            blockListRealmObjectColumnInfo2._updatetimeIndex = blockListRealmObjectColumnInfo._updatetimeIndex;
            blockListRealmObjectColumnInfo2._statusIndex = blockListRealmObjectColumnInfo._statusIndex;
            blockListRealmObjectColumnInfo2.maxColumnIndexValue = blockListRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BlockListRealmObject";
    }

    public C10899x377120b6() {
        this.proxyState.setConstructionFinished();
    }

    public static BlockListRealmObject copy(Realm realm, BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo, BlockListRealmObject blockListRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(blockListRealmObject);
        if (realmObjectProxy != null) {
            return (BlockListRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockListRealmObject.class), blockListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo.idIndex, Long.valueOf(blockListRealmObject.realmGet$id()));
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._numberIndex, blockListRealmObject.realmGet$_number());
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._e164Index, blockListRealmObject.realmGet$_e164());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._typeIndex, blockListRealmObject.realmGet$_type());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._kindIndex, blockListRealmObject.realmGet$_kind());
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._reasonIndex, blockListRealmObject.realmGet$_reason());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._ctypeIndex, blockListRealmObject.realmGet$_ctype());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._ccatIndex, blockListRealmObject.realmGet$_ccat());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(blockListRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(blockListRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._statusIndex, blockListRealmObject.realmGet$_status());
        C10899x377120b6 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(blockListRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.BlockListRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10899x377120b6.BlockListRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.block.BlockListRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10899x377120b6.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_block_BlockListRealmObjectRealmProxy$BlockListRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.block.BlockListRealmObject");
    }

    public static BlockListRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new BlockListRealmObjectColumnInfo(osSchemaInfo);
    }

    public static BlockListRealmObject createDetachedCopy(BlockListRealmObject blockListRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        BlockListRealmObject blockListRealmObject2;
        if (i > i2 || blockListRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(blockListRealmObject);
        if (cacheData == null) {
            BlockListRealmObject blockListRealmObject3 = new BlockListRealmObject();
            map.put(blockListRealmObject, new RealmObjectProxy.CacheData<>(i, blockListRealmObject3));
            blockListRealmObject2 = blockListRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (BlockListRealmObject) cacheData.object;
        } else {
            blockListRealmObject2 = (BlockListRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        blockListRealmObject2.realmSet$id(blockListRealmObject.realmGet$id());
        blockListRealmObject2.realmSet$_number(blockListRealmObject.realmGet$_number());
        blockListRealmObject2.realmSet$_e164(blockListRealmObject.realmGet$_e164());
        blockListRealmObject2.realmSet$_type(blockListRealmObject.realmGet$_type());
        blockListRealmObject2.realmSet$_kind(blockListRealmObject.realmGet$_kind());
        blockListRealmObject2.realmSet$_reason(blockListRealmObject.realmGet$_reason());
        blockListRealmObject2.realmSet$_ctype(blockListRealmObject.realmGet$_ctype());
        blockListRealmObject2.realmSet$_ccat(blockListRealmObject.realmGet$_ccat());
        blockListRealmObject2.realmSet$_createtime(blockListRealmObject.realmGet$_createtime());
        blockListRealmObject2.realmSet$_updatetime(blockListRealmObject.realmGet$_updatetime());
        blockListRealmObject2.realmSet$_status(blockListRealmObject.realmGet$_status());
        return blockListRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_type", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_kind", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_reason", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_ctype", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_ccat", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0291  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.BlockListRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10899x377120b6.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.block.BlockListRealmObject");
    }

    @TargetApi(11)
    public static BlockListRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        BlockListRealmObject blockListRealmObject = new BlockListRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_number(null);
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_type(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_type(null);
                }
            } else if (nextName.equals("_kind")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_kind(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_kind(null);
                }
            } else if (nextName.equals("_reason")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_reason(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_reason(null);
                }
            } else if (nextName.equals("_ctype")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_ctype(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_ctype(null);
                }
            } else if (nextName.equals("_ccat")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_ccat(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    blockListRealmObject.realmSet$_ccat(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockListRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (!nextName.equals("_status")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                blockListRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                blockListRealmObject.realmSet$_status(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (BlockListRealmObject) realm.copyToRealm((Realm) blockListRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, BlockListRealmObject blockListRealmObject, Map<RealmModel, Long> map) {
        if (blockListRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockListRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockListRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo = (BlockListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockListRealmObject.class);
        long j = blockListRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(blockListRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, blockListRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockListRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(blockListRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = blockListRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        }
        String realmGet$_e164 = blockListRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        Integer realmGet$_type = blockListRealmObject.realmGet$_type();
        if (realmGet$_type != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
        }
        Integer realmGet$_kind = blockListRealmObject.realmGet$_kind();
        if (realmGet$_kind != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, realmGet$_kind.longValue(), false);
        }
        String realmGet$_reason = blockListRealmObject.realmGet$_reason();
        if (realmGet$_reason != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
        }
        Integer realmGet$_ctype = blockListRealmObject.realmGet$_ctype();
        if (realmGet$_ctype != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
        }
        Integer realmGet$_ccat = blockListRealmObject.realmGet$_ccat();
        if (realmGet$_ccat != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = blockListRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockListRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo = (BlockListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockListRealmObject.class);
        long j = blockListRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            BlockListRealmObject blockListRealmObject = (BlockListRealmObject) it.next();
            if (!map.containsKey(blockListRealmObject)) {
                if (blockListRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockListRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockListRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(blockListRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, blockListRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockListRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(blockListRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_number = blockListRealmObject.realmGet$_number();
                if (realmGet$_number != null) {
                    Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
                }
                String realmGet$_e164 = blockListRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                Integer realmGet$_type = blockListRealmObject.realmGet$_type();
                if (realmGet$_type != null) {
                    Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
                }
                Integer realmGet$_kind = blockListRealmObject.realmGet$_kind();
                if (realmGet$_kind != null) {
                    Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, realmGet$_kind.longValue(), false);
                }
                String realmGet$_reason = blockListRealmObject.realmGet$_reason();
                if (realmGet$_reason != null) {
                    Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
                }
                Integer realmGet$_ctype = blockListRealmObject.realmGet$_ctype();
                if (realmGet$_ctype != null) {
                    Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
                }
                Integer realmGet$_ccat = blockListRealmObject.realmGet$_ccat();
                if (realmGet$_ccat != null) {
                    Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = blockListRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, BlockListRealmObject blockListRealmObject, Map<RealmModel, Long> map) {
        if (blockListRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockListRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockListRealmObject.class);
        long nativePtr = table.getNativePtr();
        BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo = (BlockListRealmObjectColumnInfo) realm.getSchema().getColumnInfo(BlockListRealmObject.class);
        long j = blockListRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(blockListRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, blockListRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(blockListRealmObject.realmGet$id()));
        }
        map.put(blockListRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = blockListRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, false);
        }
        String realmGet$_e164 = blockListRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        Integer realmGet$_type = blockListRealmObject.realmGet$_type();
        if (realmGet$_type != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, realmGet$_type.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._typeIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_kind = blockListRealmObject.realmGet$_kind();
        if (realmGet$_kind != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, realmGet$_kind.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._kindIndex, nativeFindFirstInt, false);
        }
        String realmGet$_reason = blockListRealmObject.realmGet$_reason();
        if (realmGet$_reason != null) {
            Table.nativeSetString(nativePtr, blockListRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_ctype = blockListRealmObject.realmGet$_ctype();
        if (realmGet$_ctype != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_ccat = blockListRealmObject.realmGet$_ccat();
        if (realmGet$_ccat != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, blockListRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = blockListRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, blockListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10899x377120b6.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10899x377120b6 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(BlockListRealmObject.class), false, Collections.emptyList());
        C10899x377120b6 gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy = new C10899x377120b6();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy;
    }

    public static BlockListRealmObject update(Realm realm, BlockListRealmObjectColumnInfo blockListRealmObjectColumnInfo, BlockListRealmObject blockListRealmObject, BlockListRealmObject blockListRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockListRealmObject.class), blockListRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo.idIndex, Long.valueOf(blockListRealmObject2.realmGet$id()));
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._numberIndex, blockListRealmObject2.realmGet$_number());
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._e164Index, blockListRealmObject2.realmGet$_e164());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._typeIndex, blockListRealmObject2.realmGet$_type());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._kindIndex, blockListRealmObject2.realmGet$_kind());
        osObjectBuilder.addString(blockListRealmObjectColumnInfo._reasonIndex, blockListRealmObject2.realmGet$_reason());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._ctypeIndex, blockListRealmObject2.realmGet$_ctype());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._ccatIndex, blockListRealmObject2.realmGet$_ccat());
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._createtimeIndex, Long.valueOf(blockListRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(blockListRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(blockListRealmObjectColumnInfo._statusIndex, blockListRealmObject2.realmGet$_status());
        osObjectBuilder.updateExistingObject();
        return blockListRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10899x377120b6.class != obj.getClass()) {
            return false;
        }
        C10899x377120b6 gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy = (C10899x377120b6) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_block_blocklistrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (BlockListRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public Integer realmGet$_ccat() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._ccatIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._ccatIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public Integer realmGet$_ctype() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._ctypeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._ctypeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public Integer realmGet$_kind() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._kindIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._kindIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public String realmGet$_number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._numberIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public String realmGet$_reason() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._reasonIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public Integer realmGet$_type() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._typeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._typeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_ccat(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._ccatIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._ccatIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._ccatIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._ccatIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_ctype(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._ctypeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._ctypeIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._ctypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._ctypeIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_kind(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._kindIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._kindIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._kindIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._kindIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_reason(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._reasonIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._reasonIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._reasonIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._reasonIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
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

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_type(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._typeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._typeIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._typeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._typeIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.BlockListRealmObject, io.realm.AbstractC10900x770d923
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
        StringBuilder sb = new StringBuilder("BlockListRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_number:");
        String realmGet$_number = realmGet$_number();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_number != null ? realmGet$_number() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        sb.append(realmGet$_e164() != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_type:");
        sb.append(realmGet$_type() != null ? realmGet$_type() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_kind:");
        sb.append(realmGet$_kind() != null ? realmGet$_kind() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_reason:");
        sb.append(realmGet$_reason() != null ? realmGet$_reason() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_ctype:");
        sb.append(realmGet$_ctype() != null ? realmGet$_ctype() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_ccat:");
        sb.append(realmGet$_ccat() != null ? realmGet$_ccat() : C14247d.f31851f);
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
        if (realmGet$_status() != null) {
            obj = realmGet$_status();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
