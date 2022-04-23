package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.MessageFields;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_MessageRealmProxy.class */
public class com_privacystar_core_data_model_MessageRealmProxy extends Message implements RealmObjectProxy, com_privacystar_core_data_model_MessageRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private MessageColumnInfo columnInfo;
    private ProxyState<Message> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_MessageRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Message";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_MessageRealmProxy$MessageColumnInfo.class */
    public static final class MessageColumnInfo extends ColumnInfo {
        long batchIdIndex;
        long expirationIndex;
        long maxColumnIndexValue;
        long messageBodyIndex;
        long messageSubtitleIndex;
        long messageTitleIndex;
        long readIndex;
        long receivedDateIndex;

        MessageColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        MessageColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(7);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo("Message");
            this.batchIdIndex = addColumnDetails("batchId", "batchId", objectSchemaInfo);
            this.messageTitleIndex = addColumnDetails("messageTitle", "messageTitle", objectSchemaInfo);
            this.messageSubtitleIndex = addColumnDetails(MessageFields.MESSAGE_SUBTITLE, MessageFields.MESSAGE_SUBTITLE, objectSchemaInfo);
            this.messageBodyIndex = addColumnDetails(MessageFields.MESSAGE_BODY, MessageFields.MESSAGE_BODY, objectSchemaInfo);
            this.receivedDateIndex = addColumnDetails(MessageFields.RECEIVED_DATE, MessageFields.RECEIVED_DATE, objectSchemaInfo);
            this.readIndex = addColumnDetails("read", "read", objectSchemaInfo);
            this.expirationIndex = addColumnDetails("expiration", "expiration", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new MessageColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            MessageColumnInfo messageColumnInfo = (MessageColumnInfo) columnInfo;
            MessageColumnInfo messageColumnInfo2 = (MessageColumnInfo) columnInfo2;
            messageColumnInfo2.batchIdIndex = messageColumnInfo.batchIdIndex;
            messageColumnInfo2.messageTitleIndex = messageColumnInfo.messageTitleIndex;
            messageColumnInfo2.messageSubtitleIndex = messageColumnInfo.messageSubtitleIndex;
            messageColumnInfo2.messageBodyIndex = messageColumnInfo.messageBodyIndex;
            messageColumnInfo2.receivedDateIndex = messageColumnInfo.receivedDateIndex;
            messageColumnInfo2.readIndex = messageColumnInfo.readIndex;
            messageColumnInfo2.expirationIndex = messageColumnInfo.expirationIndex;
            messageColumnInfo2.maxColumnIndexValue = messageColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_MessageRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static Message copy(Realm realm, MessageColumnInfo messageColumnInfo, Message message, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(message);
        if (realmObjectProxy != null) {
            return (Message) realmObjectProxy;
        }
        Message message2 = message;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Message.class), messageColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(messageColumnInfo.batchIdIndex, message2.realmGet$batchId());
        osObjectBuilder.addString(messageColumnInfo.messageTitleIndex, message2.realmGet$messageTitle());
        osObjectBuilder.addString(messageColumnInfo.messageSubtitleIndex, message2.realmGet$messageSubtitle());
        osObjectBuilder.addString(messageColumnInfo.messageBodyIndex, message2.realmGet$messageBody());
        osObjectBuilder.addDate(messageColumnInfo.receivedDateIndex, message2.realmGet$receivedDate());
        osObjectBuilder.addBoolean(messageColumnInfo.readIndex, Boolean.valueOf(message2.realmGet$read()));
        osObjectBuilder.addDate(messageColumnInfo.expirationIndex, message2.realmGet$expiration());
        com_privacystar_core_data_model_MessageRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(message, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.Message copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_MessageRealmProxy.MessageColumnInfo r8, com.privacystar.core.data.model.Message r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_MessageRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_MessageRealmProxy$MessageColumnInfo, com.privacystar.core.data.model.Message, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.Message");
    }

    public static MessageColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new MessageColumnInfo(osSchemaInfo);
    }

    public static Message createDetachedCopy(Message message, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Message message2;
        if (i > i2 || message == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(message);
        if (cacheData == null) {
            Message message3 = new Message();
            map.put(message, new RealmObjectProxy.CacheData<>(i, message3));
            message2 = message3;
        } else if (i >= cacheData.minDepth) {
            return (Message) cacheData.object;
        } else {
            message2 = (Message) cacheData.object;
            cacheData.minDepth = i;
        }
        Message message4 = message2;
        Message message5 = message;
        message4.realmSet$batchId(message5.realmGet$batchId());
        message4.realmSet$messageTitle(message5.realmGet$messageTitle());
        message4.realmSet$messageSubtitle(message5.realmGet$messageSubtitle());
        message4.realmSet$messageBody(message5.realmGet$messageBody());
        message4.realmSet$receivedDate(message5.realmGet$receivedDate());
        message4.realmSet$read(message5.realmGet$read());
        message4.realmSet$expiration(message5.realmGet$expiration());
        return message2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder("Message", 7, 0);
        builder.addPersistedProperty("batchId", RealmFieldType.STRING, true, true, false);
        builder.addPersistedProperty("messageTitle", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(MessageFields.MESSAGE_SUBTITLE, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(MessageFields.MESSAGE_BODY, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(MessageFields.RECEIVED_DATE, RealmFieldType.DATE, false, true, false);
        builder.addPersistedProperty("read", RealmFieldType.BOOLEAN, false, false, true);
        builder.addPersistedProperty("expiration", RealmFieldType.DATE, false, true, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.Message createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_MessageRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.Message");
    }

    @TargetApi(11)
    public static Message createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        Message message = new Message();
        Message message2 = message;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("batchId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    message2.realmSet$batchId(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    message2.realmSet$batchId(null);
                }
                z = true;
            } else if (nextName.equals("messageTitle")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    message2.realmSet$messageTitle(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    message2.realmSet$messageTitle(null);
                }
            } else if (nextName.equals(MessageFields.MESSAGE_SUBTITLE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    message2.realmSet$messageSubtitle(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    message2.realmSet$messageSubtitle(null);
                }
            } else if (nextName.equals(MessageFields.MESSAGE_BODY)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    message2.realmSet$messageBody(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    message2.realmSet$messageBody(null);
                }
            } else if (nextName.equals(MessageFields.RECEIVED_DATE)) {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.skipValue();
                    message2.realmSet$receivedDate(null);
                } else if (jsonReader.peek() == JsonToken.NUMBER) {
                    long nextLong = jsonReader.nextLong();
                    if (nextLong > -1) {
                        message2.realmSet$receivedDate(new Date(nextLong));
                    }
                } else {
                    message2.realmSet$receivedDate(JsonUtils.stringToDate(jsonReader.nextString()));
                }
            } else if (nextName.equals("read")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    message2.realmSet$read(jsonReader.nextBoolean());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'read' to null.");
                }
            } else if (!nextName.equals("expiration")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.skipValue();
                message2.realmSet$expiration(null);
            } else if (jsonReader.peek() == JsonToken.NUMBER) {
                long nextLong2 = jsonReader.nextLong();
                if (nextLong2 > -1) {
                    message2.realmSet$expiration(new Date(nextLong2));
                }
            } else {
                message2.realmSet$expiration(JsonUtils.stringToDate(jsonReader.nextString()));
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Message) realm.copyToRealm((Realm) message, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'batchId'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return "Message";
    }

    public static long insert(Realm realm, Message message, Map<RealmModel, Long> map) {
        if (message instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) message;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Message.class);
        long nativePtr = table.getNativePtr();
        MessageColumnInfo messageColumnInfo = (MessageColumnInfo) realm.getSchema().getColumnInfo(Message.class);
        long j = messageColumnInfo.batchIdIndex;
        Message message2 = message;
        String realmGet$batchId = message2.realmGet$batchId();
        long nativeFindFirstNull = realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$batchId);
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$batchId);
        }
        map.put(message, Long.valueOf(nativeFindFirstNull));
        String realmGet$messageTitle = message2.realmGet$messageTitle();
        if (realmGet$messageTitle != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, realmGet$messageTitle, false);
        }
        String realmGet$messageSubtitle = message2.realmGet$messageSubtitle();
        if (realmGet$messageSubtitle != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, realmGet$messageSubtitle, false);
        }
        String realmGet$messageBody = message2.realmGet$messageBody();
        if (realmGet$messageBody != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, realmGet$messageBody, false);
        }
        Date realmGet$receivedDate = message2.realmGet$receivedDate();
        if (realmGet$receivedDate != null) {
            Table.nativeSetTimestamp(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, realmGet$receivedDate.getTime(), false);
        }
        Table.nativeSetBoolean(nativePtr, messageColumnInfo.readIndex, nativeFindFirstNull, message2.realmGet$read(), false);
        Date realmGet$expiration = message2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Message.class);
        long nativePtr = table.getNativePtr();
        MessageColumnInfo messageColumnInfo = (MessageColumnInfo) realm.getSchema().getColumnInfo(Message.class);
        long j = messageColumnInfo.batchIdIndex;
        while (it.hasNext()) {
            Message message = (Message) it.next();
            if (!map.containsKey(message)) {
                if (message instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) message;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(message, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Message message2 = message;
                String realmGet$batchId = message2.realmGet$batchId();
                long nativeFindFirstNull = realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$batchId);
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$batchId);
                }
                map.put(message, Long.valueOf(nativeFindFirstNull));
                String realmGet$messageTitle = message2.realmGet$messageTitle();
                if (realmGet$messageTitle != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, realmGet$messageTitle, false);
                }
                String realmGet$messageSubtitle = message2.realmGet$messageSubtitle();
                if (realmGet$messageSubtitle != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, realmGet$messageSubtitle, false);
                }
                String realmGet$messageBody = message2.realmGet$messageBody();
                if (realmGet$messageBody != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, realmGet$messageBody, false);
                }
                Date realmGet$receivedDate = message2.realmGet$receivedDate();
                if (realmGet$receivedDate != null) {
                    Table.nativeSetTimestamp(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, realmGet$receivedDate.getTime(), false);
                }
                Table.nativeSetBoolean(nativePtr, messageColumnInfo.readIndex, nativeFindFirstNull, message2.realmGet$read(), false);
                Date realmGet$expiration = message2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, Message message, Map<RealmModel, Long> map) {
        if (message instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) message;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Message.class);
        long nativePtr = table.getNativePtr();
        MessageColumnInfo messageColumnInfo = (MessageColumnInfo) realm.getSchema().getColumnInfo(Message.class);
        long j = messageColumnInfo.batchIdIndex;
        Message message2 = message;
        String realmGet$batchId = message2.realmGet$batchId();
        long nativeFindFirstNull = realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId);
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$batchId);
        }
        map.put(message, Long.valueOf(nativeFindFirstNull));
        String realmGet$messageTitle = message2.realmGet$messageTitle();
        if (realmGet$messageTitle != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, realmGet$messageTitle, false);
        } else {
            Table.nativeSetNull(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, false);
        }
        String realmGet$messageSubtitle = message2.realmGet$messageSubtitle();
        if (realmGet$messageSubtitle != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, realmGet$messageSubtitle, false);
        } else {
            Table.nativeSetNull(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, false);
        }
        String realmGet$messageBody = message2.realmGet$messageBody();
        if (realmGet$messageBody != null) {
            Table.nativeSetString(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, realmGet$messageBody, false);
        } else {
            Table.nativeSetNull(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, false);
        }
        Date realmGet$receivedDate = message2.realmGet$receivedDate();
        if (realmGet$receivedDate != null) {
            Table.nativeSetTimestamp(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, realmGet$receivedDate.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, false);
        }
        Table.nativeSetBoolean(nativePtr, messageColumnInfo.readIndex, nativeFindFirstNull, message2.realmGet$read(), false);
        Date realmGet$expiration = message2.realmGet$expiration();
        if (realmGet$expiration != null) {
            Table.nativeSetTimestamp(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
        } else {
            Table.nativeSetNull(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Message.class);
        long nativePtr = table.getNativePtr();
        MessageColumnInfo messageColumnInfo = (MessageColumnInfo) realm.getSchema().getColumnInfo(Message.class);
        long j = messageColumnInfo.batchIdIndex;
        while (it.hasNext()) {
            Message message = (Message) it.next();
            if (!map.containsKey(message)) {
                if (message instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) message;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(message, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Message message2 = message;
                String realmGet$batchId = message2.realmGet$batchId();
                long nativeFindFirstNull = realmGet$batchId == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstString(nativePtr, j, realmGet$batchId);
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, realmGet$batchId);
                }
                map.put(message, Long.valueOf(nativeFindFirstNull));
                String realmGet$messageTitle = message2.realmGet$messageTitle();
                if (realmGet$messageTitle != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, realmGet$messageTitle, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageColumnInfo.messageTitleIndex, nativeFindFirstNull, false);
                }
                String realmGet$messageSubtitle = message2.realmGet$messageSubtitle();
                if (realmGet$messageSubtitle != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, realmGet$messageSubtitle, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageColumnInfo.messageSubtitleIndex, nativeFindFirstNull, false);
                }
                String realmGet$messageBody = message2.realmGet$messageBody();
                if (realmGet$messageBody != null) {
                    Table.nativeSetString(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, realmGet$messageBody, false);
                } else {
                    Table.nativeSetNull(nativePtr, messageColumnInfo.messageBodyIndex, nativeFindFirstNull, false);
                }
                Date realmGet$receivedDate = message2.realmGet$receivedDate();
                if (realmGet$receivedDate != null) {
                    Table.nativeSetTimestamp(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, realmGet$receivedDate.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, messageColumnInfo.receivedDateIndex, nativeFindFirstNull, false);
                }
                Table.nativeSetBoolean(nativePtr, messageColumnInfo.readIndex, nativeFindFirstNull, message2.realmGet$read(), false);
                Date realmGet$expiration = message2.realmGet$expiration();
                if (realmGet$expiration != null) {
                    Table.nativeSetTimestamp(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, realmGet$expiration.getTime(), false);
                } else {
                    Table.nativeSetNull(nativePtr, messageColumnInfo.expirationIndex, nativeFindFirstNull, false);
                }
            }
        }
    }

    private static com_privacystar_core_data_model_MessageRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(Message.class), false, Collections.emptyList());
        com_privacystar_core_data_model_MessageRealmProxy com_privacystar_core_data_model_messagerealmproxy = new com_privacystar_core_data_model_MessageRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_messagerealmproxy;
    }

    static Message update(Realm realm, MessageColumnInfo messageColumnInfo, Message message, Message message2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Message message3 = message2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Message.class), messageColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addString(messageColumnInfo.batchIdIndex, message3.realmGet$batchId());
        osObjectBuilder.addString(messageColumnInfo.messageTitleIndex, message3.realmGet$messageTitle());
        osObjectBuilder.addString(messageColumnInfo.messageSubtitleIndex, message3.realmGet$messageSubtitle());
        osObjectBuilder.addString(messageColumnInfo.messageBodyIndex, message3.realmGet$messageBody());
        osObjectBuilder.addDate(messageColumnInfo.receivedDateIndex, message3.realmGet$receivedDate());
        osObjectBuilder.addBoolean(messageColumnInfo.readIndex, Boolean.valueOf(message3.realmGet$read()));
        osObjectBuilder.addDate(messageColumnInfo.expirationIndex, message3.realmGet$expiration());
        osObjectBuilder.updateExistingObject();
        return message;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_MessageRealmProxy com_privacystar_core_data_model_messagerealmproxy = (com_privacystar_core_data_model_MessageRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_messagerealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_messagerealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_messagerealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (MessageColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$batchId() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.batchIdIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public Date realmGet$expiration() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.expirationIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.expirationIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageBody() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.messageBodyIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageSubtitle() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.messageSubtitleIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public String realmGet$messageTitle() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.messageTitleIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public boolean realmGet$read() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getBoolean(this.columnInfo.readIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public Date realmGet$receivedDate() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.receivedDateIndex)) {
            return null;
        }
        return this.proxyState.getRow$realm().getDate(this.columnInfo.receivedDateIndex);
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$batchId(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'batchId' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$expiration(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.expirationIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.expirationIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.expirationIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.expirationIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageBody(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.messageBodyIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.messageBodyIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.messageBodyIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.messageBodyIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageSubtitle(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.messageSubtitleIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.messageSubtitleIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.messageSubtitleIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.messageSubtitleIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$messageTitle(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.messageTitleIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.messageTitleIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.messageTitleIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.messageTitleIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$read(boolean z) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setBoolean(this.columnInfo.readIndex, z);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setBoolean(this.columnInfo.readIndex, row$realm.getIndex(), z, true);
        }
    }

    @Override // com.privacystar.core.data.model.Message, io.realm.com_privacystar_core_data_model_MessageRealmProxyInterface
    public void realmSet$receivedDate(Date date) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (date == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.receivedDateIndex);
            } else {
                this.proxyState.getRow$realm().setDate(this.columnInfo.receivedDateIndex, date);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (date == null) {
                row$realm.getTable().setNull(this.columnInfo.receivedDateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setDate(this.columnInfo.receivedDateIndex, row$realm.getIndex(), date, true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("Message = proxy[");
        sb.append("{batchId:");
        sb.append(realmGet$batchId() != null ? realmGet$batchId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{messageTitle:");
        sb.append(realmGet$messageTitle() != null ? realmGet$messageTitle() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{messageSubtitle:");
        sb.append(realmGet$messageSubtitle() != null ? realmGet$messageSubtitle() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{messageBody:");
        sb.append(realmGet$messageBody() != null ? realmGet$messageBody() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{receivedDate:");
        sb.append(realmGet$receivedDate() != null ? realmGet$receivedDate() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{read:");
        sb.append(realmGet$read());
        sb.append("}");
        sb.append(",");
        sb.append("{expiration:");
        sb.append(realmGet$expiration() != null ? realmGet$expiration() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
