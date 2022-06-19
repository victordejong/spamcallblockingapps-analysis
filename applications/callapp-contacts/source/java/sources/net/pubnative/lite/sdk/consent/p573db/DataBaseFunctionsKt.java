package net.pubnative.lite.sdk.consent.p573db;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.full.C18558b;
import kotlin.reflect.jvm.C18569b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a$\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00030\u0001*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0010\u0010\u0005\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0002H��\u001a\u0010\u0010\t\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030\u0004H��\u001a\u0014\u0010\n\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\f\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\r\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��\u001a\u0014\u0010\u000e\u001a\u00020\u000b*\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003H��¨\u0006\u000f"}, m4298d2 = {"getDataBaseField", "Ljava/util/HashMap;", "", "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/KClass;", "getDataBaseFieldType", "getDataBaseFieldValue", "", "key", "getTableName", "isDataBaseFieldAutoIncrease", "", "isDataBaseFieldGeneratedId", "isDataBaseFieldNonNullable", "isDataBaseFieldUnique", "hybid.sdk.voyager_release"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: net.pubnative.lite.sdk.consent.db.DataBaseFunctionsKt */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/DataBaseFunctionsKt.class */
public final class DataBaseFunctionsKt {
    public static final HashMap<String, AbstractC20107m<?, ?>> getDataBaseField(AbstractC18551c<?> getDataBaseField) {
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(getDataBaseField, "$this$getDataBaseField");
        HashMap<String, AbstractC20107m<?, ?>> hashMap = new HashMap<>();
        for (AbstractC20107m<?, ?> abstractC20107m : C18558b.m3830b(getDataBaseField)) {
            Field m3825a = C18569b.m3825a(abstractC20107m);
            if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
                schema = null;
            }
            Schema schema2 = schema;
            if (schema2 != null) {
                hashMap.put(schema2.field(), abstractC20107m);
            }
        }
        return hashMap;
    }

    public static final String getDataBaseFieldType(AbstractC18551c<?> getDataBaseFieldType) {
        C18524p.m3840d(getDataBaseFieldType, "$this$getDataBaseFieldType");
        return C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(String.class)) ? "TEXT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Date.class)) ? "BIGINT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Boolean.TYPE)) ? "BOOLEAN" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Character.TYPE)) ? "CHAR" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Byte.TYPE)) ? "TINYINT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Short.TYPE)) ? "SMALLINT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Integer.TYPE)) ? "INTEGER" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Long.TYPE)) ? "BIGINT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Float.TYPE)) ? "FLOAT" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(Double.TYPE)) ? "DOUBLE PRECISION" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(byte[].class)) ? "BLOB" : C18524p.m3850a(getDataBaseFieldType, C18496ac.m3882b(BigDecimal.class)) ? "NUMERIC" : "";
    }

    public static final Object getDataBaseFieldValue(Object getDataBaseFieldValue, String key) {
        Object obj;
        AbstractC20107m.AbstractC20108a mo1115a;
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(getDataBaseFieldValue, "$this$getDataBaseFieldValue");
        C18524p.m3840d(key, "key");
        Iterator it2 = C18558b.m3830b(C18496ac.m3882b(getDataBaseFieldValue.getClass())).iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            Object next = it2.next();
            Field m3825a = C18569b.m3825a((AbstractC20107m) next);
            if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
            if (C18524p.m3850a((Object) (schema3 != null ? schema3.field() : null), (Object) key)) {
                obj = next;
                break;
            }
        }
        AbstractC20107m abstractC20107m = (AbstractC20107m) obj;
        if (abstractC20107m == null || (mo1115a = abstractC20107m.mo1115a()) == null) {
            return null;
        }
        return mo1115a.call(getDataBaseFieldValue);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0050, code lost:
        if (r0 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getTableName(kotlin.reflect.AbstractC18551c<?> r3) {
        /*
            r0 = r3
            java.lang.String r1 = "$this$getTableName"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r3
            kotlin.reflect.b r0 = (kotlin.reflect.AbstractC18550b) r0
            java.util.List r0 = r0.getAnnotations()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L18:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L35
            r0 = r4
            java.lang.Object r0 = r0.next()
            r3 = r0
            r0 = r3
            java.lang.annotation.Annotation r0 = (java.lang.annotation.Annotation) r0
            boolean r0 = r0 instanceof net.pubnative.lite.sdk.consent.p573db.Database
            if (r0 == 0) goto L18
            goto L37
        L35:
            r0 = 0
            r3 = r0
        L37:
            r0 = r3
            net.pubnative.lite.sdk.consent.db.Database r0 = (net.pubnative.lite.sdk.consent.p573db.Database) r0
            java.lang.annotation.Annotation r0 = (java.lang.annotation.Annotation) r0
            net.pubnative.lite.sdk.consent.db.Database r0 = (net.pubnative.lite.sdk.consent.p573db.Database) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L53
            r0 = r3
            java.lang.String r0 = r0.tableName()
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L56
        L53:
            java.lang.String r0 = ""
            r3 = r0
        L56:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.consent.p573db.DataBaseFunctionsKt.getTableName(kotlin.reflect.c):java.lang.String");
    }

    public static final boolean isDataBaseFieldAutoIncrease(AbstractC20107m<?, ?> isDataBaseFieldAutoIncrease) {
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(isDataBaseFieldAutoIncrease, "$this$isDataBaseFieldAutoIncrease");
        Field m3825a = C18569b.m3825a(isDataBaseFieldAutoIncrease);
        if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
            schema = null;
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.autoIncrease();
        }
        return false;
    }

    public static final boolean isDataBaseFieldGeneratedId(AbstractC20107m<?, ?> isDataBaseFieldGeneratedId) {
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(isDataBaseFieldGeneratedId, "$this$isDataBaseFieldGeneratedId");
        Field m3825a = C18569b.m3825a(isDataBaseFieldGeneratedId);
        if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
            schema = null;
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.generatedId();
        }
        return false;
    }

    public static final boolean isDataBaseFieldNonNullable(AbstractC20107m<?, ?> isDataBaseFieldNonNullable) {
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(isDataBaseFieldNonNullable, "$this$isDataBaseFieldNonNullable");
        Field m3825a = C18569b.m3825a(isDataBaseFieldNonNullable);
        if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
            schema = null;
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.nonNullable();
        }
        return false;
    }

    public static final boolean isDataBaseFieldUnique(AbstractC20107m<?, ?> isDataBaseFieldUnique) {
        Schema schema;
        Annotation[] annotations;
        C18524p.m3840d(isDataBaseFieldUnique, "$this$isDataBaseFieldUnique");
        Field m3825a = C18569b.m3825a(isDataBaseFieldUnique);
        if (m3825a != null && (annotations = m3825a.getAnnotations()) != null) {
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
            schema = null;
        }
        Schema schema2 = schema;
        if (schema2 != null) {
            return schema2.unique();
        }
        return false;
    }
}
