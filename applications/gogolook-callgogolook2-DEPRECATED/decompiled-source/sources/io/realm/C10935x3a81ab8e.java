package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy.class */
public class C10935x3a81ab8e extends LogsGroupRealmObject implements RealmObjectProxy, AbstractC10936x2b53014b {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public LogsGroupRealmObjectColumnInfo columnInfo;
    public ProxyState<LogsGroupRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "LogsGroupRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy$LogsGroupRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy$LogsGroupRealmObjectColumnInfo.class */
    public static final class LogsGroupRealmObjectColumnInfo extends ColumnInfo {
        public long blockedIndex;
        public long contact_idIndex;
        public long contentIndex;
        public long create_timeIndex;
        public long dateIndex;
        public long displayNameIndex;
        public long durationIndex;
        public long e164Index;
        public long group_id_1Index;
        public long idIndex;
        public long isNewIndex;
        public long maxColumnIndexValue;
        public long numberIndex;
        public long ref_idIndex;
        public long typeIndex;
        public long update_timeIndex;

        public LogsGroupRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public LogsGroupRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(15);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this.e164Index = addColumnDetails("e164", "e164", objectSchemaInfo);
            this.ref_idIndex = addColumnDetails("ref_id", "ref_id", objectSchemaInfo);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.dateIndex = addColumnDetails("date", "date", objectSchemaInfo);
            this.durationIndex = addColumnDetails("duration", "duration", objectSchemaInfo);
            this.contentIndex = addColumnDetails("content", "content", objectSchemaInfo);
            this.typeIndex = addColumnDetails("type", "type", objectSchemaInfo);
            this.isNewIndex = addColumnDetails(LogsGroupRealmObject.NEW, LogsGroupRealmObject.NEW, objectSchemaInfo);
            this.displayNameIndex = addColumnDetails(LogsGroupRealmObject.DISPLAY_NAME, LogsGroupRealmObject.DISPLAY_NAME, objectSchemaInfo);
            this.update_timeIndex = addColumnDetails(LogsGroupRealmObject.UPDATETIME, LogsGroupRealmObject.UPDATETIME, objectSchemaInfo);
            this.contact_idIndex = addColumnDetails("contact_id", "contact_id", objectSchemaInfo);
            this.blockedIndex = addColumnDetails(LogsGroupRealmObject.BLOCKED, LogsGroupRealmObject.BLOCKED, objectSchemaInfo);
            this.group_id_1Index = addColumnDetails(LogsGroupRealmObject.GROUP_ID_1, LogsGroupRealmObject.GROUP_ID_1, objectSchemaInfo);
            this.create_timeIndex = addColumnDetails(LogsGroupRealmObject.CREATETIME, LogsGroupRealmObject.CREATETIME, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new LogsGroupRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo = (LogsGroupRealmObjectColumnInfo) columnInfo;
            LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo2 = (LogsGroupRealmObjectColumnInfo) columnInfo2;
            logsGroupRealmObjectColumnInfo2.idIndex = logsGroupRealmObjectColumnInfo.idIndex;
            logsGroupRealmObjectColumnInfo2.e164Index = logsGroupRealmObjectColumnInfo.e164Index;
            logsGroupRealmObjectColumnInfo2.ref_idIndex = logsGroupRealmObjectColumnInfo.ref_idIndex;
            logsGroupRealmObjectColumnInfo2.numberIndex = logsGroupRealmObjectColumnInfo.numberIndex;
            logsGroupRealmObjectColumnInfo2.dateIndex = logsGroupRealmObjectColumnInfo.dateIndex;
            logsGroupRealmObjectColumnInfo2.durationIndex = logsGroupRealmObjectColumnInfo.durationIndex;
            logsGroupRealmObjectColumnInfo2.contentIndex = logsGroupRealmObjectColumnInfo.contentIndex;
            logsGroupRealmObjectColumnInfo2.typeIndex = logsGroupRealmObjectColumnInfo.typeIndex;
            logsGroupRealmObjectColumnInfo2.isNewIndex = logsGroupRealmObjectColumnInfo.isNewIndex;
            logsGroupRealmObjectColumnInfo2.displayNameIndex = logsGroupRealmObjectColumnInfo.displayNameIndex;
            logsGroupRealmObjectColumnInfo2.update_timeIndex = logsGroupRealmObjectColumnInfo.update_timeIndex;
            logsGroupRealmObjectColumnInfo2.contact_idIndex = logsGroupRealmObjectColumnInfo.contact_idIndex;
            logsGroupRealmObjectColumnInfo2.blockedIndex = logsGroupRealmObjectColumnInfo.blockedIndex;
            logsGroupRealmObjectColumnInfo2.group_id_1Index = logsGroupRealmObjectColumnInfo.group_id_1Index;
            logsGroupRealmObjectColumnInfo2.create_timeIndex = logsGroupRealmObjectColumnInfo.create_timeIndex;
            logsGroupRealmObjectColumnInfo2.maxColumnIndexValue = logsGroupRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10935x3a81ab8e() {
        this.proxyState.setConstructionFinished();
    }

    public static LogsGroupRealmObject copy(Realm realm, LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo, LogsGroupRealmObject logsGroupRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(logsGroupRealmObject);
        if (realmObjectProxy != null) {
            return (LogsGroupRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LogsGroupRealmObject.class), logsGroupRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.idIndex, Long.valueOf(logsGroupRealmObject.realmGet$id()));
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.e164Index, logsGroupRealmObject.realmGet$e164());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.ref_idIndex, logsGroupRealmObject.realmGet$ref_id());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.numberIndex, logsGroupRealmObject.realmGet$number());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.dateIndex, logsGroupRealmObject.realmGet$date());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.durationIndex, logsGroupRealmObject.realmGet$duration());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.contentIndex, logsGroupRealmObject.realmGet$content());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.typeIndex, logsGroupRealmObject.realmGet$type());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.isNewIndex, logsGroupRealmObject.realmGet$isNew());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.displayNameIndex, logsGroupRealmObject.realmGet$displayName());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.update_timeIndex, logsGroupRealmObject.realmGet$update_time());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.contact_idIndex, Integer.valueOf(logsGroupRealmObject.realmGet$contact_id()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.blockedIndex, Integer.valueOf(logsGroupRealmObject.realmGet$blocked()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.group_id_1Index, Integer.valueOf(logsGroupRealmObject.realmGet$group_id_1()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.create_timeIndex, Long.valueOf(logsGroupRealmObject.realmGet$create_time()));
        C10935x3a81ab8e newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(logsGroupRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10935x3a81ab8e.LogsGroupRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10935x3a81ab8e.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_logsgroup_LogsGroupRealmObjectRealmProxy$LogsGroupRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject");
    }

    public static LogsGroupRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new LogsGroupRealmObjectColumnInfo(osSchemaInfo);
    }

    public static LogsGroupRealmObject createDetachedCopy(LogsGroupRealmObject logsGroupRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        LogsGroupRealmObject logsGroupRealmObject2;
        if (i > i2 || logsGroupRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(logsGroupRealmObject);
        if (cacheData == null) {
            LogsGroupRealmObject logsGroupRealmObject3 = new LogsGroupRealmObject();
            map.put(logsGroupRealmObject, new RealmObjectProxy.CacheData<>(i, logsGroupRealmObject3));
            logsGroupRealmObject2 = logsGroupRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (LogsGroupRealmObject) cacheData.object;
        } else {
            logsGroupRealmObject2 = (LogsGroupRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        logsGroupRealmObject2.realmSet$id(logsGroupRealmObject.realmGet$id());
        logsGroupRealmObject2.realmSet$e164(logsGroupRealmObject.realmGet$e164());
        logsGroupRealmObject2.realmSet$ref_id(logsGroupRealmObject.realmGet$ref_id());
        logsGroupRealmObject2.realmSet$number(logsGroupRealmObject.realmGet$number());
        logsGroupRealmObject2.realmSet$date(logsGroupRealmObject.realmGet$date());
        logsGroupRealmObject2.realmSet$duration(logsGroupRealmObject.realmGet$duration());
        logsGroupRealmObject2.realmSet$content(logsGroupRealmObject.realmGet$content());
        logsGroupRealmObject2.realmSet$type(logsGroupRealmObject.realmGet$type());
        logsGroupRealmObject2.realmSet$isNew(logsGroupRealmObject.realmGet$isNew());
        logsGroupRealmObject2.realmSet$displayName(logsGroupRealmObject.realmGet$displayName());
        logsGroupRealmObject2.realmSet$update_time(logsGroupRealmObject.realmGet$update_time());
        logsGroupRealmObject2.realmSet$contact_id(logsGroupRealmObject.realmGet$contact_id());
        logsGroupRealmObject2.realmSet$blocked(logsGroupRealmObject.realmGet$blocked());
        logsGroupRealmObject2.realmSet$group_id_1(logsGroupRealmObject.realmGet$group_id_1());
        logsGroupRealmObject2.realmSet$create_time(logsGroupRealmObject.realmGet$create_time());
        return logsGroupRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 15, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("e164", RealmFieldType.STRING, false, true, false);
        builder.addPersistedProperty("ref_id", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("date", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("duration", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("content", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("type", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(LogsGroupRealmObject.NEW, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(LogsGroupRealmObject.DISPLAY_NAME, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(LogsGroupRealmObject.UPDATETIME, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("contact_id", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(LogsGroupRealmObject.BLOCKED, RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty(LogsGroupRealmObject.GROUP_ID_1, RealmFieldType.INTEGER, false, true, true);
        builder.addPersistedProperty(LogsGroupRealmObject.CREATETIME, RealmFieldType.INTEGER, false, false, true);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 884
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10935x3a81ab8e.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject");
    }

    @TargetApi(11)
    public static LogsGroupRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        LogsGroupRealmObject logsGroupRealmObject = new LogsGroupRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$e164(null);
                }
            } else if (nextName.equals("ref_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$ref_id(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$ref_id(null);
                }
            } else if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$number(null);
                }
            } else if (nextName.equals("date")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$date(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$date(null);
                }
            } else if (nextName.equals("duration")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$duration(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$duration(null);
                }
            } else if (nextName.equals("content")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$content(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$content(null);
                }
            } else if (nextName.equals("type")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$type(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$type(null);
                }
            } else if (nextName.equals(LogsGroupRealmObject.NEW)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$isNew(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$isNew(null);
                }
            } else if (nextName.equals(LogsGroupRealmObject.DISPLAY_NAME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$displayName(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$displayName(null);
                }
            } else if (nextName.equals(LogsGroupRealmObject.UPDATETIME)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$update_time(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    logsGroupRealmObject.realmSet$update_time(null);
                }
            } else if (nextName.equals("contact_id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$contact_id(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'contact_id' to null.");
                }
            } else if (nextName.equals(LogsGroupRealmObject.BLOCKED)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$blocked(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'blocked' to null.");
                }
            } else if (nextName.equals(LogsGroupRealmObject.GROUP_ID_1)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    logsGroupRealmObject.realmSet$group_id_1(jsonReader.nextInt());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'group_id_1' to null.");
                }
            } else if (!nextName.equals(LogsGroupRealmObject.CREATETIME)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                logsGroupRealmObject.realmSet$create_time(jsonReader.nextLong());
            } else {
                jsonReader.skipValue();
                throw new IllegalArgumentException("Trying to set non-nullable field 'create_time' to null.");
            }
        }
        jsonReader.endObject();
        if (z) {
            return (LogsGroupRealmObject) realm.copyToRealm((Realm) logsGroupRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, LogsGroupRealmObject logsGroupRealmObject, Map<RealmModel, Long> map) {
        if (logsGroupRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logsGroupRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LogsGroupRealmObject.class);
        long nativePtr = table.getNativePtr();
        LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo = (LogsGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(LogsGroupRealmObject.class);
        long j = logsGroupRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(logsGroupRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, logsGroupRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(logsGroupRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(logsGroupRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$e164 = logsGroupRealmObject.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        }
        Integer realmGet$ref_id = logsGroupRealmObject.realmGet$ref_id();
        if (realmGet$ref_id != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, realmGet$ref_id.longValue(), false);
        }
        String realmGet$number = logsGroupRealmObject.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
        }
        Long realmGet$date = logsGroupRealmObject.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.dateIndex, nativeFindFirstInt, realmGet$date.longValue(), false);
        }
        Long realmGet$duration = logsGroupRealmObject.realmGet$duration();
        if (realmGet$duration != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.durationIndex, nativeFindFirstInt, realmGet$duration.longValue(), false);
        }
        String realmGet$content = logsGroupRealmObject.realmGet$content();
        if (realmGet$content != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
        }
        Integer realmGet$type = logsGroupRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, realmGet$type.longValue(), false);
        }
        Integer realmGet$isNew = logsGroupRealmObject.realmGet$isNew();
        if (realmGet$isNew != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.isNewIndex, nativeFindFirstInt, realmGet$isNew.longValue(), false);
        }
        String realmGet$displayName = logsGroupRealmObject.realmGet$displayName();
        if (realmGet$displayName != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.displayNameIndex, nativeFindFirstInt, realmGet$displayName, false);
        }
        Long realmGet$update_time = logsGroupRealmObject.realmGet$update_time();
        if (realmGet$update_time != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.update_timeIndex, nativeFindFirstInt, realmGet$update_time.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.contact_idIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$contact_id(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.blockedIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$blocked(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.group_id_1Index, nativeFindFirstInt, logsGroupRealmObject.realmGet$group_id_1(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.create_timeIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$create_time(), false);
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(LogsGroupRealmObject.class);
        long nativePtr = table.getNativePtr();
        LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo = (LogsGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(LogsGroupRealmObject.class);
        long j = logsGroupRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            LogsGroupRealmObject logsGroupRealmObject = (LogsGroupRealmObject) it.next();
            if (!map.containsKey(logsGroupRealmObject)) {
                if (logsGroupRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logsGroupRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(logsGroupRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(logsGroupRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, logsGroupRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(logsGroupRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(logsGroupRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$e164 = logsGroupRealmObject.realmGet$e164();
                if (realmGet$e164 != null) {
                    Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
                }
                Integer realmGet$ref_id = logsGroupRealmObject.realmGet$ref_id();
                if (realmGet$ref_id != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, realmGet$ref_id.longValue(), false);
                }
                String realmGet$number = logsGroupRealmObject.realmGet$number();
                if (realmGet$number != null) {
                    Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
                }
                Long realmGet$date = logsGroupRealmObject.realmGet$date();
                if (realmGet$date != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.dateIndex, nativeFindFirstInt, realmGet$date.longValue(), false);
                }
                Long realmGet$duration = logsGroupRealmObject.realmGet$duration();
                if (realmGet$duration != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.durationIndex, nativeFindFirstInt, realmGet$duration.longValue(), false);
                }
                String realmGet$content = logsGroupRealmObject.realmGet$content();
                if (realmGet$content != null) {
                    Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
                }
                Integer realmGet$type = logsGroupRealmObject.realmGet$type();
                if (realmGet$type != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, realmGet$type.longValue(), false);
                }
                Integer realmGet$isNew = logsGroupRealmObject.realmGet$isNew();
                if (realmGet$isNew != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.isNewIndex, nativeFindFirstInt, realmGet$isNew.longValue(), false);
                }
                String realmGet$displayName = logsGroupRealmObject.realmGet$displayName();
                if (realmGet$displayName != null) {
                    Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.displayNameIndex, nativeFindFirstInt, realmGet$displayName, false);
                }
                Long realmGet$update_time = logsGroupRealmObject.realmGet$update_time();
                if (realmGet$update_time != null) {
                    Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.update_timeIndex, nativeFindFirstInt, realmGet$update_time.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.contact_idIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$contact_id(), false);
                Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.blockedIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$blocked(), false);
                Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.group_id_1Index, nativeFindFirstInt, logsGroupRealmObject.realmGet$group_id_1(), false);
                Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.create_timeIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$create_time(), false);
            }
        }
    }

    public static long insertOrUpdate(Realm realm, LogsGroupRealmObject logsGroupRealmObject, Map<RealmModel, Long> map) {
        if (logsGroupRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) logsGroupRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(LogsGroupRealmObject.class);
        long nativePtr = table.getNativePtr();
        LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo = (LogsGroupRealmObjectColumnInfo) realm.getSchema().getColumnInfo(LogsGroupRealmObject.class);
        long j = logsGroupRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(logsGroupRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, logsGroupRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(logsGroupRealmObject.realmGet$id()));
        }
        map.put(logsGroupRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$e164 = logsGroupRealmObject.realmGet$e164();
        if (realmGet$e164 != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.e164Index, nativeFindFirstInt, realmGet$e164, false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.e164Index, nativeFindFirstInt, false);
        }
        Integer realmGet$ref_id = logsGroupRealmObject.realmGet$ref_id();
        if (realmGet$ref_id != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, realmGet$ref_id.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.ref_idIndex, nativeFindFirstInt, false);
        }
        String realmGet$number = logsGroupRealmObject.realmGet$number();
        if (realmGet$number != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, realmGet$number, false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.numberIndex, nativeFindFirstInt, false);
        }
        Long realmGet$date = logsGroupRealmObject.realmGet$date();
        if (realmGet$date != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.dateIndex, nativeFindFirstInt, realmGet$date.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.dateIndex, nativeFindFirstInt, false);
        }
        Long realmGet$duration = logsGroupRealmObject.realmGet$duration();
        if (realmGet$duration != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.durationIndex, nativeFindFirstInt, realmGet$duration.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.durationIndex, nativeFindFirstInt, false);
        }
        String realmGet$content = logsGroupRealmObject.realmGet$content();
        if (realmGet$content != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.contentIndex, nativeFindFirstInt, realmGet$content, false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.contentIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$type = logsGroupRealmObject.realmGet$type();
        if (realmGet$type != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, realmGet$type.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.typeIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$isNew = logsGroupRealmObject.realmGet$isNew();
        if (realmGet$isNew != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.isNewIndex, nativeFindFirstInt, realmGet$isNew.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.isNewIndex, nativeFindFirstInt, false);
        }
        String realmGet$displayName = logsGroupRealmObject.realmGet$displayName();
        if (realmGet$displayName != null) {
            Table.nativeSetString(nativePtr, logsGroupRealmObjectColumnInfo.displayNameIndex, nativeFindFirstInt, realmGet$displayName, false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.displayNameIndex, nativeFindFirstInt, false);
        }
        Long realmGet$update_time = logsGroupRealmObject.realmGet$update_time();
        if (realmGet$update_time != null) {
            Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.update_timeIndex, nativeFindFirstInt, realmGet$update_time.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, logsGroupRealmObjectColumnInfo.update_timeIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.contact_idIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$contact_id(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.blockedIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$blocked(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.group_id_1Index, nativeFindFirstInt, logsGroupRealmObject.realmGet$group_id_1(), false);
        Table.nativeSetLong(nativePtr, logsGroupRealmObjectColumnInfo.create_timeIndex, nativeFindFirstInt, logsGroupRealmObject.realmGet$create_time(), false);
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
            Method dump skipped, instructions count: 786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10935x3a81ab8e.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10935x3a81ab8e newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(LogsGroupRealmObject.class), false, Collections.emptyList());
        C10935x3a81ab8e gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy = new C10935x3a81ab8e();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy;
    }

    public static LogsGroupRealmObject update(Realm realm, LogsGroupRealmObjectColumnInfo logsGroupRealmObjectColumnInfo, LogsGroupRealmObject logsGroupRealmObject, LogsGroupRealmObject logsGroupRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(LogsGroupRealmObject.class), logsGroupRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.idIndex, Long.valueOf(logsGroupRealmObject2.realmGet$id()));
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.e164Index, logsGroupRealmObject2.realmGet$e164());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.ref_idIndex, logsGroupRealmObject2.realmGet$ref_id());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.numberIndex, logsGroupRealmObject2.realmGet$number());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.dateIndex, logsGroupRealmObject2.realmGet$date());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.durationIndex, logsGroupRealmObject2.realmGet$duration());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.contentIndex, logsGroupRealmObject2.realmGet$content());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.typeIndex, logsGroupRealmObject2.realmGet$type());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.isNewIndex, logsGroupRealmObject2.realmGet$isNew());
        osObjectBuilder.addString(logsGroupRealmObjectColumnInfo.displayNameIndex, logsGroupRealmObject2.realmGet$displayName());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.update_timeIndex, logsGroupRealmObject2.realmGet$update_time());
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.contact_idIndex, Integer.valueOf(logsGroupRealmObject2.realmGet$contact_id()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.blockedIndex, Integer.valueOf(logsGroupRealmObject2.realmGet$blocked()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.group_id_1Index, Integer.valueOf(logsGroupRealmObject2.realmGet$group_id_1()));
        osObjectBuilder.addInteger(logsGroupRealmObjectColumnInfo.create_timeIndex, Long.valueOf(logsGroupRealmObject2.realmGet$create_time()));
        osObjectBuilder.updateExistingObject();
        return logsGroupRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10935x3a81ab8e.class != obj.getClass()) {
            return false;
        }
        C10935x3a81ab8e gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy = (C10935x3a81ab8e) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_logsgroup_logsgrouprealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (LogsGroupRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public int realmGet$blocked() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.blockedIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public int realmGet$contact_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.contact_idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public String realmGet$content() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.contentIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public long realmGet$create_time() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.create_timeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Long realmGet$date() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.dateIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.dateIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public String realmGet$displayName() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.displayNameIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Long realmGet$duration() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.durationIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.durationIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public String realmGet$e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public int realmGet$group_id_1() {
        this.proxyState.getRealm$realm().checkIfValid();
        return (int) this.proxyState.getRow$realm().getLong(this.columnInfo.group_id_1Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Integer realmGet$isNew() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.isNewIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.isNewIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public String realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo.numberIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Integer realmGet$ref_id() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.ref_idIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.ref_idIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Integer realmGet$type() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.typeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.typeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public Long realmGet$update_time() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.update_timeIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.update_timeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$blocked(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.blockedIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.blockedIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$contact_id(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.contact_idIndex, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.contact_idIndex, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
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

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$create_time(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.create_timeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.create_timeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$date(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.dateIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.dateIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.dateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.dateIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$displayName(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.displayNameIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.displayNameIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.displayNameIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.displayNameIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$duration(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.durationIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.durationIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.durationIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.durationIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
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

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$group_id_1(int i) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo.group_id_1Index, i);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo.group_id_1Index, row$realm.getIndex(), i, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$isNew(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.isNewIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.isNewIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.isNewIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.isNewIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo.numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo.numberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo.numberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$ref_id(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.ref_idIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.ref_idIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.ref_idIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.ref_idIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$type(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.typeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.typeIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.typeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.typeIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject, io.realm.AbstractC10936x2b53014b
    public void realmSet$update_time(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.update_timeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.update_timeIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.update_timeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.update_timeIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }
}
