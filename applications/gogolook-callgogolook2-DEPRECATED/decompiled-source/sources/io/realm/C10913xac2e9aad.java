package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy.class */
public class C10913xac2e9aad extends IapProductRealmObject implements RealmObjectProxy, AbstractC10914xa7a50c {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public IapProductRealmObjectColumnInfo columnInfo;
    public ProxyState<IapProductRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "IapProductRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy$IapProductRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy$IapProductRealmObjectColumnInfo.class */
    public static final class IapProductRealmObjectColumnInfo extends ColumnInfo {
        public long descriptionIndex;
        public long expiredTimeIndex;
        public long maxColumnIndexValue;
        public long priceAmountMicrosIndex;
        public long priceCurrencyCodeIndex;
        public long priceIndex;
        public long priorityIndex;
        public long productIdIndex;
        public long productTypeIndex;
        public long stateIndex;
        public long subscriptionPeriodIndex;
        public long titleIndex;
        public long typeIndex;

        public IapProductRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public IapProductRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(12);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.productIdIndex = addColumnDetails("productId", "productId", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.titleIndex = addColumnDetails("title", "title", objectSchemaInfo);
            this.descriptionIndex = addColumnDetails("description", "description", objectSchemaInfo);
            this.priceIndex = addColumnDetails("price", "price", objectSchemaInfo);
            this.priceCurrencyCodeIndex = addColumnDetails(IapProductRealmObject.PRICE_CURRENCY_CODE, IapProductRealmObject.PRICE_CURRENCY_CODE, objectSchemaInfo);
            this.priceAmountMicrosIndex = addColumnDetails(IapProductRealmObject.PRICE_AMOUNT_MICROS, IapProductRealmObject.PRICE_AMOUNT_MICROS, objectSchemaInfo);
            this.subscriptionPeriodIndex = addColumnDetails(IapProductRealmObject.SUBSCRIPTION_PERIOD, IapProductRealmObject.SUBSCRIPTION_PERIOD, objectSchemaInfo);
            this.productTypeIndex = addColumnDetails("productType", "productType", objectSchemaInfo);
            this.priorityIndex = addColumnDetails(IapProductRealmObject.PRIORITY, IapProductRealmObject.PRIORITY, objectSchemaInfo);
            this.expiredTimeIndex = addColumnDetails(IapProductRealmObject.EXPIRED_TIME, IapProductRealmObject.EXPIRED_TIME, objectSchemaInfo);
            this.stateIndex = addColumnDetails(IapProductRealmObject.STATE, IapProductRealmObject.STATE, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new IapProductRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo = (IapProductRealmObjectColumnInfo) columnInfo;
            IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo2 = (IapProductRealmObjectColumnInfo) columnInfo2;
            iapProductRealmObjectColumnInfo2.productIdIndex = iapProductRealmObjectColumnInfo.productIdIndex;
            iapProductRealmObjectColumnInfo2.typeIndex = iapProductRealmObjectColumnInfo.typeIndex;
            iapProductRealmObjectColumnInfo2.titleIndex = iapProductRealmObjectColumnInfo.titleIndex;
            iapProductRealmObjectColumnInfo2.descriptionIndex = iapProductRealmObjectColumnInfo.descriptionIndex;
            iapProductRealmObjectColumnInfo2.priceIndex = iapProductRealmObjectColumnInfo.priceIndex;
            iapProductRealmObjectColumnInfo2.priceCurrencyCodeIndex = iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex;
            iapProductRealmObjectColumnInfo2.priceAmountMicrosIndex = iapProductRealmObjectColumnInfo.priceAmountMicrosIndex;
            iapProductRealmObjectColumnInfo2.subscriptionPeriodIndex = iapProductRealmObjectColumnInfo.subscriptionPeriodIndex;
            iapProductRealmObjectColumnInfo2.productTypeIndex = iapProductRealmObjectColumnInfo.productTypeIndex;
            iapProductRealmObjectColumnInfo2.priorityIndex = iapProductRealmObjectColumnInfo.priorityIndex;
            iapProductRealmObjectColumnInfo2.expiredTimeIndex = iapProductRealmObjectColumnInfo.expiredTimeIndex;
            iapProductRealmObjectColumnInfo2.stateIndex = iapProductRealmObjectColumnInfo.stateIndex;
            iapProductRealmObjectColumnInfo2.maxColumnIndexValue = iapProductRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10913xac2e9aad() {
        this.proxyState.setConstructionFinished();
    }

    public static IapProductRealmObject copy(Realm realm, IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo, IapProductRealmObject iapProductRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(iapProductRealmObject);
        if (realmObjectProxy != null) {
            return (IapProductRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(IapProductRealmObject.class), iapProductRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.productIdIndex, iapProductRealmObject.realmGet$productId());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.typeIndex, iapProductRealmObject.realmGet$type());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.titleIndex, iapProductRealmObject.realmGet$title());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.descriptionIndex, iapProductRealmObject.realmGet$description());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.priceIndex, iapProductRealmObject.realmGet$price());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, iapProductRealmObject.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, Long.valueOf(iapProductRealmObject.realmGet$priceAmountMicros()));
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, iapProductRealmObject.realmGet$subscriptionPeriod());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.productTypeIndex, iapProductRealmObject.realmGet$productType());
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.priorityIndex, Integer.valueOf(iapProductRealmObject.realmGet$priority()));
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.expiredTimeIndex, Long.valueOf(iapProductRealmObject.realmGet$expiredTime()));
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.stateIndex, Integer.valueOf(iapProductRealmObject.realmGet$state()));
        C10913xac2e9aad newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(iapProductRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10913xac2e9aad.IapProductRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10913xac2e9aad.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_IapProductRealmObjectRealmProxy$IapProductRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject");
    }

    public static IapProductRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new IapProductRealmObjectColumnInfo(osSchemaInfo);
    }

    public static IapProductRealmObject createDetachedCopy(IapProductRealmObject iapProductRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        IapProductRealmObject iapProductRealmObject2;
        if (i > i2 || iapProductRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(iapProductRealmObject);
        if (cacheData == null) {
            IapProductRealmObject iapProductRealmObject3 = new IapProductRealmObject();
            map.put(iapProductRealmObject, new RealmObjectProxy.CacheData<>(i, iapProductRealmObject3));
            iapProductRealmObject2 = iapProductRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (IapProductRealmObject) cacheData.object;
        } else {
            iapProductRealmObject2 = (IapProductRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        iapProductRealmObject2.realmSet$productId(iapProductRealmObject.realmGet$productId());
        iapProductRealmObject2.realmSet$type(iapProductRealmObject.realmGet$type());
        iapProductRealmObject2.realmSet$title(iapProductRealmObject.realmGet$title());
        iapProductRealmObject2.realmSet$description(iapProductRealmObject.realmGet$description());
        iapProductRealmObject2.realmSet$price(iapProductRealmObject.realmGet$price());
        iapProductRealmObject2.realmSet$priceCurrencyCode(iapProductRealmObject.realmGet$priceCurrencyCode());
        iapProductRealmObject2.realmSet$priceAmountMicros(iapProductRealmObject.realmGet$priceAmountMicros());
        iapProductRealmObject2.realmSet$subscriptionPeriod(iapProductRealmObject.realmGet$subscriptionPeriod());
        iapProductRealmObject2.realmSet$productType(iapProductRealmObject.realmGet$productType());
        iapProductRealmObject2.realmSet$priority(iapProductRealmObject.realmGet$priority());
        iapProductRealmObject2.realmSet$expiredTime(iapProductRealmObject.realmGet$expiredTime());
        iapProductRealmObject2.realmSet$state(iapProductRealmObject.realmGet$state());
        return iapProductRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 12, 0);
        builder.addPersistedProperty("productId", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("type", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("title", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("description", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("price", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_CURRENCY_CODE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRICE_AMOUNT_MICROS, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(IapProductRealmObject.SUBSCRIPTION_PERIOD, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("productType", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapProductRealmObject.PRIORITY, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(IapProductRealmObject.EXPIRED_TIME, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(IapProductRealmObject.STATE, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10913xac2e9aad.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject");
    }

    @TargetApi(11)
    public static IapProductRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        IapProductRealmObject iapProductRealmObject = new IapProductRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("productId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$productId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$productId(null);
                }
                z = true;
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$type(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$type(null);
                }
            } else if (nextName.equals("title")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$title(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$title(null);
                }
            } else if (nextName.equals("description")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$description(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$description(null);
                }
            } else if (nextName.equals("price")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$price(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$price(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_CURRENCY_CODE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$priceCurrencyCode(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$priceCurrencyCode(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRICE_AMOUNT_MICROS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$priceAmountMicros(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'priceAmountMicros' to null.");
                }
            } else if (nextName.equals(IapProductRealmObject.SUBSCRIPTION_PERIOD)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$subscriptionPeriod(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$subscriptionPeriod(null);
                }
            } else if (nextName.equals("productType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$productType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapProductRealmObject.realmSet$productType(null);
                }
            } else if (nextName.equals(IapProductRealmObject.PRIORITY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$priority(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'priority' to null.");
                }
            } else if (nextName.equals(IapProductRealmObject.EXPIRED_TIME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapProductRealmObject.realmSet$expiredTime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'expiredTime' to null.");
                }
            } else if (!nextName.equals(IapProductRealmObject.STATE)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                iapProductRealmObject.realmSet$state(jsonReader.nextInt());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'state' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (IapProductRealmObject) realm.copyToRealm((Realm) iapProductRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'productId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, IapProductRealmObject iapProductRealmObject, Map<RealmModel, Long> map) {
        if (iapProductRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapProductRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(IapProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo = (IapProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapProductRealmObject.class);
        long j = iapProductRealmObjectColumnInfo.productIdIndex;
        String realmGet$productId = iapProductRealmObject.realmGet$productId();
        long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$productId);
        }
        map.put(iapProductRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$type = iapProductRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
        }
        String realmGet$title = iapProductRealmObject.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
        }
        String realmGet$description = iapProductRealmObject.realmGet$description();
        if (realmGet$description != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, realmGet$description, false);
        }
        String realmGet$price = iapProductRealmObject.realmGet$price();
        if (realmGet$price != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
        }
        String realmGet$priceCurrencyCode = iapProductRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
        }
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priceAmountMicros(), false);
        String realmGet$subscriptionPeriod = iapProductRealmObject.realmGet$subscriptionPeriod();
        if (realmGet$subscriptionPeriod != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
        }
        String realmGet$productType = iapProductRealmObject.realmGet$productType();
        if (realmGet$productType != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, realmGet$productType, false);
        }
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priorityIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priority(), false);
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.expiredTimeIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$expiredTime(), false);
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.stateIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$state(), false);
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(IapProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo = (IapProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapProductRealmObject.class);
        long j = iapProductRealmObjectColumnInfo.productIdIndex;
        while (it.hasNext()) {
            IapProductRealmObject iapProductRealmObject = (IapProductRealmObject) it.next();
            if (!map.containsKey(iapProductRealmObject)) {
                if (iapProductRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapProductRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(iapProductRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$productId = iapProductRealmObject.realmGet$productId();
                long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$productId);
                }
                map.put(iapProductRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$type = iapProductRealmObject.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
                }
                String realmGet$title = iapProductRealmObject.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
                }
                String realmGet$description = iapProductRealmObject.realmGet$description();
                if (realmGet$description != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, realmGet$description, false);
                }
                String realmGet$price = iapProductRealmObject.realmGet$price();
                if (realmGet$price != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
                }
                String realmGet$priceCurrencyCode = iapProductRealmObject.realmGet$priceCurrencyCode();
                if (realmGet$priceCurrencyCode != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
                }
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priceAmountMicros(), false);
                String realmGet$subscriptionPeriod = iapProductRealmObject.realmGet$subscriptionPeriod();
                if (realmGet$subscriptionPeriod != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
                }
                String realmGet$productType = iapProductRealmObject.realmGet$productType();
                if (realmGet$productType != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, realmGet$productType, false);
                }
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priorityIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priority(), false);
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.expiredTimeIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$expiredTime(), false);
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.stateIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$state(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, IapProductRealmObject iapProductRealmObject, Map<RealmModel, Long> map) {
        if (iapProductRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapProductRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(IapProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo = (IapProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapProductRealmObject.class);
        long j = iapProductRealmObjectColumnInfo.productIdIndex;
        String realmGet$productId = iapProductRealmObject.realmGet$productId();
        long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
        }
        map.put(iapProductRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$type = iapProductRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, false);
        }
        String realmGet$title = iapProductRealmObject.realmGet$title();
        if (realmGet$title != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, false);
        }
        String realmGet$description = iapProductRealmObject.realmGet$description();
        if (realmGet$description != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, realmGet$description, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, false);
        }
        String realmGet$price = iapProductRealmObject.realmGet$price();
        if (realmGet$price != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, false);
        }
        String realmGet$priceCurrencyCode = iapProductRealmObject.realmGet$priceCurrencyCode();
        if (realmGet$priceCurrencyCode != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priceAmountMicros(), false);
        String realmGet$subscriptionPeriod = iapProductRealmObject.realmGet$subscriptionPeriod();
        if (realmGet$subscriptionPeriod != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, false);
        }
        String realmGet$productType = iapProductRealmObject.realmGet$productType();
        if (realmGet$productType != null) {
            Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, realmGet$productType, false);
        } else {
            Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priorityIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priority(), false);
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.expiredTimeIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$expiredTime(), false);
        Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.stateIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$state(), false);
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(IapProductRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo = (IapProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapProductRealmObject.class);
        long j = iapProductRealmObjectColumnInfo.productIdIndex;
        while (it.hasNext()) {
            IapProductRealmObject iapProductRealmObject = (IapProductRealmObject) it.next();
            if (!map.containsKey(iapProductRealmObject)) {
                if (iapProductRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapProductRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(iapProductRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$productId = iapProductRealmObject.realmGet$productId();
                long nativeFindFirstNull = realmGet$productId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$productId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$productId);
                }
                map.put(iapProductRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$type = iapProductRealmObject.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, realmGet$type, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.typeIndex, nativeFindFirstNull, false);
                }
                String realmGet$title = iapProductRealmObject.realmGet$title();
                if (realmGet$title != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, realmGet$title, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.titleIndex, nativeFindFirstNull, false);
                }
                String realmGet$description = iapProductRealmObject.realmGet$description();
                if (realmGet$description != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, realmGet$description, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.descriptionIndex, nativeFindFirstNull, false);
                }
                String realmGet$price = iapProductRealmObject.realmGet$price();
                if (realmGet$price != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, realmGet$price, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.priceIndex, nativeFindFirstNull, false);
                }
                String realmGet$priceCurrencyCode = iapProductRealmObject.realmGet$priceCurrencyCode();
                if (realmGet$priceCurrencyCode != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, realmGet$priceCurrencyCode, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priceAmountMicros(), false);
                String realmGet$subscriptionPeriod = iapProductRealmObject.realmGet$subscriptionPeriod();
                if (realmGet$subscriptionPeriod != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, realmGet$subscriptionPeriod, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, nativeFindFirstNull, false);
                }
                String realmGet$productType = iapProductRealmObject.realmGet$productType();
                if (realmGet$productType != null) {
                    Table.nativeSetString(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, realmGet$productType, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapProductRealmObjectColumnInfo.productTypeIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.priorityIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$priority(), false);
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.expiredTimeIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$expiredTime(), false);
                Table.nativeSetLong(nativePtr, iapProductRealmObjectColumnInfo.stateIndex, nativeFindFirstNull, iapProductRealmObject.realmGet$state(), false);
            }
        }
    }

    public static C10913xac2e9aad newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(IapProductRealmObject.class), false, Collections.emptyList());
        C10913xac2e9aad gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy = new C10913xac2e9aad();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy;
    }

    public static IapProductRealmObject update(Realm realm, IapProductRealmObjectColumnInfo iapProductRealmObjectColumnInfo, IapProductRealmObject iapProductRealmObject, IapProductRealmObject iapProductRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(IapProductRealmObject.class), iapProductRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.productIdIndex, iapProductRealmObject2.realmGet$productId());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.typeIndex, iapProductRealmObject2.realmGet$type());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.titleIndex, iapProductRealmObject2.realmGet$title());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.descriptionIndex, iapProductRealmObject2.realmGet$description());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.priceIndex, iapProductRealmObject2.realmGet$price());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.priceCurrencyCodeIndex, iapProductRealmObject2.realmGet$priceCurrencyCode());
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.priceAmountMicrosIndex, Long.valueOf(iapProductRealmObject2.realmGet$priceAmountMicros()));
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.subscriptionPeriodIndex, iapProductRealmObject2.realmGet$subscriptionPeriod());
        osObjectBuilder.addString(iapProductRealmObjectColumnInfo.productTypeIndex, iapProductRealmObject2.realmGet$productType());
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.priorityIndex, Integer.valueOf(iapProductRealmObject2.realmGet$priority()));
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.expiredTimeIndex, Long.valueOf(iapProductRealmObject2.realmGet$expiredTime()));
        osObjectBuilder.addInteger(iapProductRealmObjectColumnInfo.stateIndex, Integer.valueOf(iapProductRealmObject2.realmGet$state()));
        osObjectBuilder.updateExistingObject();
        return iapProductRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10913xac2e9aad.class != obj.getClass()) {
            return false;
        }
        C10913xac2e9aad gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy = (C10913xac2e9aad) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_iapproductrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (IapProductRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$description() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.descriptionIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public long realmGet$expiredTime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.expiredTimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$price() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public long realmGet$priceAmountMicros() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.priceAmountMicrosIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$priceCurrencyCode() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.priceCurrencyCodeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public int realmGet$priority() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.priorityIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$productId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productIdIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$productType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.productTypeIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public int realmGet$state() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.stateIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$subscriptionPeriod() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.subscriptionPeriodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$title() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.titleIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public String realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.typeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$description(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.descriptionIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.descriptionIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.descriptionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.descriptionIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$expiredTime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.expiredTimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.expiredTimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
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

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$priceAmountMicros(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.priceAmountMicrosIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.priceAmountMicrosIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
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

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$priority(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.priorityIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.priorityIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$productId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'productId' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$productType(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.productTypeIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.productTypeIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.productTypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.productTypeIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
    public void realmSet$state(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.stateIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.stateIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
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

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
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

    @Override // gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject, io.realm.AbstractC10914xa7a50c
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

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("IapProductRealmObject = proxy[");
        sb.append("{productId:");
        String realmGet$productId = realmGet$productId();
        String str = C14247d.f31851f;
        sb.append(realmGet$productId != null ? realmGet$productId() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{type:");
        sb.append(realmGet$type() != null ? realmGet$type() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{title:");
        sb.append(realmGet$title() != null ? realmGet$title() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{description:");
        sb.append(realmGet$description() != null ? realmGet$description() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{price:");
        sb.append(realmGet$price() != null ? realmGet$price() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{priceCurrencyCode:");
        sb.append(realmGet$priceCurrencyCode() != null ? realmGet$priceCurrencyCode() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{priceAmountMicros:");
        sb.append(realmGet$priceAmountMicros());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{subscriptionPeriod:");
        sb.append(realmGet$subscriptionPeriod() != null ? realmGet$subscriptionPeriod() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{productType:");
        if (realmGet$productType() != null) {
            str = realmGet$productType();
        }
        sb.append(str);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{priority:");
        sb.append(realmGet$priority());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{expiredTime:");
        sb.append(realmGet$expiredTime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{state:");
        sb.append(realmGet$state());
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
