package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.BlockingOption;
import com.privacystar.core.data.model.BlockingOptionFields;
import io.realm.BaseRealm;
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
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockingOptionRealmProxy.class */
public class com_privacystar_core_data_model_BlockingOptionRealmProxy extends BlockingOption implements RealmObjectProxy, AbstractC1911xb5a2a162 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private BlockingOptionColumnInfo columnInfo;
    private ProxyState<BlockingOption> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockingOptionRealmProxy$BlockingOptionColumnInfo.class */
    public static final class BlockingOptionColumnInfo extends ColumnInfo {
        long activeIndex;
        long maxColumnIndexValue;
        long messageIndex;
        long offlineIndex;
        long optionTypeIndex;

        BlockingOptionColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        BlockingOptionColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.optionTypeIndex = addColumnDetails("optionType", "optionType", objectSchemaInfo);
            this.messageIndex = addColumnDetails("message", "message", objectSchemaInfo);
            this.activeIndex = addColumnDetails(BlockingOptionFields.ACTIVE, BlockingOptionFields.ACTIVE, objectSchemaInfo);
            this.offlineIndex = addColumnDetails("offline", "offline", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new BlockingOptionColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            BlockingOptionColumnInfo blockingOptionColumnInfo = (BlockingOptionColumnInfo) columnInfo;
            BlockingOptionColumnInfo blockingOptionColumnInfo2 = (BlockingOptionColumnInfo) columnInfo2;
            blockingOptionColumnInfo2.optionTypeIndex = blockingOptionColumnInfo.optionTypeIndex;
            blockingOptionColumnInfo2.messageIndex = blockingOptionColumnInfo.messageIndex;
            blockingOptionColumnInfo2.activeIndex = blockingOptionColumnInfo.activeIndex;
            blockingOptionColumnInfo2.offlineIndex = blockingOptionColumnInfo.offlineIndex;
            blockingOptionColumnInfo2.maxColumnIndexValue = blockingOptionColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_BlockingOptionRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "BlockingOption";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_BlockingOptionRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static BlockingOption copy(Realm realm, BlockingOptionColumnInfo blockingOptionColumnInfo, BlockingOption blockingOption, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(blockingOption);
        if (realmObjectProxy != null) {
            return (BlockingOption) realmObjectProxy;
        }
        BlockingOption blockingOption2 = blockingOption;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(BlockingOption.class), blockingOptionColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(blockingOptionColumnInfo.optionTypeIndex, blockingOption2.realmGet$optionType());
        osObjectBuilder.addString(blockingOptionColumnInfo.messageIndex, blockingOption2.realmGet$message());
        osObjectBuilder.addBoolean(blockingOptionColumnInfo.activeIndex, Boolean.valueOf(blockingOption2.realmGet$active()));
        osObjectBuilder.addBoolean(blockingOptionColumnInfo.offlineIndex, Boolean.valueOf(blockingOption2.realmGet$offline()));
        com_privacystar_core_data_model_BlockingOptionRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(blockingOption, newProxyInstance);
        return newProxyInstance;
    }

    public static BlockingOption copyOrUpdate(Realm realm, BlockingOptionColumnInfo blockingOptionColumnInfo, BlockingOption blockingOption, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (blockingOption instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockingOption;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return blockingOption;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(blockingOption);
        return realmObjectProxy2 != null ? (BlockingOption) realmObjectProxy2 : copy(realm, blockingOptionColumnInfo, blockingOption, z, map, set);
    }

    public static BlockingOptionColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new BlockingOptionColumnInfo(osSchemaInfo);
    }

    public static BlockingOption createDetachedCopy(BlockingOption blockingOption, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        BlockingOption blockingOption2;
        if (i > i2 || blockingOption == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(blockingOption);
        if (cacheData == null) {
            BlockingOption blockingOption3 = new BlockingOption();
            map.put(blockingOption, new RealmObjectProxy.CacheData<>(i, blockingOption3));
            blockingOption2 = blockingOption3;
        } else if (i >= cacheData.minDepth) {
            return (BlockingOption) cacheData.object;
        } else {
            blockingOption2 = (BlockingOption) cacheData.object;
            cacheData.minDepth = i;
        }
        BlockingOption blockingOption4 = blockingOption2;
        BlockingOption blockingOption5 = blockingOption;
        blockingOption4.realmSet$optionType(blockingOption5.realmGet$optionType());
        blockingOption4.realmSet$message(blockingOption5.realmGet$message());
        blockingOption4.realmSet$active(blockingOption5.realmGet$active());
        blockingOption4.realmSet$offline(blockingOption5.realmGet$offline());
        return blockingOption2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("optionType", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("message", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(BlockingOptionFields.ACTIVE, RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("offline", RealmFieldType.BOOLEAN, false, false, true);
        return builder.build();
    }

    public static BlockingOption createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        BlockingOption blockingOption = (BlockingOption) realm.createObjectInternal(BlockingOption.class, true, Collections.emptyList());
        BlockingOption blockingOption2 = blockingOption;
        if (jSONObject.has("optionType")) {
            if (jSONObject.isNull("optionType")) {
                blockingOption2.realmSet$optionType(null);
            } else {
                blockingOption2.realmSet$optionType(jSONObject.getString("optionType"));
            }
        }
        if (jSONObject.has("message")) {
            if (jSONObject.isNull("message")) {
                blockingOption2.realmSet$message(null);
            } else {
                blockingOption2.realmSet$message(jSONObject.getString("message"));
            }
        }
        if (jSONObject.has(BlockingOptionFields.ACTIVE)) {
            if (jSONObject.isNull(BlockingOptionFields.ACTIVE)) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'active' to null.");
            }
            blockingOption2.realmSet$active(jSONObject.getBoolean(BlockingOptionFields.ACTIVE));
        }
        if (jSONObject.has("offline")) {
            if (jSONObject.isNull("offline")) {
                throw new IllegalArgumentException("Trying to set non-nullable field 'offline' to null.");
            }
            blockingOption2.realmSet$offline(jSONObject.getBoolean("offline"));
        }
        return blockingOption;
    }

    @TargetApi(11)
    public static BlockingOption createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        BlockingOption blockingOption = new BlockingOption();
        BlockingOption blockingOption2 = blockingOption;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("optionType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockingOption2.realmSet$optionType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockingOption2.realmSet$optionType(null);
                }
            } else if (nextName.equals("message")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockingOption2.realmSet$message(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    blockingOption2.realmSet$message(null);
                }
            } else if (nextName.equals(BlockingOptionFields.ACTIVE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    blockingOption2.realmSet$active(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'active' to null.");
                }
            } else if (!nextName.equals("offline")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                blockingOption2.realmSet$offline(jsonReader.nextBoolean());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'offline' to null.");
            }
        }
        jsonReader.endObject();
        return (BlockingOption) realm.copyToRealm((Realm) blockingOption, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, BlockingOption blockingOption, Map<RealmModel, Long> map) {
        if (blockingOption instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockingOption;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockingOption.class);
        long nativePtr = table.getNativePtr();
        BlockingOptionColumnInfo blockingOptionColumnInfo = (BlockingOptionColumnInfo) realm.getSchema().getColumnInfo(BlockingOption.class);
        long createRow = OsObject.createRow(table);
        map.put(blockingOption, Long.valueOf(createRow));
        BlockingOption blockingOption2 = blockingOption;
        String realmGet$optionType = blockingOption2.realmGet$optionType();
        if (realmGet$optionType != null) {
            Table.nativeSetString(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, realmGet$optionType, false);
        }
        String realmGet$message = blockingOption2.realmGet$message();
        if (realmGet$message != null) {
            Table.nativeSetString(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, realmGet$message, false);
        }
        Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.activeIndex, createRow, blockingOption2.realmGet$active(), false);
        Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.offlineIndex, createRow, blockingOption2.realmGet$offline(), false);
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockingOption.class);
        long nativePtr = table.getNativePtr();
        BlockingOptionColumnInfo blockingOptionColumnInfo = (BlockingOptionColumnInfo) realm.getSchema().getColumnInfo(BlockingOption.class);
        while (it.hasNext()) {
            BlockingOption blockingOption = (BlockingOption) it.next();
            if (!map.containsKey(blockingOption)) {
                if (blockingOption instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockingOption;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockingOption, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(blockingOption, Long.valueOf(createRow));
                BlockingOption blockingOption2 = blockingOption;
                String realmGet$optionType = blockingOption2.realmGet$optionType();
                if (realmGet$optionType != null) {
                    Table.nativeSetString(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, realmGet$optionType, false);
                }
                String realmGet$message = blockingOption2.realmGet$message();
                if (realmGet$message != null) {
                    Table.nativeSetString(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, realmGet$message, false);
                }
                Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.activeIndex, createRow, blockingOption2.realmGet$active(), false);
                Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.offlineIndex, createRow, blockingOption2.realmGet$offline(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, BlockingOption blockingOption, Map<RealmModel, Long> map) {
        if (blockingOption instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockingOption;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(BlockingOption.class);
        long nativePtr = table.getNativePtr();
        BlockingOptionColumnInfo blockingOptionColumnInfo = (BlockingOptionColumnInfo) realm.getSchema().getColumnInfo(BlockingOption.class);
        long createRow = OsObject.createRow(table);
        map.put(blockingOption, Long.valueOf(createRow));
        BlockingOption blockingOption2 = blockingOption;
        String realmGet$optionType = blockingOption2.realmGet$optionType();
        if (realmGet$optionType != null) {
            Table.nativeSetString(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, realmGet$optionType, false);
        } else {
            Table.nativeSetNull(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, false);
        }
        String realmGet$message = blockingOption2.realmGet$message();
        if (realmGet$message != null) {
            Table.nativeSetString(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, realmGet$message, false);
        } else {
            Table.nativeSetNull(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, false);
        }
        Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.activeIndex, createRow, blockingOption2.realmGet$active(), false);
        Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.offlineIndex, createRow, blockingOption2.realmGet$offline(), false);
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(BlockingOption.class);
        long nativePtr = table.getNativePtr();
        BlockingOptionColumnInfo blockingOptionColumnInfo = (BlockingOptionColumnInfo) realm.getSchema().getColumnInfo(BlockingOption.class);
        while (it.hasNext()) {
            BlockingOption blockingOption = (BlockingOption) it.next();
            if (!map.containsKey(blockingOption)) {
                if (blockingOption instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) blockingOption;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(blockingOption, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(blockingOption, Long.valueOf(createRow));
                BlockingOption blockingOption2 = blockingOption;
                String realmGet$optionType = blockingOption2.realmGet$optionType();
                if (realmGet$optionType != null) {
                    Table.nativeSetString(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, realmGet$optionType, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockingOptionColumnInfo.optionTypeIndex, createRow, false);
                }
                String realmGet$message = blockingOption2.realmGet$message();
                if (realmGet$message != null) {
                    Table.nativeSetString(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, realmGet$message, false);
                } else {
                    Table.nativeSetNull(nativePtr, blockingOptionColumnInfo.messageIndex, createRow, false);
                }
                Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.activeIndex, createRow, blockingOption2.realmGet$active(), false);
                Table.nativeSetBoolean(nativePtr, blockingOptionColumnInfo.offlineIndex, createRow, blockingOption2.realmGet$offline(), false);
            }
        }
    }

    private static com_privacystar_core_data_model_BlockingOptionRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(BlockingOption.class), false, Collections.emptyList());
        com_privacystar_core_data_model_BlockingOptionRealmProxy com_privacystar_core_data_model_blockingoptionrealmproxy = new com_privacystar_core_data_model_BlockingOptionRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_blockingoptionrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_BlockingOptionRealmProxy com_privacystar_core_data_model_blockingoptionrealmproxy = (com_privacystar_core_data_model_BlockingOptionRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_blockingoptionrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_blockingoptionrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_blockingoptionrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (BlockingOptionColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public boolean realmGet$active() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.activeIndex);
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public String realmGet$message() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.messageIndex);
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public boolean realmGet$offline() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.offlineIndex);
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public String realmGet$optionType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.optionTypeIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public void realmSet$active(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.activeIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.activeIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public void realmSet$message(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.messageIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.messageIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.messageIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.messageIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public void realmSet$offline(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.offlineIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.offlineIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.BlockingOption, io.realm.AbstractC1911xb5a2a162
    public void realmSet$optionType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.optionTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.optionTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.optionTypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.optionTypeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("BlockingOption = proxy[");
        sb.append("{optionType:");
        sb.append(realmGet$optionType() != null ? realmGet$optionType() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{message:");
        sb.append(realmGet$message() != null ? realmGet$message() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{active:");
        sb.append(realmGet$active());
        sb.append("}");
        sb.append(",");
        sb.append("{offline:");
        sb.append(realmGet$offline());
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
