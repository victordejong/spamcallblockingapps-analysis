package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy.class */
public class C10921x4fd3ceb5 extends SubscriptionStatusRealmObject implements RealmObjectProxy, AbstractC10922x33e87a04 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public SubscriptionStatusRealmObjectColumnInfo columnInfo;
    public ProxyState<SubscriptionStatusRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SubscriptionStatusRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy$SubscriptionStatusRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy$SubscriptionStatusRealmObjectColumnInfo.class */
    public static final class SubscriptionStatusRealmObjectColumnInfo extends ColumnInfo {
        public long cancelSurveyReasonIndex;
        public long expiryTimeMillisIndex;
        public long maxColumnIndexValue;
        public long paymentStatusIndex;
        public long priceAmountMicrosIndex;
        public long priceCurrencyCodeIndex;
        public long productIdIndex;
        public long startTimeMillisIndex;
        public long statusIndex;
        public long userCancellationTimeMillisIndex;

        public SubscriptionStatusRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public SubscriptionStatusRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(9);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
            this.productIdIndex = addColumnDetails("productId", "productId", objectSchemaInfo);
            this.startTimeMillisIndex = addColumnDetails("startTimeMillis", "startTimeMillis", objectSchemaInfo);
            this.expiryTimeMillisIndex = addColumnDetails("expiryTimeMillis", "expiryTimeMillis", objectSchemaInfo);
            this.priceCurrencyCodeIndex = addColumnDetails(IapProductRealmObject.PRICE_CURRENCY_CODE, IapProductRealmObject.PRICE_CURRENCY_CODE, objectSchemaInfo);
            this.priceAmountMicrosIndex = addColumnDetails(IapProductRealmObject.PRICE_AMOUNT_MICROS, IapProductRealmObject.PRICE_AMOUNT_MICROS, objectSchemaInfo);
            this.paymentStatusIndex = addColumnDetails("paymentStatus", "paymentStatus", objectSchemaInfo);
            this.userCancellationTimeMillisIndex = addColumnDetails("userCancellationTimeMillis", "userCancellationTimeMillis", objectSchemaInfo);
            this.cancelSurveyReasonIndex = addColumnDetails("cancelSurveyReason", "cancelSurveyReason", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new SubscriptionStatusRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo = (SubscriptionStatusRealmObjectColumnInfo) columnInfo;
            SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo2 = (SubscriptionStatusRealmObjectColumnInfo) columnInfo2;
            subscriptionStatusRealmObjectColumnInfo2.statusIndex = subscriptionStatusRealmObjectColumnInfo.statusIndex;
            subscriptionStatusRealmObjectColumnInfo2.productIdIndex = subscriptionStatusRealmObjectColumnInfo.productIdIndex;
            subscriptionStatusRealmObjectColumnInfo2.startTimeMillisIndex = subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex;
            subscriptionStatusRealmObjectColumnInfo2.expiryTimeMillisIndex = subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex;
            subscriptionStatusRealmObjectColumnInfo2.priceCurrencyCodeIndex = subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex;
            subscriptionStatusRealmObjectColumnInfo2.priceAmountMicrosIndex = subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex;
            subscriptionStatusRealmObjectColumnInfo2.paymentStatusIndex = subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex;
            subscriptionStatusRealmObjectColumnInfo2.userCancellationTimeMillisIndex = subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex;
            subscriptionStatusRealmObjectColumnInfo2.cancelSurveyReasonIndex = subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex;
            subscriptionStatusRealmObjectColumnInfo2.maxColumnIndexValue = subscriptionStatusRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10921x4fd3ceb5() {
        this.proxyState.setConstructionFinished();
    }

    public static SubscriptionStatusRealmObject copy(Realm realm, SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo, SubscriptionStatusRealmObject subscriptionStatusRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(subscriptionStatusRealmObject);
        if (realmObjectProxy != null) {
            return (SubscriptionStatusRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SubscriptionStatusRealmObject.class), subscriptionStatusRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.statusIndex, Integer.valueOf(subscriptionStatusRealmObject.realmGet$status()));
        osObjectBuilder.addString(subscriptionStatusRealmObjectColumnInfo.productIdIndex, subscriptionStatusRealmObject.realmGet$productId());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, subscriptionStatusRealmObject.realmGet$startTimeMillis());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, subscriptionStatusRealmObject.realmGet$expiryTimeMillis());
        osObjectBuilder.addString(subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, subscriptionStatusRealmObject.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, subscriptionStatusRealmObject.realmGet$priceAmountMicros());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, subscriptionStatusRealmObject.realmGet$paymentStatus());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, subscriptionStatusRealmObject.realmGet$userCancellationTimeMillis());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, subscriptionStatusRealmObject.realmGet$cancelSurveyReason());
        C10921x4fd3ceb5 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(subscriptionStatusRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10921x4fd3ceb5.SubscriptionStatusRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10921x4fd3ceb5.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_SubscriptionStatusRealmObjectRealmProxy$SubscriptionStatusRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject");
    }

    public static SubscriptionStatusRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SubscriptionStatusRealmObjectColumnInfo(osSchemaInfo);
    }

    public static SubscriptionStatusRealmObject createDetachedCopy(SubscriptionStatusRealmObject subscriptionStatusRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SubscriptionStatusRealmObject subscriptionStatusRealmObject2;
        if (i > i2 || subscriptionStatusRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(subscriptionStatusRealmObject);
        if (cacheData == null) {
            SubscriptionStatusRealmObject subscriptionStatusRealmObject3 = new SubscriptionStatusRealmObject();
            map.put(subscriptionStatusRealmObject, new RealmObjectProxy.CacheData<>(i, subscriptionStatusRealmObject3));
            subscriptionStatusRealmObject2 = subscriptionStatusRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (SubscriptionStatusRealmObject) cacheData.object;
        } else {
            subscriptionStatusRealmObject2 = (SubscriptionStatusRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        subscriptionStatusRealmObject2.realmSet$status(subscriptionStatusRealmObject.realmGet$status());
        subscriptionStatusRealmObject2.realmSet$productId(subscriptionStatusRealmObject.realmGet$productId());
        subscriptionStatusRealmObject2.realmSet$startTimeMillis(subscriptionStatusRealmObject.realmGet$startTimeMillis());
        subscriptionStatusRealmObject2.realmSet$expiryTimeMillis(subscriptionStatusRealmObject.realmGet$expiryTimeMillis());
        subscriptionStatusRealmObject2.realmSet$priceCurrencyCode(subscriptionStatusRealmObject.realmGet$priceCurrencyCode());
        subscriptionStatusRealmObject2.realmSet$priceAmountMicros(subscriptionStatusRealmObject.realmGet$priceAmountMicros());
        subscriptionStatusRealmObject2.realmSet$paymentStatus(subscriptionStatusRealmObject.realmGet$paymentStatus());
        subscriptionStatusRealmObject2.realmSet$userCancellationTimeMillis(subscriptionStatusRealmObject.realmGet$userCancellationTimeMillis());
        subscriptionStatusRealmObject2.realmSet$cancelSurveyReason(subscriptionStatusRealmObject.realmGet$cancelSurveyReason());
        return subscriptionStatusRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 9, 0);
        builder.addPersistedProperty("status", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("productId", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("startTimeMillis", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("expiryTimeMillis", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_CURRENCY_CODE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_AMOUNT_MICROS, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("paymentStatus", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("userCancellationTimeMillis", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("cancelSurveyReason", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10921x4fd3ceb5.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject");
    }

    @TargetApi(11)
    public static SubscriptionStatusRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SubscriptionStatusRealmObject subscriptionStatusRealmObject = new SubscriptionStatusRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$status(jsonReader.nextInt());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'status' to null.");
                }
            } else if (nextName.equals("productId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$productId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$productId(null);
                }
            } else if (nextName.equals("startTimeMillis")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$startTimeMillis(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$startTimeMillis(null);
                }
            } else if (nextName.equals("expiryTimeMillis")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$expiryTimeMillis(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$expiryTimeMillis(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_CURRENCY_CODE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$priceCurrencyCode(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$priceCurrencyCode(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_AMOUNT_MICROS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$priceAmountMicros(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$priceAmountMicros(null);
                }
            } else if (nextName.equals("paymentStatus")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$paymentStatus(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$paymentStatus(null);
                }
            } else if (nextName.equals("userCancellationTimeMillis")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    subscriptionStatusRealmObject.realmSet$userCancellationTimeMillis(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    subscriptionStatusRealmObject.realmSet$userCancellationTimeMillis(null);
                }
            } else if (!nextName.equals("cancelSurveyReason")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                subscriptionStatusRealmObject.realmSet$cancelSurveyReason(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                subscriptionStatusRealmObject.realmSet$cancelSurveyReason(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SubscriptionStatusRealmObject) realm.copyToRealm((Realm) subscriptionStatusRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'status'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, SubscriptionStatusRealmObject subscriptionStatusRealmObject, Map<RealmModel, Long> map) {
        if (subscriptionStatusRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscriptionStatusRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SubscriptionStatusRealmObject.class);
        long nativePtr = table.getNativePtr();
        SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo = (SubscriptionStatusRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SubscriptionStatusRealmObject.class);
        long j = subscriptionStatusRealmObjectColumnInfo.statusIndex;
        Integer valueOf = Integer.valueOf(subscriptionStatusRealmObject.realmGet$status());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, subscriptionStatusRealmObject.realmGet$status()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(subscriptionStatusRealmObject.realmGet$status()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(subscriptionStatusRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$productId = subscriptionStatusRealmObject.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.productIdIndex, nativeFindFirstInt, realmGet$productId, false);
        }
        Long realmGet$startTimeMillis = subscriptionStatusRealmObject.realmGet$startTimeMillis();
        if (realmGet$startTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, nativeFindFirstInt, realmGet$startTimeMillis.longValue(), false);
        }
        Long realmGet$expiryTimeMillis = subscriptionStatusRealmObject.realmGet$expiryTimeMillis();
        if (realmGet$expiryTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, nativeFindFirstInt, realmGet$expiryTimeMillis.longValue(), false);
        }
        String realmGet$priceCurrencyCode = subscriptionStatusRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstInt, realmGet$priceCurrencyCode, false);
        }
        Long realmGet$priceAmountMicros = subscriptionStatusRealmObject.realmGet$priceAmountMicros();
        if (realmGet$priceAmountMicros != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstInt, realmGet$priceAmountMicros.longValue(), false);
        }
        Integer realmGet$paymentStatus = subscriptionStatusRealmObject.realmGet$paymentStatus();
        if (realmGet$paymentStatus != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, nativeFindFirstInt, realmGet$paymentStatus.longValue(), false);
        }
        Long realmGet$userCancellationTimeMillis = subscriptionStatusRealmObject.realmGet$userCancellationTimeMillis();
        if (realmGet$userCancellationTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, nativeFindFirstInt, realmGet$userCancellationTimeMillis.longValue(), false);
        }
        Integer realmGet$cancelSurveyReason = subscriptionStatusRealmObject.realmGet$cancelSurveyReason();
        if (realmGet$cancelSurveyReason != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, nativeFindFirstInt, realmGet$cancelSurveyReason.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SubscriptionStatusRealmObject.class);
        long nativePtr = table.getNativePtr();
        SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo = (SubscriptionStatusRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SubscriptionStatusRealmObject.class);
        long j = subscriptionStatusRealmObjectColumnInfo.statusIndex;
        while (it.hasNext()) {
            SubscriptionStatusRealmObject subscriptionStatusRealmObject = (SubscriptionStatusRealmObject) it.next();
            if (!map.containsKey(subscriptionStatusRealmObject)) {
                if (subscriptionStatusRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscriptionStatusRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(subscriptionStatusRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Integer valueOf = Integer.valueOf(subscriptionStatusRealmObject.realmGet$status());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, subscriptionStatusRealmObject.realmGet$status()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(subscriptionStatusRealmObject.realmGet$status()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(subscriptionStatusRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$productId = subscriptionStatusRealmObject.realmGet$productId();
                if (realmGet$productId != null) {
                    Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.productIdIndex, nativeFindFirstInt, realmGet$productId, false);
                }
                Long realmGet$startTimeMillis = subscriptionStatusRealmObject.realmGet$startTimeMillis();
                if (realmGet$startTimeMillis != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, nativeFindFirstInt, realmGet$startTimeMillis.longValue(), false);
                }
                Long realmGet$expiryTimeMillis = subscriptionStatusRealmObject.realmGet$expiryTimeMillis();
                if (realmGet$expiryTimeMillis != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, nativeFindFirstInt, realmGet$expiryTimeMillis.longValue(), false);
                }
                String realmGet$priceCurrencyCode = subscriptionStatusRealmObject.realmGet$priceCurrencyCode();
                if (realmGet$priceCurrencyCode != null) {
                    Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstInt, realmGet$priceCurrencyCode, false);
                }
                Long realmGet$priceAmountMicros = subscriptionStatusRealmObject.realmGet$priceAmountMicros();
                if (realmGet$priceAmountMicros != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstInt, realmGet$priceAmountMicros.longValue(), false);
                }
                Integer realmGet$paymentStatus = subscriptionStatusRealmObject.realmGet$paymentStatus();
                if (realmGet$paymentStatus != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, nativeFindFirstInt, realmGet$paymentStatus.longValue(), false);
                }
                Long realmGet$userCancellationTimeMillis = subscriptionStatusRealmObject.realmGet$userCancellationTimeMillis();
                if (realmGet$userCancellationTimeMillis != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, nativeFindFirstInt, realmGet$userCancellationTimeMillis.longValue(), false);
                }
                Integer realmGet$cancelSurveyReason = subscriptionStatusRealmObject.realmGet$cancelSurveyReason();
                if (realmGet$cancelSurveyReason != null) {
                    Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, nativeFindFirstInt, realmGet$cancelSurveyReason.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SubscriptionStatusRealmObject subscriptionStatusRealmObject, Map<RealmModel, Long> map) {
        if (subscriptionStatusRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) subscriptionStatusRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SubscriptionStatusRealmObject.class);
        long nativePtr = table.getNativePtr();
        SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo = (SubscriptionStatusRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SubscriptionStatusRealmObject.class);
        long j = subscriptionStatusRealmObjectColumnInfo.statusIndex;
        long nativeFindFirstInt = Integer.valueOf(subscriptionStatusRealmObject.realmGet$status()) != null ? Table.nativeFindFirstInt(nativePtr, j, subscriptionStatusRealmObject.realmGet$status()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(subscriptionStatusRealmObject.realmGet$status()));
        }
        map.put(subscriptionStatusRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$productId = subscriptionStatusRealmObject.realmGet$productId();
        if (realmGet$productId != null) {
            Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.productIdIndex, nativeFindFirstInt, realmGet$productId, false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.productIdIndex, nativeFindFirstInt, false);
        }
        Long realmGet$startTimeMillis = subscriptionStatusRealmObject.realmGet$startTimeMillis();
        if (realmGet$startTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, nativeFindFirstInt, realmGet$startTimeMillis.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, nativeFindFirstInt, false);
        }
        Long realmGet$expiryTimeMillis = subscriptionStatusRealmObject.realmGet$expiryTimeMillis();
        if (realmGet$expiryTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, nativeFindFirstInt, realmGet$expiryTimeMillis.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, nativeFindFirstInt, false);
        }
        String realmGet$priceCurrencyCode = subscriptionStatusRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstInt, realmGet$priceCurrencyCode, false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstInt, false);
        }
        Long realmGet$priceAmountMicros = subscriptionStatusRealmObject.realmGet$priceAmountMicros();
        if (realmGet$priceAmountMicros != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstInt, realmGet$priceAmountMicros.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$paymentStatus = subscriptionStatusRealmObject.realmGet$paymentStatus();
        if (realmGet$paymentStatus != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, nativeFindFirstInt, realmGet$paymentStatus.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, nativeFindFirstInt, false);
        }
        Long realmGet$userCancellationTimeMillis = subscriptionStatusRealmObject.realmGet$userCancellationTimeMillis();
        if (realmGet$userCancellationTimeMillis != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, nativeFindFirstInt, realmGet$userCancellationTimeMillis.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$cancelSurveyReason = subscriptionStatusRealmObject.realmGet$cancelSurveyReason();
        if (realmGet$cancelSurveyReason != null) {
            Table.nativeSetLong(nativePtr, subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, nativeFindFirstInt, realmGet$cancelSurveyReason.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10921x4fd3ceb5.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10921x4fd3ceb5 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SubscriptionStatusRealmObject.class), false, Collections.emptyList());
        C10921x4fd3ceb5 gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy = new C10921x4fd3ceb5();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy;
    }

    public static SubscriptionStatusRealmObject update(Realm realm, SubscriptionStatusRealmObjectColumnInfo subscriptionStatusRealmObjectColumnInfo, SubscriptionStatusRealmObject subscriptionStatusRealmObject, SubscriptionStatusRealmObject subscriptionStatusRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SubscriptionStatusRealmObject.class), subscriptionStatusRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.statusIndex, Integer.valueOf(subscriptionStatusRealmObject2.realmGet$status()));
        osObjectBuilder.addString(subscriptionStatusRealmObjectColumnInfo.productIdIndex, subscriptionStatusRealmObject2.realmGet$productId());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.startTimeMillisIndex, subscriptionStatusRealmObject2.realmGet$startTimeMillis());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.expiryTimeMillisIndex, subscriptionStatusRealmObject2.realmGet$expiryTimeMillis());
        osObjectBuilder.addString(subscriptionStatusRealmObjectColumnInfo.priceCurrencyCodeIndex, subscriptionStatusRealmObject2.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.priceAmountMicrosIndex, subscriptionStatusRealmObject2.realmGet$priceAmountMicros());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.paymentStatusIndex, subscriptionStatusRealmObject2.realmGet$paymentStatus());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.userCancellationTimeMillisIndex, subscriptionStatusRealmObject2.realmGet$userCancellationTimeMillis());
        osObjectBuilder.addInteger(subscriptionStatusRealmObjectColumnInfo.cancelSurveyReasonIndex, subscriptionStatusRealmObject2.realmGet$cancelSurveyReason());
        osObjectBuilder.updateExistingObject();
        return subscriptionStatusRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10921x4fd3ceb5.class != obj.getClass()) {
            return false;
        }
        C10921x4fd3ceb5 gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy = (C10921x4fd3ceb5) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_subscriptionstatusrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SubscriptionStatusRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Integer realmGet$cancelSurveyReason() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.cancelSurveyReasonIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.cancelSurveyReasonIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Long realmGet$expiryTimeMillis() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.expiryTimeMillisIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.expiryTimeMillisIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Integer realmGet$paymentStatus() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.paymentStatusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.paymentStatusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Long realmGet$priceAmountMicros() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.priceAmountMicrosIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.priceAmountMicrosIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public String realmGet$priceCurrencyCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priceCurrencyCodeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public String realmGet$productId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productIdIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Long realmGet$startTimeMillis() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.startTimeMillisIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.startTimeMillisIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public int realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.statusIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public Long realmGet$userCancellationTimeMillis() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.userCancellationTimeMillisIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.userCancellationTimeMillisIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$cancelSurveyReason(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.cancelSurveyReasonIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.cancelSurveyReasonIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.cancelSurveyReasonIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.cancelSurveyReasonIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$expiryTimeMillis(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.expiryTimeMillisIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.expiryTimeMillisIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.expiryTimeMillisIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.expiryTimeMillisIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$paymentStatus(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.paymentStatusIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.paymentStatusIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.paymentStatusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.paymentStatusIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$priceAmountMicros(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.priceAmountMicrosIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.priceAmountMicrosIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.priceAmountMicrosIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.priceAmountMicrosIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$priceCurrencyCode(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.priceCurrencyCodeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.priceCurrencyCodeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.priceCurrencyCodeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.priceCurrencyCodeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
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

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$startTimeMillis(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.startTimeMillisIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.startTimeMillisIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.startTimeMillisIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.startTimeMillisIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$status(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'status' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SubscriptionStatusRealmObject, io.realm.AbstractC10922x33e87a04
    public void realmSet$userCancellationTimeMillis(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.userCancellationTimeMillisIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.userCancellationTimeMillisIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.userCancellationTimeMillisIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.userCancellationTimeMillisIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }
}
