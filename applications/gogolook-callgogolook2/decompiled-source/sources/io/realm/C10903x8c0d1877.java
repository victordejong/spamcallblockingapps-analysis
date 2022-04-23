package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
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
/* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy */
/* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy.class */
public class C10903x8c0d1877 extends MmsBlockLogRealmObject implements RealmObjectProxy, AbstractC10904xb8b90a82 {
    public static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    public MmsBlockLogRealmObjectColumnInfo columnInfo;
    public ProxyState<MmsBlockLogRealmObject> proxyState;

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy$ClassNameHelper */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "MmsBlockLogRealmObject";
    }

    /* renamed from: io.realm.gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy$MmsBlockLogRealmObjectColumnInfo */
    /* loaded from: classes3-dex2jar.jar:io/realm/gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy$MmsBlockLogRealmObjectColumnInfo.class */
    public static final class MmsBlockLogRealmObjectColumnInfo extends ColumnInfo {
        public long _mms_expire_dateIndex;
        public long _mms_urlIndex;
        public long charsetIndex;
        public long idIndex;
        public long maxColumnIndexValue;
        public long mms_sizeIndex;
        public long sub_csIndex;

        public MmsBlockLogRealmObjectColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        public MmsBlockLogRealmObjectColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(6);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.idIndex = addColumnDetails("id", "id", objectSchemaInfo);
            this._mms_urlIndex = addColumnDetails(MmsBlockLogRealmObject.MMS_URL, MmsBlockLogRealmObject.MMS_URL, objectSchemaInfo);
            this.mms_sizeIndex = addColumnDetails(MmsBlockLogRealmObject.MMS_SIZE, MmsBlockLogRealmObject.MMS_SIZE, objectSchemaInfo);
            this._mms_expire_dateIndex = addColumnDetails(MmsBlockLogRealmObject.MMS_EXPIRE_DATE, MmsBlockLogRealmObject.MMS_EXPIRE_DATE, objectSchemaInfo);
            this.sub_csIndex = addColumnDetails(MmsBlockLogRealmObject.SUB_CS, MmsBlockLogRealmObject.SUB_CS, objectSchemaInfo);
            this.charsetIndex = addColumnDetails(MmsBlockLogRealmObject.ADDRESS_CHARSET, MmsBlockLogRealmObject.ADDRESS_CHARSET, objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        public final ColumnInfo copy(boolean z) {
            return new MmsBlockLogRealmObjectColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        public final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo = (MmsBlockLogRealmObjectColumnInfo) columnInfo;
            MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo2 = (MmsBlockLogRealmObjectColumnInfo) columnInfo2;
            mmsBlockLogRealmObjectColumnInfo2.idIndex = mmsBlockLogRealmObjectColumnInfo.idIndex;
            mmsBlockLogRealmObjectColumnInfo2._mms_urlIndex = mmsBlockLogRealmObjectColumnInfo._mms_urlIndex;
            mmsBlockLogRealmObjectColumnInfo2.mms_sizeIndex = mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex;
            mmsBlockLogRealmObjectColumnInfo2._mms_expire_dateIndex = mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex;
            mmsBlockLogRealmObjectColumnInfo2.sub_csIndex = mmsBlockLogRealmObjectColumnInfo.sub_csIndex;
            mmsBlockLogRealmObjectColumnInfo2.charsetIndex = mmsBlockLogRealmObjectColumnInfo.charsetIndex;
            mmsBlockLogRealmObjectColumnInfo2.maxColumnIndexValue = mmsBlockLogRealmObjectColumnInfo.maxColumnIndexValue;
        }
    }

    public C10903x8c0d1877() {
        this.proxyState.setConstructionFinished();
    }

    public static MmsBlockLogRealmObject copy(Realm realm, MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo, MmsBlockLogRealmObject mmsBlockLogRealmObject, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(mmsBlockLogRealmObject);
        if (realmObjectProxy != null) {
            return (MmsBlockLogRealmObject) realmObjectProxy;
        }
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(MmsBlockLogRealmObject.class), mmsBlockLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.idIndex, Long.valueOf(mmsBlockLogRealmObject.realmGet$id()));
        osObjectBuilder.addString(mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, mmsBlockLogRealmObject.realmGet$_mms_url());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, mmsBlockLogRealmObject.realmGet$mms_size());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, mmsBlockLogRealmObject.realmGet$_mms_expire_date());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.sub_csIndex, mmsBlockLogRealmObject.realmGet$sub_cs());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.charsetIndex, mmsBlockLogRealmObject.realmGet$charset());
        C10903x8c0d1877 newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(mmsBlockLogRealmObject, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject copyOrUpdate(io.realm.Realm r7, io.realm.C10903x8c0d1877.MmsBlockLogRealmObjectColumnInfo r8, gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10903x8c0d1877.copyOrUpdate(io.realm.Realm, io.realm.gogolook_callgogolook2_realm_obj_block_MmsBlockLogRealmObjectRealmProxy$MmsBlockLogRealmObjectColumnInfo, gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, boolean, java.util.Map, java.util.Set):gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject");
    }

    public static MmsBlockLogRealmObjectColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new MmsBlockLogRealmObjectColumnInfo(osSchemaInfo);
    }

    public static MmsBlockLogRealmObject createDetachedCopy(MmsBlockLogRealmObject mmsBlockLogRealmObject, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        MmsBlockLogRealmObject mmsBlockLogRealmObject2;
        if (i > i2 || mmsBlockLogRealmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(mmsBlockLogRealmObject);
        if (cacheData == null) {
            MmsBlockLogRealmObject mmsBlockLogRealmObject3 = new MmsBlockLogRealmObject();
            map.put(mmsBlockLogRealmObject, new RealmObjectProxy.CacheData<>(i, mmsBlockLogRealmObject3));
            mmsBlockLogRealmObject2 = mmsBlockLogRealmObject3;
        } else if (i >= cacheData.minDepth) {
            return (MmsBlockLogRealmObject) cacheData.object;
        } else {
            mmsBlockLogRealmObject2 = (MmsBlockLogRealmObject) cacheData.object;
            cacheData.minDepth = i;
        }
        mmsBlockLogRealmObject2.realmSet$id(mmsBlockLogRealmObject.realmGet$id());
        mmsBlockLogRealmObject2.realmSet$_mms_url(mmsBlockLogRealmObject.realmGet$_mms_url());
        mmsBlockLogRealmObject2.realmSet$mms_size(mmsBlockLogRealmObject.realmGet$mms_size());
        mmsBlockLogRealmObject2.realmSet$_mms_expire_date(mmsBlockLogRealmObject.realmGet$_mms_expire_date());
        mmsBlockLogRealmObject2.realmSet$sub_cs(mmsBlockLogRealmObject.realmGet$sub_cs());
        mmsBlockLogRealmObject2.realmSet$charset(mmsBlockLogRealmObject.realmGet$charset());
        return mmsBlockLogRealmObject2;
    }

    public static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 6, 0);
        builder.addPersistedProperty("id", RealmFieldType.INTEGER, true, true, true);
        builder.addPersistedProperty(MmsBlockLogRealmObject.MMS_URL, RealmFieldType.STRING, false, false, false);
        builder.addPersistedProperty(MmsBlockLogRealmObject.MMS_SIZE, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(MmsBlockLogRealmObject.MMS_EXPIRE_DATE, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(MmsBlockLogRealmObject.SUB_CS, RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty(MmsBlockLogRealmObject.ADDRESS_CHARSET, RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10903x8c0d1877.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject");
    }

    @TargetApi(11)
    public static MmsBlockLogRealmObject createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        MmsBlockLogRealmObject mmsBlockLogRealmObject = new MmsBlockLogRealmObject();
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("id")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mmsBlockLogRealmObject.realmSet$id(jsonReader.nextLong());
                    z = true;
                } else {
                    jsonReader.skipValue();
                    throw new IllegalArgumentException("Trying to set non-nullable field 'id' to null.");
                }
            } else if (nextName.equals(MmsBlockLogRealmObject.MMS_URL)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mmsBlockLogRealmObject.realmSet$_mms_url(jsonReader.nextString());
                } else {
                    jsonReader.skipValue();
                    mmsBlockLogRealmObject.realmSet$_mms_url(null);
                }
            } else if (nextName.equals(MmsBlockLogRealmObject.MMS_SIZE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mmsBlockLogRealmObject.realmSet$mms_size(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    mmsBlockLogRealmObject.realmSet$mms_size(null);
                }
            } else if (nextName.equals(MmsBlockLogRealmObject.MMS_EXPIRE_DATE)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mmsBlockLogRealmObject.realmSet$_mms_expire_date(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    mmsBlockLogRealmObject.realmSet$_mms_expire_date(null);
                }
            } else if (nextName.equals(MmsBlockLogRealmObject.SUB_CS)) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    mmsBlockLogRealmObject.realmSet$sub_cs(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    mmsBlockLogRealmObject.realmSet$sub_cs(null);
                }
            } else if (!nextName.equals(MmsBlockLogRealmObject.ADDRESS_CHARSET)) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                mmsBlockLogRealmObject.realmSet$charset(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                mmsBlockLogRealmObject.realmSet$charset(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (MmsBlockLogRealmObject) realm.copyToRealm((Realm) mmsBlockLogRealmObject, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'id'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, MmsBlockLogRealmObject mmsBlockLogRealmObject, Map<RealmModel, Long> map) {
        if (mmsBlockLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mmsBlockLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(MmsBlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo = (MmsBlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class);
        long j = mmsBlockLogRealmObjectColumnInfo.idIndex;
        Long valueOf = Long.valueOf(mmsBlockLogRealmObject.realmGet$id());
        long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, mmsBlockLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mmsBlockLogRealmObject.realmGet$id()));
        } else {
            Table.throwDuplicatePrimaryKeyException(valueOf);
        }
        map.put(mmsBlockLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_mms_url = mmsBlockLogRealmObject.realmGet$_mms_url();
        if (realmGet$_mms_url != null) {
            Table.nativeSetString(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, nativeFindFirstInt, realmGet$_mms_url, false);
        }
        Long realmGet$mms_size = mmsBlockLogRealmObject.realmGet$mms_size();
        if (realmGet$mms_size != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, nativeFindFirstInt, realmGet$mms_size.longValue(), false);
        }
        Long realmGet$_mms_expire_date = mmsBlockLogRealmObject.realmGet$_mms_expire_date();
        if (realmGet$_mms_expire_date != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, nativeFindFirstInt, realmGet$_mms_expire_date.longValue(), false);
        }
        Integer realmGet$sub_cs = mmsBlockLogRealmObject.realmGet$sub_cs();
        if (realmGet$sub_cs != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.sub_csIndex, nativeFindFirstInt, realmGet$sub_cs.longValue(), false);
        }
        Integer realmGet$charset = mmsBlockLogRealmObject.realmGet$charset();
        if (realmGet$charset != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.charsetIndex, nativeFindFirstInt, realmGet$charset.longValue(), false);
        }
        return nativeFindFirstInt;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(MmsBlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo = (MmsBlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class);
        long j = mmsBlockLogRealmObjectColumnInfo.idIndex;
        while (it.hasNext()) {
            MmsBlockLogRealmObject mmsBlockLogRealmObject = (MmsBlockLogRealmObject) it.next();
            if (!map.containsKey(mmsBlockLogRealmObject)) {
                if (mmsBlockLogRealmObject instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mmsBlockLogRealmObject;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(mmsBlockLogRealmObject, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Long valueOf = Long.valueOf(mmsBlockLogRealmObject.realmGet$id());
                long nativeFindFirstInt = valueOf != null ? Table.nativeFindFirstInt(nativePtr, j, mmsBlockLogRealmObject.realmGet$id()) : -1L;
                if (nativeFindFirstInt == -1) {
                    nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mmsBlockLogRealmObject.realmGet$id()));
                } else {
                    Table.throwDuplicatePrimaryKeyException(valueOf);
                }
                map.put(mmsBlockLogRealmObject, Long.valueOf(nativeFindFirstInt));
                String realmGet$_mms_url = mmsBlockLogRealmObject.realmGet$_mms_url();
                if (realmGet$_mms_url != null) {
                    Table.nativeSetString(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, nativeFindFirstInt, realmGet$_mms_url, false);
                }
                Long realmGet$mms_size = mmsBlockLogRealmObject.realmGet$mms_size();
                if (realmGet$mms_size != null) {
                    Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, nativeFindFirstInt, realmGet$mms_size.longValue(), false);
                }
                Long realmGet$_mms_expire_date = mmsBlockLogRealmObject.realmGet$_mms_expire_date();
                if (realmGet$_mms_expire_date != null) {
                    Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, nativeFindFirstInt, realmGet$_mms_expire_date.longValue(), false);
                }
                Integer realmGet$sub_cs = mmsBlockLogRealmObject.realmGet$sub_cs();
                if (realmGet$sub_cs != null) {
                    Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.sub_csIndex, nativeFindFirstInt, realmGet$sub_cs.longValue(), false);
                }
                Integer realmGet$charset = mmsBlockLogRealmObject.realmGet$charset();
                if (realmGet$charset != null) {
                    Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.charsetIndex, nativeFindFirstInt, realmGet$charset.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, MmsBlockLogRealmObject mmsBlockLogRealmObject, Map<RealmModel, Long> map) {
        if (mmsBlockLogRealmObject instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) mmsBlockLogRealmObject;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(MmsBlockLogRealmObject.class);
        long nativePtr = table.getNativePtr();
        MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo = (MmsBlockLogRealmObjectColumnInfo) realm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class);
        long j = mmsBlockLogRealmObjectColumnInfo.idIndex;
        long nativeFindFirstInt = Long.valueOf(mmsBlockLogRealmObject.realmGet$id()) != null ? Table.nativeFindFirstInt(nativePtr, j, mmsBlockLogRealmObject.realmGet$id()) : -1L;
        if (nativeFindFirstInt == -1) {
            nativeFindFirstInt = OsObject.createRowWithPrimaryKey(table, j, Long.valueOf(mmsBlockLogRealmObject.realmGet$id()));
        }
        map.put(mmsBlockLogRealmObject, Long.valueOf(nativeFindFirstInt));
        String realmGet$_mms_url = mmsBlockLogRealmObject.realmGet$_mms_url();
        if (realmGet$_mms_url != null) {
            Table.nativeSetString(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, nativeFindFirstInt, realmGet$_mms_url, false);
        } else {
            Table.nativeSetNull(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, nativeFindFirstInt, false);
        }
        Long realmGet$mms_size = mmsBlockLogRealmObject.realmGet$mms_size();
        if (realmGet$mms_size != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, nativeFindFirstInt, realmGet$mms_size.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, nativeFindFirstInt, false);
        }
        Long realmGet$_mms_expire_date = mmsBlockLogRealmObject.realmGet$_mms_expire_date();
        if (realmGet$_mms_expire_date != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, nativeFindFirstInt, realmGet$_mms_expire_date.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$sub_cs = mmsBlockLogRealmObject.realmGet$sub_cs();
        if (realmGet$sub_cs != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.sub_csIndex, nativeFindFirstInt, realmGet$sub_cs.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mmsBlockLogRealmObjectColumnInfo.sub_csIndex, nativeFindFirstInt, false);
        }
        Integer realmGet$charset = mmsBlockLogRealmObject.realmGet$charset();
        if (realmGet$charset != null) {
            Table.nativeSetLong(nativePtr, mmsBlockLogRealmObjectColumnInfo.charsetIndex, nativeFindFirstInt, realmGet$charset.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, mmsBlockLogRealmObjectColumnInfo.charsetIndex, nativeFindFirstInt, false);
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
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.C10903x8c0d1877.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    public static C10903x8c0d1877 newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(MmsBlockLogRealmObject.class), false, Collections.emptyList());
        C10903x8c0d1877 gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy = new C10903x8c0d1877();
        realmObjectContext.clear();
        return gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy;
    }

    public static MmsBlockLogRealmObject update(Realm realm, MmsBlockLogRealmObjectColumnInfo mmsBlockLogRealmObjectColumnInfo, MmsBlockLogRealmObject mmsBlockLogRealmObject, MmsBlockLogRealmObject mmsBlockLogRealmObject2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(MmsBlockLogRealmObject.class), mmsBlockLogRealmObjectColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.idIndex, Long.valueOf(mmsBlockLogRealmObject2.realmGet$id()));
        osObjectBuilder.addString(mmsBlockLogRealmObjectColumnInfo._mms_urlIndex, mmsBlockLogRealmObject2.realmGet$_mms_url());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.mms_sizeIndex, mmsBlockLogRealmObject2.realmGet$mms_size());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo._mms_expire_dateIndex, mmsBlockLogRealmObject2.realmGet$_mms_expire_date());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.sub_csIndex, mmsBlockLogRealmObject2.realmGet$sub_cs());
        osObjectBuilder.addInteger(mmsBlockLogRealmObjectColumnInfo.charsetIndex, mmsBlockLogRealmObject2.realmGet$charset());
        osObjectBuilder.updateExistingObject();
        return mmsBlockLogRealmObject;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C10903x8c0d1877.class != obj.getClass()) {
            return false;
        }
        C10903x8c0d1877 gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy = (C10903x8c0d1877) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == gogolook_callgogolook2_realm_obj_block_mmsblocklogrealmobjectrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (MmsBlockLogRealmObjectColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public Long realmGet$_mms_expire_date() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo._mms_expire_dateIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo._mms_expire_dateIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public String realmGet$_mms_url() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getString(this.columnInfo._mms_urlIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public Integer realmGet$charset() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.charsetIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.charsetIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public long realmGet$id() {
        this.proxyState.getRealm$realm().checkIfValid();
        return this.proxyState.getRow$realm().getLong(this.columnInfo.idIndex);
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public Long realmGet$mms_size() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.mms_sizeIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.mms_sizeIndex));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public Integer realmGet$sub_cs() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.sub_csIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.sub_csIndex));
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$_mms_expire_date(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._mms_expire_dateIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo._mms_expire_dateIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo._mms_expire_dateIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo._mms_expire_dateIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$_mms_url(String str) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (str == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo._mms_urlIndex);
            } else {
                this.proxyState.getRow$realm().setString(this.columnInfo._mms_urlIndex, str);
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (str == null) {
                row$realm.getTable().setNull(this.columnInfo._mms_urlIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setString(this.columnInfo._mms_urlIndex, row$realm.getIndex(), str, true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$charset(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.charsetIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.charsetIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.charsetIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.charsetIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$id(long j) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'id' cannot be changed after object was created.");
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$mms_size(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (l == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.mms_sizeIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.mms_sizeIndex, l.longValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (l == null) {
                row$realm.getTable().setNull(this.columnInfo.mms_sizeIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.mms_sizeIndex, row$realm.getIndex(), l.longValue(), true);
            }
        }
    }

    @Override // gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject, io.realm.AbstractC10904xb8b90a82
    public void realmSet$sub_cs(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.sub_csIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.sub_csIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.sub_csIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.sub_csIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("MmsBlockLogRealmObject = proxy[");
        sb.append("{id:");
        sb.append(realmGet$id());
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_mms_url:");
        String realmGet$_mms_url = realmGet$_mms_url();
        Object obj = C14247d.f31851f;
        sb.append(realmGet$_mms_url != null ? realmGet$_mms_url() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{mms_size:");
        sb.append(realmGet$mms_size() != null ? realmGet$mms_size() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{_mms_expire_date:");
        sb.append(realmGet$_mms_expire_date() != null ? realmGet$_mms_expire_date() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{sub_cs:");
        sb.append(realmGet$sub_cs() != null ? realmGet$sub_cs() : C14247d.f31851f);
        sb.append(CssParser.BLOCK_END);
        sb.append(",");
        sb.append("{charset:");
        if (realmGet$charset() != null) {
            obj = realmGet$charset();
        }
        sb.append(obj);
        sb.append(CssParser.BLOCK_END);
        sb.append("]");
        return sb.toString();
    }
}
