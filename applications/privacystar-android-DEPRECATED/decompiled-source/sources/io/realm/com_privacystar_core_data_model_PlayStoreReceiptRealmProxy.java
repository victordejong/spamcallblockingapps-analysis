package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.PlayStoreReceipt;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStoreReceiptRealmProxy.class */
public class com_privacystar_core_data_model_PlayStoreReceiptRealmProxy extends PlayStoreReceipt implements RealmObjectProxy, AbstractC1921xe78bd8e1 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private PlayStoreReceiptColumnInfo columnInfo;
    private ProxyState<PlayStoreReceipt> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStoreReceiptRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PlayStoreReceipt";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_PlayStoreReceiptRealmProxy$PlayStoreReceiptColumnInfo.class */
    public static final class PlayStoreReceiptColumnInfo extends ColumnInfo {
        long dataIndex;
        long maxColumnIndexValue;
        long productIdIndex;
        long signatureIndex;

        PlayStoreReceiptColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        PlayStoreReceiptColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(3);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.productIdIndex = addColumnDetails("productId", "productId", objectSchemaInfo);
            this.dataIndex = addColumnDetails("data", "data", objectSchemaInfo);
            this.signatureIndex = addColumnDetails("signature", "signature", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new PlayStoreReceiptColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo = (PlayStoreReceiptColumnInfo) columnInfo;
            PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo2 = (PlayStoreReceiptColumnInfo) columnInfo2;
            playStoreReceiptColumnInfo2.productIdIndex = playStoreReceiptColumnInfo.productIdIndex;
            playStoreReceiptColumnInfo2.dataIndex = playStoreReceiptColumnInfo.dataIndex;
            playStoreReceiptColumnInfo2.signatureIndex = playStoreReceiptColumnInfo.signatureIndex;
            playStoreReceiptColumnInfo2.maxColumnIndexValue = playStoreReceiptColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_PlayStoreReceiptRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static PlayStoreReceipt copy(Realm realm, PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo, PlayStoreReceipt playStoreReceipt, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(playStoreReceipt);
        if (realmObjectProxy != null) {
            return (PlayStoreReceipt) realmObjectProxy;
        }
        PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlayStoreReceipt.class), playStoreReceiptColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(playStoreReceiptColumnInfo.productIdIndex, playStoreReceipt2.realmGet$productId());
        osObjectBuilder.addString(playStoreReceiptColumnInfo.dataIndex, playStoreReceipt2.realmGet$data());
        osObjectBuilder.addString(playStoreReceiptColumnInfo.signatureIndex, playStoreReceipt2.realmGet$signature());
        com_privacystar_core_data_model_PlayStoreReceiptRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(playStoreReceipt, newProxyInstance);
        return newProxyInstance;
    }

    public static PlayStoreReceipt copyOrUpdate(Realm realm, PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo, PlayStoreReceipt playStoreReceipt, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (playStoreReceipt instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStoreReceipt;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return playStoreReceipt;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(playStoreReceipt);
        return realmObjectProxy2 != null ? (PlayStoreReceipt) realmObjectProxy2 : copy(realm, playStoreReceiptColumnInfo, playStoreReceipt, z, map, set);
    }

    public static PlayStoreReceiptColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PlayStoreReceiptColumnInfo(osSchemaInfo);
    }

    public static PlayStoreReceipt createDetachedCopy(PlayStoreReceipt playStoreReceipt, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PlayStoreReceipt playStoreReceipt2;
        if (i > i2 || playStoreReceipt == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(playStoreReceipt);
        if (cacheData == null) {
            PlayStoreReceipt playStoreReceipt3 = new PlayStoreReceipt();
            map.put(playStoreReceipt, new RealmObjectProxy.CacheData<>(i, playStoreReceipt3));
            playStoreReceipt2 = playStoreReceipt3;
        } else if (i >= cacheData.minDepth) {
            return (PlayStoreReceipt) cacheData.object;
        } else {
            playStoreReceipt2 = (PlayStoreReceipt) cacheData.object;
            cacheData.minDepth = i;
        }
        PlayStoreReceipt playStoreReceipt4 = playStoreReceipt2;
        PlayStoreReceipt playStoreReceipt5 = playStoreReceipt;
        playStoreReceipt4.realmSet$productId(playStoreReceipt5.realmGet$productId());
        playStoreReceipt4.realmSet$data(playStoreReceipt5.realmGet$data());
        playStoreReceipt4.realmSet$signature(playStoreReceipt5.realmGet$signature());
        return playStoreReceipt2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 3, 0);
        builder.addPersistedProperty("productId", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("data", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("signature", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    public static PlayStoreReceipt createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        PlayStoreReceipt playStoreReceipt = (PlayStoreReceipt) realm.createObjectInternal(PlayStoreReceipt.class, true, Collections.emptyList());
        PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
        if (jSONObject.has("productId")) {
            if (jSONObject.isNull("productId")) {
                playStoreReceipt2.realmSet$productId(null);
            } else {
                playStoreReceipt2.realmSet$productId(jSONObject.getString("productId"));
            }
        }
        if (jSONObject.has("data")) {
            if (jSONObject.isNull("data")) {
                playStoreReceipt2.realmSet$data(null);
            } else {
                playStoreReceipt2.realmSet$data(jSONObject.getString("data"));
            }
        }
        if (jSONObject.has("signature")) {
            if (jSONObject.isNull("signature")) {
                playStoreReceipt2.realmSet$signature(null);
            } else {
                playStoreReceipt2.realmSet$signature(jSONObject.getString("signature"));
            }
        }
        return playStoreReceipt;
    }

    @TargetApi(11)
    public static PlayStoreReceipt createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PlayStoreReceipt playStoreReceipt = new PlayStoreReceipt();
        PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("productId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStoreReceipt2.realmSet$productId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStoreReceipt2.realmSet$productId(null);
                }
            } else if (nextName.equals("data")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    playStoreReceipt2.realmSet$data(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    playStoreReceipt2.realmSet$data(null);
                }
            } else if (!nextName.equals("signature")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                playStoreReceipt2.realmSet$signature(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                playStoreReceipt2.realmSet$signature(null);
            }
        }
        jsonReader.endObject();
        return (PlayStoreReceipt) realm.copyToRealm((Realm) playStoreReceipt, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PlayStoreReceipt playStoreReceipt, Map<RealmModel, Long> map) {
        if (playStoreReceipt instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStoreReceipt;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlayStoreReceipt.class);
        long nativePtr = table.getNativePtr();
        PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo = (PlayStoreReceiptColumnInfo) realm.getSchema().getColumnInfo(PlayStoreReceipt.class);
        long createRow = OsObject.createRow(table);
        map.put(playStoreReceipt, Long.valueOf(createRow));
        PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
        String realmGet$productId = playStoreReceipt2.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, realmGet$productId, false);
        }
        String realmGet$data = playStoreReceipt2.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, realmGet$data, false);
        }
        String realmGet$signature = playStoreReceipt2.realmGet$signature();
        if (realmGet$signature != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, realmGet$signature, false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlayStoreReceipt.class);
        long nativePtr = table.getNativePtr();
        PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo = (PlayStoreReceiptColumnInfo) realm.getSchema().getColumnInfo(PlayStoreReceipt.class);
        while (it.hasNext()) {
            PlayStoreReceipt playStoreReceipt = (PlayStoreReceipt) it.next();
            if (!map.containsKey(playStoreReceipt)) {
                if (playStoreReceipt instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStoreReceipt;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(playStoreReceipt, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(playStoreReceipt, Long.valueOf(createRow));
                PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
                String realmGet$productId = playStoreReceipt2.realmGet$productId();
                if (realmGet$productId != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, realmGet$productId, false);
                }
                String realmGet$data = playStoreReceipt2.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, realmGet$data, false);
                }
                String realmGet$signature = playStoreReceipt2.realmGet$signature();
                if (realmGet$signature != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, realmGet$signature, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PlayStoreReceipt playStoreReceipt, Map<RealmModel, Long> map) {
        if (playStoreReceipt instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStoreReceipt;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlayStoreReceipt.class);
        long nativePtr = table.getNativePtr();
        PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo = (PlayStoreReceiptColumnInfo) realm.getSchema().getColumnInfo(PlayStoreReceipt.class);
        long createRow = OsObject.createRow(table);
        map.put(playStoreReceipt, Long.valueOf(createRow));
        PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
        String realmGet$productId = playStoreReceipt2.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, realmGet$productId, false);
        } else {
            Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, false);
        }
        String realmGet$data = playStoreReceipt2.realmGet$data();
        if (realmGet$data != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, realmGet$data, false);
        } else {
            Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, false);
        }
        String realmGet$signature = playStoreReceipt2.realmGet$signature();
        if (realmGet$signature != null) {
            Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, realmGet$signature, false);
        } else {
            Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlayStoreReceipt.class);
        long nativePtr = table.getNativePtr();
        PlayStoreReceiptColumnInfo playStoreReceiptColumnInfo = (PlayStoreReceiptColumnInfo) realm.getSchema().getColumnInfo(PlayStoreReceipt.class);
        while (it.hasNext()) {
            PlayStoreReceipt playStoreReceipt = (PlayStoreReceipt) it.next();
            if (!map.containsKey(playStoreReceipt)) {
                if (playStoreReceipt instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) playStoreReceipt;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(playStoreReceipt, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(playStoreReceipt, Long.valueOf(createRow));
                PlayStoreReceipt playStoreReceipt2 = playStoreReceipt;
                String realmGet$productId = playStoreReceipt2.realmGet$productId();
                if (realmGet$productId != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, realmGet$productId, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.productIdIndex, createRow, false);
                }
                String realmGet$data = playStoreReceipt2.realmGet$data();
                if (realmGet$data != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, realmGet$data, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.dataIndex, createRow, false);
                }
                String realmGet$signature = playStoreReceipt2.realmGet$signature();
                if (realmGet$signature != null) {
                    Table.nativeSetString(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, realmGet$signature, false);
                } else {
                    Table.nativeSetNull(nativePtr, playStoreReceiptColumnInfo.signatureIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_PlayStoreReceiptRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PlayStoreReceipt.class), false, Collections.emptyList());
        com_privacystar_core_data_model_PlayStoreReceiptRealmProxy com_privacystar_core_data_model_playstorereceiptrealmproxy = new com_privacystar_core_data_model_PlayStoreReceiptRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_playstorereceiptrealmproxy;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
            this.columnInfo = (PlayStoreReceiptColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public String realmGet$data() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.dataIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public String realmGet$productId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productIdIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public String realmGet$signature() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.signatureIndex);
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public void realmSet$data(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.dataIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.dataIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.dataIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.dataIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public void realmSet$productId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.productIdIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.productIdIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.productIdIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.productIdIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.PlayStoreReceipt, io.realm.AbstractC1921xe78bd8e1
    public void realmSet$signature(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.signatureIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.signatureIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.signatureIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.signatureIndex, row$realm.getIndex(), str, true);
            }
        }
    }
}
