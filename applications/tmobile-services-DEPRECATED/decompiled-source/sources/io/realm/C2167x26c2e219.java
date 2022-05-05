package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
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
/* renamed from: io.realm.com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy */
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy.class */
public class C2167x26c2e219 extends EventSummaryItem implements RealmObjectProxy, AbstractC2168x99eef720 {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private EventSummaryItemColumnInfo columnInfo;
    private ProxyState<EventSummaryItem> proxyState;

    /* renamed from: io.realm.com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy$ClassNameHelper */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.realm.com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy$EventSummaryItemColumnInfo */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy$EventSummaryItemColumnInfo.class */
    public static final class EventSummaryItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20061e;

        /* renamed from: f */
        long f20062f;

        /* renamed from: g */
        long f20063g;

        /* renamed from: h */
        long f20064h;

        /* renamed from: i */
        long f20065i;

        /* renamed from: j */
        long f20066j;

        /* renamed from: k */
        long f20067k;

        /* renamed from: l */
        long f20068l;

        /* renamed from: m */
        long f20069m;

        /* renamed from: n */
        long f20070n;

        /* renamed from: o */
        long f20071o;

        /* renamed from: p */
        long f20072p;

        /* renamed from: q */
        long f20073q;

        /* renamed from: r */
        long f20074r;

        /* renamed from: s */
        long f20075s;

        /* renamed from: t */
        long f20076t;

        /* renamed from: u */
        long f20077u;

        /* renamed from: v */
        long f20078v;

        /* renamed from: w */
        long f20079w;

        EventSummaryItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(19);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("EventSummaryItem");
            this.f20061e = m2833a(Name.MARK, Name.MARK, b);
            this.f20062f = m2833a("date", "date", b);
            this.f20063g = m2833a("lastActivityTimeStamp", "lastActivityTimeStamp", b);
            this.f20064h = m2833a("originatingNumber", "originatingNumber", b);
            this.f20065i = m2833a("name", "name", b);
            this.f20066j = m2833a("lastBucketId", "lastBucketId", b);
            this.f20067k = m2833a("disposition", "disposition", b);
            this.f20068l = m2833a("messageCountReceived", "messageCountReceived", b);
            this.f20069m = m2833a("messageLastDateReceived", "messageLastDateReceived", b);
            this.f20070n = m2833a("messageCountBlocked", "messageCountBlocked", b);
            this.f20071o = m2833a("messageLastDateBlocked", "messageLastDateBlocked", b);
            this.f20072p = m2833a("callCountReceived", "callCountReceived", b);
            this.f20073q = m2833a("callLastDateReceived", "callLastDateReceived", b);
            this.f20074r = m2833a("callCountBlocked", "callCountBlocked", b);
            this.f20075s = m2833a("callLastDateBlocked", "callLastDateBlocked", b);
            this.f20076t = m2833a("callCountForwarded", "callCountForwarded", b);
            this.f20077u = m2833a("callLastDateForwarded", "callLastDateForwarded", b);
            this.f20078v = m2833a("callCountVoicemail", "callCountVoicemail", b);
            this.f20079w = m2833a("callLastDateVoicemail", "callLastDateVoicemail", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            EventSummaryItemColumnInfo eventSummaryItemColumnInfo = (EventSummaryItemColumnInfo) columnInfo;
            EventSummaryItemColumnInfo eventSummaryItemColumnInfo2 = (EventSummaryItemColumnInfo) columnInfo2;
            eventSummaryItemColumnInfo2.f20061e = eventSummaryItemColumnInfo.f20061e;
            eventSummaryItemColumnInfo2.f20062f = eventSummaryItemColumnInfo.f20062f;
            eventSummaryItemColumnInfo2.f20063g = eventSummaryItemColumnInfo.f20063g;
            eventSummaryItemColumnInfo2.f20064h = eventSummaryItemColumnInfo.f20064h;
            eventSummaryItemColumnInfo2.f20065i = eventSummaryItemColumnInfo.f20065i;
            eventSummaryItemColumnInfo2.f20066j = eventSummaryItemColumnInfo.f20066j;
            eventSummaryItemColumnInfo2.f20067k = eventSummaryItemColumnInfo.f20067k;
            eventSummaryItemColumnInfo2.f20068l = eventSummaryItemColumnInfo.f20068l;
            eventSummaryItemColumnInfo2.f20069m = eventSummaryItemColumnInfo.f20069m;
            eventSummaryItemColumnInfo2.f20070n = eventSummaryItemColumnInfo.f20070n;
            eventSummaryItemColumnInfo2.f20071o = eventSummaryItemColumnInfo.f20071o;
            eventSummaryItemColumnInfo2.f20072p = eventSummaryItemColumnInfo.f20072p;
            eventSummaryItemColumnInfo2.f20073q = eventSummaryItemColumnInfo.f20073q;
            eventSummaryItemColumnInfo2.f20074r = eventSummaryItemColumnInfo.f20074r;
            eventSummaryItemColumnInfo2.f20075s = eventSummaryItemColumnInfo.f20075s;
            eventSummaryItemColumnInfo2.f20076t = eventSummaryItemColumnInfo.f20076t;
            eventSummaryItemColumnInfo2.f20077u = eventSummaryItemColumnInfo.f20077u;
            eventSummaryItemColumnInfo2.f20078v = eventSummaryItemColumnInfo.f20078v;
            eventSummaryItemColumnInfo2.f20079w = eventSummaryItemColumnInfo.f20079w;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2167x26c2e219() {
        this.proxyState.m3075n();
    }

    public static EventSummaryItem copy(Realm realm, EventSummaryItemColumnInfo eventSummaryItemColumnInfo, EventSummaryItem eventSummaryItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(eventSummaryItem);
        if (realmObjectProxy != null) {
            return (EventSummaryItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(EventSummaryItem.class), set);
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20061e, eventSummaryItem.realmGet$id());
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20062f, eventSummaryItem.realmGet$date());
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20063g, eventSummaryItem.realmGet$lastActivityTimeStamp());
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20064h, eventSummaryItem.realmGet$originatingNumber());
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20065i, eventSummaryItem.realmGet$name());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20066j, Integer.valueOf(eventSummaryItem.realmGet$lastBucketId()));
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20067k, Integer.valueOf(eventSummaryItem.realmGet$disposition()));
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20068l, Integer.valueOf(eventSummaryItem.realmGet$messageCountReceived()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20069m, eventSummaryItem.realmGet$messageLastDateReceived());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20070n, Integer.valueOf(eventSummaryItem.realmGet$messageCountBlocked()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20071o, eventSummaryItem.realmGet$messageLastDateBlocked());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20072p, Integer.valueOf(eventSummaryItem.realmGet$callCountReceived()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20073q, eventSummaryItem.realmGet$callLastDateReceived());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20074r, Integer.valueOf(eventSummaryItem.realmGet$callCountBlocked()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20075s, eventSummaryItem.realmGet$callLastDateBlocked());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20076t, Integer.valueOf(eventSummaryItem.realmGet$callCountForwarded()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20077u, eventSummaryItem.realmGet$callLastDateForwarded());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20078v, Integer.valueOf(eventSummaryItem.realmGet$callCountVoicemail()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20079w, eventSummaryItem.realmGet$callLastDateVoicemail());
        C2167x26c2e219 newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(eventSummaryItem, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.activity.EventSummaryItem copyOrUpdate(io.realm.Realm r7, io.realm.C2167x26c2e219.EventSummaryItemColumnInfo r8, com.tmobile.services.nameid.model.activity.EventSummaryItem r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2167x26c2e219.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_activity_EventSummaryItemRealmProxy$EventSummaryItemColumnInfo, com.tmobile.services.nameid.model.activity.EventSummaryItem, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.activity.EventSummaryItem");
    }

    public static EventSummaryItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new EventSummaryItemColumnInfo(osSchemaInfo);
    }

    public static EventSummaryItem createDetachedCopy(EventSummaryItem eventSummaryItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        EventSummaryItem eventSummaryItem2;
        if (i > i2 || eventSummaryItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(eventSummaryItem);
        if (cacheData == null) {
            EventSummaryItem eventSummaryItem3 = new EventSummaryItem();
            map.put(eventSummaryItem, new RealmObjectProxy.CacheData<>(i, eventSummaryItem3));
            eventSummaryItem2 = eventSummaryItem3;
        } else if (i >= cacheData.f20174a) {
            return (EventSummaryItem) cacheData.f20175b;
        } else {
            eventSummaryItem2 = (EventSummaryItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        eventSummaryItem2.realmSet$id(eventSummaryItem.realmGet$id());
        eventSummaryItem2.realmSet$date(eventSummaryItem.realmGet$date());
        eventSummaryItem2.realmSet$lastActivityTimeStamp(eventSummaryItem.realmGet$lastActivityTimeStamp());
        eventSummaryItem2.realmSet$originatingNumber(eventSummaryItem.realmGet$originatingNumber());
        eventSummaryItem2.realmSet$name(eventSummaryItem.realmGet$name());
        eventSummaryItem2.realmSet$lastBucketId(eventSummaryItem.realmGet$lastBucketId());
        eventSummaryItem2.realmSet$disposition(eventSummaryItem.realmGet$disposition());
        eventSummaryItem2.realmSet$messageCountReceived(eventSummaryItem.realmGet$messageCountReceived());
        eventSummaryItem2.realmSet$messageLastDateReceived(eventSummaryItem.realmGet$messageLastDateReceived());
        eventSummaryItem2.realmSet$messageCountBlocked(eventSummaryItem.realmGet$messageCountBlocked());
        eventSummaryItem2.realmSet$messageLastDateBlocked(eventSummaryItem.realmGet$messageLastDateBlocked());
        eventSummaryItem2.realmSet$callCountReceived(eventSummaryItem.realmGet$callCountReceived());
        eventSummaryItem2.realmSet$callLastDateReceived(eventSummaryItem.realmGet$callLastDateReceived());
        eventSummaryItem2.realmSet$callCountBlocked(eventSummaryItem.realmGet$callCountBlocked());
        eventSummaryItem2.realmSet$callLastDateBlocked(eventSummaryItem.realmGet$callLastDateBlocked());
        eventSummaryItem2.realmSet$callCountForwarded(eventSummaryItem.realmGet$callCountForwarded());
        eventSummaryItem2.realmSet$callLastDateForwarded(eventSummaryItem.realmGet$callLastDateForwarded());
        eventSummaryItem2.realmSet$callCountVoicemail(eventSummaryItem.realmGet$callCountVoicemail());
        eventSummaryItem2.realmSet$callLastDateVoicemail(eventSummaryItem.realmGet$callLastDateVoicemail());
        return eventSummaryItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("EventSummaryItem", 19, 0);
        builder.m2747a(Name.MARK, RealmFieldType.STRING, true, false, false);
        builder.m2747a("date", RealmFieldType.DATE, false, false, false);
        builder.m2747a("lastActivityTimeStamp", RealmFieldType.DATE, false, false, false);
        builder.m2747a("originatingNumber", RealmFieldType.STRING, false, false, false);
        builder.m2747a("name", RealmFieldType.STRING, false, false, false);
        builder.m2747a("lastBucketId", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("disposition", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("messageCountReceived", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("messageLastDateReceived", RealmFieldType.DATE, false, false, false);
        builder.m2747a("messageCountBlocked", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("messageLastDateBlocked", RealmFieldType.DATE, false, false, false);
        builder.m2747a("callCountReceived", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("callLastDateReceived", RealmFieldType.DATE, false, false, false);
        builder.m2747a("callCountBlocked", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("callLastDateBlocked", RealmFieldType.DATE, false, false, false);
        builder.m2747a("callCountForwarded", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("callLastDateForwarded", RealmFieldType.DATE, false, false, false);
        builder.m2747a("callCountVoicemail", RealmFieldType.INTEGER, false, false, true);
        builder.m2747a("callLastDateVoicemail", RealmFieldType.DATE, false, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x045d  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0301  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.activity.EventSummaryItem createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2167x26c2e219.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.activity.EventSummaryItem");
    }

    @TargetApi(11)
    public static EventSummaryItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        EventSummaryItem eventSummaryItem = new EventSummaryItem();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(Name.MARK)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$id(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$id(null);
                }
                z = true;
            } else if (nextName.equals("date")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$date(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        eventSummaryItem.realmSet$date(new Date(nextLong));
                    }
                } else {
                    eventSummaryItem.realmSet$date(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("lastActivityTimeStamp")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$lastActivityTimeStamp(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong2 = jsonReader.nextLong();
                    if (nextLong2 > -1) {
                        eventSummaryItem.realmSet$lastActivityTimeStamp(new Date(nextLong2));
                    }
                } else {
                    eventSummaryItem.realmSet$lastActivityTimeStamp(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("originatingNumber")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$originatingNumber(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$originatingNumber(null);
                }
            } else if (nextName.equals("name")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$name(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$name(null);
                }
            } else if (nextName.equals("lastBucketId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$lastBucketId(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'lastBucketId' to null.");
                }
            } else if (nextName.equals("disposition")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$disposition(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'disposition' to null.");
                }
            } else if (nextName.equals("messageCountReceived")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$messageCountReceived(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'messageCountReceived' to null.");
                }
            } else if (nextName.equals("messageLastDateReceived")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$messageLastDateReceived(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong3 = jsonReader.nextLong();
                    if (nextLong3 > -1) {
                        eventSummaryItem.realmSet$messageLastDateReceived(new Date(nextLong3));
                    }
                } else {
                    eventSummaryItem.realmSet$messageLastDateReceived(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("messageCountBlocked")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$messageCountBlocked(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'messageCountBlocked' to null.");
                }
            } else if (nextName.equals("messageLastDateBlocked")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$messageLastDateBlocked(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong4 = jsonReader.nextLong();
                    if (nextLong4 > -1) {
                        eventSummaryItem.realmSet$messageLastDateBlocked(new Date(nextLong4));
                    }
                } else {
                    eventSummaryItem.realmSet$messageLastDateBlocked(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("callCountReceived")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$callCountReceived(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'callCountReceived' to null.");
                }
            } else if (nextName.equals("callLastDateReceived")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$callLastDateReceived(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong5 = jsonReader.nextLong();
                    if (nextLong5 > -1) {
                        eventSummaryItem.realmSet$callLastDateReceived(new Date(nextLong5));
                    }
                } else {
                    eventSummaryItem.realmSet$callLastDateReceived(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("callCountBlocked")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$callCountBlocked(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'callCountBlocked' to null.");
                }
            } else if (nextName.equals("callLastDateBlocked")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$callLastDateBlocked(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong6 = jsonReader.nextLong();
                    if (nextLong6 > -1) {
                        eventSummaryItem.realmSet$callLastDateBlocked(new Date(nextLong6));
                    }
                } else {
                    eventSummaryItem.realmSet$callLastDateBlocked(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("callCountForwarded")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$callCountForwarded(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'callCountForwarded' to null.");
                }
            } else if (nextName.equals("callLastDateForwarded")) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    eventSummaryItem.realmSet$callLastDateForwarded(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong7 = jsonReader.nextLong();
                    if (nextLong7 > -1) {
                        eventSummaryItem.realmSet$callLastDateForwarded(new Date(nextLong7));
                    }
                } else {
                    eventSummaryItem.realmSet$callLastDateForwarded(JsonUtils.m2586a(jsonReader.nextString()));
                }
            } else if (nextName.equals("callCountVoicemail")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    eventSummaryItem.realmSet$callCountVoicemail(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'callCountVoicemail' to null.");
                }
            } else if (!nextName.equals("callLastDateVoicemail")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                eventSummaryItem.realmSet$callLastDateVoicemail(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong8 = jsonReader.nextLong();
                if (nextLong8 > -1) {
                    eventSummaryItem.realmSet$callLastDateVoicemail(new Date(nextLong8));
                }
            } else {
                eventSummaryItem.realmSet$callLastDateVoicemail(JsonUtils.m2586a(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (EventSummaryItem) realm.m3046u0(eventSummaryItem, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "EventSummaryItem";
    }

    public static long insert(Realm realm, EventSummaryItem eventSummaryItem, Map<RealmModel, Long> map) {
        if ((eventSummaryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(eventSummaryItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) eventSummaryItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(EventSummaryItem.class);
        long nativePtr = J0.getNativePtr();
        EventSummaryItemColumnInfo eventSummaryItemColumnInfo = (EventSummaryItemColumnInfo) realm.mo3059L().m2854g(EventSummaryItem.class);
        long j = eventSummaryItemColumnInfo.f20061e;
        String realmGet$id = eventSummaryItem.realmGet$id();
        if ((realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
            map.put(eventSummaryItem, Long.valueOf(createRowWithPrimaryKey));
            Date realmGet$date = eventSummaryItem.realmGet$date();
            if (realmGet$date != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20062f, createRowWithPrimaryKey, realmGet$date.getTime(), false);
            }
            Date realmGet$lastActivityTimeStamp = eventSummaryItem.realmGet$lastActivityTimeStamp();
            if (realmGet$lastActivityTimeStamp != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20063g, createRowWithPrimaryKey, realmGet$lastActivityTimeStamp.getTime(), false);
            }
            String realmGet$originatingNumber = eventSummaryItem.realmGet$originatingNumber();
            if (realmGet$originatingNumber != null) {
                Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20064h, createRowWithPrimaryKey, realmGet$originatingNumber, false);
            }
            String realmGet$name = eventSummaryItem.realmGet$name();
            if (realmGet$name != null) {
                Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20065i, createRowWithPrimaryKey, realmGet$name, false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20066j, createRowWithPrimaryKey, eventSummaryItem.realmGet$lastBucketId(), false);
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20067k, createRowWithPrimaryKey, eventSummaryItem.realmGet$disposition(), false);
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20068l, createRowWithPrimaryKey, eventSummaryItem.realmGet$messageCountReceived(), false);
            Date realmGet$messageLastDateReceived = eventSummaryItem.realmGet$messageLastDateReceived();
            if (realmGet$messageLastDateReceived != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20069m, createRowWithPrimaryKey, realmGet$messageLastDateReceived.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20070n, createRowWithPrimaryKey, eventSummaryItem.realmGet$messageCountBlocked(), false);
            Date realmGet$messageLastDateBlocked = eventSummaryItem.realmGet$messageLastDateBlocked();
            if (realmGet$messageLastDateBlocked != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20071o, createRowWithPrimaryKey, realmGet$messageLastDateBlocked.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20072p, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountReceived(), false);
            Date realmGet$callLastDateReceived = eventSummaryItem.realmGet$callLastDateReceived();
            if (realmGet$callLastDateReceived != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20073q, createRowWithPrimaryKey, realmGet$callLastDateReceived.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20074r, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountBlocked(), false);
            Date realmGet$callLastDateBlocked = eventSummaryItem.realmGet$callLastDateBlocked();
            if (realmGet$callLastDateBlocked != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20075s, createRowWithPrimaryKey, realmGet$callLastDateBlocked.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20076t, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountForwarded(), false);
            Date realmGet$callLastDateForwarded = eventSummaryItem.realmGet$callLastDateForwarded();
            if (realmGet$callLastDateForwarded != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20077u, createRowWithPrimaryKey, realmGet$callLastDateForwarded.getTime(), false);
            }
            Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20078v, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountVoicemail(), false);
            Date realmGet$callLastDateVoicemail = eventSummaryItem.realmGet$callLastDateVoicemail();
            if (realmGet$callLastDateVoicemail != null) {
                Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20079w, createRowWithPrimaryKey, realmGet$callLastDateVoicemail.getTime(), false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$id);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(EventSummaryItem.class);
        long nativePtr = J0.getNativePtr();
        EventSummaryItemColumnInfo eventSummaryItemColumnInfo = (EventSummaryItemColumnInfo) realm.mo3059L().m2854g(EventSummaryItem.class);
        long j = eventSummaryItemColumnInfo.f20061e;
        while (it.hasNext()) {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
            if (!map.containsKey(eventSummaryItem)) {
                if ((eventSummaryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(eventSummaryItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) eventSummaryItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(eventSummaryItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$id = eventSummaryItem.realmGet$id();
                if ((realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
                    map.put(eventSummaryItem, Long.valueOf(createRowWithPrimaryKey));
                    Date realmGet$date = eventSummaryItem.realmGet$date();
                    if (realmGet$date != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20062f, createRowWithPrimaryKey, realmGet$date.getTime(), false);
                    }
                    Date realmGet$lastActivityTimeStamp = eventSummaryItem.realmGet$lastActivityTimeStamp();
                    if (realmGet$lastActivityTimeStamp != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20063g, createRowWithPrimaryKey, realmGet$lastActivityTimeStamp.getTime(), false);
                    }
                    String realmGet$originatingNumber = eventSummaryItem.realmGet$originatingNumber();
                    if (realmGet$originatingNumber != null) {
                        Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20064h, createRowWithPrimaryKey, realmGet$originatingNumber, false);
                    }
                    String realmGet$name = eventSummaryItem.realmGet$name();
                    if (realmGet$name != null) {
                        Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20065i, createRowWithPrimaryKey, realmGet$name, false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20066j, createRowWithPrimaryKey, eventSummaryItem.realmGet$lastBucketId(), false);
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20067k, createRowWithPrimaryKey, eventSummaryItem.realmGet$disposition(), false);
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20068l, createRowWithPrimaryKey, eventSummaryItem.realmGet$messageCountReceived(), false);
                    Date realmGet$messageLastDateReceived = eventSummaryItem.realmGet$messageLastDateReceived();
                    if (realmGet$messageLastDateReceived != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20069m, createRowWithPrimaryKey, realmGet$messageLastDateReceived.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20070n, createRowWithPrimaryKey, eventSummaryItem.realmGet$messageCountBlocked(), false);
                    Date realmGet$messageLastDateBlocked = eventSummaryItem.realmGet$messageLastDateBlocked();
                    if (realmGet$messageLastDateBlocked != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20071o, createRowWithPrimaryKey, realmGet$messageLastDateBlocked.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20072p, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountReceived(), false);
                    Date realmGet$callLastDateReceived = eventSummaryItem.realmGet$callLastDateReceived();
                    if (realmGet$callLastDateReceived != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20073q, createRowWithPrimaryKey, realmGet$callLastDateReceived.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20074r, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountBlocked(), false);
                    Date realmGet$callLastDateBlocked = eventSummaryItem.realmGet$callLastDateBlocked();
                    if (realmGet$callLastDateBlocked != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20075s, createRowWithPrimaryKey, realmGet$callLastDateBlocked.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20076t, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountForwarded(), false);
                    Date realmGet$callLastDateForwarded = eventSummaryItem.realmGet$callLastDateForwarded();
                    if (realmGet$callLastDateForwarded != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20077u, createRowWithPrimaryKey, realmGet$callLastDateForwarded.getTime(), false);
                    }
                    Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20078v, createRowWithPrimaryKey, eventSummaryItem.realmGet$callCountVoicemail(), false);
                    Date realmGet$callLastDateVoicemail = eventSummaryItem.realmGet$callLastDateVoicemail();
                    if (realmGet$callLastDateVoicemail != null) {
                        Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20079w, createRowWithPrimaryKey, realmGet$callLastDateVoicemail.getTime(), false);
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
    public static long insertOrUpdate(io.realm.Realm r10, com.tmobile.services.nameid.model.activity.EventSummaryItem r11, java.util.Map<io.realm.RealmModel, java.lang.Long> r12) {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C2167x26c2e219.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.activity.EventSummaryItem, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(EventSummaryItem.class);
        long nativePtr = J0.getNativePtr();
        EventSummaryItemColumnInfo eventSummaryItemColumnInfo = (EventSummaryItemColumnInfo) realm.mo3059L().m2854g(EventSummaryItem.class);
        long j = eventSummaryItemColumnInfo.f20061e;
        while (it.hasNext()) {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
            if (!map.containsKey(eventSummaryItem)) {
                if ((eventSummaryItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(eventSummaryItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) eventSummaryItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(eventSummaryItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$id = eventSummaryItem.realmGet$id();
                long nativeFindFirstNull = realmGet$id == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$id);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$id);
                }
                map.put(eventSummaryItem, Long.valueOf(nativeFindFirstNull));
                Date realmGet$date = eventSummaryItem.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20062f, nativeFindFirstNull, realmGet$date.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20062f, nativeFindFirstNull, false);
                }
                Date realmGet$lastActivityTimeStamp = eventSummaryItem.realmGet$lastActivityTimeStamp();
                if (realmGet$lastActivityTimeStamp != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20063g, nativeFindFirstNull, realmGet$lastActivityTimeStamp.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20063g, nativeFindFirstNull, false);
                }
                String realmGet$originatingNumber = eventSummaryItem.realmGet$originatingNumber();
                if (realmGet$originatingNumber != null) {
                    Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20064h, nativeFindFirstNull, realmGet$originatingNumber, false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20064h, nativeFindFirstNull, false);
                }
                String realmGet$name = eventSummaryItem.realmGet$name();
                if (realmGet$name != null) {
                    Table.nativeSetString(nativePtr, eventSummaryItemColumnInfo.f20065i, nativeFindFirstNull, realmGet$name, false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20065i, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20066j, nativeFindFirstNull, eventSummaryItem.realmGet$lastBucketId(), false);
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20067k, nativeFindFirstNull, eventSummaryItem.realmGet$disposition(), false);
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20068l, nativeFindFirstNull, eventSummaryItem.realmGet$messageCountReceived(), false);
                Date realmGet$messageLastDateReceived = eventSummaryItem.realmGet$messageLastDateReceived();
                if (realmGet$messageLastDateReceived != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20069m, nativeFindFirstNull, realmGet$messageLastDateReceived.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20069m, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20070n, nativeFindFirstNull, eventSummaryItem.realmGet$messageCountBlocked(), false);
                Date realmGet$messageLastDateBlocked = eventSummaryItem.realmGet$messageLastDateBlocked();
                if (realmGet$messageLastDateBlocked != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20071o, nativeFindFirstNull, realmGet$messageLastDateBlocked.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20071o, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20072p, nativeFindFirstNull, eventSummaryItem.realmGet$callCountReceived(), false);
                Date realmGet$callLastDateReceived = eventSummaryItem.realmGet$callLastDateReceived();
                if (realmGet$callLastDateReceived != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20073q, nativeFindFirstNull, realmGet$callLastDateReceived.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20073q, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20074r, nativeFindFirstNull, eventSummaryItem.realmGet$callCountBlocked(), false);
                Date realmGet$callLastDateBlocked = eventSummaryItem.realmGet$callLastDateBlocked();
                if (realmGet$callLastDateBlocked != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20075s, nativeFindFirstNull, realmGet$callLastDateBlocked.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20075s, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20076t, nativeFindFirstNull, eventSummaryItem.realmGet$callCountForwarded(), false);
                Date realmGet$callLastDateForwarded = eventSummaryItem.realmGet$callLastDateForwarded();
                if (realmGet$callLastDateForwarded != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20077u, nativeFindFirstNull, realmGet$callLastDateForwarded.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20077u, nativeFindFirstNull, false);
                }
                Table.nativeSetLong(nativePtr, eventSummaryItemColumnInfo.f20078v, nativeFindFirstNull, eventSummaryItem.realmGet$callCountVoicemail(), false);
                Date realmGet$callLastDateVoicemail = eventSummaryItem.realmGet$callLastDateVoicemail();
                if (realmGet$callLastDateVoicemail != null) {
                    Table.nativeSetTimestamp(nativePtr, eventSummaryItemColumnInfo.f20079w, nativeFindFirstNull, realmGet$callLastDateVoicemail.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, eventSummaryItemColumnInfo.f20079w, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static C2167x26c2e219 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(EventSummaryItem.class), false, Collections.emptyList());
        C2167x26c2e219 com_tmobile_services_nameid_model_activity_eventsummaryitemrealmproxy = new C2167x26c2e219();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_activity_eventsummaryitemrealmproxy;
    }

    static EventSummaryItem update(Realm realm, EventSummaryItemColumnInfo eventSummaryItemColumnInfo, EventSummaryItem eventSummaryItem, EventSummaryItem eventSummaryItem2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(EventSummaryItem.class), set);
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20061e, eventSummaryItem2.realmGet$id());
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20062f, eventSummaryItem2.realmGet$date());
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20063g, eventSummaryItem2.realmGet$lastActivityTimeStamp());
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20064h, eventSummaryItem2.realmGet$originatingNumber());
        osObjectBuilder.m2550h(eventSummaryItemColumnInfo.f20065i, eventSummaryItem2.realmGet$name());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20066j, Integer.valueOf(eventSummaryItem2.realmGet$lastBucketId()));
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20067k, Integer.valueOf(eventSummaryItem2.realmGet$disposition()));
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20068l, Integer.valueOf(eventSummaryItem2.realmGet$messageCountReceived()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20069m, eventSummaryItem2.realmGet$messageLastDateReceived());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20070n, Integer.valueOf(eventSummaryItem2.realmGet$messageCountBlocked()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20071o, eventSummaryItem2.realmGet$messageLastDateBlocked());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20072p, Integer.valueOf(eventSummaryItem2.realmGet$callCountReceived()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20073q, eventSummaryItem2.realmGet$callLastDateReceived());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20074r, Integer.valueOf(eventSummaryItem2.realmGet$callCountBlocked()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20075s, eventSummaryItem2.realmGet$callLastDateBlocked());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20076t, Integer.valueOf(eventSummaryItem2.realmGet$callCountForwarded()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20077u, eventSummaryItem2.realmGet$callLastDateForwarded());
        osObjectBuilder.m2552d(eventSummaryItemColumnInfo.f20078v, Integer.valueOf(eventSummaryItem2.realmGet$callCountVoicemail()));
        osObjectBuilder.m2553b(eventSummaryItemColumnInfo.f20079w, eventSummaryItem2.realmGet$callLastDateVoicemail());
        osObjectBuilder.m2548k();
        return eventSummaryItem;
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState == null) {
            BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
            this.columnInfo = (EventSummaryItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<EventSummaryItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$callCountBlocked() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20074r);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$callCountForwarded() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20076t);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$callCountReceived() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20072p);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$callCountVoicemail() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20078v);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateBlocked() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20075s)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20075s);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateForwarded() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20077u)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20077u);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateReceived() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20073q)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20073q);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateVoicemail() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20079w)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20079w);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$date() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20062f)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20062f);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$disposition() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20067k);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public String realmGet$id() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20061e);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$lastActivityTimeStamp() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20063g)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20063g);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$lastBucketId() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20066j);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$messageCountBlocked() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20070n);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public int realmGet$messageCountReceived() {
        this.proxyState.m3085d().m3151h();
        return (int) this.proxyState.m3084e().getLong(this.columnInfo.f20068l);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$messageLastDateBlocked() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20071o)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20071o);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public Date realmGet$messageLastDateReceived() {
        this.proxyState.m3085d().m3151h();
        if (this.proxyState.m3084e().isNull(this.columnInfo.f20069m)) {
            return null;
        }
        return this.proxyState.m3084e().getDate(this.columnInfo.f20069m);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public String realmGet$name() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20065i);
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public String realmGet$originatingNumber() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20064h);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callCountBlocked(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20074r, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20074r, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callCountForwarded(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20076t, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20076t, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callCountReceived(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20072p, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20072p, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callCountVoicemail(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20078v, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20078v, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateBlocked(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20075s);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20075s, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20075s, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20075s, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateForwarded(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20077u);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20077u, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20077u, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20077u, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateReceived(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20073q);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20073q, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20073q, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20073q, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateVoicemail(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20079w);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20079w, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20079w, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20079w, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$date(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20062f);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20062f, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20062f, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20062f, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$disposition(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20067k, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20067k, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$id(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$lastActivityTimeStamp(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20063g);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20063g, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20063g, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20063g, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$lastBucketId(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20066j, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20066j, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$messageCountBlocked(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20070n, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20070n, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$messageCountReceived(int i) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            this.proxyState.m3084e().setLong(this.columnInfo.f20068l, i);
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            e.getTable().m2660J(this.columnInfo.f20068l, e.getObjectKey(), i, true);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$messageLastDateBlocked(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20071o);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20071o, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20071o, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20071o, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$messageLastDateReceived(Date date) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (date == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20069m);
            } else {
                this.proxyState.m3084e().setDate(this.columnInfo.f20069m, date);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (date == null) {
                e.getTable().m2659K(this.columnInfo.f20069m, e.getObjectKey(), true);
            } else {
                e.getTable().m2661I(this.columnInfo.f20069m, e.getObjectKey(), date, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$name(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20065i);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20065i, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20065i, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20065i, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.EventSummaryItem, io.realm.AbstractC2168x99eef720
    public void realmSet$originatingNumber(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20064h);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20064h, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20064h, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20064h, e.getObjectKey(), str, true);
            }
        }
    }
}
