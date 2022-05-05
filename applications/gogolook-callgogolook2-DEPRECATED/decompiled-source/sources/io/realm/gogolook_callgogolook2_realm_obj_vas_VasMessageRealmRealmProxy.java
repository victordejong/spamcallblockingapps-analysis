package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
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
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.class */
public class gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy extends VasMessageRealm implements RealmObjectProxy, AbstractC10945xa8916503 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public VasMessageRealmColumnInfo columnInfo;
    public ProxyState<VasMessageRealm> proxyState;

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "VasMessageRealm";
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy$VasMessageRealmColumnInfo.class */
    public static final class VasMessageRealmColumnInfo extends ColumnInfo {
        public long cancelTypeIndex;
        public long contentIndex;
        public long e164Index;
        public long idIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long periodIndex;
        public long periodTypeIndex;
        public long priceIndex;
        public long priceTypeIndex;
        public long promotionTypeIndex;
        public long subscriptionTypeIndex;
        public long timeIndex;

        public VasMessageRealmColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public VasMessageRealmColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(12);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.subscriptionTypeIndex = addColumnDetails("subscriptionType", "subscriptionType", objectSchemaInfo);
            this.promotionTypeIndex = addColumnDetails("promotionType", "promotionType", objectSchemaInfo);
            this.cancelTypeIndex = addColumnDetails("cancelType", "cancelType", objectSchemaInfo);
            this.e164Index = addColumnDetails("e164", "e164", objectSchemaInfo);
            this.contentIndex = addColumnDetails("content", "content", objectSchemaInfo);
            this.timeIndex = addColumnDetails("time", "time", objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.priceTypeIndex = addColumnDetails("priceType", "priceType", objectSchemaInfo);
            this.priceIndex = addColumnDetails("price", "price", objectSchemaInfo);
            this.periodTypeIndex = addColumnDetails("periodType", "periodType", objectSchemaInfo);
            this.periodIndex = addColumnDetails("period", "period", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new VasMessageRealmColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            VasMessageRealmColumnInfo vasMessageRealmColumnInfo = (VasMessageRealmColumnInfo) columnInfo;
            VasMessageRealmColumnInfo vasMessageRealmColumnInfo2 = (VasMessageRealmColumnInfo) columnInfo2;
            vasMessageRealmColumnInfo2.idIndex = vasMessageRealmColumnInfo.idIndex;
            vasMessageRealmColumnInfo2.subscriptionTypeIndex = vasMessageRealmColumnInfo.subscriptionTypeIndex;
            vasMessageRealmColumnInfo2.promotionTypeIndex = vasMessageRealmColumnInfo.promotionTypeIndex;
            vasMessageRealmColumnInfo2.cancelTypeIndex = vasMessageRealmColumnInfo.cancelTypeIndex;
            vasMessageRealmColumnInfo2.e164Index = vasMessageRealmColumnInfo.e164Index;
            vasMessageRealmColumnInfo2.contentIndex = vasMessageRealmColumnInfo.contentIndex;
            vasMessageRealmColumnInfo2.timeIndex = vasMessageRealmColumnInfo.timeIndex;
            vasMessageRealmColumnInfo2.nameIndex = vasMessageRealmColumnInfo.nameIndex;
            vasMessageRealmColumnInfo2.priceTypeIndex = vasMessageRealmColumnInfo.priceTypeIndex;
            vasMessageRealmColumnInfo2.priceIndex = vasMessageRealmColumnInfo.priceIndex;
            vasMessageRealmColumnInfo2.periodTypeIndex = vasMessageRealmColumnInfo.periodTypeIndex;
            vasMessageRealmColumnInfo2.periodIndex = vasMessageRealmColumnInfo.periodIndex;
            vasMessageRealmColumnInfo2.maxColumnIndexValue = vasMessageRealmColumnInfo.maxColumnIndexValue;
        }
    }

    public gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static VasMessageRealm copy(Realm realm, VasMessageRealmColumnInfo vasMessageRealmColumnInfo, VasMessageRealm vasMessageRealm, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(vasMessageRealm);
        if (realmObjectProxy != null) {
            return (VasMessageRealm) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(VasMessageRealm.class), vasMessageRealmColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.idIndex, Long.valueOf(vasMessageRealm.realmGet$id()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.subscriptionTypeIndex, Integer.valueOf(vasMessageRealm.realmGet$subscriptionType()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.promotionTypeIndex, Integer.valueOf(vasMessageRealm.realmGet$promotionType()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.cancelTypeIndex, Integer.valueOf(vasMessageRealm.realmGet$cancelType()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.e164Index, vasMessageRealm.realmGet$e164());
        osObjectBuilder.addString(vasMessageRealmColumnInfo.contentIndex, vasMessageRealm.realmGet$content());
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.timeIndex, Long.valueOf(vasMessageRealm.realmGet$time()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.nameIndex, vasMessageRealm.realmGet$name());
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.priceTypeIndex, Integer.valueOf(vasMessageRealm.realmGet$priceType()));
        osObjectBuilder.addDouble(vasMessageRealmColumnInfo.priceIndex, Double.valueOf(vasMessageRealm.realmGet$price()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.periodTypeIndex, Integer.valueOf(vasMessageRealm.realmGet$periodType()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.periodIndex, vasMessageRealm.realmGet$period());
        gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(vasMessageRealm, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.vas.VasMessageRealm copyOrUpdate(io.realm.Realm r7, io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.VasMessageRealmColumnInfo r8, gogolook.callgogolook2.realm.obj.vas.VasMessageRealm r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy$VasMessageRealmColumnInfo, gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.vas.VasMessageRealm");
    }

    public static VasMessageRealmColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new VasMessageRealmColumnInfo(osSchemaInfo);
    }

    public static VasMessageRealm createDetachedCopy(VasMessageRealm vasMessageRealm, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        VasMessageRealm vasMessageRealm2;
        if (i > i2 || vasMessageRealm == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(vasMessageRealm);
        if (cacheData == null) {
            VasMessageRealm vasMessageRealm3 = new VasMessageRealm();
            map.put(vasMessageRealm, new RealmObjectProxy.CacheData<>(i, vasMessageRealm3));
            vasMessageRealm2 = vasMessageRealm3;
        } else if (i >= cacheData.minDepth) {
            return (VasMessageRealm) cacheData.object;
        } else {
            vasMessageRealm2 = (VasMessageRealm) cacheData.object;
            cacheData.minDepth = i;
        }
        vasMessageRealm2.realmSet$id(vasMessageRealm.realmGet$id());
        vasMessageRealm2.realmSet$subscriptionType(vasMessageRealm.realmGet$subscriptionType());
        vasMessageRealm2.realmSet$promotionType(vasMessageRealm.realmGet$promotionType());
        vasMessageRealm2.realmSet$cancelType(vasMessageRealm.realmGet$cancelType());
        vasMessageRealm2.realmSet$e164(vasMessageRealm.realmGet$e164());
        vasMessageRealm2.realmSet$content(vasMessageRealm.realmGet$content());
        vasMessageRealm2.realmSet$time(vasMessageRealm.realmGet$time());
        vasMessageRealm2.realmSet$name(vasMessageRealm.realmGet$name());
        vasMessageRealm2.realmSet$priceType(vasMessageRealm.realmGet$priceType());
        vasMessageRealm2.realmSet$price(vasMessageRealm.realmGet$price());
        vasMessageRealm2.realmSet$periodType(vasMessageRealm.realmGet$periodType());
        vasMessageRealm2.realmSet$period(vasMessageRealm.realmGet$period());
        return vasMessageRealm2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 12, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("subscriptionType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("promotionType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("cancelType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("content", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("time", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("priceType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("price", RealmFieldType.DOUBLE, false, false, true);
        builder.addPersistedProperty("periodType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("period", RealmFieldType.STRING, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.vas.VasMessageRealm createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.vas.VasMessageRealm");
    }

    @TargetApi(11)
    public static VasMessageRealm createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        VasMessageRealm vasMessageRealm = new VasMessageRealm();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("subscriptionType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$subscriptionType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'subscriptionType' to null.");
                }
            } else if (nextName.equals("promotionType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$promotionType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'promotionType' to null.");
                }
            } else if (nextName.equals("cancelType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$cancelType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'cancelType' to null.");
                }
            } else if (nextName.equals("e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    vasMessageRealm.realmSet$e164(null);
                }
            } else if (nextName.equals("content")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$content(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    vasMessageRealm.realmSet$content(null);
                }
            } else if (nextName.equals("time")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$time(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'time' to null.");
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    vasMessageRealm.realmSet$name(null);
                }
            } else if (nextName.equals("priceType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$priceType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'priceType' to null.");
                }
            } else if (nextName.equals("price")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$price(jsonReader.nextDouble());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'price' to null.");
                }
            } else if (nextName.equals("periodType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    vasMessageRealm.realmSet$periodType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'periodType' to null.");
                }
            } else if (!nextName.equals("period")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                vasMessageRealm.realmSet$period(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                vasMessageRealm.realmSet$period(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (VasMessageRealm) realm.copyToRealm((Realm) vasMessageRealm, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, VasMessageRealm vasMessageRealm, Map<RealmModel, Long> map) {
        if (vasMessageRealm instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) vasMessageRealm;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(VasMessageRealm.class);
        long nativePtr = table.getNativePtr();
        VasMessageRealmColumnInfo vasMessageRealmColumnInfo = (VasMessageRealmColumnInfo) realm.getSchema().getColumnInfo(VasMessageRealm.class);
        long j = vasMessageRealmColumnInfo.idIndex;
        Long valueOf = Long.valueOf(vasMessageRealm.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, vasMessageRealm.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(vasMessageRealm.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(vasMessageRealm, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.subscriptionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$subscriptionType(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.promotionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$promotionType(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.cancelTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$cancelType(), false);
        String realmGet$e164 = vasMessageRealm.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        }
        String realmGet$content = vasMessageRealm.realmGet$content();
        if (realmGet$content != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
        }
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.timeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$time(), false);
        String realmGet$name = vasMessageRealm.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
        }
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.priceTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$priceType(), false);
        Table.nativeSetDouble(nativePtr, vasMessageRealmColumnInfo.priceIndex, nativeFindFirstInt, vasMessageRealm.realmGet$price(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.periodTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$periodType(), false);
        String realmGet$period = vasMessageRealm.realmGet$period();
        if (realmGet$period != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.periodIndex, nativeFindFirstInt, realmGet$period, false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(VasMessageRealm.class);
        long nativePtr = table.getNativePtr();
        VasMessageRealmColumnInfo vasMessageRealmColumnInfo = (VasMessageRealmColumnInfo) realm.getSchema().getColumnInfo(VasMessageRealm.class);
        long j = vasMessageRealmColumnInfo.idIndex;
        while (it.hasNext()) {
            VasMessageRealm vasMessageRealm = (VasMessageRealm) it.next();
            if (!map.containsKey(vasMessageRealm)) {
                if (vasMessageRealm instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) vasMessageRealm;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(vasMessageRealm, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(vasMessageRealm.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, vasMessageRealm.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(vasMessageRealm.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(vasMessageRealm, Long.valueOf(nativeFindFirstInt));
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.subscriptionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$subscriptionType(), false);
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.promotionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$promotionType(), false);
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.cancelTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$cancelType(), false);
                String realmGet$e164 = vasMessageRealm.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
                }
                String realmGet$content = vasMessageRealm.realmGet$content();
                if (realmGet$content != null) {
                    Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
                }
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.timeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$time(), false);
                String realmGet$name = vasMessageRealm.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
                }
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.priceTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$priceType(), false);
                Table.nativeSetDouble(nativePtr, vasMessageRealmColumnInfo.priceIndex, nativeFindFirstInt, vasMessageRealm.realmGet$price(), false);
                Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.periodTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$periodType(), false);
                String realmGet$period = vasMessageRealm.realmGet$period();
                if (realmGet$period != null) {
                    Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.periodIndex, nativeFindFirstInt, realmGet$period, false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, VasMessageRealm vasMessageRealm, Map<RealmModel, Long> map) {
        if (vasMessageRealm instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) vasMessageRealm;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(VasMessageRealm.class);
        long nativePtr = table.getNativePtr();
        VasMessageRealmColumnInfo vasMessageRealmColumnInfo = (VasMessageRealmColumnInfo) realm.getSchema().getColumnInfo(VasMessageRealm.class);
        long j = vasMessageRealmColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(vasMessageRealm.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, vasMessageRealm.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(vasMessageRealm.realmGet$id()));
        }
        map.put(vasMessageRealm, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.subscriptionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$subscriptionType(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.promotionTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$promotionType(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.cancelTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$cancelType(), false);
        String realmGet$e164 = vasMessageRealm.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        } else {
            Table.nativeSetNull(nativePtr, vasMessageRealmColumnInfo.e164Index, nativeFindFirstInt, false);
        }
        String realmGet$content = vasMessageRealm.realmGet$content();
        if (realmGet$content != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
        } else {
            Table.nativeSetNull(nativePtr, vasMessageRealmColumnInfo.contentIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.timeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$time(), false);
        String realmGet$name = vasMessageRealm.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.nameIndex, nativeFindFirstInt, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, vasMessageRealmColumnInfo.nameIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.priceTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$priceType(), false);
        Table.nativeSetDouble(nativePtr, vasMessageRealmColumnInfo.priceIndex, nativeFindFirstInt, vasMessageRealm.realmGet$price(), false);
        Table.nativeSetLong(nativePtr, vasMessageRealmColumnInfo.periodTypeIndex, nativeFindFirstInt, vasMessageRealm.realmGet$periodType(), false);
        String realmGet$period = vasMessageRealm.realmGet$period();
        if (realmGet$period != null) {
            Table.nativeSetString(nativePtr, vasMessageRealmColumnInfo.periodIndex, nativeFindFirstInt, realmGet$period, false);
        } else {
            Table.nativeSetNull(nativePtr, vasMessageRealmColumnInfo.periodIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(VasMessageRealm.class), false, Collections.emptyList());
        gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy = new gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy;
    }

    public static VasMessageRealm update(Realm realm, VasMessageRealmColumnInfo vasMessageRealmColumnInfo, VasMessageRealm vasMessageRealm, VasMessageRealm vasMessageRealm2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(VasMessageRealm.class), vasMessageRealmColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.idIndex, Long.valueOf(vasMessageRealm2.realmGet$id()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.subscriptionTypeIndex, Integer.valueOf(vasMessageRealm2.realmGet$subscriptionType()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.promotionTypeIndex, Integer.valueOf(vasMessageRealm2.realmGet$promotionType()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.cancelTypeIndex, Integer.valueOf(vasMessageRealm2.realmGet$cancelType()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.e164Index, vasMessageRealm2.realmGet$e164());
        osObjectBuilder.addString(vasMessageRealmColumnInfo.contentIndex, vasMessageRealm2.realmGet$content());
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.timeIndex, Long.valueOf(vasMessageRealm2.realmGet$time()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.nameIndex, vasMessageRealm2.realmGet$name());
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.priceTypeIndex, Integer.valueOf(vasMessageRealm2.realmGet$priceType()));
        osObjectBuilder.addDouble(vasMessageRealmColumnInfo.priceIndex, Double.valueOf(vasMessageRealm2.realmGet$price()));
        osObjectBuilder.addInteger(vasMessageRealmColumnInfo.periodTypeIndex, Integer.valueOf(vasMessageRealm2.realmGet$periodType()));
        osObjectBuilder.addString(vasMessageRealmColumnInfo.periodIndex, vasMessageRealm2.realmGet$period());
        osObjectBuilder.updateExistingObject();
        return vasMessageRealm;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy.class != obj.getClass()) {
            return false;
        }
        gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy = (gogolook_callgogolook2_realm_obj_vas_VasMessageRealmRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_vas_vasmessagerealmrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (VasMessageRealmColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public int realmGet$cancelType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.cancelTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public String realmGet$content() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.contentIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public String realmGet$e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public String realmGet$period() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.periodIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public int realmGet$periodType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.periodTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public double realmGet$price() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getDouble(this.columnInfo.priceIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public int realmGet$priceType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.priceTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public int realmGet$promotionType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.promotionTypeIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public int realmGet$subscriptionType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.subscriptionTypeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public long realmGet$time() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.timeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$cancelType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.cancelTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.cancelTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$content(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.contentIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.contentIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.contentIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.contentIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
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

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
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

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$periodType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.periodTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.periodTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$price(double d) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setDouble(this.columnInfo.priceIndex, d);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setDouble(this.columnInfo.priceIndex, row$realm.getIndex(), d, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$priceType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.priceTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.priceTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$promotionType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.promotionTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.promotionTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$subscriptionType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.subscriptionTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.subscriptionTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.vas.VasMessageRealm, io.realm.AbstractC10945xa8916503
    public void realmSet$time(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.timeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.timeIndex, row$realm.getIndex(), j, true);
        }
    }
}
