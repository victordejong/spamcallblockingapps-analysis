package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import gogolook.callgogolook2.realm.obj.iap.SkuDetailsRealmObject;
import io.realm.BaseRealm;
import io.realm.C10919xe17e147f;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy.class */
public class C10917x2535fbf0 extends PlanProductRealmObject implements RealmObjectProxy, AbstractC10918x8295ff29 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public PlanProductRealmObjectColumnInfo columnInfo;
    public ProxyState<PlanProductRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "PlanProductRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy$PlanProductRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy$PlanProductRealmObjectColumnInfo.class */
    public static final class PlanProductRealmObjectColumnInfo extends ColumnInfo {
        public long descIndex;
        public long discountIndex;
        public long marketIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long offerTypeIndex;
        public long periodIndex;
        public long productIdIndex;
        public long productTypeIndex;
        public long promoTypeIndex;
        public long promotionIndex;
        public long skuDetailsIndex;
        public long stopSaleTimeIndex;

        public PlanProductRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public PlanProductRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(12);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.productIdIndex = addColumnDetails("productId", "productId", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.descIndex = addColumnDetails("desc", "desc", objectSchemaInfo);
            this.marketIndex = addColumnDetails(PlanProductRealmObject.MARKET, PlanProductRealmObject.MARKET, objectSchemaInfo);
            this.promotionIndex = addColumnDetails(PlanProductRealmObject.PROMOTION, PlanProductRealmObject.PROMOTION, objectSchemaInfo);
            this.stopSaleTimeIndex = addColumnDetails(PlanProductRealmObject.STOP_SALE_TIME, PlanProductRealmObject.STOP_SALE_TIME, objectSchemaInfo);
            this.productTypeIndex = addColumnDetails("productType", "productType", objectSchemaInfo);
            this.offerTypeIndex = addColumnDetails(PlanProductRealmObject.OFFER_TYPE, PlanProductRealmObject.OFFER_TYPE, objectSchemaInfo);
            this.skuDetailsIndex = addColumnDetails(PlanProductRealmObject.SKU_DETAILS, PlanProductRealmObject.SKU_DETAILS, objectSchemaInfo);
            this.periodIndex = addColumnDetails("period", "period", objectSchemaInfo);
            this.promoTypeIndex = addColumnDetails(PlanProductRealmObject.PROMO_TYPE, PlanProductRealmObject.PROMO_TYPE, objectSchemaInfo);
            this.discountIndex = addColumnDetails(PlanProductRealmObject.DISCOUNT, PlanProductRealmObject.DISCOUNT, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new PlanProductRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo = (PlanProductRealmObjectColumnInfo) columnInfo;
            PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo2 = (PlanProductRealmObjectColumnInfo) columnInfo2;
            planProductRealmObjectColumnInfo2.productIdIndex = planProductRealmObjectColumnInfo.productIdIndex;
            planProductRealmObjectColumnInfo2.nameIndex = planProductRealmObjectColumnInfo.nameIndex;
            planProductRealmObjectColumnInfo2.descIndex = planProductRealmObjectColumnInfo.descIndex;
            planProductRealmObjectColumnInfo2.marketIndex = planProductRealmObjectColumnInfo.marketIndex;
            planProductRealmObjectColumnInfo2.promotionIndex = planProductRealmObjectColumnInfo.promotionIndex;
            planProductRealmObjectColumnInfo2.stopSaleTimeIndex = planProductRealmObjectColumnInfo.stopSaleTimeIndex;
            planProductRealmObjectColumnInfo2.productTypeIndex = planProductRealmObjectColumnInfo.productTypeIndex;
            planProductRealmObjectColumnInfo2.offerTypeIndex = planProductRealmObjectColumnInfo.offerTypeIndex;
            planProductRealmObjectColumnInfo2.skuDetailsIndex = planProductRealmObjectColumnInfo.skuDetailsIndex;
            planProductRealmObjectColumnInfo2.periodIndex = planProductRealmObjectColumnInfo.periodIndex;
            planProductRealmObjectColumnInfo2.promoTypeIndex = planProductRealmObjectColumnInfo.promoTypeIndex;
            planProductRealmObjectColumnInfo2.discountIndex = planProductRealmObjectColumnInfo.discountIndex;
            planProductRealmObjectColumnInfo2.maxColumnIndexValue = planProductRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10917x2535fbf0() {
        this.proxyState.setConstructionFinished();
    }

    public static PlanProductRealmObject copy(Realm realm, PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo, PlanProductRealmObject planProductRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(planProductRealmObject);
        if (realmObjectProxy != null) {
            return (PlanProductRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlanProductRealmObject.class), planProductRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.productIdIndex, planProductRealmObject.realmGet$productId());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.nameIndex, planProductRealmObject.realmGet$name());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.descIndex, planProductRealmObject.realmGet$desc());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.marketIndex, planProductRealmObject.realmGet$market());
        osObjectBuilder.addBoolean(planProductRealmObjectColumnInfo.promotionIndex, Boolean.valueOf(planProductRealmObject.realmGet$promotion()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.stopSaleTimeIndex, planProductRealmObject.realmGet$stopSaleTime());
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.productTypeIndex, Integer.valueOf(planProductRealmObject.realmGet$productType()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.offerTypeIndex, Integer.valueOf(planProductRealmObject.realmGet$offerType()));
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.periodIndex, planProductRealmObject.realmGet$period());
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.promoTypeIndex, Integer.valueOf(planProductRealmObject.realmGet$promoType()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.discountIndex, Integer.valueOf(planProductRealmObject.realmGet$discount()));
        C10917x2535fbf0 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(planProductRealmObject, newProxyInstance);
        SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject.realmGet$skuDetails();
        if (realmGet$skuDetails == null) {
            newProxyInstance.realmSet$skuDetails(null);
        } else {
            SkuDetailsRealmObject skuDetailsRealmObject = (SkuDetailsRealmObject) map.get(realmGet$skuDetails);
            if (skuDetailsRealmObject != null) {
                newProxyInstance.realmSet$skuDetails(skuDetailsRealmObject);
            } else {
                newProxyInstance.realmSet$skuDetails(C10919xe17e147f.copyOrUpdate(realm, (C10919xe17e147f.SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class), realmGet$skuDetails, z, map, set));
            }
        }
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10917x2535fbf0.PlanProductRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10917x2535fbf0.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_PlanProductRealmObjectRealmProxy$PlanProductRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject");
    }

    public static PlanProductRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new PlanProductRealmObjectColumnInfo(osSchemaInfo);
    }

    public static PlanProductRealmObject createDetachedCopy(PlanProductRealmObject planProductRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        PlanProductRealmObject planProductRealmObject2;
        if (i > i2 || planProductRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(planProductRealmObject);
        if (cacheData == null) {
            planProductRealmObject2 = new PlanProductRealmObject();
            map.put(planProductRealmObject, new RealmObjectProxy.CacheData<>(i, planProductRealmObject2));
        } else if (i >= cacheData.minDepth) {
            return (PlanProductRealmObject) cacheData.object;
        } else {
            planProductRealmObject2 = (PlanProductRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        planProductRealmObject2.realmSet$productId(planProductRealmObject.realmGet$productId());
        planProductRealmObject2.realmSet$name(planProductRealmObject.realmGet$name());
        planProductRealmObject2.realmSet$desc(planProductRealmObject.realmGet$desc());
        planProductRealmObject2.realmSet$market(planProductRealmObject.realmGet$market());
        planProductRealmObject2.realmSet$promotion(planProductRealmObject.realmGet$promotion());
        planProductRealmObject2.realmSet$stopSaleTime(planProductRealmObject.realmGet$stopSaleTime());
        planProductRealmObject2.realmSet$productType(planProductRealmObject.realmGet$productType());
        planProductRealmObject2.realmSet$offerType(planProductRealmObject.realmGet$offerType());
        planProductRealmObject2.realmSet$skuDetails(C10919xe17e147f.createDetachedCopy(planProductRealmObject.realmGet$skuDetails(), i + 1, i2, map));
        planProductRealmObject2.realmSet$period(planProductRealmObject.realmGet$period());
        planProductRealmObject2.realmSet$promoType(planProductRealmObject.realmGet$promoType());
        planProductRealmObject2.realmSet$discount(planProductRealmObject.realmGet$discount());
        return planProductRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 12, 0);
        builder.addPersistedProperty("productId", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("desc", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PlanProductRealmObject.MARKET, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PlanProductRealmObject.PROMOTION, RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty(PlanProductRealmObject.STOP_SALE_TIME, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("productType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(PlanProductRealmObject.OFFER_TYPE, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty(PlanProductRealmObject.SKU_DETAILS, RealmFieldType.OBJECT, C10919xe17e147f.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedProperty("period", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(PlanProductRealmObject.PROMO_TYPE, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(PlanProductRealmObject.DISCOUNT, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 771
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10917x2535fbf0.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject");
    }

    @TargetApi(11)
    public static PlanProductRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        PlanProductRealmObject planProductRealmObject = new PlanProductRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("productId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$productId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$productId(null);
                }
                z = true;
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$name(null);
                }
            } else if (nextName.equals("desc")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$desc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$desc(null);
                }
            } else if (nextName.equals(PlanProductRealmObject.MARKET)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$market(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$market(null);
                }
            } else if (nextName.equals(PlanProductRealmObject.PROMOTION)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$promotion(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'promotion' to null.");
                }
            } else if (nextName.equals(PlanProductRealmObject.STOP_SALE_TIME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$stopSaleTime(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$stopSaleTime(null);
                }
            } else if (nextName.equals("productType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$productType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'productType' to null.");
                }
            } else if (nextName.equals(PlanProductRealmObject.OFFER_TYPE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$offerType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'offerType' to null.");
                }
            } else if (nextName.equals(PlanProductRealmObject.SKU_DETAILS)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$skuDetails(null);
                } else {
                    planProductRealmObject.realmSet$skuDetails(C10919xe17e147f.createUsingJsonStream(realm, jsonReader));
                }
            } else if (nextName.equals("period")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$period(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    planProductRealmObject.realmSet$period(null);
                }
            } else if (nextName.equals(PlanProductRealmObject.PROMO_TYPE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    planProductRealmObject.realmSet$promoType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'promoType' to null.");
                }
            } else if (!nextName.equals(PlanProductRealmObject.DISCOUNT)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                planProductRealmObject.realmSet$discount(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'discount' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (PlanProductRealmObject) realm.copyToRealm((Realm) planProductRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'productId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, PlanProductRealmObject planProductRealmObject, Map<RealmModel, Long> map) {
        if (planProductRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planProductRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlanProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo = (PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class);
        long j = planProductRealmObjectColumnInfo.productIdIndex;
        String realmGet$productId = planProductRealmObject.realmGet$productId();
        long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$productId);
        }
        map.put(planProductRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = planProductRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        }
        String realmGet$desc = planProductRealmObject.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
        }
        String realmGet$market = planProductRealmObject.realmGet$market();
        if (realmGet$market != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, realmGet$market, false);
        }
        Table.nativeSetBoolean(nativePtr, planProductRealmObjectColumnInfo.promotionIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promotion(), false);
        Long realmGet$stopSaleTime = planProductRealmObject.realmGet$stopSaleTime();
        if (realmGet$stopSaleTime != null) {
            Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, realmGet$stopSaleTime.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$productType(), false);
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.offerTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$offerType(), false);
        SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject.realmGet$skuDetails();
        if (realmGet$skuDetails != null) {
            Long l = map.get(realmGet$skuDetails);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(C10919xe17e147f.insert(realm, realmGet$skuDetails, map));
            }
            Table.nativeSetLink(nativePtr, planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull, l2.longValue(), false);
        }
        String realmGet$period = planProductRealmObject.realmGet$period();
        if (realmGet$period != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, realmGet$period, false);
        }
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.promoTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promoType(), false);
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.discountIndex, nativeFindFirstNull, planProductRealmObject.realmGet$discount(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlanProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo = (PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class);
        long j = planProductRealmObjectColumnInfo.productIdIndex;
        while (it.hasNext()) {
            PlanProductRealmObject planProductRealmObject = (PlanProductRealmObject) it.next();
            if (!map.containsKey(planProductRealmObject)) {
                if (planProductRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planProductRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(planProductRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$productId = planProductRealmObject.realmGet$productId();
                long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$productId);
                }
                map.put(planProductRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = planProductRealmObject.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                }
                String realmGet$desc = planProductRealmObject.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
                }
                String realmGet$market = planProductRealmObject.realmGet$market();
                if (realmGet$market != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, realmGet$market, false);
                }
                Table.nativeSetBoolean(nativePtr, planProductRealmObjectColumnInfo.promotionIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promotion(), false);
                Long realmGet$stopSaleTime = planProductRealmObject.realmGet$stopSaleTime();
                if (realmGet$stopSaleTime != null) {
                    Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, realmGet$stopSaleTime.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$productType(), false);
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.offerTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$offerType(), false);
                SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject.realmGet$skuDetails();
                if (realmGet$skuDetails != null) {
                    Long l = map.get(realmGet$skuDetails);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(C10919xe17e147f.insert(realm, realmGet$skuDetails, map));
                    }
                    table.setLink(planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull, l2.longValue(), false);
                }
                String realmGet$period = planProductRealmObject.realmGet$period();
                if (realmGet$period != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, realmGet$period, false);
                }
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.promoTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promoType(), false);
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.discountIndex, nativeFindFirstNull, planProductRealmObject.realmGet$discount(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, PlanProductRealmObject planProductRealmObject, Map<RealmModel, Long> map) {
        if (planProductRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planProductRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(PlanProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo = (PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class);
        long j = planProductRealmObjectColumnInfo.productIdIndex;
        String realmGet$productId = planProductRealmObject.realmGet$productId();
        long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
        }
        map.put(planProductRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = planProductRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, false);
        }
        String realmGet$desc = planProductRealmObject.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
        } else {
            Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, false);
        }
        String realmGet$market = planProductRealmObject.realmGet$market();
        if (realmGet$market != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, realmGet$market, false);
        } else {
            Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetBoolean(nativePtr, planProductRealmObjectColumnInfo.promotionIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promotion(), false);
        Long realmGet$stopSaleTime = planProductRealmObject.realmGet$stopSaleTime();
        if (realmGet$stopSaleTime != null) {
            Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, realmGet$stopSaleTime.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$productType(), false);
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.offerTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$offerType(), false);
        SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject.realmGet$skuDetails();
        if (realmGet$skuDetails != null) {
            Long l = map.get(realmGet$skuDetails);
            Long l2 = l;
            if (l == null) {
                l2 = Long.valueOf(C10919xe17e147f.insertOrUpdate(realm, realmGet$skuDetails, map));
            }
            Table.nativeSetLink(nativePtr, planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull, l2.longValue(), false);
        } else {
            Table.nativeNullifyLink(nativePtr, planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull);
        }
        String realmGet$period = planProductRealmObject.realmGet$period();
        if (realmGet$period != null) {
            Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, realmGet$period, false);
        } else {
            Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.promoTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promoType(), false);
        Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.discountIndex, nativeFindFirstNull, planProductRealmObject.realmGet$discount(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(PlanProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo = (PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class);
        long j = planProductRealmObjectColumnInfo.productIdIndex;
        while (it.hasNext()) {
            PlanProductRealmObject planProductRealmObject = (PlanProductRealmObject) it.next();
            if (!map.containsKey(planProductRealmObject)) {
                if (planProductRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) planProductRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(planProductRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$productId = planProductRealmObject.realmGet$productId();
                long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
                }
                map.put(planProductRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = planProductRealmObject.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, false);
                }
                String realmGet$desc = planProductRealmObject.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
                } else {
                    Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.descIndex, nativeFindFirstNull, false);
                }
                String realmGet$market = planProductRealmObject.realmGet$market();
                if (realmGet$market != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, realmGet$market, false);
                } else {
                    Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.marketIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, planProductRealmObjectColumnInfo.promotionIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promotion(), false);
                Long realmGet$stopSaleTime = planProductRealmObject.realmGet$stopSaleTime();
                if (realmGet$stopSaleTime != null) {
                    Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, realmGet$stopSaleTime.longValue(), false);
                } else {
                    Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.stopSaleTimeIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$productType(), false);
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.offerTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$offerType(), false);
                SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject.realmGet$skuDetails();
                if (realmGet$skuDetails != null) {
                    Long l = map.get(realmGet$skuDetails);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(C10919xe17e147f.insertOrUpdate(realm, realmGet$skuDetails, map));
                    }
                    Table.nativeSetLink(nativePtr, planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull, l2.longValue(), false);
                } else {
                    Table.nativeNullifyLink(nativePtr, planProductRealmObjectColumnInfo.skuDetailsIndex, nativeFindFirstNull);
                }
                String realmGet$period = planProductRealmObject.realmGet$period();
                if (realmGet$period != null) {
                    Table.nativeSetString(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, realmGet$period, false);
                } else {
                    Table.nativeSetNull(nativePtr, planProductRealmObjectColumnInfo.periodIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.promoTypeIndex, nativeFindFirstNull, planProductRealmObject.realmGet$promoType(), false);
                Table.nativeSetLong(nativePtr, planProductRealmObjectColumnInfo.discountIndex, nativeFindFirstNull, planProductRealmObject.realmGet$discount(), false);
            }
        }
    }

    public static C10917x2535fbf0 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(PlanProductRealmObject.class), false, Collections.emptyList());
        C10917x2535fbf0 gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy = new C10917x2535fbf0();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy;
    }

    public static PlanProductRealmObject update(Realm realm, PlanProductRealmObjectColumnInfo planProductRealmObjectColumnInfo, PlanProductRealmObject planProductRealmObject, PlanProductRealmObject planProductRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(PlanProductRealmObject.class), planProductRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.productIdIndex, planProductRealmObject2.realmGet$productId());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.nameIndex, planProductRealmObject2.realmGet$name());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.descIndex, planProductRealmObject2.realmGet$desc());
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.marketIndex, planProductRealmObject2.realmGet$market());
        osObjectBuilder.addBoolean(planProductRealmObjectColumnInfo.promotionIndex, Boolean.valueOf(planProductRealmObject2.realmGet$promotion()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.stopSaleTimeIndex, planProductRealmObject2.realmGet$stopSaleTime());
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.productTypeIndex, Integer.valueOf(planProductRealmObject2.realmGet$productType()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.offerTypeIndex, Integer.valueOf(planProductRealmObject2.realmGet$offerType()));
        SkuDetailsRealmObject realmGet$skuDetails = planProductRealmObject2.realmGet$skuDetails();
        if (realmGet$skuDetails == null) {
            osObjectBuilder.addNull(planProductRealmObjectColumnInfo.skuDetailsIndex);
        } else {
            SkuDetailsRealmObject skuDetailsRealmObject = (SkuDetailsRealmObject) map.get(realmGet$skuDetails);
            if (skuDetailsRealmObject != null) {
                osObjectBuilder.addObject(planProductRealmObjectColumnInfo.skuDetailsIndex, skuDetailsRealmObject);
            } else {
                osObjectBuilder.addObject(planProductRealmObjectColumnInfo.skuDetailsIndex, C10919xe17e147f.copyOrUpdate(realm, (C10919xe17e147f.SkuDetailsRealmObjectColumnInfo) realm.getSchema().getColumnInfo(SkuDetailsRealmObject.class), realmGet$skuDetails, true, map, set));
            }
        }
        osObjectBuilder.addString(planProductRealmObjectColumnInfo.periodIndex, planProductRealmObject2.realmGet$period());
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.promoTypeIndex, Integer.valueOf(planProductRealmObject2.realmGet$promoType()));
        osObjectBuilder.addInteger(planProductRealmObjectColumnInfo.discountIndex, Integer.valueOf(planProductRealmObject2.realmGet$discount()));
        osObjectBuilder.updateExistingObject();
        return planProductRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10917x2535fbf0.class != obj.getClass()) {
            return false;
        }
        C10917x2535fbf0 gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy = (C10917x2535fbf0) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_planproductrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (PlanProductRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public String realmGet$desc() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.descIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public int realmGet$discount() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.discountIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public String realmGet$market() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.marketIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public int realmGet$offerType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.offerTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public String realmGet$period() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.periodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public String realmGet$productId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productIdIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public int realmGet$productType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.productTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public int realmGet$promoType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.promoTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public boolean realmGet$promotion() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.promotionIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public SkuDetailsRealmObject realmGet$skuDetails() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.skuDetailsIndex)) {
            return null;
        }
        return (SkuDetailsRealmObject) this.proxyState.getRealm$realm().get(SkuDetailsRealmObject.class, this.proxyState.getRow$realm().getLink(this.columnInfo.skuDetailsIndex), false, Collections.emptyList());
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public Long realmGet$stopSaleTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.stopSaleTimeIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.stopSaleTimeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$desc(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.descIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.descIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.descIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.descIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$discount(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.discountIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.discountIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$market(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.marketIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.marketIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.marketIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.marketIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
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

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$offerType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.offerTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.offerTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$period(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.periodIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.periodIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.periodIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.periodIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$productId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'productId' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$productType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.productTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.productTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$promoType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.promoTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.promoTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$promotion(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.promotionIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.promotionIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$skuDetails(SkuDetailsRealmObject skuDetailsRealmObject) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (skuDetailsRealmObject == null) {
                this.proxyState.getRow$realm().nullifyLink(this.columnInfo.skuDetailsIndex);
                return;
            }
            this.proxyState.checkValidObject(skuDetailsRealmObject);
            this.proxyState.getRow$realm().setLink(this.columnInfo.skuDetailsIndex, ((RealmObjectProxy) skuDetailsRealmObject).realmGet$proxyState().getRow$realm().getIndex());
        } else if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(PlanProductRealmObject.SKU_DETAILS)) {
            SkuDetailsRealmObject skuDetailsRealmObject2 = skuDetailsRealmObject;
            if (skuDetailsRealmObject != null) {
                skuDetailsRealmObject2 = skuDetailsRealmObject;
                if (!RealmObject.isManaged(skuDetailsRealmObject)) {
                    skuDetailsRealmObject2 = (SkuDetailsRealmObject) ((Realm) this.proxyState.getRealm$realm()).copyToRealm((Realm) skuDetailsRealmObject, new ImportFlag[0]);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (skuDetailsRealmObject2 == null) {
                row$realm.nullifyLink(this.columnInfo.skuDetailsIndex);
                return;
            }
            this.proxyState.checkValidObject(skuDetailsRealmObject2);
            row$realm.getTable().setLink(this.columnInfo.skuDetailsIndex, row$realm.getIndex(), ((RealmObjectProxy) skuDetailsRealmObject2).realmGet$proxyState().getRow$realm().getIndex(), true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject, io.realm.AbstractC10918x8295ff29
    public void realmSet$stopSaleTime(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.stopSaleTimeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.stopSaleTimeIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.stopSaleTimeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.stopSaleTimeIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }
}
