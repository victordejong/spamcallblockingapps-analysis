package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.AnalyticsEvent;
import com.privacystar.core.data.model.AnalyticsEventFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AnalyticsEventRealmProxy.class */
public class com_privacystar_core_data_model_AnalyticsEventRealmProxy extends AnalyticsEvent implements RealmObjectProxy, AbstractC1910xbce7d778 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private AnalyticsEventColumnInfo columnInfo;
    private ProxyState<AnalyticsEvent> proxyState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AnalyticsEventRealmProxy$AnalyticsEventColumnInfo.class */
    public static final class AnalyticsEventColumnInfo extends ColumnInfo {
        long eventBodyIndex;
        long eventTypeIndex;
        long idIndex;
        long maxColumnIndexValue;
        long statusIndex;
        long tsIndex;

        AnalyticsEventColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        AnalyticsEventColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(5);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.eventTypeIndex = addColumnDetails("eventType", "eventType", objectSchemaInfo);
            this.eventBodyIndex = addColumnDetails(AnalyticsEventFields.EVENT_BODY, AnalyticsEventFields.EVENT_BODY, objectSchemaInfo);
            this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
            this.tsIndex = addColumnDetails(AnalyticsEventFields.f254TS, AnalyticsEventFields.f254TS, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new AnalyticsEventColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) columnInfo;
            AnalyticsEventColumnInfo analyticsEventColumnInfo2 = (AnalyticsEventColumnInfo) columnInfo2;
            analyticsEventColumnInfo2.idIndex = analyticsEventColumnInfo.idIndex;
            analyticsEventColumnInfo2.eventTypeIndex = analyticsEventColumnInfo.eventTypeIndex;
            analyticsEventColumnInfo2.eventBodyIndex = analyticsEventColumnInfo.eventBodyIndex;
            analyticsEventColumnInfo2.statusIndex = analyticsEventColumnInfo.statusIndex;
            analyticsEventColumnInfo2.tsIndex = analyticsEventColumnInfo.tsIndex;
            analyticsEventColumnInfo2.maxColumnIndexValue = analyticsEventColumnInfo.maxColumnIndexValue;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_AnalyticsEventRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "AnalyticsEvent";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_AnalyticsEventRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static AnalyticsEvent copy(Realm realm, AnalyticsEventColumnInfo analyticsEventColumnInfo, AnalyticsEvent analyticsEvent, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(analyticsEvent);
        if (realmObjectProxy != null) {
            return (AnalyticsEvent) realmObjectProxy;
        }
        AnalyticsEvent analyticsEvent2 = analyticsEvent;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(AnalyticsEvent.class), analyticsEventColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(analyticsEventColumnInfo.idIndex, Integer.valueOf(analyticsEvent2.realmGet$id()));
        osObjectBuilder.addInteger(analyticsEventColumnInfo.eventTypeIndex, Integer.valueOf(analyticsEvent2.realmGet$eventType()));
        osObjectBuilder.addString(analyticsEventColumnInfo.eventBodyIndex, analyticsEvent2.realmGet$eventBody());
        osObjectBuilder.addString(analyticsEventColumnInfo.statusIndex, analyticsEvent2.realmGet$status());
        osObjectBuilder.addDate(analyticsEventColumnInfo.tsIndex, analyticsEvent2.realmGet$ts());
        com_privacystar_core_data_model_AnalyticsEventRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(analyticsEvent, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.AnalyticsEvent copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy.AnalyticsEventColumnInfo r8, com.privacystar.core.data.model.AnalyticsEvent r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy$AnalyticsEventColumnInfo, com.privacystar.core.data.model.AnalyticsEvent, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.AnalyticsEvent");
    }

    public static AnalyticsEventColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new AnalyticsEventColumnInfo(osSchemaInfo);
    }

    public static AnalyticsEvent createDetachedCopy(AnalyticsEvent analyticsEvent, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        AnalyticsEvent analyticsEvent2;
        if (i > i2 || analyticsEvent == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(analyticsEvent);
        if (cacheData == null) {
            AnalyticsEvent analyticsEvent3 = new AnalyticsEvent();
            map.put(analyticsEvent, new RealmObjectProxy.CacheData<>(i, analyticsEvent3));
            analyticsEvent2 = analyticsEvent3;
        } else if (i >= cacheData.minDepth) {
            return (AnalyticsEvent) cacheData.object;
        } else {
            analyticsEvent2 = (AnalyticsEvent) cacheData.object;
            cacheData.minDepth = i;
        }
        AnalyticsEvent analyticsEvent4 = analyticsEvent2;
        AnalyticsEvent analyticsEvent5 = analyticsEvent;
        analyticsEvent4.realmSet$id(analyticsEvent5.realmGet$id());
        analyticsEvent4.realmSet$eventType(analyticsEvent5.realmGet$eventType());
        analyticsEvent4.realmSet$eventBody(analyticsEvent5.realmGet$eventBody());
        analyticsEvent4.realmSet$status(analyticsEvent5.realmGet$status());
        analyticsEvent4.realmSet$ts(analyticsEvent5.realmGet$ts());
        return analyticsEvent2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 5, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("eventType", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(AnalyticsEventFields.EVENT_BODY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("status", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(AnalyticsEventFields.f254TS, RealmFieldType.DATE, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0173  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.AnalyticsEvent createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.AnalyticsEvent");
    }

    @TargetApi(11)
    public static AnalyticsEvent createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        AnalyticsEvent analyticsEvent = new AnalyticsEvent();
        AnalyticsEvent analyticsEvent2 = analyticsEvent;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent2.realmSet$id(jsonReader.nextInt());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("eventType")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent2.realmSet$eventType(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'eventType' to null.");
                }
            } else if (nextName.equals(AnalyticsEventFields.EVENT_BODY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent2.realmSet$eventBody(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    analyticsEvent2.realmSet$eventBody(null);
                }
            } else if (nextName.equals("status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    analyticsEvent2.realmSet$status(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    analyticsEvent2.realmSet$status(null);
                }
            } else if (!nextName.equals(AnalyticsEventFields.f254TS)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                analyticsEvent2.realmSet$ts(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong = jsonReader.nextLong();
                if (nextLong > -1) {
                    analyticsEvent2.realmSet$ts(new Date(nextLong));
                }
            } else {
                analyticsEvent2.realmSet$ts(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (AnalyticsEvent) realm.copyToRealm((Realm) analyticsEvent, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, AnalyticsEvent analyticsEvent, Map<RealmModel, Long> map) {
        if (analyticsEvent instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) analyticsEvent;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(AnalyticsEvent.class);
        long nativePtr = table.getNativePtr();
        AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) realm.getSchema().getColumnInfo(AnalyticsEvent.class);
        long j = analyticsEventColumnInfo.idIndex;
        AnalyticsEvent analyticsEvent2 = analyticsEvent;
        Integer valueOf = Integer.valueOf(analyticsEvent2.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, analyticsEvent2.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(analyticsEvent2.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(analyticsEvent, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.eventTypeIndex, nativeFindFirstInt, analyticsEvent2.realmGet$eventType(), false);
        String realmGet$eventBody = analyticsEvent2.realmGet$eventBody();
        if (realmGet$eventBody != null) {
            Table.nativeSetString(nativePtr, analyticsEventColumnInfo.eventBodyIndex, nativeFindFirstInt, realmGet$eventBody, false);
        }
        String realmGet$status = analyticsEvent2.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(nativePtr, analyticsEventColumnInfo.statusIndex, nativeFindFirstInt, realmGet$status, false);
        }
        Date realmGet$ts = analyticsEvent2.realmGet$ts();
        if (realmGet$ts != null) {
            Table.nativeSetTimestamp(nativePtr, analyticsEventColumnInfo.tsIndex, nativeFindFirstInt, realmGet$ts.getTime(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(AnalyticsEvent.class);
        long nativePtr = table.getNativePtr();
        AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) realm.getSchema().getColumnInfo(AnalyticsEvent.class);
        long j = analyticsEventColumnInfo.idIndex;
        while (it.hasNext()) {
            AnalyticsEvent analyticsEvent = (AnalyticsEvent) it.next();
            if (!map.containsKey(analyticsEvent)) {
                if (analyticsEvent instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) analyticsEvent;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(analyticsEvent, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                AnalyticsEvent analyticsEvent2 = analyticsEvent;
                Integer valueOf = Integer.valueOf(analyticsEvent2.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, analyticsEvent2.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(analyticsEvent2.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(analyticsEvent, Long.valueOf(nativeFindFirstInt));
                Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.eventTypeIndex, nativeFindFirstInt, analyticsEvent2.realmGet$eventType(), false);
                String realmGet$eventBody = analyticsEvent2.realmGet$eventBody();
                if (realmGet$eventBody != null) {
                    Table.nativeSetString(nativePtr, analyticsEventColumnInfo.eventBodyIndex, nativeFindFirstInt, realmGet$eventBody, false);
                }
                String realmGet$status = analyticsEvent2.realmGet$status();
                if (realmGet$status != null) {
                    Table.nativeSetString(nativePtr, analyticsEventColumnInfo.statusIndex, nativeFindFirstInt, realmGet$status, false);
                }
                Date realmGet$ts = analyticsEvent2.realmGet$ts();
                if (realmGet$ts != null) {
                    Table.nativeSetTimestamp(nativePtr, analyticsEventColumnInfo.tsIndex, nativeFindFirstInt, realmGet$ts.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, AnalyticsEvent analyticsEvent, Map<RealmModel, Long> map) {
        if (analyticsEvent instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) analyticsEvent;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(AnalyticsEvent.class);
        long nativePtr = table.getNativePtr();
        AnalyticsEventColumnInfo analyticsEventColumnInfo = (AnalyticsEventColumnInfo) realm.getSchema().getColumnInfo(AnalyticsEvent.class);
        long j = analyticsEventColumnInfo.idIndex;
        AnalyticsEvent analyticsEvent2 = analyticsEvent;
        long nativeFindFirstInt = Integer.valueOf(analyticsEvent2.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, analyticsEvent2.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Integer.valueOf(analyticsEvent2.realmGet$id()));
        }
        map.put(analyticsEvent, Long.valueOf(nativeFindFirstInt));
        Table.nativeSetLong(nativePtr, analyticsEventColumnInfo.eventTypeIndex, nativeFindFirstInt, analyticsEvent2.realmGet$eventType(), false);
        String realmGet$eventBody = analyticsEvent2.realmGet$eventBody();
        if (realmGet$eventBody != null) {
            Table.nativeSetString(nativePtr, analyticsEventColumnInfo.eventBodyIndex, nativeFindFirstInt, realmGet$eventBody, false);
        } else {
            Table.nativeSetNull(nativePtr, analyticsEventColumnInfo.eventBodyIndex, nativeFindFirstInt, false);
        }
        String realmGet$status = analyticsEvent2.realmGet$status();
        if (realmGet$status != null) {
            Table.nativeSetString(nativePtr, analyticsEventColumnInfo.statusIndex, nativeFindFirstInt, realmGet$status, false);
        } else {
            Table.nativeSetNull(nativePtr, analyticsEventColumnInfo.statusIndex, nativeFindFirstInt, false);
        }
        Date realmGet$ts = analyticsEvent2.realmGet$ts();
        if (realmGet$ts != null) {
            Table.nativeSetTimestamp(nativePtr, analyticsEventColumnInfo.tsIndex, nativeFindFirstInt, realmGet$ts.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, analyticsEventColumnInfo.tsIndex, nativeFindFirstInt, false);
        }
        return nativeFindFirstInt;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_AnalyticsEventRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_privacystar_core_data_model_AnalyticsEventRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(AnalyticsEvent.class), false, Collections.emptyList());
        com_privacystar_core_data_model_AnalyticsEventRealmProxy com_privacystar_core_data_model_analyticseventrealmproxy = new com_privacystar_core_data_model_AnalyticsEventRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_analyticseventrealmproxy;
    }

    static AnalyticsEvent update(Realm realm, AnalyticsEventColumnInfo analyticsEventColumnInfo, AnalyticsEvent analyticsEvent, AnalyticsEvent analyticsEvent2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        AnalyticsEvent analyticsEvent3 = analyticsEvent2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(AnalyticsEvent.class), analyticsEventColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(analyticsEventColumnInfo.idIndex, Integer.valueOf(analyticsEvent3.realmGet$id()));
        osObjectBuilder.addInteger(analyticsEventColumnInfo.eventTypeIndex, Integer.valueOf(analyticsEvent3.realmGet$eventType()));
        osObjectBuilder.addString(analyticsEventColumnInfo.eventBodyIndex, analyticsEvent3.realmGet$eventBody());
        osObjectBuilder.addString(analyticsEventColumnInfo.statusIndex, analyticsEvent3.realmGet$status());
        osObjectBuilder.addDate(analyticsEventColumnInfo.tsIndex, analyticsEvent3.realmGet$ts());
        osObjectBuilder.updateExistingObject();
        return analyticsEvent;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_AnalyticsEventRealmProxy com_privacystar_core_data_model_analyticseventrealmproxy = (com_privacystar_core_data_model_AnalyticsEventRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_analyticseventrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_analyticseventrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_analyticseventrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (AnalyticsEventColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public String realmGet$eventBody() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.eventBodyIndex);
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public int realmGet$eventType() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.eventTypeIndex);
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public int realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public String realmGet$status() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.statusIndex);
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public Date realmGet$ts() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.tsIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.tsIndex);
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public void realmSet$eventBody(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.eventBodyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.eventBodyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.eventBodyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.eventBodyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public void realmSet$eventType(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.eventTypeIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.eventTypeIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public void realmSet$id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public void realmSet$status(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.statusIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.statusIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.statusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.statusIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.AnalyticsEvent, io.realm.AbstractC1910xbce7d778
    public void realmSet$ts(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.tsIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.tsIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.tsIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.tsIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("AnalyticsEvent = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append("}");
        sb.append(",");
        sb.append("{eventType:");
        sb.append(realmGet$eventType());
        sb.append("}");
        sb.append(",");
        sb.append("{eventBody:");
        sb.append(realmGet$eventBody() != null ? realmGet$eventBody() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{status:");
        sb.append(realmGet$status() != null ? realmGet$status() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{ts:");
        sb.append(realmGet$ts() != null ? realmGet$ts() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
