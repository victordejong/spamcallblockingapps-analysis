package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.privacystar.core.data.model.Offender;
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
/* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderRealmProxy.class */
public class com_privacystar_core_data_model_OffenderRealmProxy extends Offender implements RealmObjectProxy, com_privacystar_core_data_model_OffenderRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private OffenderColumnInfo columnInfo;
    private ProxyState<Offender> proxyState;

    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderRealmProxy$ClassNameHelper.class */
    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "Offender";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/com_privacystar_core_data_model_OffenderRealmProxy$OffenderColumnInfo.class */
    public static final class OffenderColumnInfo extends ColumnInfo {
        long categoryIdIndex;
        long maxColumnIndexValue;
        long numberIndex;
        long offenderFlagsIndex;
        long spamScoreIndex;

        OffenderColumnInfo(ColumnInfo columnInfo, boolean z) {
            super(columnInfo, z);
            copy(columnInfo, this);
        }

        OffenderColumnInfo(OsSchemaInfo osSchemaInfo) {
            super(4);
            OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.numberIndex = addColumnDetails("number", "number", objectSchemaInfo);
            this.categoryIdIndex = addColumnDetails("categoryId", "categoryId", objectSchemaInfo);
            this.offenderFlagsIndex = addColumnDetails("offenderFlags", "offenderFlags", objectSchemaInfo);
            this.spamScoreIndex = addColumnDetails("spamScore", "spamScore", objectSchemaInfo);
            this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean z) {
            return new OffenderColumnInfo(this, z);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
            OffenderColumnInfo offenderColumnInfo = (OffenderColumnInfo) columnInfo;
            OffenderColumnInfo offenderColumnInfo2 = (OffenderColumnInfo) columnInfo2;
            offenderColumnInfo2.numberIndex = offenderColumnInfo.numberIndex;
            offenderColumnInfo2.categoryIdIndex = offenderColumnInfo.categoryIdIndex;
            offenderColumnInfo2.offenderFlagsIndex = offenderColumnInfo.offenderFlagsIndex;
            offenderColumnInfo2.spamScoreIndex = offenderColumnInfo.spamScoreIndex;
            offenderColumnInfo2.maxColumnIndexValue = offenderColumnInfo.maxColumnIndexValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com_privacystar_core_data_model_OffenderRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    public static Offender copy(Realm realm, OffenderColumnInfo offenderColumnInfo, Offender offender, boolean z, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        RealmObjectProxy realmObjectProxy = map.get(offender);
        if (realmObjectProxy != null) {
            return (Offender) realmObjectProxy;
        }
        Offender offender2 = offender;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Offender.class), offenderColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offenderColumnInfo.numberIndex, offender2.realmGet$number());
        osObjectBuilder.addInteger(offenderColumnInfo.categoryIdIndex, offender2.realmGet$categoryId());
        osObjectBuilder.addInteger(offenderColumnInfo.offenderFlagsIndex, offender2.realmGet$offenderFlags());
        osObjectBuilder.addInteger(offenderColumnInfo.spamScoreIndex, offender2.realmGet$spamScore());
        com_privacystar_core_data_model_OffenderRealmProxy newProxyInstance = newProxyInstance(realm, osObjectBuilder.createNewObject());
        map.put(offender, newProxyInstance);
        return newProxyInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.Offender copyOrUpdate(io.realm.Realm r7, io.realm.com_privacystar_core_data_model_OffenderRealmProxy.OffenderColumnInfo r8, com.privacystar.core.data.model.Offender r9, boolean r10, java.util.Map<io.realm.RealmModel, io.realm.internal.RealmObjectProxy> r11, java.util.Set<io.realm.ImportFlag> r12) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderRealmProxy.copyOrUpdate(io.realm.Realm, io.realm.com_privacystar_core_data_model_OffenderRealmProxy$OffenderColumnInfo, com.privacystar.core.data.model.Offender, boolean, java.util.Map, java.util.Set):com.privacystar.core.data.model.Offender");
    }

    public static OffenderColumnInfo createColumnInfo(OsSchemaInfo osSchemaInfo) {
        return new OffenderColumnInfo(osSchemaInfo);
    }

    public static Offender createDetachedCopy(Offender offender, int i, int i2, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> map) {
        Offender offender2;
        if (i > i2 || offender == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cacheData = map.get(offender);
        if (cacheData == null) {
            Offender offender3 = new Offender();
            map.put(offender, new RealmObjectProxy.CacheData<>(i, offender3));
            offender2 = offender3;
        } else if (i >= cacheData.minDepth) {
            return (Offender) cacheData.object;
        } else {
            offender2 = (Offender) cacheData.object;
            cacheData.minDepth = i;
        }
        Offender offender4 = offender2;
        Offender offender5 = offender;
        offender4.realmSet$number(offender5.realmGet$number());
        offender4.realmSet$categoryId(offender5.realmGet$categoryId());
        offender4.realmSet$offenderFlags(offender5.realmGet$offenderFlags());
        offender4.realmSet$spamScore(offender5.realmGet$spamScore());
        return offender2;
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 4, 0);
        builder.addPersistedProperty("number", RealmFieldType.INTEGER, true, true, false);
        builder.addPersistedProperty("categoryId", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("offenderFlags", RealmFieldType.INTEGER, false, false, false);
        builder.addPersistedProperty("spamScore", RealmFieldType.INTEGER, false, false, false);
        return builder.build();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.privacystar.core.data.model.Offender createOrUpdateUsingJsonObject(io.realm.Realm r7, org.json.JSONObject r8, boolean r9) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderRealmProxy.createOrUpdateUsingJsonObject(io.realm.Realm, org.json.JSONObject, boolean):com.privacystar.core.data.model.Offender");
    }

    @TargetApi(11)
    public static Offender createUsingJsonStream(Realm realm, JsonReader jsonReader) throws IOException {
        Offender offender = new Offender();
        Offender offender2 = offender;
        jsonReader.beginObject();
        boolean z = false;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("number")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offender2.realmSet$number(Long.valueOf(jsonReader.nextLong()));
                } else {
                    jsonReader.skipValue();
                    offender2.realmSet$number(null);
                }
                z = true;
            } else if (nextName.equals("categoryId")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offender2.realmSet$categoryId(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    offender2.realmSet$categoryId(null);
                }
            } else if (nextName.equals("offenderFlags")) {
                if (jsonReader.peek() != JsonToken.NULL) {
                    offender2.realmSet$offenderFlags(Integer.valueOf(jsonReader.nextInt()));
                } else {
                    jsonReader.skipValue();
                    offender2.realmSet$offenderFlags(null);
                }
            } else if (!nextName.equals("spamScore")) {
                jsonReader.skipValue();
            } else if (jsonReader.peek() != JsonToken.NULL) {
                offender2.realmSet$spamScore(Integer.valueOf(jsonReader.nextInt()));
            } else {
                jsonReader.skipValue();
                offender2.realmSet$spamScore(null);
            }
        }
        jsonReader.endObject();
        if (z) {
            return (Offender) realm.copyToRealm((Realm) offender, new ImportFlag[0]);
        }
        throw new IllegalArgumentException("JSON object doesn't have the primary key field 'number'.");
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static long insert(Realm realm, Offender offender, Map<RealmModel, Long> map) {
        if (offender instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offender;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Offender.class);
        long nativePtr = table.getNativePtr();
        OffenderColumnInfo offenderColumnInfo = (OffenderColumnInfo) realm.getSchema().getColumnInfo(Offender.class);
        long j = offenderColumnInfo.numberIndex;
        Offender offender2 = offender;
        Long realmGet$number = offender2.realmGet$number();
        long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offender2.realmGet$number().longValue());
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offender2.realmGet$number());
        } else {
            Table.throwDuplicatePrimaryKeyException(realmGet$number);
        }
        map.put(offender, Long.valueOf(nativeFindFirstNull));
        Integer realmGet$categoryId = offender2.realmGet$categoryId();
        if (realmGet$categoryId != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.categoryIdIndex, nativeFindFirstNull, realmGet$categoryId.longValue(), false);
        }
        Integer realmGet$offenderFlags = offender2.realmGet$offenderFlags();
        if (realmGet$offenderFlags != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.offenderFlagsIndex, nativeFindFirstNull, realmGet$offenderFlags.longValue(), false);
        }
        Integer realmGet$spamScore = offender2.realmGet$spamScore();
        if (realmGet$spamScore != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.spamScoreIndex, nativeFindFirstNull, realmGet$spamScore.longValue(), false);
        }
        return nativeFindFirstNull;
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> it, Map<RealmModel, Long> map) {
        Table table = realm.getTable(Offender.class);
        long nativePtr = table.getNativePtr();
        OffenderColumnInfo offenderColumnInfo = (OffenderColumnInfo) realm.getSchema().getColumnInfo(Offender.class);
        long j = offenderColumnInfo.numberIndex;
        while (it.hasNext()) {
            Offender offender = (Offender) it.next();
            if (!map.containsKey(offender)) {
                if (offender instanceof RealmObjectProxy) {
                    RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offender;
                    if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                        map.put(offender, Long.valueOf(realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex()));
                    }
                }
                Offender offender2 = offender;
                Long realmGet$number = offender2.realmGet$number();
                long nativeFindFirstNull = realmGet$number == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offender2.realmGet$number().longValue());
                if (nativeFindFirstNull == -1) {
                    nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offender2.realmGet$number());
                } else {
                    Table.throwDuplicatePrimaryKeyException(realmGet$number);
                }
                map.put(offender, Long.valueOf(nativeFindFirstNull));
                Integer realmGet$categoryId = offender2.realmGet$categoryId();
                if (realmGet$categoryId != null) {
                    Table.nativeSetLong(nativePtr, offenderColumnInfo.categoryIdIndex, nativeFindFirstNull, realmGet$categoryId.longValue(), false);
                }
                Integer realmGet$offenderFlags = offender2.realmGet$offenderFlags();
                if (realmGet$offenderFlags != null) {
                    Table.nativeSetLong(nativePtr, offenderColumnInfo.offenderFlagsIndex, nativeFindFirstNull, realmGet$offenderFlags.longValue(), false);
                }
                Integer realmGet$spamScore = offender2.realmGet$spamScore();
                if (realmGet$spamScore != null) {
                    Table.nativeSetLong(nativePtr, offenderColumnInfo.spamScoreIndex, nativeFindFirstNull, realmGet$spamScore.longValue(), false);
                }
            }
        }
    }

    public static long insertOrUpdate(Realm realm, Offender offender, Map<RealmModel, Long> map) {
        if (offender instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) offender;
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() != null && realmObjectProxy.realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                return realmObjectProxy.realmGet$proxyState().getRow$realm().getIndex();
            }
        }
        Table table = realm.getTable(Offender.class);
        long nativePtr = table.getNativePtr();
        OffenderColumnInfo offenderColumnInfo = (OffenderColumnInfo) realm.getSchema().getColumnInfo(Offender.class);
        long j = offenderColumnInfo.numberIndex;
        Offender offender2 = offender;
        long nativeFindFirstNull = offender2.realmGet$number() == null ? Table.nativeFindFirstNull(nativePtr, j) : Table.nativeFindFirstInt(nativePtr, j, offender2.realmGet$number().longValue());
        if (nativeFindFirstNull == -1) {
            nativeFindFirstNull = OsObject.createRowWithPrimaryKey(table, j, offender2.realmGet$number());
        }
        map.put(offender, Long.valueOf(nativeFindFirstNull));
        Integer realmGet$categoryId = offender2.realmGet$categoryId();
        if (realmGet$categoryId != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.categoryIdIndex, nativeFindFirstNull, realmGet$categoryId.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, offenderColumnInfo.categoryIdIndex, nativeFindFirstNull, false);
        }
        Integer realmGet$offenderFlags = offender2.realmGet$offenderFlags();
        if (realmGet$offenderFlags != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.offenderFlagsIndex, nativeFindFirstNull, realmGet$offenderFlags.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, offenderColumnInfo.offenderFlagsIndex, nativeFindFirstNull, false);
        }
        Integer realmGet$spamScore = offender2.realmGet$spamScore();
        if (realmGet$spamScore != null) {
            Table.nativeSetLong(nativePtr, offenderColumnInfo.spamScoreIndex, nativeFindFirstNull, realmGet$spamScore.longValue(), false);
        } else {
            Table.nativeSetNull(nativePtr, offenderColumnInfo.spamScoreIndex, nativeFindFirstNull, false);
        }
        return nativeFindFirstNull;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
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
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.com_privacystar_core_data_model_OffenderRealmProxy.insertOrUpdate(io.realm.Realm, java.util.Iterator, java.util.Map):void");
    }

    private static com_privacystar_core_data_model_OffenderRealmProxy newProxyInstance(BaseRealm baseRealm, Row row) {
        BaseRealm.RealmObjectContext realmObjectContext = BaseRealm.objectContext.get();
        realmObjectContext.set(baseRealm, row, baseRealm.getSchema().getColumnInfo(Offender.class), false, Collections.emptyList());
        com_privacystar_core_data_model_OffenderRealmProxy com_privacystar_core_data_model_offenderrealmproxy = new com_privacystar_core_data_model_OffenderRealmProxy();
        realmObjectContext.clear();
        return com_privacystar_core_data_model_offenderrealmproxy;
    }

    static Offender update(Realm realm, OffenderColumnInfo offenderColumnInfo, Offender offender, Offender offender2, Map<RealmModel, RealmObjectProxy> map, Set<ImportFlag> set) {
        Offender offender3 = offender2;
        OsObjectBuilder osObjectBuilder = new OsObjectBuilder(realm.getTable(Offender.class), offenderColumnInfo.maxColumnIndexValue, set);
        osObjectBuilder.addInteger(offenderColumnInfo.numberIndex, offender3.realmGet$number());
        osObjectBuilder.addInteger(offenderColumnInfo.categoryIdIndex, offender3.realmGet$categoryId());
        osObjectBuilder.addInteger(offenderColumnInfo.offenderFlagsIndex, offender3.realmGet$offenderFlags());
        osObjectBuilder.addInteger(offenderColumnInfo.spamScoreIndex, offender3.realmGet$spamScore());
        osObjectBuilder.updateExistingObject();
        return offender;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        com_privacystar_core_data_model_OffenderRealmProxy com_privacystar_core_data_model_offenderrealmproxy = (com_privacystar_core_data_model_OffenderRealmProxy) obj;
        String path = this.proxyState.getRealm$realm().getPath();
        String path2 = com_privacystar_core_data_model_offenderrealmproxy.proxyState.getRealm$realm().getPath();
        if (path != null) {
            if (!path.equals(path2)) {
                return false;
            }
        } else if (path2 != null) {
            return false;
        }
        String name = this.proxyState.getRow$realm().getTable().getName();
        String name2 = com_privacystar_core_data_model_offenderrealmproxy.proxyState.getRow$realm().getTable().getName();
        if (name != null) {
            if (!name.equals(name2)) {
                return false;
            }
        } else if (name2 != null) {
            return false;
        }
        return this.proxyState.getRow$realm().getIndex() == com_privacystar_core_data_model_offenderrealmproxy.proxyState.getRow$realm().getIndex();
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
            this.columnInfo = (OffenderColumnInfo) realmObjectContext.getColumnInfo();
            this.proxyState = new ProxyState<>(this);
            this.proxyState.setRealm$realm(realmObjectContext.getRealm());
            this.proxyState.setRow$realm(realmObjectContext.getRow());
            this.proxyState.setAcceptDefaultValue$realm(realmObjectContext.getAcceptDefaultValue());
            this.proxyState.setExcludeFields$realm(realmObjectContext.getExcludeFields());
        }
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$categoryId() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.categoryIdIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.categoryIdIndex));
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Long realmGet$number() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.numberIndex)) {
            return null;
        }
        return Long.valueOf(this.proxyState.getRow$realm().getLong(this.columnInfo.numberIndex));
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$offenderFlags() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.offenderFlagsIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.offenderFlagsIndex));
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public Integer realmGet$spamScore() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNull(this.columnInfo.spamScoreIndex)) {
            return null;
        }
        return Integer.valueOf((int) this.proxyState.getRow$realm().getLong(this.columnInfo.spamScoreIndex));
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$categoryId(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.categoryIdIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.categoryIdIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.categoryIdIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.categoryIdIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$number(Long l) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            throw new RealmException("Primary key field 'number' cannot be changed after object was created.");
        }
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$offenderFlags(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.offenderFlagsIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.offenderFlagsIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.offenderFlagsIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.offenderFlagsIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    @Override // com.privacystar.core.data.model.Offender, io.realm.com_privacystar_core_data_model_OffenderRealmProxyInterface
    public void realmSet$spamScore(Integer num) {
        if (!this.proxyState.isUnderConstruction()) {
            this.proxyState.getRealm$realm().checkIfValid();
            if (num == null) {
                this.proxyState.getRow$realm().setNull(this.columnInfo.spamScoreIndex);
            } else {
                this.proxyState.getRow$realm().setLong(this.columnInfo.spamScoreIndex, num.intValue());
            }
        } else if (this.proxyState.getAcceptDefaultValue$realm()) {
            Row row$realm = this.proxyState.getRow$realm();
            if (num == null) {
                row$realm.getTable().setNull(this.columnInfo.spamScoreIndex, row$realm.getIndex(), true);
            } else {
                row$realm.getTable().setLong(this.columnInfo.spamScoreIndex, row$realm.getIndex(), num.intValue(), true);
            }
        }
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder sb = new StringBuilder("Offender = proxy[");
        sb.append("{number:");
        sb.append(realmGet$number() != null ? realmGet$number() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{categoryId:");
        sb.append(realmGet$categoryId() != null ? realmGet$categoryId() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{offenderFlags:");
        sb.append(realmGet$offenderFlags() != null ? realmGet$offenderFlags() : "null");
        sb.append("}");
        sb.append(",");
        sb.append("{spamScore:");
        sb.append(realmGet$spamScore() != null ? realmGet$spamScore() : "null");
        sb.append("}");
        sb.append("]");
        return sb.toString();
    }
}
