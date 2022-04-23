package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.SubscriptionFields;
import io.realm.BaseRealm;
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
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SubscriptionRealmProxy.class */
public class com_privacystar_core_data_model_SubscriptionRealmProxy extends Subscription implements RealmObjectProxy, com_privacystar_core_data_model_SubscriptionRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private SubscriptionColumnInfo columnInfo;
    private ProxyState<Subscription> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SubscriptionRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Subscription";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_SubscriptionRealmProxy$SubscriptionColumnInfo.class */
    public static final class SubscriptionColumnInfo extends ColumnInfo {
        long expirationIndex;
        long maxColumnIndexValue;
        long subscriptionTypeIndex;

        SubscriptionColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        SubscriptionColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.subscriptionTypeIndex = addColumnDetails(SubscriptionFields.SUBSCRIPTION_TYPE, SubscriptionFields.SUBSCRIPTION_TYPE, objectSchemaInfo);
            this.expirationIndex = addColumnDetails("expiration", "expiration", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new SubscriptionColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SubscriptionColumnInfo subscriptionColumnInfo = (SubscriptionColumnInfo) columnInfo;
            SubscriptionColumnInfo subscriptionColumnInfo2 = (SubscriptionColumnInfo) columnInfo2;
            subscriptionColumnInfo2.subscriptionTypeIndex = subscriptionColumnInfo.subscriptionTypeIndex;
            subscriptionColumnInfo2.expirationIndex = subscriptionColumnInfo.expirationIndex;
            subscriptionColumnInfo2.maxColumnIndexValue = subscriptionColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_SubscriptionRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static Subscription copy(Realm realm, SubscriptionColumnInfo subscriptionColumnInfo, Subscription subscription, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(subscription);
        if (realmObjectProxy != null) {
            return (Subscription) realmObjectProxy;
        }
        Subscription subscription2 = subscription;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Subscription.class), subscriptionColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(subscriptionColumnInfo.subscriptionTypeIndex, subscription2.realmGet$subscriptionType());
        osObjectBuilder.addDate(subscriptionColumnInfo.expirationIndex, subscription2.realmGet$expiration());
        com_privacystar_core_data_model_SubscriptionRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(subscription, newProxyInstance);
        return newProxyInstance;
    }

    public static Subscription copyOrUpdate(Realm realm, SubscriptionColumnInfo subscriptionColumnInfo, Subscription subscription, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        if (subscription instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscription;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null) {
                BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
                if (realm$realm.threadId != realm.threadId) {
                    throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
                } else if (realm$realm.getPath().equals(realm.getPath())) {
                    return subscription;
                }
            }
        }
        BaseRealm.objectContext.get();
        RealmObjectProxy realmObjectProxy2 = map.get(subscription);
        return realmObjectProxy2 != null ? (Subscription) realmObjectProxy2 : copy(realm, subscriptionColumnInfo, subscription, z, map, set);
    }

    public static SubscriptionColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SubscriptionColumnInfo(osSchemaInfo);
    }

    public static Subscription createDetachedCopy(Subscription subscription, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Subscription subscription2;
        if (i > i2 || subscription == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(subscription);
        if (cacheData == null) {
            Subscription subscription3 = new Subscription();
            map.put(subscription, new RealmObjectProxy.CacheData<>(i, subscription3));
            subscription2 = subscription3;
        } else if (i >= cacheData.minDepth) {
            return (Subscription) cacheData.object;
        } else {
            subscription2 = (Subscription) cacheData.object;
            cacheData.minDepth = i;
        }
        Subscription subscription4 = subscription2;
        Subscription subscription5 = subscription;
        subscription4.realmSet$subscriptionType(subscription5.realmGet$subscriptionType());
        subscription4.realmSet$expiration(subscription5.realmGet$expiration());
        return subscription2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedProperty(SubscriptionFields.SUBSCRIPTION_TYPE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("expiration", RealmFieldType.DATE, false, false, false);
        return builder.build();
    }

    public static Subscription createOrUpdateUsingJsonObject(Realm realm, JSONObject jSONObject, boolean z) throws JSONException {
        Subscription subscription = (Subscription) realm.createObjectInternal(Subscription.class, true, Collections.emptyList());
        Subscription subscription2 = subscription;
        if (jSONObject.has(SubscriptionFields.SUBSCRIPTION_TYPE)) {
            if (jSONObject.isNull(SubscriptionFields.SUBSCRIPTION_TYPE)) {
                subscription2.realmSet$subscriptionType(null);
            } else {
                subscription2.realmSet$subscriptionType(jSONObject.getString(SubscriptionFields.SUBSCRIPTION_TYPE));
            }
        }
        if (jSONObject.has("expiration")) {
            if (jSONObject.isNull("expiration")) {
                subscription2.realmSet$expiration(null);
            } else {
                Object obj = jSONObject.get("expiration");
                if (obj instanceof String) {
                    subscription2.realmSet$expiration(JsonUtils.stringToDate((String) obj));
                } else {
                    subscription2.realmSet$expiration(new Date(jSONObject.getLong("expiration")));
                }
            }
        }
        return subscription;
    }

    @TargetApi(11)
    public static Subscription createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        Subscription subscription = new Subscription();
        Subscription subscription2 = subscription;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(SubscriptionFields.SUBSCRIPTION_TYPE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscription2.realmSet$subscriptionType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    subscription2.realmSet$subscriptionType(null);
                }
            } else if (!nextName.equals("expiration")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                subscription2.realmSet$expiration(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    subscription2.realmSet$expiration(new Date(nextLong));
                }
            } else {
                subscription2.realmSet$expiration(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        return (Subscription) realm.copyToRealm((Realm) subscription, new ImportFlag[0]);
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, Subscription subscription, Map<RealmModel, Long> map) {
        if (subscription instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscription;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Subscription.class);
        long nativePtr = table.getNativePtr();
        SubscriptionColumnInfo subscriptionColumnInfo = (SubscriptionColumnInfo) realm.getSchema().getColumnInfo(Subscription.class);
        long createRow = OsObject.createRow(table);
        map.put(subscription, Long.valueOf(createRow));
        Subscription subscription2 = subscription;
        String realmGet$subscriptionType = subscription2.realmGet$subscriptionType();
        if (realmGet$subscriptionType != null) {
            Table.nativeSetString(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, realmGet$subscriptionType, false);
        }
        Date realmGet$expiration = subscription2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, realmGet$expiration.getTime(), false);
        }
        return createRow;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Subscription.class);
        long nativePtr = table.getNativePtr();
        SubscriptionColumnInfo subscriptionColumnInfo = (SubscriptionColumnInfo) realm.getSchema().getColumnInfo(Subscription.class);
        while (it.hasNext()) {
            Subscription subscription = (Subscription) it.next();
            if (!map.containsKey(subscription)) {
                if (subscription instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscription;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(subscription, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(subscription, Long.valueOf(createRow));
                Subscription subscription2 = subscription;
                String realmGet$subscriptionType = subscription2.realmGet$subscriptionType();
                if (realmGet$subscriptionType != null) {
                    Table.nativeSetString(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, realmGet$subscriptionType, false);
                }
                Date realmGet$expiration = subscription2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, realmGet$expiration.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, Subscription subscription, Map<RealmModel, Long> map) {
        if (subscription instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscription;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Subscription.class);
        long nativePtr = table.getNativePtr();
        SubscriptionColumnInfo subscriptionColumnInfo = (SubscriptionColumnInfo) realm.getSchema().getColumnInfo(Subscription.class);
        long createRow = OsObject.createRow(table);
        map.put(subscription, Long.valueOf(createRow));
        Subscription subscription2 = subscription;
        String realmGet$subscriptionType = subscription2.realmGet$subscriptionType();
        if (realmGet$subscriptionType != null) {
            Table.nativeSetString(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, realmGet$subscriptionType, false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, false);
        }
        Date realmGet$expiration = subscription2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, realmGet$expiration.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, false);
        }
        return createRow;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Subscription.class);
        long nativePtr = table.getNativePtr();
        SubscriptionColumnInfo subscriptionColumnInfo = (SubscriptionColumnInfo) realm.getSchema().getColumnInfo(Subscription.class);
        while (it.hasNext()) {
            Subscription subscription = (Subscription) it.next();
            if (!map.containsKey(subscription)) {
                if (subscription instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscription;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(subscription, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                long createRow = OsObject.createRow(table);
                map.put(subscription, Long.valueOf(createRow));
                Subscription subscription2 = subscription;
                String realmGet$subscriptionType = subscription2.realmGet$subscriptionType();
                if (realmGet$subscriptionType != null) {
                    Table.nativeSetString(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, realmGet$subscriptionType, false);
                } else {
                    Table.nativeSetNull(nativePtr, subscriptionColumnInfo.subscriptionTypeIndex, createRow, false);
                }
                Date realmGet$expiration = subscription2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, realmGet$expiration.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, subscriptionColumnInfo.expirationIndex, createRow, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_SubscriptionRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(Subscription.class), false, Collections.emptyList());
        com_privacystar_core_data_model_SubscriptionRealmProxy com_privacystar_core_data_model_subscriptionrealmproxy = new com_privacystar_core_data_model_SubscriptionRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_subscriptionrealmproxy;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_SubscriptionRealmProxy com_privacystar_core_data_model_subscriptionrealmproxy = (com_privacystar_core_data_model_SubscriptionRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_subscriptionrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_subscriptionrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_subscriptionrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SubscriptionColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.Subscription, io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public Date realmGet$expiration() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.expirationIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.expirationIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.Subscription, io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public String realmGet$subscriptionType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.subscriptionTypeIndex);
    }

    @Override // com.privacystar.core.data.model.Subscription, io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public void realmSet$expiration(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.expirationIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.expirationIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.expirationIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.expirationIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Subscription, io.realm.com_privacystar_core_data_model_SubscriptionRealmProxyInterface
    public void realmSet$subscriptionType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.subscriptionTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.subscriptionTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.subscriptionTypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.subscriptionTypeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("Subscription = proxy[");
        sb.append("{subscriptionType:");
        sb.append(realmGet$subscriptionType() != null ? realmGet$subscriptionType() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{expiration:");
        sb.append(realmGet$expiration() != null ? realmGet$expiration() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
