package net.pubnative.lite.sdk.consent.db;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlin.reflect.full.b;
import kotlin.reflect.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a$\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00030\u0001*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0010\u0010\u0005\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H��\u001a\u0010\u0010\t\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0014\u0010\n\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\f\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\r\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\u000e\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��¨\u0006\u000f"}, d2 = {"getDataBaseField", "Ljava/util/HashMap;", "", "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/KClass;", "getDataBaseFieldType", "getDataBaseFieldValue", "", "key", "getTableName", "isDataBaseFieldAutoIncrease", "", "isDataBaseFieldGeneratedId", "isDataBaseFieldNonNullable", "isDataBaseFieldUnique", "hybid.sdk.voyager_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt.class */
public final class DataBaseFunctionsKt {
    public static final HashMap<String, m<?, ?>> getDataBaseField(c<?> getDataBaseField) {
        Annotation[] annotations;
        p.d(getDataBaseField, "$this$getDataBaseField");
        HashMap<String, m<?, ?>> hashMap = new HashMap<>();
        for (m<?, ?> mVar : b.b(getDataBaseField)) {
            Field a2 = kotlin.reflect.jvm.b.a(mVar);
            Schema schema = null;
            if (!(a2 == null || (annotations = a2.getAnnotations()) == null)) {
                int length = annotations.length;
                for (int i = 0; i < length; i++) {
                    schema = annotations[i];
                    if (schema instanceof Schema) {
                        break;
                    }
                }
            }
            schema = null;
            if (!(schema instanceof Schema)) {
            }
            Schema schema2 = schema;
            if (schema2 != null) {
                hashMap.put(schema2.field(), mVar);
            }
        }
        return hashMap;
    }

    public static final String getDataBaseFieldType(c<?> getDataBaseFieldType) {
        p.d(getDataBaseFieldType, "$this$getDataBaseFieldType");
        return p.a(getDataBaseFieldType, ac.b(String.class)) ? "TEXT" : p.a(getDataBaseFieldType, ac.b(Date.class)) ? "BIGINT" : p.a(getDataBaseFieldType, ac.b(Boolean.TYPE)) ? "BOOLEAN" : p.a(getDataBaseFieldType, ac.b(Character.TYPE)) ? "CHAR" : p.a(getDataBaseFieldType, ac.b(Byte.TYPE)) ? "TINYINT" : p.a(getDataBaseFieldType, ac.b(Short.TYPE)) ? "SMALLINT" : p.a(getDataBaseFieldType, ac.b(Integer.TYPE)) ? "INTEGER" : p.a(getDataBaseFieldType, ac.b(Long.TYPE)) ? "BIGINT" : p.a(getDataBaseFieldType, ac.b(Float.TYPE)) ? "FLOAT" : p.a(getDataBaseFieldType, ac.b(Double.TYPE)) ? "DOUBLE PRECISION" : p.a(getDataBaseFieldType, ac.b(byte[].class)) ? "BLOB" : p.a(getDataBaseFieldType, ac.b(BigDecimal.class)) ? "NUMERIC" : "";
    }

    public static final Object getDataBaseFieldValue(Object getDataBaseFieldValue, String key) {
        Object obj;
        m.a a2;
        Schema schema;
        Annotation[] annotations;
        p.d(getDataBaseFieldValue, "$this$getDataBaseFieldValue");
        p.d(key, "key");
        Iterator it2 = b.b(ac.b(getDataBaseFieldValue.getClass())).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            Object next = it2.next();
            Field a3 = kotlin.reflect.jvm.b.a((m) next);
            if (!(a3 == null || (annotations = a3.getAnnotations()) == null)) {
                int length = annotations.length;
                for (int i = 0; i < length; i++) {
                    schema = annotations[i];
                    if (schema instanceof Schema) {
                        break;
                    }
                }
            }
            schema = null;
            Schema schema2 = schema;
            if (!(schema instanceof Schema)) {
                schema2 = null;
            }
            Schema schema3 = schema2;
            if (p.a((Object) (schema3 != null ? schema3.field() : null), (Object) key)) {
                obj = next;
                break;
            }
        }
        m mVar = (m) obj;
        if (mVar == null || (a2 = mVar.a()) == null) {
            return null;
        }
        return a2.call(getDataBaseFieldValue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
        if (r0 == null) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getTableName(kotlin.reflect.c<?> r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$getTableName"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r3
            kotlin.reflect.b r0 = (kotlin.reflect.b) r0
            java.util.List r0 = r0.getAnnotations()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0018:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0035
            r0 = r4
            java.lang.Object r0 = r0.next()
            r3 = r0
            r0 = r3
            java.lang.annotation.Annotation r0 = (java.lang.annotation.Annotation) r0
            boolean r0 = r0 instanceof net.pubnative.lite.sdk.consent.db.Database
            if (r0 == 0) goto L_0x0018
            goto L_0x0037
        L_0x0035:
            r0 = 0
            r3 = r0
        L_0x0037:
            r0 = r3
            net.pubnative.lite.sdk.consent.db.Database r0 = (net.pubnative.lite.sdk.consent.db.Database) r0
            java.lang.annotation.Annotation r0 = (java.lang.annotation.Annotation) r0
            net.pubnative.lite.sdk.consent.db.Database r0 = (net.pubnative.lite.sdk.consent.db.Database) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0053
            r0 = r3
            java.lang.String r0 = r0.tableName()
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0056
        L_0x0053:
            java.lang.String r0 = ""
            r3 = r0
        L_0x0056:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.consent.db.DataBaseFunctionsKt.getTableName(kotlin.reflect.c):java.lang.String");
    }

    public static final boolean isDataBaseFieldAutoIncrease(m<?, ?> isDataBaseFieldAutoIncrease) {
        Annotation[] annotations;
        p.d(isDataBaseFieldAutoIncrease, "$this$isDataBaseFieldAutoIncrease");
        Field a2 = kotlin.reflect.jvm.b.a(isDataBaseFieldAutoIncrease);
        Schema schema = null;
        if (!(a2 == null || (annotations = a2.getAnnotations()) == null)) {
            int length = annotations.length;
            for (int i = 0; i < length; i++) {
                schema = annotations[i];
                if (schema instanceof Schema) {
                    break;
                }
            }
        }
        schema = null;
        if (!(schema instanceof Schema)) {
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.autoIncrease();
        }
        return false;
    }

    public static final boolean isDataBaseFieldGeneratedId(m<?, ?> isDataBaseFieldGeneratedId) {
        Annotation[] annotations;
        p.d(isDataBaseFieldGeneratedId, "$this$isDataBaseFieldGeneratedId");
        Field a2 = kotlin.reflect.jvm.b.a(isDataBaseFieldGeneratedId);
        Schema schema = null;
        if (!(a2 == null || (annotations = a2.getAnnotations()) == null)) {
            int length = annotations.length;
            for (int i = 0; i < length; i++) {
                schema = annotations[i];
                if (schema instanceof Schema) {
                    break;
                }
            }
        }
        schema = null;
        if (!(schema instanceof Schema)) {
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.generatedId();
        }
        return false;
    }

    public static final boolean isDataBaseFieldNonNullable(m<?, ?> isDataBaseFieldNonNullable) {
        Annotation[] annotations;
        p.d(isDataBaseFieldNonNullable, "$this$isDataBaseFieldNonNullable");
        Field a2 = kotlin.reflect.jvm.b.a(isDataBaseFieldNonNullable);
        Schema schema = null;
        if (!(a2 == null || (annotations = a2.getAnnotations()) == null)) {
            int length = annotations.length;
            for (int i = 0; i < length; i++) {
                schema = annotations[i];
                if (schema instanceof Schema) {
                    break;
                }
            }
        }
        schema = null;
        if (!(schema instanceof Schema)) {
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.nonNullable();
        }
        return false;
    }

    public static final boolean isDataBaseFieldUnique(m<?, ?> isDataBaseFieldUnique) {
        Annotation[] annotations;
        p.d(isDataBaseFieldUnique, "$this$isDataBaseFieldUnique");
        Field a2 = kotlin.reflect.jvm.b.a(isDataBaseFieldUnique);
        Schema schema = null;
        if (!(a2 == null || (annotations = a2.getAnnotations()) == null)) {
            int length = annotations.length;
            for (int i = 0; i < length; i++) {
                schema = annotations[i];
                if (schema instanceof Schema) {
                    break;
                }
            }
        }
        schema = null;
        if (!(schema instanceof Schema)) {
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.unique();
        }
        return false;
    }
}
