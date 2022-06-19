package net.pubnative.lite.sdk.consent.p573db;

import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC20107m;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018��2\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00122\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006`\u0007¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J5\u0010\u000e\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006`\u0007HÆ\u0003JI\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u000324\b\u0002\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006`\u0007HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R=\u0010\u0004\u001a.\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00060\u0005j\u0016\u0012\u0004\u0012\u00020\u0003\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0006`\u0007¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;", "", "tableName", "", "fieldMap", "Ljava/util/HashMap;", "Lkotlin/reflect/KProperty1;", "Lkotlin/collections/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;)V", "getFieldMap", "()Ljava/util/HashMap;", "getTableName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: net.pubnative.lite.sdk.consent.db.DataBaseSchema */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/DataBaseSchema.class */
public final class DataBaseSchema {
    private final HashMap<String, AbstractC20107m<?, ?>> fieldMap;
    private final String tableName;

    public DataBaseSchema(String tableName, HashMap<String, AbstractC20107m<?, ?>> fieldMap) {
        C18524p.m3840d(tableName, "tableName");
        C18524p.m3840d(fieldMap, "fieldMap");
        this.tableName = tableName;
        this.fieldMap = fieldMap;
    }

    public static /* synthetic */ DataBaseSchema copy$default(DataBaseSchema dataBaseSchema, String str, HashMap hashMap, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dataBaseSchema.tableName;
        }
        if ((i & 2) != 0) {
            hashMap = dataBaseSchema.fieldMap;
        }
        return dataBaseSchema.copy(str, hashMap);
    }

    public final String component1() {
        return this.tableName;
    }

    public final HashMap<String, AbstractC20107m<?, ?>> component2() {
        return this.fieldMap;
    }

    public final DataBaseSchema copy(String tableName, HashMap<String, AbstractC20107m<?, ?>> fieldMap) {
        C18524p.m3840d(tableName, "tableName");
        C18524p.m3840d(fieldMap, "fieldMap");
        return new DataBaseSchema(tableName, fieldMap);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof DataBaseSchema)) {
                return false;
            }
            DataBaseSchema dataBaseSchema = (DataBaseSchema) obj;
            return C18524p.m3850a((Object) this.tableName, (Object) dataBaseSchema.tableName) && C18524p.m3850a(this.fieldMap, dataBaseSchema.fieldMap);
        }
        return true;
    }

    public final HashMap<String, AbstractC20107m<?, ?>> getFieldMap() {
        return this.fieldMap;
    }

    public final String getTableName() {
        return this.tableName;
    }

    public final int hashCode() {
        String str = this.tableName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        HashMap<String, AbstractC20107m<?, ?>> hashMap = this.fieldMap;
        if (hashMap != null) {
            i = hashMap.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "DataBaseSchema(tableName=" + this.tableName + ", fieldMap=" + this.fieldMap + ")";
    }
}
