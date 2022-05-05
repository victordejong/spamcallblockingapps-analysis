package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.BlockListFields;
import com.privacystar.core.data.model.Operation;
import io.realm.BaseRealm;
import io.realm.com_privacystar_core_data_model_OperationRealmProxy;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.android.JsonUtils;
import io.realm.internal.objectstore.OsObjectBuilder;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockListRealmProxy.class */
public class com_privacystar_core_data_model_BlockListRealmProxy extends BlockList implements RealmObjectProxy, com_privacystar_core_data_model_BlockListRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BlockListColumnInfo columnInfo;
    private ProxyState<BlockList> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockListRealmProxy$BlockListColumnInfo.class */
    public static final class BlockListColumnInfo extends ColumnInfo {
        long addedIndex;
        long blockActiveIndex;
        long blockOfflineIndex;
        long eventTypeIndex;
        long groupNameIdIndex;
        long groupNameTypeIndex;
        long mOperationIndex;
        long maxColumnIndexValue;
        long nameIndex;
        long namedParentIndex;
        long numberIndex;
        long offenderFlagsIndex;

        BlockListColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        BlockListColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.eventTypeIndex = addColumnDetails("eventType", "eventType", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.addedIndex = addColumnDetails("added", "added", objectSchemaInfo);
            this.mOperationIndex = addColumnDetails("mOperation", "mOperation", objectSchemaInfo);
            this.blockActiveIndex = addColumnDetails("blockActive", "blockActive", objectSchemaInfo);
            this.blockOfflineIndex = addColumnDetails("blockOffline", "blockOffline", objectSchemaInfo);
            this.offenderFlagsIndex = addColumnDetails("offenderFlags", "offenderFlags", objectSchemaInfo);
            this.groupNameIdIndex = addColumnDetails(BlockListFields.GROUP_NAME_ID, BlockListFields.GROUP_NAME_ID, objectSchemaInfo);
            this.namedParentIndex = addColumnDetails(BlockListFields.NAMED_PARENT, BlockListFields.NAMED_PARENT, objectSchemaInfo);
            this.groupNameTypeIndex = addColumnDetails(BlockListFields.GROUP_NAME_TYPE, BlockListFields.GROUP_NAME_TYPE, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new BlockListColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            BlockListColumnInfo blockListColumnInfo = (BlockListColumnInfo) columnInfo;
            BlockListColumnInfo blockListColumnInfo2 = (BlockListColumnInfo) columnInfo2;
            blockListColumnInfo2.numberIndex = blockListColumnInfo.numberIndex;
            blockListColumnInfo2.eventTypeIndex = blockListColumnInfo.eventTypeIndex;
            blockListColumnInfo2.nameIndex = blockListColumnInfo.nameIndex;
            blockListColumnInfo2.addedIndex = blockListColumnInfo.addedIndex;
            blockListColumnInfo2.mOperationIndex = blockListColumnInfo.mOperationIndex;
            blockListColumnInfo2.blockActiveIndex = blockListColumnInfo.blockActiveIndex;
            blockListColumnInfo2.blockOfflineIndex = blockListColumnInfo.blockOfflineIndex;
            blockListColumnInfo2.offenderFlagsIndex = blockListColumnInfo.offenderFlagsIndex;
            blockListColumnInfo2.groupNameIdIndex = blockListColumnInfo.groupNameIdIndex;
            blockListColumnInfo2.namedParentIndex = blockListColumnInfo.namedParentIndex;
            blockListColumnInfo2.groupNameTypeIndex = blockListColumnInfo.groupNameTypeIndex;
            blockListColumnInfo2.maxColumnIndexValue = blockListColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockListRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BlockList";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_BlockListRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static BlockList copy(Realm realm, BlockListColumnInfo blockListColumnInfo, BlockList blockList, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(blockList);
        if (realmObjectProxy != null) {
            return (BlockList) realmObjectProxy;
        }
        BlockList blockList2 = blockList;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockList.class), blockListColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(blockListColumnInfo.numberIndex, blockList2.realmGet$number());
        osObjectBuilder.addString(blockListColumnInfo.eventTypeIndex, blockList2.realmGet$eventType());
        osObjectBuilder.addString(blockListColumnInfo.nameIndex, blockList2.realmGet$name());
        osObjectBuilder.addDate(blockListColumnInfo.addedIndex, blockList2.realmGet$added());
        osObjectBuilder.addBoolean(blockListColumnInfo.blockActiveIndex, Boolean.valueOf(blockList2.realmGet$blockActive()));
        osObjectBuilder.addBoolean(blockListColumnInfo.blockOfflineIndex, Boolean.valueOf(blockList2.realmGet$blockOffline()));
        osObjectBuilder.addInteger(blockListColumnInfo.offenderFlagsIndex, Integer.valueOf(blockList2.realmGet$offenderFlags()));
        osObjectBuilder.addInteger(blockListColumnInfo.groupNameIdIndex, Integer.valueOf(blockList2.realmGet$groupNameId()));
        osObjectBuilder.addBoolean(blockListColumnInfo.namedParentIndex, Boolean.valueOf(blockList2.realmGet$namedParent()));
        osObjectBuilder.addInteger(blockListColumnInfo.groupNameTypeIndex, Integer.valueOf(blockList2.realmGet$groupNameType()));
        com_privacystar_core_data_model_BlockListRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(blockList, newProxyInstance);
        Operation realmGet$mOperation = blockList2.realmGet$mOperation();
        if (realmGet$mOperation == null) {
            newProxyInstance.realmSet$mOperation(null);
        } else {
            Operation operation = (Operation) map.get(realmGet$mOperation);
            if (operation != null) {
                newProxyInstance.realmSet$mOperation(operation);
            } else {
                newProxyInstance.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OperationRealmProxy.OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class), realmGet$mOperation, z, map, set));
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.BlockList copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_BlockListRealmProxy.BlockListColumnInfo r8, com.privacystar.core.data.model.BlockList r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_BlockListRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_BlockListRealmProxy$BlockListColumnInfo, com.privacystar.core.data.model.BlockList, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.BlockList");
    }

    public static BlockListColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new BlockListColumnInfo(osSchemaInfo);
    }

    public static BlockList createDetachedCopy(BlockList blockList, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        BlockList blockList2;
        if (i > i2 || blockList == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(blockList);
        if (cacheData == null) {
            blockList2 = new BlockList();
            map.put(blockList, new RealmObjectProxy.CacheData<>(i, blockList2));
        } else if (i >= cacheData.minDepth) {
            return (BlockList) cacheData.object;
        } else {
            blockList2 = (BlockList) cacheData.object;
            cacheData.minDepth = i;
        }
        BlockList blockList3 = blockList2;
        BlockList blockList4 = blockList;
        blockList3.realmSet$number(blockList4.realmGet$number());
        blockList3.realmSet$eventType(blockList4.realmGet$eventType());
        blockList3.realmSet$name(blockList4.realmGet$name());
        blockList3.realmSet$added(blockList4.realmGet$added());
        blockList3.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.createDetachedCopy(blockList4.realmGet$mOperation(), i + 1, i2, map));
        blockList3.realmSet$blockActive(blockList4.realmGet$blockActive());
        blockList3.realmSet$blockOffline(blockList4.realmGet$blockOffline());
        blockList3.realmSet$offenderFlags(blockList4.realmGet$offenderFlags());
        blockList3.realmSet$groupNameId(blockList4.realmGet$groupNameId());
        blockList3.realmSet$namedParent(blockList4.realmGet$namedParent());
        blockList3.realmSet$groupNameType(blockList4.realmGet$groupNameType());
        return blockList2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("number", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("eventType", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("added", RealmFieldType.DATE, false, false, false);
        builder.addPersistedLinkProperty("mOperation", RealmFieldType.OBJECT, com_privacystar_core_data_model_OperationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty("blockActive", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("blockOffline", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("offenderFlags", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(BlockListFields.GROUP_NAME_ID, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(BlockListFields.NAMED_PARENT, RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty(BlockListFields.GROUP_NAME_TYPE, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.BlockList createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_BlockListRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.BlockList");
    }

    @TargetApi(11)
    public static BlockList createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        BlockList blockList = new BlockList();
        BlockList blockList2 = blockList;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockList2.realmSet$number(null);
                }
                z = true;
            } else if (nextName.equals("eventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$eventType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockList2.realmSet$eventType(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockList2.realmSet$name(null);
                }
            } else if (nextName.equals("added")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    blockList2.realmSet$added(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        blockList2.realmSet$added(new Date(nextLong));
                    }
                } else {
                    blockList2.realmSet$added(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals("mOperation")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    blockList2.realmSet$mOperation(null);
                } else {
                    blockList2.realmSet$mOperation(com_privacystar_core_data_model_OperationRealmProxy.createUsingJsonStream(realm, jsonReader));
                }
            } else if (nextName.equals("blockActive")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$blockActive(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blockActive' to null.");
                }
            } else if (nextName.equals("blockOffline")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$blockOffline(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blockOffline' to null.");
                }
            } else if (nextName.equals("offenderFlags")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$offenderFlags(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'offenderFlags' to null.");
                }
            } else if (nextName.equals(BlockListFields.GROUP_NAME_ID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$groupNameId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'groupNameId' to null.");
                }
            } else if (nextName.equals(BlockListFields.NAMED_PARENT)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockList2.realmSet$namedParent(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'namedParent' to null.");
                }
            } else if (!nextName.equals(BlockListFields.GROUP_NAME_TYPE)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                blockList2.realmSet$groupNameType(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'groupNameType' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (BlockList) realm.copyToRealm((Realm) blockList, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, BlockList blockList, Map<RealmModel, Long> map) {
        if (blockList instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockList;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockList.class);
        long nativePtr = table.getNativePtr();
        BlockListColumnInfo blockListColumnInfo = (BlockListColumnInfo) realm.getSchema().getColumnInfo(BlockList.class);
        long j = blockListColumnInfo.numberIndex;
        BlockList blockList2 = blockList;
        String realmGet$number = blockList2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(blockList, Long.valueOf(nativeFindFirstNull));
        String realmGet$eventType = blockList2.realmGet$eventType();
        if (realmGet$eventType != null) {
            Table.nativeSetString(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, realmGet$eventType, false);
        }
        String realmGet$name = blockList2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        }
        Date realmGet$added = blockList2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        }
        Operation realmGet$mOperation = blockList2.realmGet$mOperation();
        if (realmGet$mOperation != null) {
            Long l = map.get(realmGet$mOperation);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insert(realm, realmGet$mOperation, map));
            }
            Table.nativeSetLink(nativePtr, blockListColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
        }
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockActiveIndex, nativeFindFirstNull, blockList2.realmGet$blockActive(), false);
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockOfflineIndex, nativeFindFirstNull, blockList2.realmGet$blockOffline(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.offenderFlagsIndex, nativeFindFirstNull, blockList2.realmGet$offenderFlags(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameIdIndex, nativeFindFirstNull, blockList2.realmGet$groupNameId(), false);
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.namedParentIndex, nativeFindFirstNull, blockList2.realmGet$namedParent(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameTypeIndex, nativeFindFirstNull, blockList2.realmGet$groupNameType(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockList.class);
        long nativePtr = table.getNativePtr();
        BlockListColumnInfo blockListColumnInfo = (BlockListColumnInfo) realm.getSchema().getColumnInfo(BlockList.class);
        long j = blockListColumnInfo.numberIndex;
        while (it.hasNext()) {
            BlockList blockList = (BlockList) it.next();
            if (!map.containsKey(blockList)) {
                if (blockList instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockList;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockList, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                BlockList blockList2 = blockList;
                String realmGet$number = blockList2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(blockList, Long.valueOf(nativeFindFirstNull));
                String realmGet$eventType = blockList2.realmGet$eventType();
                if (realmGet$eventType != null) {
                    Table.nativeSetString(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, realmGet$eventType, false);
                }
                String realmGet$name = blockList2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                }
                Date realmGet$added = blockList2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                }
                Operation realmGet$mOperation = blockList2.realmGet$mOperation();
                if (realmGet$mOperation != null) {
                    Long l = map.get(realmGet$mOperation);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insert(realm, realmGet$mOperation, map));
                    }
                    table.setLink(blockListColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
                }
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockActiveIndex, nativeFindFirstNull, blockList2.realmGet$blockActive(), false);
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockOfflineIndex, nativeFindFirstNull, blockList2.realmGet$blockOffline(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.offenderFlagsIndex, nativeFindFirstNull, blockList2.realmGet$offenderFlags(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameIdIndex, nativeFindFirstNull, blockList2.realmGet$groupNameId(), false);
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.namedParentIndex, nativeFindFirstNull, blockList2.realmGet$namedParent(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameTypeIndex, nativeFindFirstNull, blockList2.realmGet$groupNameType(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, BlockList blockList, Map<RealmModel, Long> map) {
        if (blockList instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockList;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockList.class);
        long nativePtr = table.getNativePtr();
        BlockListColumnInfo blockListColumnInfo = (BlockListColumnInfo) realm.getSchema().getColumnInfo(BlockList.class);
        long j = blockListColumnInfo.numberIndex;
        BlockList blockList2 = blockList;
        String realmGet$number = blockList2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
        }
        map.put(blockList, Long.valueOf(nativeFindFirstNull));
        String realmGet$eventType = blockList2.realmGet$eventType();
        if (realmGet$eventType != null) {
            Table.nativeSetString(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, realmGet$eventType, false);
        } else {
            Table.nativeSetNull(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, false);
        }
        String realmGet$name = blockList2.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, false);
        }
        Date realmGet$added = blockList2.realmGet$added();
        if (realmGet$added != null) {
            Table.nativeSetTimestamp(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, false);
        }
        Operation realmGet$mOperation = blockList2.realmGet$mOperation();
        if (realmGet$mOperation != null) {
            Long l = map.get(realmGet$mOperation);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, realmGet$mOperation, map));
            }
            Table.nativeSetLink(nativePtr, blockListColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
        } else {
            Table.nativeNullifyLink(nativePtr, blockListColumnInfo.mOperationIndex, nativeFindFirstNull);
        }
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockActiveIndex, nativeFindFirstNull, blockList2.realmGet$blockActive(), false);
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockOfflineIndex, nativeFindFirstNull, blockList2.realmGet$blockOffline(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.offenderFlagsIndex, nativeFindFirstNull, blockList2.realmGet$offenderFlags(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameIdIndex, nativeFindFirstNull, blockList2.realmGet$groupNameId(), false);
        Table.nativeSetBoolean(nativePtr, blockListColumnInfo.namedParentIndex, nativeFindFirstNull, blockList2.realmGet$namedParent(), false);
        Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameTypeIndex, nativeFindFirstNull, blockList2.realmGet$groupNameType(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockList.class);
        long nativePtr = table.getNativePtr();
        BlockListColumnInfo blockListColumnInfo = (BlockListColumnInfo) realm.getSchema().getColumnInfo(BlockList.class);
        long j = blockListColumnInfo.numberIndex;
        while (it.hasNext()) {
            BlockList blockList = (BlockList) it.next();
            if (!map.containsKey(blockList)) {
                if (blockList instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockList;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockList, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                BlockList blockList2 = blockList;
                String realmGet$number = blockList2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$number);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$number);
                }
                map.put(blockList, Long.valueOf(nativeFindFirstNull));
                String realmGet$eventType = blockList2.realmGet$eventType();
                if (realmGet$eventType != null) {
                    Table.nativeSetString(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, realmGet$eventType, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockListColumnInfo.eventTypeIndex, nativeFindFirstNull, false);
                }
                String realmGet$name = blockList2.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockListColumnInfo.nameIndex, nativeFindFirstNull, false);
                }
                Date realmGet$added = blockList2.realmGet$added();
                if (realmGet$added != null) {
                    Table.nativeSetTimestamp(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, realmGet$added.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, blockListColumnInfo.addedIndex, nativeFindFirstNull, false);
                }
                Operation realmGet$mOperation = blockList2.realmGet$mOperation();
                if (realmGet$mOperation != null) {
                    Long l = map.get(realmGet$mOperation);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(com_privacystar_core_data_model_OperationRealmProxy.insertOrUpdate(realm, realmGet$mOperation, map));
                    }
                    Table.nativeSetLink(nativePtr, blockListColumnInfo.mOperationIndex, nativeFindFirstNull, l2.longValue(), false);
                } else {
                    Table.nativeNullifyLink(nativePtr, blockListColumnInfo.mOperationIndex, nativeFindFirstNull);
                }
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockActiveIndex, nativeFindFirstNull, blockList2.realmGet$blockActive(), false);
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.blockOfflineIndex, nativeFindFirstNull, blockList2.realmGet$blockOffline(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.offenderFlagsIndex, nativeFindFirstNull, blockList2.realmGet$offenderFlags(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameIdIndex, nativeFindFirstNull, blockList2.realmGet$groupNameId(), false);
                Table.nativeSetBoolean(nativePtr, blockListColumnInfo.namedParentIndex, nativeFindFirstNull, blockList2.realmGet$namedParent(), false);
                Table.nativeSetLong(nativePtr, blockListColumnInfo.groupNameTypeIndex, nativeFindFirstNull, blockList2.realmGet$groupNameType(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_BlockListRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(BlockList.class), false, Collections.emptyList());
        com_privacystar_core_data_model_BlockListRealmProxy com_privacystar_core_data_model_blocklistrealmproxy = new com_privacystar_core_data_model_BlockListRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_blocklistrealmproxy;
    }

    static BlockList update(Realm realm, BlockListColumnInfo blockListColumnInfo, BlockList blockList, BlockList blockList2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        BlockList blockList3 = blockList2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockList.class), blockListColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(blockListColumnInfo.numberIndex, blockList3.realmGet$number());
        osObjectBuilder.addString(blockListColumnInfo.eventTypeIndex, blockList3.realmGet$eventType());
        osObjectBuilder.addString(blockListColumnInfo.nameIndex, blockList3.realmGet$name());
        osObjectBuilder.addDate(blockListColumnInfo.addedIndex, blockList3.realmGet$added());
        Operation realmGet$mOperation = blockList3.realmGet$mOperation();
        if (realmGet$mOperation == null) {
            osObjectBuilder.addNull(blockListColumnInfo.mOperationIndex);
        } else {
            Operation operation = (Operation) map.get(realmGet$mOperation);
            if (operation != null) {
                osObjectBuilder.addObject(blockListColumnInfo.mOperationIndex, operation);
            } else {
                osObjectBuilder.addObject(blockListColumnInfo.mOperationIndex, com_privacystar_core_data_model_OperationRealmProxy.copyOrUpdate(realm, (com_privacystar_core_data_model_OperationRealmProxy.OperationColumnInfo) realm.getSchema().getColumnInfo(Operation.class), realmGet$mOperation, true, map, set));
            }
        }
        osObjectBuilder.addBoolean(blockListColumnInfo.blockActiveIndex, Boolean.valueOf(blockList3.realmGet$blockActive()));
        osObjectBuilder.addBoolean(blockListColumnInfo.blockOfflineIndex, Boolean.valueOf(blockList3.realmGet$blockOffline()));
        osObjectBuilder.addInteger(blockListColumnInfo.offenderFlagsIndex, Integer.valueOf(blockList3.realmGet$offenderFlags()));
        osObjectBuilder.addInteger(blockListColumnInfo.groupNameIdIndex, Integer.valueOf(blockList3.realmGet$groupNameId()));
        osObjectBuilder.addBoolean(blockListColumnInfo.namedParentIndex, Boolean.valueOf(blockList3.realmGet$namedParent()));
        osObjectBuilder.addInteger(blockListColumnInfo.groupNameTypeIndex, Integer.valueOf(blockList3.realmGet$groupNameType()));
        osObjectBuilder.updateExistingObject();
        return blockList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_BlockListRealmProxy com_privacystar_core_data_model_blocklistrealmproxy = (com_privacystar_core_data_model_BlockListRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_blocklistrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_blocklistrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_blocklistrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (BlockListColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public Date realmGet$added() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.addedIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.addedIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$blockActive() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.blockActiveIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$blockOffline() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.blockOfflineIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$eventType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.eventTypeIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$groupNameId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.groupNameIdIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$groupNameType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.groupNameTypeIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public Operation realmGet$mOperation() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.mOperationIndex)) {
            return null;
        }
        return (Operation) this.proxyState.getRealm$realm().get(Operation.class, this.proxyState.getRow$realm().getLink(this.columnInfo.mOperationIndex), false, Collections.emptyList());
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public boolean realmGet$namedParent() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.namedParentIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public int realmGet$offenderFlags() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.offenderFlagsIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$added(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.addedIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.addedIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.addedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.addedIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$blockActive(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.blockActiveIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.blockActiveIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$blockOffline(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.blockOfflineIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.blockOfflineIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$eventType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.eventTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.eventTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.eventTypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.eventTypeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$groupNameId(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.groupNameIdIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.groupNameIdIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$groupNameType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.groupNameTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.groupNameTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$mOperation(Operation operation) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (operation == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.mOperationIndex);
                return;
            }
            this.proxyState.checkValidObject(operation);
            this.proxyState.getRow$realm().setLink(this.columnInfo.mOperationIndex, ((RealmObjectProxy) operation).realmGet$proxyState().getRow$realm().getIndex());
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains("mOperation")) {
            Operation operation2 = operation;
            if (operation != null) {
                operation2 = operation;
                if (!RealmObject.isManaged(operation)) {
                    operation2 = (Operation) ((Realm) this.proxyState.getRealm$realm()).copyToRealm((Realm) operation, new ImportFlag[0]);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (operation2 == null) {
                row$realm.nullifyLink(this.columnInfo.mOperationIndex);
                return;
            }
            this.proxyState.checkValidObject(operation2);
            row$realm.getTable().setLink(this.columnInfo.mOperationIndex, row$realm.getIndex(), ((RealmObjectProxy) operation2).realmGet$proxyState().getRow$realm().getIndex(), true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$name(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.nameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.nameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.nameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.nameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$namedParent(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.namedParentIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.namedParentIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.BlockList, io.realm.com_privacystar_core_data_model_BlockListRealmProxyInterface
    public void realmSet$offenderFlags(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.offenderFlagsIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.offenderFlagsIndex, row$realm.getIndex(), i, true);
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("BlockList = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{eventType:");
        sb.append(realmGet$eventType() != null ? realmGet$eventType() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{name:");
        sb.append(realmGet$name() != null ? realmGet$name() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{added:");
        sb.append(realmGet$added() != null ? realmGet$added() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{mOperation:");
        sb.append(realmGet$mOperation() != null ? com_privacystar_core_data_model_OperationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{blockActive:");
        sb.append(realmGet$blockActive());
        sb.append("}");
        sb.append(",");
        sb.append("{blockOffline:");
        sb.append(realmGet$blockOffline());
        sb.append("}");
        sb.append(",");
        sb.append("{offenderFlags:");
        sb.append(realmGet$offenderFlags());
        sb.append("}");
        sb.append(",");
        sb.append("{groupNameId:");
        sb.append(realmGet$groupNameId());
        sb.append("}");
        sb.append(",");
        sb.append("{namedParent:");
        sb.append(realmGet$namedParent());
        sb.append("}");
        sb.append(",");
        sb.append("{groupNameType:");
        sb.append(realmGet$groupNameType());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
