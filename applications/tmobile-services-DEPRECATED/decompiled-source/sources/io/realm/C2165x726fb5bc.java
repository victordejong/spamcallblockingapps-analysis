package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import io.realm.BaseRealm;
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
import org.simpleframework.xml.strategy.Name;
/* renamed from: io.realm.com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy.class */
public class C2165x726fb5bc extends ActivityItem implements RealmObjectProxy, AbstractC2166xc2c28add {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private ActivityItemColumnInfo columnInfo;
    private ProxyState<ActivityItem> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy$ActivityItemColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy$ActivityItemColumnInfo.class */
    public static final class ActivityItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20051e;

        /* renamed from: f */
        long f20052f;

        /* renamed from: g */
        long f20053g;

        /* renamed from: h */
        long f20054h;

        /* renamed from: i */
        long f20055i;

        /* renamed from: j */
        long f20056j;

        /* renamed from: k */
        long f20057k;

        /* renamed from: l */
        long f20058l;

        /* renamed from: m */
        long f20059m;

        /* renamed from: n */
        long f20060n;

        ActivityItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(10);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("ActivityItem");
            this.f20051e = m2833a(Name.MARK, Name.MARK, b);
            this.f20052f = m2833a("date", "date", b);
            this.f20053g = m2833a("type", "type", b);
            this.f20054h = m2833a("unread", "unread", b);
            this.f20055i = m2833a("isEmail", "isEmail", b);
            this.f20056j = m2833a("e164Number", "e164Number", b);
            this.f20057k = m2833a("bucketId", "bucketId", b);
            this.f20058l = m2833a("callerType", "callerType", b);
            this.f20059m = m2833a("callerName", "callerName", b);
            this.f20060n = m2833a("controlNumber", "controlNumber", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            ActivityItemColumnInfo activityItemColumnInfo = (ActivityItemColumnInfo) columnInfo;
            ActivityItemColumnInfo activityItemColumnInfo2 = (ActivityItemColumnInfo) columnInfo2;
            activityItemColumnInfo2.f20051e = activityItemColumnInfo.f20051e;
            activityItemColumnInfo2.f20052f = activityItemColumnInfo.f20052f;
            activityItemColumnInfo2.f20053g = activityItemColumnInfo.f20053g;
            activityItemColumnInfo2.f20054h = activityItemColumnInfo.f20054h;
            activityItemColumnInfo2.f20055i = activityItemColumnInfo.f20055i;
            activityItemColumnInfo2.f20056j = activityItemColumnInfo.f20056j;
            activityItemColumnInfo2.f20057k = activityItemColumnInfo.f20057k;
            activityItemColumnInfo2.f20058l = activityItemColumnInfo.f20058l;
            activityItemColumnInfo2.f20059m = activityItemColumnInfo.f20059m;
            activityItemColumnInfo2.f20060n = activityItemColumnInfo.f20060n;
        }
    }

    /* renamed from: io.realm.com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2165x726fb5bc() {
        this.proxyState.m3075n();
    }

    public static ActivityItem copy(Realm realm, ActivityItemColumnInfo activityItemColumnInfo, ActivityItem activityItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(activityItem);
        if (realmObjectProxy != null) {
            return (ActivityItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(ActivityItem.class), set);
        osObjectBuilder.m2550h(activityItemColumnInfo.f20051e, activityItem.realmGet$id());
        osObjectBuilder.m2553b(activityItemColumnInfo.f20052f, activityItem.realmGet$date());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20053g, Integer.valueOf(activityItem.realmGet$type()));
        osObjectBuilder.m2554a(activityItemColumnInfo.f20054h, Boolean.valueOf(activityItem.realmGet$unread()));
        osObjectBuilder.m2554a(activityItemColumnInfo.f20055i, Boolean.valueOf(activityItem.realmGet$isEmail()));
        osObjectBuilder.m2550h(activityItemColumnInfo.f20056j, activityItem.realmGet$e164Number());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20057k, Integer.valueOf(activityItem.realmGet$bucketId()));
        osObjectBuilder.m2550h(activityItemColumnInfo.f20058l, activityItem.realmGet$callerType());
        osObjectBuilder.m2550h(activityItemColumnInfo.f20059m, activityItem.realmGet$callerName());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20060n, Integer.valueOf(activityItem.realmGet$controlNumber()));
        C2165x726fb5bc newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(activityItem, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.activity.ActivityItem copyOrUpdate(io.realm.Realm r7, io.realm.C2165x726fb5bc.ActivityItemColumnInfo r8, com.tmobile.services.nameid.model.activity.ActivityItem r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2165x726fb5bc.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_activity_ActivityItemRealmProxy$ActivityItemColumnInfo, com.tmobile.services.nameid.model.activity.ActivityItem, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.activity.ActivityItem");
    }

    public static ActivityItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new ActivityItemColumnInfo(osSchemaInfo);
    }

    public static ActivityItem createDetachedCopy(ActivityItem activityItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        ActivityItem activityItem2;
        if (i > i2 || activityItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(activityItem);
        if (cacheData == null) {
            ActivityItem activityItem3 = new ActivityItem();
            map.put(activityItem, new RealmObjectProxy.CacheData<>(i, activityItem3));
            activityItem2 = activityItem3;
        } else if (i >= cacheData.f20174a) {
            return (ActivityItem) cacheData.f20175b;
        } else {
            activityItem2 = (ActivityItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        activityItem2.realmSet$id(activityItem.realmGet$id());
        activityItem2.realmSet$date(activityItem.realmGet$date());
        activityItem2.realmSet$type(activityItem.realmGet$type());
        activityItem2.realmSet$unread(activityItem.realmGet$unread());
        activityItem2.realmSet$isEmail(activityItem.realmGet$isEmail());
        activityItem2.realmSet$e164Number(activityItem.realmGet$e164Number());
        activityItem2.realmSet$bucketId(activityItem.realmGet$bucketId());
        activityItem2.realmSet$callerType(activityItem.realmGet$callerType());
        activityItem2.realmSet$callerName(activityItem.realmGet$callerName());
        activityItem2.realmSet$controlNumber(activityItem.realmGet$controlNumber());
        return activityItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("ActivityItem", 10, 0);
        builder.m2747a(Name.MARK, RealmFieldType.STRING, false, false, false);
        builder.m2747a("date", RealmFieldType.DATE, false, false, false);
        builder.m2747a("type", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("unread", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("isEmail", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("e164Number", RealmFieldType.STRING, false, false, false);
        builder.m2747a("bucketId", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("callerType", RealmFieldType.STRING, false, false, false);
        builder.m2747a("callerName", RealmFieldType.STRING, false, false, false);
        builder.m2747a("controlNumber", RealmFieldType.INTEGER, true, true, true);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0285  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.activity.ActivityItem createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 683
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2165x726fb5bc.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.activity.ActivityItem");
    }

    @TargetApi(11)
    public static ActivityItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        ActivityItem activityItem = new ActivityItem();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(Name.MARK)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    activityItem.realmSet$id(null);
                }
            } else if (nextName.equals("date")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    activityItem.realmSet$date(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        activityItem.realmSet$date(new Date(nextLong));
                    }
                } else {
                    activityItem.realmSet$date(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$type(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'type' to null.");
                }
            } else if (nextName.equals("unread")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$unread(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'unread' to null.");
                }
            } else if (nextName.equals("isEmail")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$isEmail(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'isEmail' to null.");
                }
            } else if (nextName.equals("e164Number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$e164Number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    activityItem.realmSet$e164Number(null);
                }
            } else if (nextName.equals("bucketId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$bucketId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'bucketId' to null.");
                }
            } else if (nextName.equals("callerType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$callerType(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    activityItem.realmSet$callerType(null);
                }
            } else if (nextName.equals("callerName")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    activityItem.realmSet$callerName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    activityItem.realmSet$callerName(null);
                }
            } else if (!nextName.equals("controlNumber")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                activityItem.realmSet$controlNumber(jsonReader.nextInt());
                z = true;
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'controlNumber' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (ActivityItem) realm.m3046u0(activityItem, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'controlNumber'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "ActivityItem";
    }

    public static long insert(Realm realm, ActivityItem activityItem, Map<RealmModel, Long> map) {
        if ((activityItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(activityItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) activityItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(ActivityItem.class);
        long nativePtr = J0.getNativePtr();
        ActivityItemColumnInfo activityItemColumnInfo = (ActivityItemColumnInfo) realm.mo3059L().m2854g(ActivityItem.class);
        long j = activityItemColumnInfo.f20060n;
        Integer valueOf = Integer.valueOf(activityItem.realmGet$controlNumber());
        if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, activityItem.realmGet$controlNumber()) : -1L) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(activityItem.realmGet$controlNumber()));
            map.put(activityItem, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$id = activityItem.realmGet$id();
            if (realmGet$id != null) {
                Table.nativeSetString(nativePtr, activityItemColumnInfo.f20051e, createRowWithPrimaryKey, realmGet$id, false);
            }
            Date realmGet$date = activityItem.realmGet$date();
            if (realmGet$date != null) {
                Table.nativeSetTimestamp(nativePtr, activityItemColumnInfo.f20052f, createRowWithPrimaryKey, realmGet$date.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, activityItemColumnInfo.f20053g, createRowWithPrimaryKey, activityItem.realmGet$type(), false);
            Table.nativeSetBoolean(nativePtr, activityItemColumnInfo.f20054h, createRowWithPrimaryKey, activityItem.realmGet$unread(), false);
            Table.nativeSetBoolean(nativePtr, activityItemColumnInfo.f20055i, createRowWithPrimaryKey, activityItem.realmGet$isEmail(), false);
            String realmGet$e164Number = activityItem.realmGet$e164Number();
            if (realmGet$e164Number != null) {
                Table.nativeSetString(nativePtr, activityItemColumnInfo.f20056j, createRowWithPrimaryKey, realmGet$e164Number, false);
            }
            Table.nativeSetLong(nativePtr, activityItemColumnInfo.f20057k, createRowWithPrimaryKey, activityItem.realmGet$bucketId(), false);
            String realmGet$callerType = activityItem.realmGet$callerType();
            if (realmGet$callerType != null) {
                Table.nativeSetString(nativePtr, activityItemColumnInfo.f20058l, createRowWithPrimaryKey, realmGet$callerType, false);
            }
            String realmGet$callerName = activityItem.realmGet$callerName();
            if (realmGet$callerName != null) {
                Table.nativeSetString(nativePtr, activityItemColumnInfo.f20059m, createRowWithPrimaryKey, realmGet$callerName, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(valueOf);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(ActivityItem.class);
        long nativePtr = J0.getNativePtr();
        ActivityItemColumnInfo activityItemColumnInfo = (ActivityItemColumnInfo) realm.mo3059L().m2854g(ActivityItem.class);
        long j = activityItemColumnInfo.f20060n;
        while (it.hasNext()) {
            ActivityItem activityItem = (ActivityItem) it.next();
            if (!map.containsKey(activityItem)) {
                if ((activityItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(activityItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) activityItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(activityItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                Integer valueOf = Integer.valueOf(activityItem.realmGet$controlNumber());
                if ((valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, activityItem.realmGet$controlNumber()) : -1L) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, Integer.valueOf(activityItem.realmGet$controlNumber()));
                    map.put(activityItem, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$id = activityItem.realmGet$id();
                    if (realmGet$id != null) {
                        Table.nativeSetString(nativePtr, activityItemColumnInfo.f20051e, createRowWithPrimaryKey, realmGet$id, false);
                    }
                    Date realmGet$date = activityItem.realmGet$date();
                    if (realmGet$date != null) {
                        Table.nativeSetTimestamp(nativePtr, activityItemColumnInfo.f20052f, createRowWithPrimaryKey, realmGet$date.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, activityItemColumnInfo.f20053g, createRowWithPrimaryKey, activityItem.realmGet$type(), false);
                    Table.nativeSetBoolean(nativePtr, activityItemColumnInfo.f20054h, createRowWithPrimaryKey, activityItem.realmGet$unread(), false);
                    Table.nativeSetBoolean(nativePtr, activityItemColumnInfo.f20055i, createRowWithPrimaryKey, activityItem.realmGet$isEmail(), false);
                    String realmGet$e164Number = activityItem.realmGet$e164Number();
                    if (realmGet$e164Number != null) {
                        Table.nativeSetString(nativePtr, activityItemColumnInfo.f20056j, createRowWithPrimaryKey, realmGet$e164Number, false);
                    }
                    Table.nativeSetLong(nativePtr, activityItemColumnInfo.f20057k, createRowWithPrimaryKey, activityItem.realmGet$bucketId(), false);
                    String realmGet$callerType = activityItem.realmGet$callerType();
                    if (realmGet$callerType != null) {
                        Table.nativeSetString(nativePtr, activityItemColumnInfo.f20058l, createRowWithPrimaryKey, realmGet$callerType, false);
                    }
                    String realmGet$callerName = activityItem.realmGet$callerName();
                    if (realmGet$callerName != null) {
                        Table.nativeSetString(nativePtr, activityItemColumnInfo.f20059m, createRowWithPrimaryKey, realmGet$callerName, false);
                    }
                } else {
                    Table.m2656N(valueOf);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.activity.ActivityItem r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2165x726fb5bc.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.activity.ActivityItem, java.util.Map):long");
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
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2165x726fb5bc.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static C2165x726fb5bc newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(ActivityItem.class), false, Collections.emptyList());
        C2165x726fb5bc com_tmobile_services_nameid_model_activity_activityitemrealmproxy = new C2165x726fb5bc();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_activity_activityitemrealmproxy;
    }

    static ActivityItem update(Realm realm, ActivityItemColumnInfo activityItemColumnInfo, ActivityItem activityItem, ActivityItem activityItem2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(ActivityItem.class), set);
        osObjectBuilder.m2550h(activityItemColumnInfo.f20051e, activityItem2.realmGet$id());
        osObjectBuilder.m2553b(activityItemColumnInfo.f20052f, activityItem2.realmGet$date());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20053g, Integer.valueOf(activityItem2.realmGet$type()));
        osObjectBuilder.m2554a(activityItemColumnInfo.f20054h, Boolean.valueOf(activityItem2.realmGet$unread()));
        osObjectBuilder.m2554a(activityItemColumnInfo.f20055i, Boolean.valueOf(activityItem2.realmGet$isEmail()));
        osObjectBuilder.m2550h(activityItemColumnInfo.f20056j, activityItem2.realmGet$e164Number());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20057k, Integer.valueOf(activityItem2.realmGet$bucketId()));
        osObjectBuilder.m2550h(activityItemColumnInfo.f20058l, activityItem2.realmGet$callerType());
        osObjectBuilder.m2550h(activityItemColumnInfo.f20059m, activityItem2.realmGet$callerName());
        osObjectBuilder.m2552d(activityItemColumnInfo.f20060n, Integer.valueOf(activityItem2.realmGet$controlNumber()));
        osObjectBuilder.m2548k();
        return activityItem;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
            this.columnInfo = (ActivityItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<ActivityItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public int realmGet$bucketId() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20057k);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public String realmGet$callerName() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20059m);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public String realmGet$callerType() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20058l);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public int realmGet$controlNumber() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20060n);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public Date realmGet$date() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20052f)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20052f);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public String realmGet$e164Number() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20056j);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public String realmGet$id() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20051e);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public boolean realmGet$isEmail() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20055i);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public int realmGet$type() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20053g);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public boolean realmGet$unread() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f20054h);
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$bucketId(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20057k, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20057k, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$callerName(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20059m);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20059m, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20059m, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20059m, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$callerType(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20058l);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20058l, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20058l, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20058l, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$controlNumber(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'controlNumber' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$date(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20052f);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20052f, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20052f, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20052f, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$e164Number(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20056j);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20056j, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20056j, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20056j, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$id(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20051e);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20051e, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20051e, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20051e, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$isEmail(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20055i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20055i, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$type(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20053g, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20053g, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityItem, io.realm.AbstractC2166xc2c28add
    public void realmSet$unread(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f20054h, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f20054h, e.getObjectKey(), z, true);
        }
    }
}
