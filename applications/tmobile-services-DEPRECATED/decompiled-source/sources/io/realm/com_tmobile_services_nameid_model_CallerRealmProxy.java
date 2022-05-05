package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.Caller;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerRealmProxy.class */
public class com_tmobile_services_nameid_model_CallerRealmProxy extends Caller implements RealmObjectProxy, com_tmobile_services_nameid_model_CallerRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private CallerColumnInfo columnInfo;
    private ProxyState<Caller> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerRealmProxy$CallerColumnInfo.class */
    public static final class CallerColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f19985e;

        /* renamed from: f */
        long f19986f;

        /* renamed from: g */
        long f19987g;

        /* renamed from: h */
        long f19988h;

        /* renamed from: i */
        long f19989i;

        /* renamed from: j */
        long f19990j;

        /* renamed from: k */
        long f19991k;

        /* renamed from: l */
        long f19992l;

        /* renamed from: m */
        long f19993m;

        CallerColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(9);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("Caller");
            this.f19985e = m2833a(Name.MARK, Name.MARK, b);
            this.f19986f = m2833a("e164Number", "e164Number", b);
            this.f19987g = m2833a("name", "name", b);
            this.f19988h = m2833a("numberAsInput", "numberAsInput", b);
            this.f19989i = m2833a("isEmail", "isEmail", b);
            this.f19990j = m2833a("categorySuppressed", "categorySuppressed", b);
            this.f19991k = m2833a("nameSuppressed", "nameSuppressed", b);
            this.f19992l = m2833a("bucketId", "bucketId", b);
            this.f19993m = m2833a("date", "date", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            CallerColumnInfo callerColumnInfo = (CallerColumnInfo) columnInfo;
            CallerColumnInfo callerColumnInfo2 = (CallerColumnInfo) columnInfo2;
            callerColumnInfo2.f19985e = callerColumnInfo.f19985e;
            callerColumnInfo2.f19986f = callerColumnInfo.f19986f;
            callerColumnInfo2.f19987g = callerColumnInfo.f19987g;
            callerColumnInfo2.f19988h = callerColumnInfo.f19988h;
            callerColumnInfo2.f19989i = callerColumnInfo.f19989i;
            callerColumnInfo2.f19990j = callerColumnInfo.f19990j;
            callerColumnInfo2.f19991k = callerColumnInfo.f19991k;
            callerColumnInfo2.f19992l = callerColumnInfo.f19992l;
            callerColumnInfo2.f19993m = callerColumnInfo.f19993m;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_CallerRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_CallerRealmProxy() {
        this.proxyState.m3075n();
    }

    public static Caller copy(Realm realm, CallerColumnInfo callerColumnInfo, Caller caller, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(caller);
        if (realmObjectProxy != null) {
            return (Caller) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(Caller.class), set);
        osObjectBuilder.m2550h(callerColumnInfo.f19985e, caller.realmGet$id());
        osObjectBuilder.m2550h(callerColumnInfo.f19986f, caller.realmGet$e164Number());
        osObjectBuilder.m2550h(callerColumnInfo.f19987g, caller.realmGet$name());
        osObjectBuilder.m2550h(callerColumnInfo.f19988h, caller.realmGet$numberAsInput());
        osObjectBuilder.m2554a(callerColumnInfo.f19989i, Boolean.valueOf(caller.realmGet$isEmail()));
        osObjectBuilder.m2554a(callerColumnInfo.f19990j, Boolean.valueOf(caller.realmGet$categorySuppressed()));
        osObjectBuilder.m2554a(callerColumnInfo.f19991k, Boolean.valueOf(caller.realmGet$nameSuppressed()));
        osObjectBuilder.m2552d(callerColumnInfo.f19992l, Integer.valueOf(caller.realmGet$bucketId()));
        osObjectBuilder.m2553b(callerColumnInfo.f19993m, caller.realmGet$date());
        com_tmobile_services_nameid_model_CallerRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(caller, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.Caller copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_CallerRealmProxy.CallerColumnInfo r8, com.tmobile.services.nameid.model.Caller r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_CallerRealmProxy$CallerColumnInfo, com.tmobile.services.nameid.model.Caller, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.Caller");
    }

    public static CallerColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new CallerColumnInfo(osSchemaInfo);
    }

    public static Caller createDetachedCopy(Caller caller, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Caller caller2;
        if (i > i2 || caller == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(caller);
        if (cacheData == null) {
            Caller caller3 = new Caller();
            map.put(caller, new RealmObjectProxy.CacheData<>(i, caller3));
            caller2 = caller3;
        } else if (i >= cacheData.f20174a) {
            return (Caller) cacheData.f20175b;
        } else {
            caller2 = (Caller) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        caller2.realmSet$id(caller.realmGet$id());
        caller2.realmSet$e164Number(caller.realmGet$e164Number());
        caller2.realmSet$name(caller.realmGet$name());
        caller2.realmSet$numberAsInput(caller.realmGet$numberAsInput());
        caller2.realmSet$isEmail(caller.realmGet$isEmail());
        caller2.realmSet$categorySuppressed(caller.realmGet$categorySuppressed());
        caller2.realmSet$nameSuppressed(caller.realmGet$nameSuppressed());
        caller2.realmSet$bucketId(caller.realmGet$bucketId());
        caller2.realmSet$date(caller.realmGet$date());
        return caller2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("Caller", 9, 0);
        builder.m2747a(Name.MARK, RealmFieldType.STRING, true, false, false);
        builder.m2747a("e164Number", RealmFieldType.STRING, false, false, false);
        builder.m2747a("name", RealmFieldType.STRING, false, false, false);
        builder.m2747a("numberAsInput", RealmFieldType.STRING, false, false, false);
        builder.m2747a("isEmail", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("categorySuppressed", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("nameSuppressed", RealmFieldType.BOOLEAN, false, false, true);
        builder.m2747a("bucketId", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("date", RealmFieldType.DATE, false, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0232  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.Caller createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.Caller");
    }

    @TargetApi(11)
    public static Caller createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        Caller caller = new Caller();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(Name.MARK)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    caller.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("e164Number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$e164Number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    caller.realmSet$e164Number(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    caller.realmSet$name(null);
                }
            } else if (nextName.equals("numberAsInput")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$numberAsInput(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    caller.realmSet$numberAsInput(null);
                }
            } else if (nextName.equals("isEmail")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$isEmail(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'isEmail' to null.");
                }
            } else if (nextName.equals("categorySuppressed")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$categorySuppressed(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'categorySuppressed' to null.");
                }
            } else if (nextName.equals("nameSuppressed")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$nameSuppressed(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'nameSuppressed' to null.");
                }
            } else if (nextName.equals("bucketId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    caller.realmSet$bucketId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'bucketId' to null.");
                }
            } else if (!nextName.equals("date")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                caller.realmSet$date(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    caller.realmSet$date(new Date(nextLong));
                }
            } else {
                caller.realmSet$date(JsonUtils.m2586a(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Caller) realm.m3046u0(caller, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "Caller";
    }

    public static long insert(Realm realm, Caller caller, Map<RealmModel, Long> map) {
        if ((caller instanceof RealmObjectProxy) && !RealmObject.isFrozen(caller)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) caller;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(Caller.class);
        long nativePtr = J0.getNativePtr();
        CallerColumnInfo callerColumnInfo = (CallerColumnInfo) realm.mo3059L().m2854g(Caller.class);
        long j = callerColumnInfo.f19985e;
        String realmGet$id = caller.realmGet$id();
        if ((realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
            map.put(caller, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$e164Number = caller.realmGet$e164Number();
            if (realmGet$e164Number != null) {
                Table.nativeSetString(nativePtr, callerColumnInfo.f19986f, createRowWithPrimaryKey, realmGet$e164Number, false);
            }
            String realmGet$name = caller.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(nativePtr, callerColumnInfo.f19987g, createRowWithPrimaryKey, realmGet$name, false);
            }
            String realmGet$numberAsInput = caller.realmGet$numberAsInput();
            if (realmGet$numberAsInput != null) {
                Table.nativeSetString(nativePtr, callerColumnInfo.f19988h, createRowWithPrimaryKey, realmGet$numberAsInput, false);
            }
            Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19989i, createRowWithPrimaryKey, caller.realmGet$isEmail(), false);
            Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19990j, createRowWithPrimaryKey, caller.realmGet$categorySuppressed(), false);
            Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19991k, createRowWithPrimaryKey, caller.realmGet$nameSuppressed(), false);
            Table.nativeSetLong(nativePtr, callerColumnInfo.f19992l, createRowWithPrimaryKey, caller.realmGet$bucketId(), false);
            Date realmGet$date = caller.realmGet$date();
            if (realmGet$date != null) {
                Table.nativeSetTimestamp(nativePtr, callerColumnInfo.f19993m, createRowWithPrimaryKey, realmGet$date.getTime(), false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$id);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(Caller.class);
        long nativePtr = J0.getNativePtr();
        CallerColumnInfo callerColumnInfo = (CallerColumnInfo) realm.mo3059L().m2854g(Caller.class);
        long j = callerColumnInfo.f19985e;
        while (it.hasNext()) {
            Caller caller = (Caller) it.next();
            if (!map.containsKey(caller)) {
                if ((caller instanceof RealmObjectProxy) && !RealmObject.isFrozen(caller)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) caller;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(caller, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$id = caller.realmGet$id();
                if ((realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
                    map.put(caller, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$e164Number = caller.realmGet$e164Number();
                    if (realmGet$e164Number != null) {
                        Table.nativeSetString(nativePtr, callerColumnInfo.f19986f, createRowWithPrimaryKey, realmGet$e164Number, false);
                    }
                    String realmGet$name = caller.realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(nativePtr, callerColumnInfo.f19987g, createRowWithPrimaryKey, realmGet$name, false);
                    }
                    String realmGet$numberAsInput = caller.realmGet$numberAsInput();
                    if (realmGet$numberAsInput != null) {
                        Table.nativeSetString(nativePtr, callerColumnInfo.f19988h, createRowWithPrimaryKey, realmGet$numberAsInput, false);
                    }
                    Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19989i, createRowWithPrimaryKey, caller.realmGet$isEmail(), false);
                    Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19990j, createRowWithPrimaryKey, caller.realmGet$categorySuppressed(), false);
                    Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19991k, createRowWithPrimaryKey, caller.realmGet$nameSuppressed(), false);
                    Table.nativeSetLong(nativePtr, callerColumnInfo.f19992l, createRowWithPrimaryKey, caller.realmGet$bucketId(), false);
                    Date realmGet$date = caller.realmGet$date();
                    if (realmGet$date != null) {
                        Table.nativeSetTimestamp(nativePtr, callerColumnInfo.f19993m, createRowWithPrimaryKey, realmGet$date.getTime(), false);
                    }
                } else {
                    Table.m2656N(realmGet$id);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.Caller r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_CallerRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.Caller, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(Caller.class);
        long nativePtr = J0.getNativePtr();
        CallerColumnInfo callerColumnInfo = (CallerColumnInfo) realm.mo3059L().m2854g(Caller.class);
        long j = callerColumnInfo.f19985e;
        while (it.hasNext()) {
            Caller caller = (Caller) it.next();
            if (!map.containsKey(caller)) {
                if ((caller instanceof RealmObjectProxy) && !RealmObject.isFrozen(caller)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) caller;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(caller, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$id = caller.realmGet$id();
                long nativeFindFirstNull = realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
                }
                map.put(caller, Long.valueOf(nativeFindFirstNull));
                String realmGet$e164Number = caller.realmGet$e164Number();
                if (realmGet$e164Number != null) {
                    Table.nativeSetString(nativePtr, callerColumnInfo.f19986f, nativeFindFirstNull, realmGet$e164Number, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerColumnInfo.f19986f, nativeFindFirstNull, false);
                }
                String realmGet$name = caller.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, callerColumnInfo.f19987g, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerColumnInfo.f19987g, nativeFindFirstNull, false);
                }
                String realmGet$numberAsInput = caller.realmGet$numberAsInput();
                if (realmGet$numberAsInput != null) {
                    Table.nativeSetString(nativePtr, callerColumnInfo.f19988h, nativeFindFirstNull, realmGet$numberAsInput, false);
                } else {
                    Table.nativeSetNull(nativePtr, callerColumnInfo.f19988h, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19989i, nativeFindFirstNull, caller.realmGet$isEmail(), false);
                Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19990j, nativeFindFirstNull, caller.realmGet$categorySuppressed(), false);
                Table.nativeSetBoolean(nativePtr, callerColumnInfo.f19991k, nativeFindFirstNull, caller.realmGet$nameSuppressed(), false);
                Table.nativeSetLong(nativePtr, callerColumnInfo.f19992l, nativeFindFirstNull, caller.realmGet$bucketId(), false);
                Date realmGet$date = caller.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, callerColumnInfo.f19993m, nativeFindFirstNull, realmGet$date.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, callerColumnInfo.f19993m, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_CallerRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(Caller.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_CallerRealmProxy com_tmobile_services_nameid_model_callerrealmproxy = new com_tmobile_services_nameid_model_CallerRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_callerrealmproxy;
    }

    static Caller update(Realm realm, CallerColumnInfo callerColumnInfo, Caller caller, Caller caller2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(Caller.class), set);
        osObjectBuilder.m2550h(callerColumnInfo.f19985e, caller2.realmGet$id());
        osObjectBuilder.m2550h(callerColumnInfo.f19986f, caller2.realmGet$e164Number());
        osObjectBuilder.m2550h(callerColumnInfo.f19987g, caller2.realmGet$name());
        osObjectBuilder.m2550h(callerColumnInfo.f19988h, caller2.realmGet$numberAsInput());
        osObjectBuilder.m2554a(callerColumnInfo.f19989i, Boolean.valueOf(caller2.realmGet$isEmail()));
        osObjectBuilder.m2554a(callerColumnInfo.f19990j, Boolean.valueOf(caller2.realmGet$categorySuppressed()));
        osObjectBuilder.m2554a(callerColumnInfo.f19991k, Boolean.valueOf(caller2.realmGet$nameSuppressed()));
        osObjectBuilder.m2552d(callerColumnInfo.f19992l, Integer.valueOf(caller2.realmGet$bucketId()));
        osObjectBuilder.m2553b(callerColumnInfo.f19993m, caller2.realmGet$date());
        osObjectBuilder.m2548k();
        return caller;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_CallerRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_CallerRealmProxy com_tmobile_services_nameid_model_callerrealmproxy = (com_tmobile_services_nameid_model_CallerRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_callerrealmproxy.proxyState.m3085d();
        String K = d.m3163K();
        String K2 = d2.m3163K();
        if (K != null) {
            if (!K.equals(K2)) {
                return false;
            }
        } else if (K2 != null) {
            return false;
        }
        if (d.m3160W() != d2.m3160W() || !d.f19809j.getVersionID().equals(d2.f19809j.getVersionID())) {
            return false;
        }
        String t = this.proxyState.m3084e().getTable().m2633t();
        String t2 = com_tmobile_services_nameid_model_callerrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_callerrealmproxy.proxyState.m3084e().getObjectKey();
    }

    public int hashCode() {
        String K = this.proxyState.m3085d().m3163K();
        String t = this.proxyState.m3084e().getTable().m2633t();
        long objectKey = this.proxyState.m3084e().getObjectKey();
        int i = 0;
        int hashCode = K != null ? K.hashCode() : 0;
        if (t != null) {
            i = t.hashCode();
        }
        return ((((527 + hashCode) * 31) + i) * 31) + ((int) ((objectKey >>> 32) ^ objectKey));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
            this.columnInfo = (CallerColumnInfo) realmObjectContext.m3141c();
            ProxyState<Caller> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public int realmGet$bucketId() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f19992l);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$categorySuppressed() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19990j);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public Date realmGet$date() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f19993m)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f19993m);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$e164Number() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19986f);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$id() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19985e);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$isEmail() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19989i);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$name() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19987g);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public boolean realmGet$nameSuppressed() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getBoolean(this.columnInfo.f19991k);
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public String realmGet$numberAsInput() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f19988h);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$bucketId(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f19992l, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f19992l, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$categorySuppressed(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19990j, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19990j, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$date(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19993m);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f19993m, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f19993m, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f19993m, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$e164Number(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19986f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19986f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19986f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19986f, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$id(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$isEmail(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19989i, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19989i, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$name(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19987g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19987g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19987g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19987g, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$nameSuppressed(boolean z) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setBoolean(this.columnInfo.f19991k, z);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2662H(this.columnInfo.f19991k, e.getObjectKey(), z, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.Caller, io.realm.com_tmobile_services_nameid_model_CallerRealmProxyInterface
    public void realmSet$numberAsInput(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f19988h);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f19988h, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f19988h, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f19988h, e.getObjectKey(), str, true);
            }
        }
    }
}
