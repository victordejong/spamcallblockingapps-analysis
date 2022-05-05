package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.tmobile.services.nameid.model.MessageItem;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageItemRealmProxy.class */
public class com_tmobile_services_nameid_model_MessageItemRealmProxy extends MessageItem implements RealmObjectProxy, com_tmobile_services_nameid_model_MessageItemRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private MessageItemColumnInfo columnInfo;
    private ProxyState<MessageItem> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageItemRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_tmobile_services_nameid_model_MessageItemRealmProxy$MessageItemColumnInfo.class */
    public static final class MessageItemColumnInfo extends ColumnInfo {

        /* renamed from: e */
        long f20021e;

        /* renamed from: f */
        long f20022f;

        /* renamed from: g */
        long f20023g;

        /* renamed from: h */
        long f20024h;

        MessageItemColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo b = osSchemaInfo.m2701b("MessageItem");
            this.f20021e = m2833a("batchId", "batchId", b);
            this.f20022f = m2833a("messageHtml", "messageHtml", b);
            this.f20023g = m2833a("notificationTitle", "notificationTitle", b);
            this.f20024h = m2833a("notificationMessage", "notificationMessage", b);
        }

        @Override // io.realm.internal.ColumnInfo
        /* renamed from: b */
        protected final void mo2536b(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            MessageItemColumnInfo messageItemColumnInfo = (MessageItemColumnInfo) columnInfo;
            MessageItemColumnInfo messageItemColumnInfo2 = (MessageItemColumnInfo) columnInfo2;
            messageItemColumnInfo2.f20021e = messageItemColumnInfo.f20021e;
            messageItemColumnInfo2.f20022f = messageItemColumnInfo.f20022f;
            messageItemColumnInfo2.f20023g = messageItemColumnInfo.f20023g;
            messageItemColumnInfo2.f20024h = messageItemColumnInfo.f20024h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_tmobile_services_nameid_model_MessageItemRealmProxy() {
        this.proxyState.m3075n();
    }

    public static MessageItem copy(Realm realm, MessageItemColumnInfo messageItemColumnInfo, MessageItem messageItem, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(messageItem);
        if (realmObjectProxy != null) {
            return (MessageItem) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(MessageItem.class), set);
        osObjectBuilder.m2550h(messageItemColumnInfo.f20021e, messageItem.realmGet$batchId());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20022f, messageItem.realmGet$messageHtml());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20023g, messageItem.realmGet$notificationTitle());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20024h, messageItem.realmGet$notificationMessage());
        com_tmobile_services_nameid_model_MessageItemRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.m2549i());
        map.put(messageItem, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.MessageItem copyOrUpdate(io.realm.Realm r7, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy.MessageItemColumnInfo r8, com.tmobile.services.nameid.model.MessageItem r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy$MessageItemColumnInfo, com.tmobile.services.nameid.model.MessageItem, boolean, java.util.Map, java.util.Set):com.tmobile.services.nameid.model.MessageItem");
    }

    public static MessageItemColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new MessageItemColumnInfo(osSchemaInfo);
    }

    public static MessageItem createDetachedCopy(MessageItem messageItem, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        MessageItem messageItem2;
        if (i > i2 || messageItem == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(messageItem);
        if (cacheData == null) {
            MessageItem messageItem3 = new MessageItem();
            map.put(messageItem, new RealmObjectProxy.CacheData<>(i, messageItem3));
            messageItem2 = messageItem3;
        } else if (i >= cacheData.f20174a) {
            return (MessageItem) cacheData.f20175b;
        } else {
            messageItem2 = (MessageItem) cacheData.f20175b;
            cacheData.f20174a = i;
        }
        messageItem2.realmSet$batchId(messageItem.realmGet$batchId());
        messageItem2.realmSet$messageHtml(messageItem.realmGet$messageHtml());
        messageItem2.realmSet$notificationTitle(messageItem.realmGet$notificationTitle());
        messageItem2.realmSet$notificationMessage(messageItem.realmGet$notificationMessage());
        return messageItem2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("MessageItem", 4, 0);
        builder.m2747a("batchId", RealmFieldType.STRING, true, false, false);
        builder.m2747a("messageHtml", RealmFieldType.STRING, false, false, false);
        builder.m2747a("notificationTitle", RealmFieldType.STRING, false, false, false);
        builder.m2747a("notificationMessage", RealmFieldType.STRING, false, false, false);
        return builder.m2746b();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tmobile.services.nameid.model.MessageItem createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.tmobile.services.nameid.model.MessageItem");
    }

    @TargetApi(11)
    public static MessageItem createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        MessageItem messageItem = new MessageItem();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("batchId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageItem.realmSet$batchId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    messageItem.realmSet$batchId(null);
                }
                z = true;
            } else if (nextName.equals("messageHtml")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageItem.realmSet$messageHtml(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    messageItem.realmSet$messageHtml(null);
                }
            } else if (nextName.equals("notificationTitle")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    messageItem.realmSet$notificationTitle(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    messageItem.realmSet$notificationTitle(null);
                }
            } else if (!nextName.equals("notificationMessage")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                messageItem.realmSet$notificationMessage(jsonReader.nextString());
            } else {
                jsonReader.skipValue();
                messageItem.realmSet$notificationMessage(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (MessageItem) realm.m3046u0(messageItem, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'batchId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "MessageItem";
    }

    public static long insert(Realm realm, MessageItem messageItem, Map<RealmModel, Long> map) {
        if ((messageItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageItem)) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageItem;
            if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
            }
        }
        Table J0 = realm.m3061J0(MessageItem.class);
        long nativePtr = J0.getNativePtr();
        MessageItemColumnInfo messageItemColumnInfo = (MessageItemColumnInfo) realm.mo3059L().m2854g(MessageItem.class);
        long j = messageItemColumnInfo.f20021e;
        String realmGet$batchId = messageItem.realmGet$batchId();
        if ((realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId)) == -1) {
            long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$batchId);
            map.put(messageItem, Long.valueOf(createRowWithPrimaryKey));
            String realmGet$messageHtml = messageItem.realmGet$messageHtml();
            if (realmGet$messageHtml != null) {
                Table.nativeSetString(nativePtr, messageItemColumnInfo.f20022f, createRowWithPrimaryKey, realmGet$messageHtml, false);
            }
            String realmGet$notificationTitle = messageItem.realmGet$notificationTitle();
            if (realmGet$notificationTitle != null) {
                Table.nativeSetString(nativePtr, messageItemColumnInfo.f20023g, createRowWithPrimaryKey, realmGet$notificationTitle, false);
            }
            String realmGet$notificationMessage = messageItem.realmGet$notificationMessage();
            if (realmGet$notificationMessage != null) {
                Table.nativeSetString(nativePtr, messageItemColumnInfo.f20024h, createRowWithPrimaryKey, realmGet$notificationMessage, false);
            }
            return createRowWithPrimaryKey;
        }
        Table.m2656N(realmGet$batchId);
        throw null;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(MessageItem.class);
        long nativePtr = J0.getNativePtr();
        MessageItemColumnInfo messageItemColumnInfo = (MessageItemColumnInfo) realm.mo3059L().m2854g(MessageItem.class);
        long j = messageItemColumnInfo.f20021e;
        while (it.hasNext()) {
            MessageItem messageItem = (MessageItem) it.next();
            if (!map.containsKey(messageItem)) {
                if ((messageItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(messageItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$batchId = messageItem.realmGet$batchId();
                if ((realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId)) == -1) {
                    long createRowWithPrimaryKey = OsObject.createRowWithPrimaryKey(J0, j, realmGet$batchId);
                    map.put(messageItem, Long.valueOf(createRowWithPrimaryKey));
                    String realmGet$messageHtml = messageItem.realmGet$messageHtml();
                    if (realmGet$messageHtml != null) {
                        Table.nativeSetString(nativePtr, messageItemColumnInfo.f20022f, createRowWithPrimaryKey, realmGet$messageHtml, false);
                    }
                    String realmGet$notificationTitle = messageItem.realmGet$notificationTitle();
                    if (realmGet$notificationTitle != null) {
                        Table.nativeSetString(nativePtr, messageItemColumnInfo.f20023g, createRowWithPrimaryKey, realmGet$notificationTitle, false);
                    }
                    String realmGet$notificationMessage = messageItem.realmGet$notificationMessage();
                    if (realmGet$notificationMessage != null) {
                        Table.nativeSetString(nativePtr, messageItemColumnInfo.f20024h, createRowWithPrimaryKey, realmGet$notificationMessage, false);
                    }
                } else {
                    Table.m2656N(realmGet$batchId);
                    throw null;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long insertOrUpdate(io.realm.Realm r9, com.tmobile.services.nameid.model.MessageItem r10, java.util.Map<io.realm.RealmModel, java.lang.Long> r11) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxy.insertOrUpdate(io.realm.Realm, com.tmobile.services.nameid.model.MessageItem, java.util.Map):long");
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table J0 = realm.m3061J0(MessageItem.class);
        long nativePtr = J0.getNativePtr();
        MessageItemColumnInfo messageItemColumnInfo = (MessageItemColumnInfo) realm.mo3059L().m2854g(MessageItem.class);
        long j = messageItemColumnInfo.f20021e;
        while (it.hasNext()) {
            MessageItem messageItem = (MessageItem) it.next();
            if (!map.containsKey(messageItem)) {
                if ((messageItem instanceof RealmObjectProxy) && !RealmObject.isFrozen(messageItem)) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) messageItem;
                    if (realmObjectProxy.realmGet$proxyState().m3085d() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(realm.m3163K())) {
                        map.put(messageItem, Long.valueOf(realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey()));
                    }
                }
                String realmGet$batchId = messageItem.realmGet$batchId();
                long nativeFindFirstNull = realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(J0, j, realmGet$batchId);
                }
                map.put(messageItem, Long.valueOf(nativeFindFirstNull));
                String realmGet$messageHtml = messageItem.realmGet$messageHtml();
                if (realmGet$messageHtml != null) {
                    Table.nativeSetString(nativePtr, messageItemColumnInfo.f20022f, nativeFindFirstNull, realmGet$messageHtml, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageItemColumnInfo.f20022f, nativeFindFirstNull, false);
                }
                String realmGet$notificationTitle = messageItem.realmGet$notificationTitle();
                if (realmGet$notificationTitle != null) {
                    Table.nativeSetString(nativePtr, messageItemColumnInfo.f20023g, nativeFindFirstNull, realmGet$notificationTitle, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageItemColumnInfo.f20023g, nativeFindFirstNull, false);
                }
                String realmGet$notificationMessage = messageItem.realmGet$notificationMessage();
                if (realmGet$notificationMessage != null) {
                    Table.nativeSetString(nativePtr, messageItemColumnInfo.f20024h, nativeFindFirstNull, realmGet$notificationMessage, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageItemColumnInfo.f20024h, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_tmobile_services_nameid_model_MessageItemRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.f19804n.get();
        realmObjectContext.m3137g(baseRealm, row, baseRealm.mo3059L().m2854g(MessageItem.class), false, Collections.emptyList());
        com_tmobile_services_nameid_model_MessageItemRealmProxy com_tmobile_services_nameid_model_messageitemrealmproxy = new com_tmobile_services_nameid_model_MessageItemRealmProxy();
        realmObjectContext.m3143a();
        return com_tmobile_services_nameid_model_messageitemrealmproxy;
    }

    static MessageItem update(Realm realm, MessageItemColumnInfo messageItemColumnInfo, MessageItem messageItem, MessageItem messageItem2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.m3061J0(MessageItem.class), set);
        osObjectBuilder.m2550h(messageItemColumnInfo.f20021e, messageItem2.realmGet$batchId());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20022f, messageItem2.realmGet$messageHtml());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20023g, messageItem2.realmGet$notificationTitle());
        osObjectBuilder.m2550h(messageItemColumnInfo.f20024h, messageItem2.realmGet$notificationMessage());
        osObjectBuilder.m2548k();
        return messageItem;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com_tmobile_services_nameid_model_MessageItemRealmProxy.class != obj.getClass()) {
            return false;
        }
        com_tmobile_services_nameid_model_MessageItemRealmProxy com_tmobile_services_nameid_model_messageitemrealmproxy = (com_tmobile_services_nameid_model_MessageItemRealmProxy) obj;
        BaseRealm d = this.proxyState.m3085d();
        BaseRealm d2 = com_tmobile_services_nameid_model_messageitemrealmproxy.proxyState.m3085d();
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
        String t2 = com_tmobile_services_nameid_model_messageitemrealmproxy.proxyState.m3084e().getTable().m2633t();
        if (t != null) {
            if (!t.equals(t2)) {
                return false;
            }
        } else if (t2 != null) {
            return false;
        }
        return this.proxyState.m3084e().getObjectKey() == com_tmobile_services_nameid_model_messageitemrealmproxy.proxyState.m3084e().getObjectKey();
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
            this.columnInfo = (MessageItemColumnInfo) realmObjectContext.m3141c();
            ProxyState<MessageItem> proxyState = new ProxyState<>(this);
            this.proxyState = proxyState;
            proxyState.m3073p(realmObjectContext.m3139e());
            this.proxyState.m3072q(realmObjectContext.m3138f());
            this.proxyState.m3076m(realmObjectContext.m3142b());
            this.proxyState.m3074o(realmObjectContext.m3140d());
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$batchId() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20021e);
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$messageHtml() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20022f);
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$notificationMessage() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20024h);
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public String realmGet$notificationTitle() {
        this.proxyState.m3085d().m3151h();
        return this.proxyState.m3084e().getString(this.columnInfo.f20023g);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$batchId(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            throw new RealmException("Primary key field 'batchId' cannot be changed after object was created.");
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$messageHtml(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20022f);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20022f, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20022f, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20022f, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$notificationMessage(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20024h);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20024h, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20024h, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20024h, e.getObjectKey(), str, true);
            }
        }
    }

    @Override // com.tmobile.services.nameid.model.MessageItem, io.realm.com_tmobile_services_nameid_model_MessageItemRealmProxyInterface
    public void realmSet$notificationTitle(String str) {
        if (!this.proxyState.m3082g()) {
            this.proxyState.m3085d().m3151h();
            if (str == null) {
                this.proxyState.m3084e().setNull(this.columnInfo.f20023g);
            } else {
                this.proxyState.m3084e().setString(this.columnInfo.f20023g, str);
            }
        } else if (this.proxyState.m3086c()) {
            Row e = this.proxyState.m3084e();
            if (str == null) {
                e.getTable().m2659K(this.columnInfo.f20023g, e.getObjectKey(), true);
            } else {
                e.getTable().m2658L(this.columnInfo.f20023g, e.getObjectKey(), str, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("MessageItem = proxy[");
        sb.append("{batchId:");
        String str = "null";
        sb.append(realmGet$batchId() != null ? realmGet$batchId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{messageHtml:");
        sb.append(realmGet$messageHtml() != null ? realmGet$messageHtml() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{notificationTitle:");
        sb.append(realmGet$notificationTitle() != null ? realmGet$notificationTitle() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{notificationMessage:");
        if (realmGet$notificationMessage() != null) {
            str = realmGet$notificationMessage();
        }
        sb.append(str);
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
