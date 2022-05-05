package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanFeatureRealmObject;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import io.realm.BaseRealm;
import io.realm.C10915x74222849;
import io.realm.C10917x2535fbf0;
import io.realm.exceptions.RealmException;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy.class */
public class C10911xd111c735 extends IapPlanRealmObject implements RealmObjectProxy, AbstractC10912x119a1184 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public IapPlanRealmObjectColumnInfo columnInfo;
    public RealmList<PlanFeatureRealmObject> featuresRealmList;
    public RealmList<PlanProductRealmObject> productsRealmList;
    public ProxyState<IapPlanRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "IapPlanRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy$IapPlanRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy$IapPlanRealmObjectColumnInfo.class */
    public static final class IapPlanRealmObjectColumnInfo extends ColumnInfo {
        public long descIndex;
        public long featuresIndex;
        public long levelIndex;
        public long maxColumnIndexValue;
        public long nameIndex;
        public long planIdIndex;
        public long productsIndex;

        public IapPlanRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public IapPlanRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(6);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.planIdIndex = addColumnDetails(IapPlanRealmObject.PLAN_ID, IapPlanRealmObject.PLAN_ID, objectSchemaInfo);
            this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
            this.descIndex = addColumnDetails("desc", "desc", objectSchemaInfo);
            this.levelIndex = addColumnDetails(IapPlanRealmObject.LEVEL, IapPlanRealmObject.LEVEL, objectSchemaInfo);
            this.featuresIndex = addColumnDetails(IapPlanRealmObject.FEATURES, IapPlanRealmObject.FEATURES, objectSchemaInfo);
            this.productsIndex = addColumnDetails(IapPlanRealmObject.PRODUCTS, IapPlanRealmObject.PRODUCTS, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new IapPlanRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo = (IapPlanRealmObjectColumnInfo) columnInfo;
            IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo2 = (IapPlanRealmObjectColumnInfo) columnInfo2;
            iapPlanRealmObjectColumnInfo2.planIdIndex = iapPlanRealmObjectColumnInfo.planIdIndex;
            iapPlanRealmObjectColumnInfo2.nameIndex = iapPlanRealmObjectColumnInfo.nameIndex;
            iapPlanRealmObjectColumnInfo2.descIndex = iapPlanRealmObjectColumnInfo.descIndex;
            iapPlanRealmObjectColumnInfo2.levelIndex = iapPlanRealmObjectColumnInfo.levelIndex;
            iapPlanRealmObjectColumnInfo2.featuresIndex = iapPlanRealmObjectColumnInfo.featuresIndex;
            iapPlanRealmObjectColumnInfo2.productsIndex = iapPlanRealmObjectColumnInfo.productsIndex;
            iapPlanRealmObjectColumnInfo2.maxColumnIndexValue = iapPlanRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10911xd111c735() {
        this.proxyState.setConstructionFinished();
    }

    public static IapPlanRealmObject copy(Realm realm, IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo, IapPlanRealmObject iapPlanRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(iapPlanRealmObject);
        if (realmObjectProxy != null) {
            return (IapPlanRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(IapPlanRealmObject.class), iapPlanRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.planIdIndex, iapPlanRealmObject.realmGet$planId());
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.nameIndex, iapPlanRealmObject.realmGet$name());
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.descIndex, iapPlanRealmObject.realmGet$desc());
        osObjectBuilder.addInteger(iapPlanRealmObjectColumnInfo.levelIndex, Integer.valueOf(iapPlanRealmObject.realmGet$level()));
        C10911xd111c735 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(iapPlanRealmObject, newProxyInstance);
        RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
        if (realmGet$features != null) {
            RealmList<PlanFeatureRealmObject> realmGet$features2 = newProxyInstance.realmGet$features();
            realmGet$features2.clear();
            for (int i = 0; i < realmGet$features.size(); i++) {
                PlanFeatureRealmObject planFeatureRealmObject = realmGet$features.get(i);
                PlanFeatureRealmObject planFeatureRealmObject2 = (PlanFeatureRealmObject) map.get(planFeatureRealmObject);
                if (planFeatureRealmObject2 != null) {
                    realmGet$features2.add(planFeatureRealmObject2);
                } else {
                    realmGet$features2.add(C10915x74222849.copyOrUpdate(realm, (C10915x74222849.PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class), planFeatureRealmObject, z, map, set));
                }
            }
        }
        RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
        if (realmGet$products != null) {
            RealmList<PlanProductRealmObject> realmGet$products2 = newProxyInstance.realmGet$products();
            realmGet$products2.clear();
            for (int i2 = 0; i2 < realmGet$products.size(); i2++) {
                PlanProductRealmObject planProductRealmObject = realmGet$products.get(i2);
                PlanProductRealmObject planProductRealmObject2 = (PlanProductRealmObject) map.get(planProductRealmObject);
                if (planProductRealmObject2 != null) {
                    realmGet$products2.add(planProductRealmObject2);
                } else {
                    realmGet$products2.add(C10917x2535fbf0.copyOrUpdate(realm, (C10917x2535fbf0.PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class), planProductRealmObject, z, map, set));
                }
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
    public static gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10911xd111c735.IapPlanRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10911xd111c735.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_iap_IapPlanRealmObjectRealmProxy$IapPlanRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject");
    }

    public static IapPlanRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new IapPlanRealmObjectColumnInfo(osSchemaInfo);
    }

    public static IapPlanRealmObject createDetachedCopy(IapPlanRealmObject iapPlanRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        IapPlanRealmObject iapPlanRealmObject2;
        if (i > i2 || iapPlanRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(iapPlanRealmObject);
        if (cacheData == null) {
            iapPlanRealmObject2 = new IapPlanRealmObject();
            map.put(iapPlanRealmObject, new RealmObjectProxy.CacheData<>(i, iapPlanRealmObject2));
        } else if (i >= cacheData.minDepth) {
            return (IapPlanRealmObject) cacheData.object;
        } else {
            iapPlanRealmObject2 = (IapPlanRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        iapPlanRealmObject2.realmSet$planId(iapPlanRealmObject.realmGet$planId());
        iapPlanRealmObject2.realmSet$name(iapPlanRealmObject.realmGet$name());
        iapPlanRealmObject2.realmSet$desc(iapPlanRealmObject.realmGet$desc());
        iapPlanRealmObject2.realmSet$level(iapPlanRealmObject.realmGet$level());
        if (i == i2) {
            iapPlanRealmObject2.realmSet$features(null);
        } else {
            RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
            RealmList<PlanFeatureRealmObject> realmList = new RealmList<>();
            iapPlanRealmObject2.realmSet$features(realmList);
            int size = realmGet$features.size();
            for (int i3 = 0; i3 < size; i3++) {
                realmList.add(C10915x74222849.createDetachedCopy(realmGet$features.get(i3), i + 1, i2, map));
            }
        }
        if (i == i2) {
            iapPlanRealmObject2.realmSet$products(null);
        } else {
            RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
            RealmList<PlanProductRealmObject> realmList2 = new RealmList<>();
            iapPlanRealmObject2.realmSet$products(realmList2);
            int size2 = realmGet$products.size();
            for (int i4 = 0; i4 < size2; i4++) {
                realmList2.add(C10917x2535fbf0.createDetachedCopy(realmGet$products.get(i4), i + 1, i2, map));
            }
        }
        return iapPlanRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 6, 0);
        builder.addPersistedProperty(IapPlanRealmObject.PLAN_ID, RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("name", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("desc", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(IapPlanRealmObject.LEVEL, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedLinkProperty(IapPlanRealmObject.FEATURES, RealmFieldType.LIST, C10915x74222849.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty(IapPlanRealmObject.PRODUCTS, RealmFieldType.LIST, C10917x2535fbf0.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0207  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10911xd111c735.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject");
    }

    @TargetApi(11)
    public static IapPlanRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        IapPlanRealmObject iapPlanRealmObject = new IapPlanRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(IapPlanRealmObject.PLAN_ID)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapPlanRealmObject.realmSet$planId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapPlanRealmObject.realmSet$planId(null);
                }
                z = true;
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapPlanRealmObject.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapPlanRealmObject.realmSet$name(null);
                }
            } else if (nextName.equals("desc")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapPlanRealmObject.realmSet$desc(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    iapPlanRealmObject.realmSet$desc(null);
                }
            } else if (nextName.equals(IapPlanRealmObject.LEVEL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    iapPlanRealmObject.realmSet$level(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'level' to null.");
                }
            } else if (nextName.equals(IapPlanRealmObject.FEATURES)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    iapPlanRealmObject.realmSet$features(null);
                } else {
                    iapPlanRealmObject.realmSet$features(new RealmList<>());
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        iapPlanRealmObject.realmGet$features().add(C10915x74222849.createUsingJsonStream(realm, jsonReader));
                    }
                    jsonReader.endArray();
                }
            } else if (!nextName.equals(IapPlanRealmObject.PRODUCTS)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                iapPlanRealmObject.realmSet$products(null);
            } else {
                iapPlanRealmObject.realmSet$products(new RealmList<>());
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    iapPlanRealmObject.realmGet$products().add(C10917x2535fbf0.createUsingJsonStream(realm, jsonReader));
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
        if (z) {
            return (IapPlanRealmObject) realm.copyToRealm((Realm) iapPlanRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'planId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, IapPlanRealmObject iapPlanRealmObject, Map<RealmModel, Long> map) {
        if (iapPlanRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapPlanRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(IapPlanRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo = (IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class);
        long j = iapPlanRealmObjectColumnInfo.planIdIndex;
        String realmGet$planId = iapPlanRealmObject.realmGet$planId();
        long nativeFindFirstNull = realmGet$planId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$planId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$planId);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$planId);
        }
        map.put(iapPlanRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = iapPlanRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        }
        String realmGet$desc = iapPlanRealmObject.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
        }
        Table.nativeSetLong(nativePtr, iapPlanRealmObjectColumnInfo.levelIndex, nativeFindFirstNull, iapPlanRealmObject.realmGet$level(), false);
        RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
        if (realmGet$features != null) {
            OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.featuresIndex);
            Iterator<PlanFeatureRealmObject> it = realmGet$features.iterator();
            while (it.hasNext()) {
                PlanFeatureRealmObject next = it.next();
                Long l = map.get(next);
                Long l2 = l;
                if (l == null) {
                    l2 = Long.valueOf(C10915x74222849.insert(realm, next, map));
                }
                osList.addRow(l2.longValue());
            }
        }
        RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
        if (realmGet$products != null) {
            OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.productsIndex);
            Iterator<PlanProductRealmObject> it2 = realmGet$products.iterator();
            while (it2.hasNext()) {
                PlanProductRealmObject next2 = it2.next();
                Long l3 = map.get(next2);
                Long l4 = l3;
                if (l3 == null) {
                    l4 = Long.valueOf(C10917x2535fbf0.insert(realm, next2, map));
                }
                osList2.addRow(l4.longValue());
            }
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(IapPlanRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo = (IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class);
        long j = iapPlanRealmObjectColumnInfo.planIdIndex;
        while (it.hasNext()) {
            IapPlanRealmObject iapPlanRealmObject = (IapPlanRealmObject) it.next();
            if (!map.containsKey(iapPlanRealmObject)) {
                if (iapPlanRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapPlanRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(iapPlanRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$planId = iapPlanRealmObject.realmGet$planId();
                long nativeFindFirstNull = realmGet$planId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$planId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$planId);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$planId);
                }
                map.put(iapPlanRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = iapPlanRealmObject.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                }
                String realmGet$desc = iapPlanRealmObject.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
                }
                Table.nativeSetLong(nativePtr, iapPlanRealmObjectColumnInfo.levelIndex, nativeFindFirstNull, iapPlanRealmObject.realmGet$level(), false);
                RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
                if (realmGet$features != null) {
                    OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.featuresIndex);
                    Iterator<PlanFeatureRealmObject> it2 = realmGet$features.iterator();
                    while (it2.hasNext()) {
                        PlanFeatureRealmObject next = it2.next();
                        Long l = map.get(next);
                        Long l2 = l;
                        if (l == null) {
                            l2 = Long.valueOf(C10915x74222849.insert(realm, next, map));
                        }
                        osList.addRow(l2.longValue());
                    }
                }
                RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
                if (realmGet$products != null) {
                    OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.productsIndex);
                    Iterator<PlanProductRealmObject> it3 = realmGet$products.iterator();
                    while (it3.hasNext()) {
                        PlanProductRealmObject next2 = it3.next();
                        Long l3 = map.get(next2);
                        Long l4 = l3;
                        if (l3 == null) {
                            l4 = Long.valueOf(C10917x2535fbf0.insert(realm, next2, map));
                        }
                        osList2.addRow(l4.longValue());
                    }
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, IapPlanRealmObject iapPlanRealmObject, Map<RealmModel, Long> map) {
        if (iapPlanRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapPlanRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(IapPlanRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo = (IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class);
        long j = iapPlanRealmObjectColumnInfo.planIdIndex;
        String realmGet$planId = iapPlanRealmObject.realmGet$planId();
        long nativeFindFirstNull = realmGet$planId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$planId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$planId);
        }
        map.put(iapPlanRealmObject, Long.valueOf(nativeFindFirstNull));
        String realmGet$name = iapPlanRealmObject.realmGet$name();
        if (realmGet$name != null) {
            Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
        } else {
            Table.nativeSetNull(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, false);
        }
        String realmGet$desc = iapPlanRealmObject.realmGet$desc();
        if (realmGet$desc != null) {
            Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
        } else {
            Table.nativeSetNull(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetLong(nativePtr, iapPlanRealmObjectColumnInfo.levelIndex, nativeFindFirstNull, iapPlanRealmObject.realmGet$level(), false);
        OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.featuresIndex);
        RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
        if (realmGet$features == null || realmGet$features.size() != osList.size()) {
            osList.removeAll();
            if (realmGet$features != null) {
                Iterator<PlanFeatureRealmObject> it = realmGet$features.iterator();
                while (it.hasNext()) {
                    PlanFeatureRealmObject next = it.next();
                    Long l = map.get(next);
                    Long l2 = l;
                    if (l == null) {
                        l2 = Long.valueOf(C10915x74222849.insertOrUpdate(realm, next, map));
                    }
                    osList.addRow(l2.longValue());
                }
            }
        } else {
            int size = realmGet$features.size();
            for (int i = 0; i < size; i++) {
                PlanFeatureRealmObject planFeatureRealmObject = realmGet$features.get(i);
                Long l3 = map.get(planFeatureRealmObject);
                Long l4 = l3;
                if (l3 == null) {
                    l4 = Long.valueOf(C10915x74222849.insertOrUpdate(realm, planFeatureRealmObject, map));
                }
                osList.setRow(i, l4.longValue());
            }
        }
        OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.productsIndex);
        RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
        if (realmGet$products == null || realmGet$products.size() != osList2.size()) {
            osList2.removeAll();
            if (realmGet$products != null) {
                Iterator<PlanProductRealmObject> it2 = realmGet$products.iterator();
                while (it2.hasNext()) {
                    PlanProductRealmObject next2 = it2.next();
                    Long l5 = map.get(next2);
                    Long l6 = l5;
                    if (l5 == null) {
                        l6 = Long.valueOf(C10917x2535fbf0.insertOrUpdate(realm, next2, map));
                    }
                    osList2.addRow(l6.longValue());
                }
            }
        } else {
            int size2 = realmGet$products.size();
            for (int i2 = 0; i2 < size2; i2++) {
                PlanProductRealmObject planProductRealmObject = realmGet$products.get(i2);
                Long l7 = map.get(planProductRealmObject);
                Long l8 = l7;
                if (l7 == null) {
                    l8 = Long.valueOf(C10917x2535fbf0.insertOrUpdate(realm, planProductRealmObject, map));
                }
                osList2.setRow(i2, l8.longValue());
            }
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(IapPlanRealmObject.class);
        long nativePtr = table.getNativePtr();
        IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo = (IapPlanRealmObjectColumnInfo) realm.getSchema().getColumnInfo(IapPlanRealmObject.class);
        long j = iapPlanRealmObjectColumnInfo.planIdIndex;
        while (it.hasNext()) {
            IapPlanRealmObject iapPlanRealmObject = (IapPlanRealmObject) it.next();
            if (!map.containsKey(iapPlanRealmObject)) {
                if (iapPlanRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) iapPlanRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(iapPlanRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                String realmGet$planId = iapPlanRealmObject.realmGet$planId();
                long nativeFindFirstNull = realmGet$planId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$planId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$planId);
                }
                map.put(iapPlanRealmObject, Long.valueOf(nativeFindFirstNull));
                String realmGet$name = iapPlanRealmObject.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapPlanRealmObjectColumnInfo.nameIndex, nativeFindFirstNull, false);
                }
                String realmGet$desc = iapPlanRealmObject.realmGet$desc();
                if (realmGet$desc != null) {
                    Table.nativeSetString(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, realmGet$desc, false);
                } else {
                    Table.nativeSetNull(nativePtr, iapPlanRealmObjectColumnInfo.descIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, iapPlanRealmObjectColumnInfo.levelIndex, nativeFindFirstNull, iapPlanRealmObject.realmGet$level(), false);
                OsList osList = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.featuresIndex);
                RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject.realmGet$features();
                if (realmGet$features == null || realmGet$features.size() != osList.size()) {
                    osList.removeAll();
                    if (realmGet$features != null) {
                        Iterator<PlanFeatureRealmObject> it2 = realmGet$features.iterator();
                        while (it2.hasNext()) {
                            PlanFeatureRealmObject next = it2.next();
                            Long l = map.get(next);
                            Long l2 = l;
                            if (l == null) {
                                l2 = Long.valueOf(C10915x74222849.insertOrUpdate(realm, next, map));
                            }
                            osList.addRow(l2.longValue());
                        }
                    }
                } else {
                    int size = realmGet$features.size();
                    for (int i = 0; i < size; i++) {
                        PlanFeatureRealmObject planFeatureRealmObject = realmGet$features.get(i);
                        Long l3 = map.get(planFeatureRealmObject);
                        Long l4 = l3;
                        if (l3 == null) {
                            l4 = Long.valueOf(C10915x74222849.insertOrUpdate(realm, planFeatureRealmObject, map));
                        }
                        osList.setRow(i, l4.longValue());
                    }
                }
                OsList osList2 = new OsList(table.getUncheckedRow(nativeFindFirstNull), iapPlanRealmObjectColumnInfo.productsIndex);
                RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject.realmGet$products();
                if (realmGet$products == null || realmGet$products.size() != osList2.size()) {
                    osList2.removeAll();
                    if (realmGet$products != null) {
                        Iterator<PlanProductRealmObject> it3 = realmGet$products.iterator();
                        while (it3.hasNext()) {
                            PlanProductRealmObject next2 = it3.next();
                            Long l5 = map.get(next2);
                            Long l6 = l5;
                            if (l5 == null) {
                                l6 = Long.valueOf(C10917x2535fbf0.insertOrUpdate(realm, next2, map));
                            }
                            osList2.addRow(l6.longValue());
                        }
                    }
                } else {
                    int size2 = realmGet$products.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        PlanProductRealmObject planProductRealmObject = realmGet$products.get(i2);
                        Long l7 = map.get(planProductRealmObject);
                        Long l8 = l7;
                        if (l7 == null) {
                            l8 = Long.valueOf(C10917x2535fbf0.insertOrUpdate(realm, planProductRealmObject, map));
                        }
                        osList2.setRow(i2, l8.longValue());
                    }
                }
            }
        }
    }

    public static C10911xd111c735 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(IapPlanRealmObject.class), false, Collections.emptyList());
        C10911xd111c735 gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy = new C10911xd111c735();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy;
    }

    public static IapPlanRealmObject update(Realm realm, IapPlanRealmObjectColumnInfo iapPlanRealmObjectColumnInfo, IapPlanRealmObject iapPlanRealmObject, IapPlanRealmObject iapPlanRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(IapPlanRealmObject.class), iapPlanRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.planIdIndex, iapPlanRealmObject2.realmGet$planId());
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.nameIndex, iapPlanRealmObject2.realmGet$name());
        osObjectBuilder.addString(iapPlanRealmObjectColumnInfo.descIndex, iapPlanRealmObject2.realmGet$desc());
        osObjectBuilder.addInteger(iapPlanRealmObjectColumnInfo.levelIndex, Integer.valueOf(iapPlanRealmObject2.realmGet$level()));
        RealmList<PlanFeatureRealmObject> realmGet$features = iapPlanRealmObject2.realmGet$features();
        if (realmGet$features != null) {
            RealmList realmList = new RealmList();
            for (int i = 0; i < realmGet$features.size(); i++) {
                PlanFeatureRealmObject planFeatureRealmObject = realmGet$features.get(i);
                PlanFeatureRealmObject planFeatureRealmObject2 = (PlanFeatureRealmObject) map.get(planFeatureRealmObject);
                if (planFeatureRealmObject2 != null) {
                    realmList.add(planFeatureRealmObject2);
                } else {
                    realmList.add(C10915x74222849.copyOrUpdate(realm, (C10915x74222849.PlanFeatureRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanFeatureRealmObject.class), planFeatureRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(iapPlanRealmObjectColumnInfo.featuresIndex, realmList);
        } else {
            osObjectBuilder.addObjectList(iapPlanRealmObjectColumnInfo.featuresIndex, new RealmList());
        }
        RealmList<PlanProductRealmObject> realmGet$products = iapPlanRealmObject2.realmGet$products();
        if (realmGet$products != null) {
            RealmList realmList2 = new RealmList();
            for (int i2 = 0; i2 < realmGet$products.size(); i2++) {
                PlanProductRealmObject planProductRealmObject = realmGet$products.get(i2);
                PlanProductRealmObject planProductRealmObject2 = (PlanProductRealmObject) map.get(planProductRealmObject);
                if (planProductRealmObject2 != null) {
                    realmList2.add(planProductRealmObject2);
                } else {
                    realmList2.add(C10917x2535fbf0.copyOrUpdate(realm, (C10917x2535fbf0.PlanProductRealmObjectColumnInfo) realm.getSchema().getColumnInfo(PlanProductRealmObject.class), planProductRealmObject, true, map, set));
                }
            }
            osObjectBuilder.addObjectList(iapPlanRealmObjectColumnInfo.productsIndex, realmList2);
        } else {
            osObjectBuilder.addObjectList(iapPlanRealmObjectColumnInfo.productsIndex, new RealmList());
        }
        osObjectBuilder.updateExistingObject();
        return iapPlanRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10911xd111c735.class != obj.getClass()) {
            return false;
        }
        C10911xd111c735 gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy = (C10911xd111c735) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_iap_iapplanrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (IapPlanRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public String realmGet$desc() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.descIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public RealmList<PlanFeatureRealmObject> realmGet$features() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<PlanFeatureRealmObject> realmList = this.featuresRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.featuresRealmList = new RealmList<>(PlanFeatureRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.featuresIndex), this.proxyState.getRealm$realm());
        return this.featuresRealmList;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public int realmGet$level() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.levelIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public String realmGet$name() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.nameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public String realmGet$planId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.planIdIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public RealmList<PlanProductRealmObject> realmGet$products() {
        this.proxyState.getRealm$realm().checkIfValid();
        RealmList<PlanProductRealmObject> realmList = this.productsRealmList;
        if (realmList != null) {
            return realmList;
        }
        this.productsRealmList = new RealmList<>(PlanProductRealmObject.class, this.proxyState.getRow$realm().getModelList(this.columnInfo.productsIndex), this.proxyState.getRealm$realm());
        return this.productsRealmList;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
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

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public void realmSet$features(RealmList<PlanFeatureRealmObject> realmList) {
        RealmList<PlanFeatureRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(IapPlanRealmObject.FEATURES)) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<PlanFeatureRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            PlanFeatureRealmObject next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.featuresIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    PlanFeatureRealmObject planFeatureRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(planFeatureRealmObject);
                    modelList.addRow(((RealmObjectProxy) planFeatureRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PlanFeatureRealmObject planFeatureRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(planFeatureRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) planFeatureRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public void realmSet$level(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.levelIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.levelIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
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

    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public void realmSet$planId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'planId' cannot be changed after object was created.");
        }
    }

    /* JADX WARN: Type inference failed for: r1v22, types: [io.realm.RealmModel, java.lang.Object] */
    @Override // gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject, io.realm.AbstractC10912x119a1184
    public void realmSet$products(RealmList<PlanProductRealmObject> realmList) {
        RealmList<PlanProductRealmObject> realmList2 = realmList;
        if (this.proxyState.isUnderConstruction()) {
            if (this.proxyState.getAcceptDefaultValue$realm() && !this.proxyState.getExcludeFields$realm().contains(IapPlanRealmObject.PRODUCTS)) {
                realmList2 = realmList;
                if (realmList != null) {
                    realmList2 = realmList;
                    if (!realmList.isManaged()) {
                        Realm realm = (Realm) this.proxyState.getRealm$realm();
                        realmList2 = new RealmList<>();
                        Iterator<PlanProductRealmObject> it = realmList.iterator();
                        while (it.hasNext()) {
                            PlanProductRealmObject next = it.next();
                            if (next == null || RealmObject.isManaged(next)) {
                                realmList2.add(next);
                            } else {
                                realmList2.add(realm.copyToRealm((Realm) next, new ImportFlag[0]));
                            }
                        }
                    }
                }
            } else {
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList modelList = this.proxyState.getRow$realm().getModelList(this.columnInfo.productsIndex);
        if (realmList2 == null || realmList2.size() != modelList.size()) {
            modelList.removeAll();
            if (realmList2 != null) {
                int size = realmList2.size();
                for (int i = 0; i < size; i++) {
                    PlanProductRealmObject planProductRealmObject = realmList2.get(i);
                    this.proxyState.checkValidObject(planProductRealmObject);
                    modelList.addRow(((RealmObjectProxy) planProductRealmObject).realmGet$proxyState().getRow$realm().getIndex());
                }
                return;
            }
            return;
        }
        int size2 = realmList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            PlanProductRealmObject planProductRealmObject2 = realmList2.get(i2);
            this.proxyState.checkValidObject(planProductRealmObject2);
            modelList.setRow(i2, ((RealmObjectProxy) planProductRealmObject2).realmGet$proxyState().getRow$realm().getIndex());
        }
    }
}
