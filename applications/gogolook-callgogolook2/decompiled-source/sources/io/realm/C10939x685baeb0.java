package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy.class */
public class C10939x685baeb0 extends MySpamRealmObject implements RealmObjectProxy, AbstractC10940x40cd6469 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public MySpamRealmObjectColumnInfo columnInfo;
    public ProxyState<MySpamRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "MySpamRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy$MySpamRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy$MySpamRealmObjectColumnInfo.class */
    public static final class MySpamRealmObjectColumnInfo extends ColumnInfo {
        public long _ccatIndex;
        public long _createtimeIndex;
        public long _ctypeIndex;
        public long _deletedIndex;
        public long _e164Index;
        public long _numberIndex;
        public long _reasonIndex;
        public long _statusIndex;
        public long _transactionIndex;
        public long _updatetimeIndex;
        public long idIndex;
        public long maxColumnIndexValue;

        public MySpamRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public MySpamRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(11);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._numberIndex = addColumnDetails("_number", "_number", objectSchemaInfo);
            this._e164Index = addColumnDetails("_e164", "_e164", objectSchemaInfo);
            this._reasonIndex = addColumnDetails("_reason", "_reason", objectSchemaInfo);
            this._ctypeIndex = addColumnDetails("_ctype", "_ctype", objectSchemaInfo);
            this._ccatIndex = addColumnDetails("_ccat", "_ccat", objectSchemaInfo);
            this._deletedIndex = addColumnDetails("_deleted", "_deleted", objectSchemaInfo);
            this._createtimeIndex = addColumnDetails("_createtime", "_createtime", objectSchemaInfo);
            this._updatetimeIndex = addColumnDetails("_updatetime", "_updatetime", objectSchemaInfo);
            this._statusIndex = addColumnDetails("_status", "_status", objectSchemaInfo);
            this._transactionIndex = addColumnDetails("_transaction", "_transaction", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new MySpamRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo = (MySpamRealmObjectColumnInfo) columnInfo;
            MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo2 = (MySpamRealmObjectColumnInfo) columnInfo2;
            mySpamRealmObjectColumnInfo2.idIndex = mySpamRealmObjectColumnInfo.idIndex;
            mySpamRealmObjectColumnInfo2._numberIndex = mySpamRealmObjectColumnInfo._numberIndex;
            mySpamRealmObjectColumnInfo2._e164Index = mySpamRealmObjectColumnInfo._e164Index;
            mySpamRealmObjectColumnInfo2._reasonIndex = mySpamRealmObjectColumnInfo._reasonIndex;
            mySpamRealmObjectColumnInfo2._ctypeIndex = mySpamRealmObjectColumnInfo._ctypeIndex;
            mySpamRealmObjectColumnInfo2._ccatIndex = mySpamRealmObjectColumnInfo._ccatIndex;
            mySpamRealmObjectColumnInfo2._deletedIndex = mySpamRealmObjectColumnInfo._deletedIndex;
            mySpamRealmObjectColumnInfo2._createtimeIndex = mySpamRealmObjectColumnInfo._createtimeIndex;
            mySpamRealmObjectColumnInfo2._updatetimeIndex = mySpamRealmObjectColumnInfo._updatetimeIndex;
            mySpamRealmObjectColumnInfo2._statusIndex = mySpamRealmObjectColumnInfo._statusIndex;
            mySpamRealmObjectColumnInfo2._transactionIndex = mySpamRealmObjectColumnInfo._transactionIndex;
            mySpamRealmObjectColumnInfo2.maxColumnIndexValue = mySpamRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10939x685baeb0() {
        this.proxyState.setConstructionFinished();
    }

    public static MySpamRealmObject copy(Realm realm, MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo, MySpamRealmObject mySpamRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(mySpamRealmObject);
        if (realmObjectProxy != null) {
            return (MySpamRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(MySpamRealmObject.class), mySpamRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo.idIndex, Long.valueOf(mySpamRealmObject.realmGet$id()));
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._numberIndex, mySpamRealmObject.realmGet$_number());
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._e164Index, mySpamRealmObject.realmGet$_e164());
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._reasonIndex, mySpamRealmObject.realmGet$_reason());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._ctypeIndex, mySpamRealmObject.realmGet$_ctype());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._ccatIndex, mySpamRealmObject.realmGet$_ccat());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._deletedIndex, mySpamRealmObject.realmGet$_deleted());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._createtimeIndex, Long.valueOf(mySpamRealmObject.realmGet$_createtime()));
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(mySpamRealmObject.realmGet$_updatetime()));
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._statusIndex, mySpamRealmObject.realmGet$_status());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._transactionIndex, mySpamRealmObject.realmGet$_transaction());
        C10939x685baeb0 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(mySpamRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10939x685baeb0.MySpamRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10939x685baeb0.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_myspam_MySpamRealmObjectRealmProxy$MySpamRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject");
    }

    public static MySpamRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new MySpamRealmObjectColumnInfo(osSchemaInfo);
    }

    public static MySpamRealmObject createDetachedCopy(MySpamRealmObject mySpamRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        MySpamRealmObject mySpamRealmObject2;
        if (i > i2 || mySpamRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(mySpamRealmObject);
        if (cacheData == null) {
            MySpamRealmObject mySpamRealmObject3 = new MySpamRealmObject();
            map.put(mySpamRealmObject, new RealmObjectProxy.CacheData<>(i, mySpamRealmObject3));
            mySpamRealmObject2 = mySpamRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (MySpamRealmObject) cacheData.object;
        } else {
            mySpamRealmObject2 = (MySpamRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        mySpamRealmObject2.realmSet$id(mySpamRealmObject.realmGet$id());
        mySpamRealmObject2.realmSet$_number(mySpamRealmObject.realmGet$_number());
        mySpamRealmObject2.realmSet$_e164(mySpamRealmObject.realmGet$_e164());
        mySpamRealmObject2.realmSet$_reason(mySpamRealmObject.realmGet$_reason());
        mySpamRealmObject2.realmSet$_ctype(mySpamRealmObject.realmGet$_ctype());
        mySpamRealmObject2.realmSet$_ccat(mySpamRealmObject.realmGet$_ccat());
        mySpamRealmObject2.realmSet$_deleted(mySpamRealmObject.realmGet$_deleted());
        mySpamRealmObject2.realmSet$_createtime(mySpamRealmObject.realmGet$_createtime());
        mySpamRealmObject2.realmSet$_updatetime(mySpamRealmObject.realmGet$_updatetime());
        mySpamRealmObject2.realmSet$_status(mySpamRealmObject.realmGet$_status());
        mySpamRealmObject2.realmSet$_transaction(mySpamRealmObject.realmGet$_transaction());
        return mySpamRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 11, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty("_number", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_e164", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_reason", RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty("_ctype", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_ccat", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_deleted", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_createtime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_updatetime", RealmFieldType.INTEGER, false, false, true);
        builder.addPersistedProperty("_status", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("_transaction", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0291  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10939x685baeb0.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject");
    }

    @TargetApi(11)
    public static MySpamRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        MySpamRealmObject mySpamRealmObject = new MySpamRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals("_number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_number(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_number(null);
                }
            } else if (nextName.equals("_e164")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_e164(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_e164(null);
                }
            } else if (nextName.equals("_reason")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_reason(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_reason(null);
                }
            } else if (nextName.equals("_ctype")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_ctype(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_ctype(null);
                }
            } else if (nextName.equals("_ccat")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_ccat(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_ccat(null);
                }
            } else if (nextName.equals("_deleted")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_deleted(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_deleted(null);
                }
            } else if (nextName.equals("_createtime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_createtime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_createtime' to null.");
                }
            } else if (nextName.equals("_updatetime")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_updatetime(jsonReader.nextLong());
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field '_updatetime' to null.");
                }
            } else if (nextName.equals("_status")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mySpamRealmObject.realmSet$_status(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    mySpamRealmObject.realmSet$_status(null);
                }
            } else if (!nextName.equals("_transaction")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                mySpamRealmObject.realmSet$_transaction(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                mySpamRealmObject.realmSet$_transaction(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (MySpamRealmObject) realm.copyToRealm((Realm) mySpamRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, MySpamRealmObject mySpamRealmObject, Map<RealmModel, Long> map) {
        if (mySpamRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mySpamRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(MySpamRealmObject.class);
        long nativePtr = table.getNativePtr();
        MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo = (MySpamRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MySpamRealmObject.class);
        long j = mySpamRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(mySpamRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, mySpamRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mySpamRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(mySpamRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = mySpamRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        }
        String realmGet$_e164 = mySpamRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        }
        String realmGet$_reason = mySpamRealmObject.realmGet$_reason();
        if (realmGet$_reason != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
        }
        Integer realmGet$_ctype = mySpamRealmObject.realmGet$_ctype();
        if (realmGet$_ctype != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
        }
        Integer realmGet$_ccat = mySpamRealmObject.realmGet$_ccat();
        if (realmGet$_ccat != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
        }
        Integer realmGet$_deleted = mySpamRealmObject.realmGet$_deleted();
        if (realmGet$_deleted != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, realmGet$_deleted.longValue(), false);
        }
        Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = mySpamRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        }
        Integer realmGet$_transaction = mySpamRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(MySpamRealmObject.class);
        long nativePtr = table.getNativePtr();
        MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo = (MySpamRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MySpamRealmObject.class);
        long j = mySpamRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            MySpamRealmObject mySpamRealmObject = (MySpamRealmObject) it.next();
            if (!map.containsKey(mySpamRealmObject)) {
                if (mySpamRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mySpamRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(mySpamRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(mySpamRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, mySpamRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mySpamRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(mySpamRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_number = mySpamRealmObject.realmGet$_number();
                if (realmGet$_number != null) {
                    Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
                }
                String realmGet$_e164 = mySpamRealmObject.realmGet$_e164();
                if (realmGet$_e164 != null) {
                    Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
                }
                String realmGet$_reason = mySpamRealmObject.realmGet$_reason();
                if (realmGet$_reason != null) {
                    Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
                }
                Integer realmGet$_ctype = mySpamRealmObject.realmGet$_ctype();
                if (realmGet$_ctype != null) {
                    Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
                }
                Integer realmGet$_ccat = mySpamRealmObject.realmGet$_ccat();
                if (realmGet$_ccat != null) {
                    Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
                }
                Integer realmGet$_deleted = mySpamRealmObject.realmGet$_deleted();
                if (realmGet$_deleted != null) {
                    Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, realmGet$_deleted.longValue(), false);
                }
                Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_createtime(), false);
                Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_updatetime(), false);
                Integer realmGet$_status = mySpamRealmObject.realmGet$_status();
                if (realmGet$_status != null) {
                    Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
                }
                Integer realmGet$_transaction = mySpamRealmObject.realmGet$_transaction();
                if (realmGet$_transaction != null) {
                    Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, MySpamRealmObject mySpamRealmObject, Map<RealmModel, Long> map) {
        if (mySpamRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mySpamRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(MySpamRealmObject.class);
        long nativePtr = table.getNativePtr();
        MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo = (MySpamRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MySpamRealmObject.class);
        long j = mySpamRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(mySpamRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, mySpamRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mySpamRealmObject.realmGet$id()));
        }
        map.put(mySpamRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_number = mySpamRealmObject.realmGet$_number();
        if (realmGet$_number != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, realmGet$_number, false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._numberIndex, nativeFindFirstInt, false);
        }
        String realmGet$_e164 = mySpamRealmObject.realmGet$_e164();
        if (realmGet$_e164 != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._e164Index, nativeFindFirstInt, realmGet$_e164, false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._e164Index, nativeFindFirstInt, false);
        }
        String realmGet$_reason = mySpamRealmObject.realmGet$_reason();
        if (realmGet$_reason != null) {
            Table.nativeSetString(nativePtr, mySpamRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, realmGet$_reason, false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._reasonIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_ctype = mySpamRealmObject.realmGet$_ctype();
        if (realmGet$_ctype != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, realmGet$_ctype.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._ctypeIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_ccat = mySpamRealmObject.realmGet$_ccat();
        if (realmGet$_ccat != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, realmGet$_ccat.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._ccatIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_deleted = mySpamRealmObject.realmGet$_deleted();
        if (realmGet$_deleted != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, realmGet$_deleted.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._deletedIndex, nativeFindFirstInt, false);
        }
        Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._createtimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_createtime(), false);
        Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._updatetimeIndex, nativeFindFirstInt, mySpamRealmObject.realmGet$_updatetime(), false);
        Integer realmGet$_status = mySpamRealmObject.realmGet$_status();
        if (realmGet$_status != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, realmGet$_status.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._statusIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$_transaction = mySpamRealmObject.realmGet$_transaction();
        if (realmGet$_transaction != null) {
            Table.nativeSetLong(nativePtr, mySpamRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, realmGet$_transaction.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mySpamRealmObjectColumnInfo._transactionIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10939x685baeb0.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10939x685baeb0 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(MySpamRealmObject.class), false, Collections.emptyList());
        C10939x685baeb0 gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy = new C10939x685baeb0();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy;
    }

    public static MySpamRealmObject update(Realm realm, MySpamRealmObjectColumnInfo mySpamRealmObjectColumnInfo, MySpamRealmObject mySpamRealmObject, MySpamRealmObject mySpamRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(MySpamRealmObject.class), mySpamRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo.idIndex, Long.valueOf(mySpamRealmObject2.realmGet$id()));
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._numberIndex, mySpamRealmObject2.realmGet$_number());
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._e164Index, mySpamRealmObject2.realmGet$_e164());
        osObjectBuilder.addString(mySpamRealmObjectColumnInfo._reasonIndex, mySpamRealmObject2.realmGet$_reason());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._ctypeIndex, mySpamRealmObject2.realmGet$_ctype());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._ccatIndex, mySpamRealmObject2.realmGet$_ccat());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._deletedIndex, mySpamRealmObject2.realmGet$_deleted());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._createtimeIndex, Long.valueOf(mySpamRealmObject2.realmGet$_createtime()));
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._updatetimeIndex, Long.valueOf(mySpamRealmObject2.realmGet$_updatetime()));
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._statusIndex, mySpamRealmObject2.realmGet$_status());
        osObjectBuilder.addInteger(mySpamRealmObjectColumnInfo._transactionIndex, mySpamRealmObject2.realmGet$_transaction());
        osObjectBuilder.updateExistingObject();
        return mySpamRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10939x685baeb0.class != obj.getClass()) {
            return false;
        }
        C10939x685baeb0 gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy = (C10939x685baeb0) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_myspam_myspamrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (MySpamRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public Integer realmGet$_ccat() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._ccatIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._ccatIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public long realmGet$_createtime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._createtimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public Integer realmGet$_ctype() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._ctypeIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._ctypeIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public Integer realmGet$_deleted() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._deletedIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._deletedIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public String realmGet$_e164() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._e164Index);
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public String realmGet$_number() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._numberIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public String realmGet$_reason() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._reasonIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public Integer realmGet$_status() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._statusIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._statusIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public Integer realmGet$_transaction() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._transactionIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo._transactionIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public long realmGet$_updatetime() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo._updatetimeIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_ccat(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._ccatIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._ccatIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._ccatIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._ccatIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_createtime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._createtimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._createtimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_ctype(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._ctypeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._ctypeIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._ctypeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._ctypeIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_deleted(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._deletedIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._deletedIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._deletedIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._deletedIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_e164(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._e164Index);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._e164Index, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._e164Index, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._e164Index, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_number(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._numberIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._numberIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._numberIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._numberIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_reason(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._reasonIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._reasonIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._reasonIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._reasonIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_status(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._statusIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._statusIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._statusIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._statusIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_transaction(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._transactionIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._transactionIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo._transactionIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._transactionIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$_updatetime(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            this.proxyState.getRow$realm().setLong(this.columnInfo._updatetimeIndex, j);
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            row$realm.getTable().setLong(this.columnInfo._updatetimeIndex, row$realm.getIndex(), j, true);
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject, io.realm.AbstractC10940x40cd6469
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("MySpamRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_number:");
        String realmGet$_number = realmGet$_number();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_number != null ? realmGet$_number() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_e164:");
        sb.append(realmGet$_e164() != null ? realmGet$_e164() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_reason:");
        sb.append(realmGet$_reason() != null ? realmGet$_reason() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_ctype:");
        sb.append(realmGet$_ctype() != null ? realmGet$_ctype() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_ccat:");
        sb.append(realmGet$_ccat() != null ? realmGet$_ccat() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_deleted:");
        sb.append(realmGet$_deleted() != null ? realmGet$_deleted() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_createtime:");
        sb.append(realmGet$_createtime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_updatetime:");
        sb.append(realmGet$_updatetime());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_status:");
        sb.append(realmGet$_status() != null ? realmGet$_status() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_transaction:");
        if (realmGet$_transaction() != null) {
            obj = realmGet$_transaction();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
