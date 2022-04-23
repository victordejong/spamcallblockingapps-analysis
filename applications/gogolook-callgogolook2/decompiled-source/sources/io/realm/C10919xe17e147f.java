package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy.class */
public class C10919xe17e147f extends SkuDetailsRealmObject implements RealmObjectProxy, AbstractC10920x6eef177a {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public SkuDetailsRealmObjectColumnInfo columnInfo;
    public ProxyState<SkuDetailsRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "SkuDetailsRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy$SkuDetailsRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy$SkuDetailsRealmObjectColumnInfo.class */
    public static final class SkuDetailsRealmObjectColumnInfo extends ColumnInfo {
        public long freeTrialPeriodIndex;
        public long introductoryPriceAmountMicrosIndex;
        public long introductoryPriceIndex;
        public long introductoryPricePeriodIndex;
        public long maxColumnIndexValue;
        public long originalJsonIndex;
        public long originalPriceAmountMicrosIndex;
        public long originalPriceIndex;
        public long priceAmountMicrosIndex;
        public long priceCurrencyCodeIndex;
        public long priceIndex;
        public long skuIndex;
        public long subscriptionPeriodIndex;
        public long titleIndex;
        public long typeIndex;

        public SkuDetailsRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public SkuDetailsRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(14);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.skuIndex = addColumnDetails(SkuDetailsRealmObject.SKU, SkuDetailsRealmObject.SKU, objectSchemaInfo);
            this.originalJsonIndex = addColumnDetails("originalJson", "originalJson", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.priceIndex = addColumnDetails("price", "price", objectSchemaInfo);
            this.priceCurrencyCodeIndex = addColumnDetails(IapProductRealmObject.PRICE_CURRENCY_CODE, IapProductRealmObject.PRICE_CURRENCY_CODE, objectSchemaInfo);
            this.priceAmountMicrosIndex = addColumnDetails(IapProductRealmObject.PRICE_AMOUNT_MICROS, IapProductRealmObject.PRICE_AMOUNT_MICROS, objectSchemaInfo);
            this.originalPriceIndex = addColumnDetails("originalPrice", "originalPrice", objectSchemaInfo);
            this.originalPriceAmountMicrosIndex = addColumnDetails("originalPriceAmountMicros", "originalPriceAmountMicros", objectSchemaInfo);
            this.titleIndex = addColumnDetails("title", "title", objectSchemaInfo);
            this.subscriptionPeriodIndex = addColumnDetails(IapProductRealmObject.SUBSCRIPTION_PERIOD, IapProductRealmObject.SUBSCRIPTION_PERIOD, objectSchemaInfo);
            this.freeTrialPeriodIndex = addColumnDetails("freeTrialPeriod", "freeTrialPeriod", objectSchemaInfo);
            this.introductoryPriceIndex = addColumnDetails("introductoryPrice", "introductoryPrice", objectSchemaInfo);
            this.introductoryPriceAmountMicrosIndex = addColumnDetails("introductoryPriceAmountMicros", "introductoryPriceAmountMicros", objectSchemaInfo);
            this.introductoryPricePeriodIndex = addColumnDetails("introductoryPricePeriod", "introductoryPricePeriod", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new SkuDetailsRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo = (SkuDetailsRealmObjectColumnInfo) columnInfo;
            SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo2 = (SkuDetailsRealmObjectColumnInfo) columnInfo2;
            skuDetailsRealmObjectColumnInfo2.skuIndex = skuDetailsRealmObjectColumnInfo.skuIndex;
            skuDetailsRealmObjectColumnInfo2.originalJsonIndex = skuDetailsRealmObjectColumnInfo.originalJsonIndex;
            skuDetailsRealmObjectColumnInfo2.typeIndex = skuDetailsRealmObjectColumnInfo.typeIndex;
            skuDetailsRealmObjectColumnInfo2.priceIndex = skuDetailsRealmObjectColumnInfo.priceIndex;
            skuDetailsRealmObjectColumnInfo2.priceCurrencyCodeIndex = skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex;
            skuDetailsRealmObjectColumnInfo2.priceAmountMicrosIndex = skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex;
            skuDetailsRealmObjectColumnInfo2.originalPriceIndex = skuDetailsRealmObjectColumnInfo.originalPriceIndex;
            skuDetailsRealmObjectColumnInfo2.originalPriceAmountMicrosIndex = skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex;
            skuDetailsRealmObjectColumnInfo2.titleIndex = skuDetailsRealmObjectColumnInfo.titleIndex;
            skuDetailsRealmObjectColumnInfo2.subscriptionPeriodIndex = skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex;
            skuDetailsRealmObjectColumnInfo2.freeTrialPeriodIndex = skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex;
            skuDetailsRealmObjectColumnInfo2.introductoryPriceIndex = skuDetailsRealmObjectColumnInfo.introductoryPriceIndex;
            skuDetailsRealmObjectColumnInfo2.introductoryPriceAmountMicrosIndex = skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex;
            skuDetailsRealmObjectColumnInfo2.introductoryPricePeriodIndex = skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex;
            skuDetailsRealmObjectColumnInfo2.maxColumnIndexValue = skuDetailsRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10919xe17e147f() {
        this.proxyState.setConstructionFinished();
    }

    public static SkuDetailsRealmObject copy(Realm realm, SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo, SkuDetailsRealmObject skuDetailsRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(skuDetailsRealmObject);
        if (realmObjectProxy != null) {
            return (SkuDetailsRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SkuDetailsRealmObject.class), skuDetailsRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.skuIndex, skuDetailsRealmObject.realmGet$sku());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.originalJsonIndex, skuDetailsRealmObject.realmGet$originalJson());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.typeIndex, skuDetailsRealmObject.realmGet$type());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.priceIndex, skuDetailsRealmObject.realmGet$price());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, skuDetailsRealmObject.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject.realmGet$priceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.originalPriceIndex, skuDetailsRealmObject.realmGet$originalPrice());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject.realmGet$originalPriceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.titleIndex, skuDetailsRealmObject.realmGet$title());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, skuDetailsRealmObject.realmGet$subscriptionPeriod());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, skuDetailsRealmObject.realmGet$freeTrialPeriod());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, skuDetailsRealmObject.realmGet$introductoryPrice());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, skuDetailsRealmObject.realmGet$introductoryPricePeriod());
        C10919xe17e147f newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(skuDetailsRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10919xe17e147f.SkuDetailsRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10919xe17e147f.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_SkuDetailsRealmObjectRealmProxy$SkuDetailsRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject");
    }

    public static SkuDetailsRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new SkuDetailsRealmObjectColumnInfo(osSchemaInfo);
    }

    public static SkuDetailsRealmObject createDetachedCopy(SkuDetailsRealmObject skuDetailsRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        SkuDetailsRealmObject skuDetailsRealmObject2;
        if (i > i2 || skuDetailsRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(skuDetailsRealmObject);
        if (cacheData == null) {
            SkuDetailsRealmObject skuDetailsRealmObject3 = new SkuDetailsRealmObject();
            map.put(skuDetailsRealmObject, new RealmObjectProxy.CacheData<>(i, skuDetailsRealmObject3));
            skuDetailsRealmObject2 = skuDetailsRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (SkuDetailsRealmObject) cacheData.object;
        } else {
            skuDetailsRealmObject2 = (SkuDetailsRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        skuDetailsRealmObject2.realmSet$sku(skuDetailsRealmObject.realmGet$sku());
        skuDetailsRealmObject2.realmSet$originalJson(skuDetailsRealmObject.realmGet$originalJson());
        skuDetailsRealmObject2.realmSet$type(skuDetailsRealmObject.realmGet$type());
        skuDetailsRealmObject2.realmSet$price(skuDetailsRealmObject.realmGet$price());
        skuDetailsRealmObject2.realmSet$priceCurrencyCode(skuDetailsRealmObject.realmGet$priceCurrencyCode());
        skuDetailsRealmObject2.realmSet$priceAmountMicros(skuDetailsRealmObject.realmGet$priceAmountMicros());
        skuDetailsRealmObject2.realmSet$originalPrice(skuDetailsRealmObject.realmGet$originalPrice());
        skuDetailsRealmObject2.realmSet$originalPriceAmountMicros(skuDetailsRealmObject.realmGet$originalPriceAmountMicros());
        skuDetailsRealmObject2.realmSet$title(skuDetailsRealmObject.realmGet$title());
        skuDetailsRealmObject2.realmSet$subscriptionPeriod(skuDetailsRealmObject.realmGet$subscriptionPeriod());
        skuDetailsRealmObject2.realmSet$freeTrialPeriod(skuDetailsRealmObject.realmGet$freeTrialPeriod());
        skuDetailsRealmObject2.realmSet$introductoryPrice(skuDetailsRealmObject.realmGet$introductoryPrice());
        skuDetailsRealmObject2.realmSet$introductoryPriceAmountMicros(skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros());
        skuDetailsRealmObject2.realmSet$introductoryPricePeriod(skuDetailsRealmObject.realmGet$introductoryPricePeriod());
        return skuDetailsRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 14, 0);
        builder.addPersistedProperty(SkuDetailsRealmObject.SKU, RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("originalJson", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("type", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("price", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_CURRENCY_CODE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_AMOUNT_MICROS, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("originalPrice", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("originalPriceAmountMicros", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("title", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.SUBSCRIPTION_PERIOD, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("freeTrialPeriod", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("introductoryPrice", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("introductoryPriceAmountMicros", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("introductoryPricePeriod", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10919xe17e147f.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject");
    }

    @TargetApi(11)
    public static SkuDetailsRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        SkuDetailsRealmObject skuDetailsRealmObject = new SkuDetailsRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(SkuDetailsRealmObject.SKU)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$sku(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$sku(null);
                }
                z = true;
            } else if (nextName.equals("originalJson")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$originalJson(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$originalJson(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$type(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$type(null);
                }
            } else if (nextName.equals("price")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$price(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$price(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_CURRENCY_CODE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$priceCurrencyCode(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$priceCurrencyCode(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_AMOUNT_MICROS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$priceAmountMicros(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'priceAmountMicros' to null.");
                }
            } else if (nextName.equals("originalPrice")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$originalPrice(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$originalPrice(null);
                }
            } else if (nextName.equals("originalPriceAmountMicros")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$originalPriceAmountMicros(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'originalPriceAmountMicros' to null.");
                }
            } else if (nextName.equals("title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$title(null);
                }
            } else if (nextName.equals(IapProductRealmObject.SUBSCRIPTION_PERIOD)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$subscriptionPeriod(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$subscriptionPeriod(null);
                }
            } else if (nextName.equals("freeTrialPeriod")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$freeTrialPeriod(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$freeTrialPeriod(null);
                }
            } else if (nextName.equals("introductoryPrice")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$introductoryPrice(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    skuDetailsRealmObject.realmSet$introductoryPrice(null);
                }
            } else if (nextName.equals("introductoryPriceAmountMicros")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    skuDetailsRealmObject.realmSet$introductoryPriceAmountMicros(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'introductoryPriceAmountMicros' to null.");
                }
            } else if (!nextName.equals("introductoryPricePeriod")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                skuDetailsRealmObject.realmSet$introductoryPricePeriod(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                skuDetailsRealmObject.realmSet$introductoryPricePeriod(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (SkuDetailsRealmObject) realm.copyToRealm((Realm) skuDetailsRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'sku'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, SkuDetailsRealmObject skuDetailsRealmObject, Map<RealmModel, Long> map) {
        if (skuDetailsRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) skuDetailsRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SkuDetailsRealmObject.class);
        long nativePtr = table.getNativePtr();
        SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo = (SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class);
        long j = skuDetailsRealmObjectColumnInfo.skuIndex;
        String realmGet$sku = skuDetailsRealmObject.realmGet$sku();
        long nativeFindFirstNull = realmGet$sku == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$sku);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$sku);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$sku);
        }
        map.put(skuDetailsRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$originalJson = skuDetailsRealmObject.realmGet$originalJson();
        if (realmGet$originalJson != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, realmGet$originalJson, false);
        }
        String realmGet$type = skuDetailsRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
        }
        String realmGet$price = skuDetailsRealmObject.realmGet$price();
        if (realmGet$price != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
        }
        String realmGet$priceCurrencyCode = skuDetailsRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$priceAmountMicros(), false);
        String realmGet$originalPrice = skuDetailsRealmObject.realmGet$originalPrice();
        if (realmGet$originalPrice != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, realmGet$originalPrice, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$originalPriceAmountMicros(), false);
        String realmGet$title = skuDetailsRealmObject.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
        }
        String realmGet$subscriptionPeriod = skuDetailsRealmObject.realmGet$subscriptionPeriod();
        if (realmGet$subscriptionPeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
        }
        String realmGet$freeTrialPeriod = skuDetailsRealmObject.realmGet$freeTrialPeriod();
        if (realmGet$freeTrialPeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, realmGet$freeTrialPeriod, false);
        }
        String realmGet$introductoryPrice = skuDetailsRealmObject.realmGet$introductoryPrice();
        if (realmGet$introductoryPrice != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, realmGet$introductoryPrice, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros(), false);
        String realmGet$introductoryPricePeriod = skuDetailsRealmObject.realmGet$introductoryPricePeriod();
        if (realmGet$introductoryPricePeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, realmGet$introductoryPricePeriod, false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SkuDetailsRealmObject.class);
        long nativePtr = table.getNativePtr();
        SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo = (SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class);
        long j = skuDetailsRealmObjectColumnInfo.skuIndex;
        while (it.hasNext()) {
            SkuDetailsRealmObject skuDetailsRealmObject = (SkuDetailsRealmObject) it.next();
            if (!map.containsKey(skuDetailsRealmObject)) {
                if (skuDetailsRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) skuDetailsRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(skuDetailsRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$sku = skuDetailsRealmObject.realmGet$sku();
                long nativeFindFirstNull = realmGet$sku == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$sku);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$sku);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$sku);
                }
                map.put(skuDetailsRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$originalJson = skuDetailsRealmObject.realmGet$originalJson();
                if (realmGet$originalJson != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, realmGet$originalJson, false);
                }
                String realmGet$type = skuDetailsRealmObject.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
                }
                String realmGet$price = skuDetailsRealmObject.realmGet$price();
                if (realmGet$price != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
                }
                String realmGet$priceCurrencyCode = skuDetailsRealmObject.realmGet$priceCurrencyCode();
                if (realmGet$priceCurrencyCode != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$priceAmountMicros(), false);
                String realmGet$originalPrice = skuDetailsRealmObject.realmGet$originalPrice();
                if (realmGet$originalPrice != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, realmGet$originalPrice, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$originalPriceAmountMicros(), false);
                String realmGet$title = skuDetailsRealmObject.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
                }
                String realmGet$subscriptionPeriod = skuDetailsRealmObject.realmGet$subscriptionPeriod();
                if (realmGet$subscriptionPeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
                }
                String realmGet$freeTrialPeriod = skuDetailsRealmObject.realmGet$freeTrialPeriod();
                if (realmGet$freeTrialPeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, realmGet$freeTrialPeriod, false);
                }
                String realmGet$introductoryPrice = skuDetailsRealmObject.realmGet$introductoryPrice();
                if (realmGet$introductoryPrice != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, realmGet$introductoryPrice, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros(), false);
                String realmGet$introductoryPricePeriod = skuDetailsRealmObject.realmGet$introductoryPricePeriod();
                if (realmGet$introductoryPricePeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, realmGet$introductoryPricePeriod, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, SkuDetailsRealmObject skuDetailsRealmObject, Map<RealmModel, Long> map) {
        if (skuDetailsRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) skuDetailsRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(SkuDetailsRealmObject.class);
        long nativePtr = table.getNativePtr();
        SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo = (SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class);
        long j = skuDetailsRealmObjectColumnInfo.skuIndex;
        String realmGet$sku = skuDetailsRealmObject.realmGet$sku();
        long nativeFindFirstNull = realmGet$sku == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$sku);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$sku);
        }
        map.put(skuDetailsRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$originalJson = skuDetailsRealmObject.realmGet$originalJson();
        if (realmGet$originalJson != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, realmGet$originalJson, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, false);
        }
        String realmGet$type = skuDetailsRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, false);
        }
        String realmGet$price = skuDetailsRealmObject.realmGet$price();
        if (realmGet$price != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, false);
        }
        String realmGet$priceCurrencyCode = skuDetailsRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$priceAmountMicros(), false);
        String realmGet$originalPrice = skuDetailsRealmObject.realmGet$originalPrice();
        if (realmGet$originalPrice != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, realmGet$originalPrice, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$originalPriceAmountMicros(), false);
        String realmGet$title = skuDetailsRealmObject.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, false);
        }
        String realmGet$subscriptionPeriod = skuDetailsRealmObject.realmGet$subscriptionPeriod();
        if (realmGet$subscriptionPeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, false);
        }
        String realmGet$freeTrialPeriod = skuDetailsRealmObject.realmGet$freeTrialPeriod();
        if (realmGet$freeTrialPeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, realmGet$freeTrialPeriod, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, false);
        }
        String realmGet$introductoryPrice = skuDetailsRealmObject.realmGet$introductoryPrice();
        if (realmGet$introductoryPrice != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, realmGet$introductoryPrice, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros(), false);
        String realmGet$introductoryPricePeriod = skuDetailsRealmObject.realmGet$introductoryPricePeriod();
        if (realmGet$introductoryPricePeriod != null) {
            Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, realmGet$introductoryPricePeriod, false);
        } else {
            Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(SkuDetailsRealmObject.class);
        long nativePtr = table.getNativePtr();
        SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo = (SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class);
        long j = skuDetailsRealmObjectColumnInfo.skuIndex;
        while (it.hasNext()) {
            SkuDetailsRealmObject skuDetailsRealmObject = (SkuDetailsRealmObject) it.next();
            if (!map.containsKey(skuDetailsRealmObject)) {
                if (skuDetailsRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) skuDetailsRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(skuDetailsRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$sku = skuDetailsRealmObject.realmGet$sku();
                long nativeFindFirstNull = realmGet$sku == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$sku);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$sku);
                }
                map.put(skuDetailsRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$originalJson = skuDetailsRealmObject.realmGet$originalJson();
                if (realmGet$originalJson != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, realmGet$originalJson, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.originalJsonIndex, nativeFindFirstNull, false);
                }
                String realmGet$type = skuDetailsRealmObject.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, false);
                }
                String realmGet$price = skuDetailsRealmObject.realmGet$price();
                if (realmGet$price != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, false);
                }
                String realmGet$priceCurrencyCode = skuDetailsRealmObject.realmGet$priceCurrencyCode();
                if (realmGet$priceCurrencyCode != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$priceAmountMicros(), false);
                String realmGet$originalPrice = skuDetailsRealmObject.realmGet$originalPrice();
                if (realmGet$originalPrice != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, realmGet$originalPrice, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$originalPriceAmountMicros(), false);
                String realmGet$title = skuDetailsRealmObject.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, false);
                }
                String realmGet$subscriptionPeriod = skuDetailsRealmObject.realmGet$subscriptionPeriod();
                if (realmGet$subscriptionPeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, false);
                }
                String realmGet$freeTrialPeriod = skuDetailsRealmObject.realmGet$freeTrialPeriod();
                if (realmGet$freeTrialPeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, realmGet$freeTrialPeriod, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, nativeFindFirstNull, false);
                }
                String realmGet$introductoryPrice = skuDetailsRealmObject.realmGet$introductoryPrice();
                if (realmGet$introductoryPrice != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, realmGet$introductoryPrice, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, nativeFindFirstNull, skuDetailsRealmObject.realmGet$introductoryPriceAmountMicros(), false);
                String realmGet$introductoryPricePeriod = skuDetailsRealmObject.realmGet$introductoryPricePeriod();
                if (realmGet$introductoryPricePeriod != null) {
                    Table.nativeSetString(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, realmGet$introductoryPricePeriod, false);
                } else {
                    Table.nativeSetNull(nativePtr, skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, nativeFindFirstNull, false);
                }
            }
        }
    }

    public static C10919xe17e147f newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(SkuDetailsRealmObject.class), false, Collections.emptyList());
        C10919xe17e147f gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy = new C10919xe17e147f();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy;
    }

    public static SkuDetailsRealmObject update(Realm realm, SkuDetailsRealmObjectColumnInfo skuDetailsRealmObjectColumnInfo, SkuDetailsRealmObject skuDetailsRealmObject, SkuDetailsRealmObject skuDetailsRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(SkuDetailsRealmObject.class), skuDetailsRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.skuIndex, skuDetailsRealmObject2.realmGet$sku());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.originalJsonIndex, skuDetailsRealmObject2.realmGet$originalJson());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.typeIndex, skuDetailsRealmObject2.realmGet$type());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.priceIndex, skuDetailsRealmObject2.realmGet$price());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.priceCurrencyCodeIndex, skuDetailsRealmObject2.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.priceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject2.realmGet$priceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.originalPriceIndex, skuDetailsRealmObject2.realmGet$originalPrice());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.originalPriceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject2.realmGet$originalPriceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.titleIndex, skuDetailsRealmObject2.realmGet$title());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.subscriptionPeriodIndex, skuDetailsRealmObject2.realmGet$subscriptionPeriod());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.freeTrialPeriodIndex, skuDetailsRealmObject2.realmGet$freeTrialPeriod());
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.introductoryPriceIndex, skuDetailsRealmObject2.realmGet$introductoryPrice());
        osObjectBuilder.addInteger(skuDetailsRealmObjectColumnInfo.introductoryPriceAmountMicrosIndex, Long.valueOf(skuDetailsRealmObject2.realmGet$introductoryPriceAmountMicros()));
        osObjectBuilder.addString(skuDetailsRealmObjectColumnInfo.introductoryPricePeriodIndex, skuDetailsRealmObject2.realmGet$introductoryPricePeriod());
        osObjectBuilder.updateExistingObject();
        return skuDetailsRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10919xe17e147f.class != obj.getClass()) {
            return false;
        }
        C10919xe17e147f gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy = (C10919xe17e147f) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_skudetailsrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (SkuDetailsRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$freeTrialPeriod() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.freeTrialPeriodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$introductoryPrice() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.introductoryPriceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public long realmGet$introductoryPriceAmountMicros() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.introductoryPriceAmountMicrosIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$introductoryPricePeriod() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.introductoryPricePeriodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$originalJson() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.originalJsonIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$originalPrice() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.originalPriceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public long realmGet$originalPriceAmountMicros() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.originalPriceAmountMicrosIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$price() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public long realmGet$priceAmountMicros() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.priceAmountMicrosIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$priceCurrencyCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priceCurrencyCodeIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$sku() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.skuIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$subscriptionPeriod() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.subscriptionPeriodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$title() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.titleIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public String realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$freeTrialPeriod(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.freeTrialPeriodIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.freeTrialPeriodIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.freeTrialPeriodIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.freeTrialPeriodIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$introductoryPrice(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.introductoryPriceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.introductoryPriceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.introductoryPriceIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.introductoryPriceIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$introductoryPriceAmountMicros(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.introductoryPriceAmountMicrosIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.introductoryPriceAmountMicrosIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$introductoryPricePeriod(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.introductoryPricePeriodIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.introductoryPricePeriodIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.introductoryPricePeriodIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.introductoryPricePeriodIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$originalJson(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.originalJsonIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.originalJsonIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.originalJsonIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.originalJsonIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$originalPrice(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.originalPriceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.originalPriceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.originalPriceIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.originalPriceIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$originalPriceAmountMicros(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.originalPriceAmountMicrosIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.originalPriceAmountMicrosIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$price(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.priceIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.priceIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.priceIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.priceIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$priceAmountMicros(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.priceAmountMicrosIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.priceAmountMicrosIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
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

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$sku(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'sku' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$subscriptionPeriod(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.subscriptionPeriodIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.subscriptionPeriodIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.subscriptionPeriodIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.subscriptionPeriodIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$title(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.titleIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.titleIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.titleIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.titleIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject, io.realm.AbstractC10920x6eef177a
    public void realmSet$type(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.typeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.typeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.typeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.typeIndex, row$realm.getIndex(), str, true);
            }
        }
    }
}
