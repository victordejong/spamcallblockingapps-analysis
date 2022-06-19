package net.pubnative.lite.sdk.consent.p573db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.appsflyer.share.Constants;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18292x;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC20103k;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.KFunction;
import kotlin.reflect.full.C18557a;
import kotlin.reflect.full.C18558b;
import kotlin.reflect.jvm.C18568a;
import kotlin.reflect.jvm.C18569b;
import net.pubnative.lite.sdk.consent.p573db.Where;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018�� 22\u00020\u0001:\u00012B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\fJ/\u0010\r\u001a\u00020\t2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0012\u0010\u0014\u001a\u00020\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fJ\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017J;\u0010\u0015\u001a\u00020\f\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0017\u0010\u001a\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b\u001bJ2\u0010\u001c\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\b\b��\u0010\u0018*\u00020\u00172\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u0005JC\u0010 \u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J.\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001d\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010$\u001a\u00020%2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013H\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010\u0016\u001a\u00020\u0017J\u0017\u0010(\u001a\u00020'2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b)J\u000e\u0010*\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017J+\u0010*\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J_\u0010*\u001a\u00020\f\"\b\b��\u0010\u0018*\u00020\u00172\"\u0010+\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170,j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0017`-2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0017\u0010.\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b/J\u0014\u00100\u001a\u0002012\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¨\u00063"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;", "Landroid/database/sqlite/SQLiteOpenHelper;", "context", "Landroid/content/Context;", "name", "", "factory", "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;", "version", "", "(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V", "closeDatabase", "", "count", "tableClass", "Lkotlin/reflect/KClass;", "where", "Lkotlin/Function1;", "Lnet/pubnative/lite/sdk/consent/db/Where;", "Lkotlin/ExtensionFunctionType;", "createTable", "delete", "obj", "", "T", "kClass", "deleteObject", "deleteObject$hybid_sdk_voyager_release", "execRawSQL", "", "objClass", "sqlString", "get", "getCursorObjects", Constants.URL_CAMPAIGN, "Landroid/database/Cursor;", "getWhereStatement", "Lnet/pubnative/lite/sdk/consent/db/Statements;", "insert", "", "insertObj", "insertObj$hybid_sdk_voyager_release", "update", "updateFieldMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "updateObject", "updateObject$hybid_sdk_voyager_release", "validateValidClass", "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;", "Companion", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: net.pubnative.lite.sdk.consent.db.SQLiteDatabaseHelper */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper.class */
public abstract class SQLiteDatabaseHelper extends SQLiteOpenHelper {
    public static final Companion Companion = new Companion(null);
    private static final String SPACE = StringUtils.SPACE;
    private static final String CREATE_TABLE = "CREATE TABLE";
    private static final String IF_NOT_EXIST = "IF NOT EXISTS";
    private static final String IF_EXIST = "IF EXISTS";
    private static final String NOT_NULL = "not null";
    private static final String PRIMARY_KEY = "primary key";
    private static final String AUTO_INCREMENT = "autoincrement";
    private static final String UNIQUE = "unique";
    private static final String WHERE = "WHERE";
    private static final String ORDER_BY = "ORDER BY";
    private static final String COUNT_SQL_QUERY = "SELECT 1 FROM ";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0006R\u0014\u0010\u0019\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0006¨\u0006\u001b"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;", "", "()V", "AUTO_INCREMENT", "", "getAUTO_INCREMENT", "()Ljava/lang/String;", "COUNT_SQL_QUERY", "getCOUNT_SQL_QUERY", "CREATE_TABLE", "getCREATE_TABLE", "IF_EXIST", "getIF_EXIST", "IF_NOT_EXIST", "getIF_NOT_EXIST", "NOT_NULL", "getNOT_NULL", "ORDER_BY", "getORDER_BY", "PRIMARY_KEY", "getPRIMARY_KEY", "SPACE", "getSPACE", "UNIQUE", "getUNIQUE", "WHERE", "getWHERE", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.SQLiteDatabaseHelper$Companion */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getAUTO_INCREMENT() {
            return SQLiteDatabaseHelper.AUTO_INCREMENT;
        }

        public final String getCOUNT_SQL_QUERY() {
            return SQLiteDatabaseHelper.COUNT_SQL_QUERY;
        }

        public final String getCREATE_TABLE() {
            return SQLiteDatabaseHelper.CREATE_TABLE;
        }

        public final String getIF_EXIST() {
            return SQLiteDatabaseHelper.IF_EXIST;
        }

        public final String getIF_NOT_EXIST() {
            return SQLiteDatabaseHelper.IF_NOT_EXIST;
        }

        public final String getNOT_NULL() {
            return SQLiteDatabaseHelper.NOT_NULL;
        }

        public final String getORDER_BY() {
            return SQLiteDatabaseHelper.ORDER_BY;
        }

        public final String getPRIMARY_KEY() {
            return SQLiteDatabaseHelper.PRIMARY_KEY;
        }

        public final String getSPACE() {
            return SQLiteDatabaseHelper.SPACE;
        }

        public final String getUNIQUE() {
            return SQLiteDatabaseHelper.UNIQUE;
        }

        public final String getWHERE() {
            return SQLiteDatabaseHelper.WHERE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SQLiteDatabaseHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
        C18524p.m3840d(context, "context");
    }

    public static /* synthetic */ int count$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, AbstractC18551c abstractC18551c, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.count(abstractC18551c, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: count");
    }

    public static /* synthetic */ void delete$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, AbstractC18551c abstractC18551c, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            sQLiteDatabaseHelper.delete(abstractC18551c, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
    }

    public static /* synthetic */ List execRawSQL$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, AbstractC18551c abstractC18551c, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                abstractC18551c = null;
            }
            return sQLiteDatabaseHelper.execRawSQL(abstractC18551c, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execRawSQL");
    }

    public static /* synthetic */ List get$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, AbstractC18551c abstractC18551c, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.get(abstractC18551c, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v106, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v109, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v71, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v75, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v79, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v83, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v87, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v91, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v95, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v98, types: [java.io.Serializable] */
    private final <T> List<T> getCursorObjects(AbstractC18551c<T> abstractC18551c, Cursor cursor) {
        Schema schema;
        BigDecimal bigDecimal;
        Annotation[] annotations;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            KFunction m3832a = C18558b.m3832a(abstractC18551c);
            HashMap hashMap = new HashMap();
            if (m3832a != null) {
                for (AbstractC20107m abstractC20107m : C18558b.m3830b(abstractC18551c)) {
                    Field m3825a = C18569b.m3825a(abstractC20107m);
                    boolean z = false;
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
                    String field = schema3 != null ? schema3.field() : null;
                    if (field != null && field.length() > 0) {
                        AbstractC18551c<?> m3827a = C18568a.m3827a(abstractC20107m.getReturnType());
                        if (C18524p.m3850a(m3827a, C18496ac.m3882b(String.class))) {
                            bigDecimal = cursor.getString(cursor.getColumnIndex(field));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Date.class))) {
                            bigDecimal = new Date(cursor.getLong(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Boolean.TYPE))) {
                            if (cursor.getInt(cursor.getColumnIndex(field)) == 1) {
                                z = true;
                            }
                            bigDecimal = Boolean.valueOf(z);
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Character.TYPE))) {
                            bigDecimal = cursor.getString(cursor.getColumnIndex(field));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Byte.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Short.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Integer.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Long.TYPE))) {
                            bigDecimal = Long.valueOf(cursor.getLong(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Float.TYPE))) {
                            bigDecimal = Float.valueOf(cursor.getFloat(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(Double.TYPE))) {
                            bigDecimal = Double.valueOf(cursor.getDouble(cursor.getColumnIndex(field)));
                        } else if (C18524p.m3850a(m3827a, C18496ac.m3882b(byte[].class))) {
                            bigDecimal = (Serializable) cursor.getBlob(cursor.getColumnIndex(field));
                        } else {
                            bigDecimal = null;
                            if (C18524p.m3850a(m3827a, C18496ac.m3882b(BigDecimal.class))) {
                                bigDecimal = new BigDecimal(cursor.getDouble(cursor.getColumnIndex(field)));
                            }
                        }
                        AbstractC20103k m3833a = C18557a.m3833a(m3832a, abstractC20107m.getName());
                        if (m3833a != null) {
                            hashMap.put(m3833a, bigDecimal);
                        }
                    }
                }
                arrayList.add(m3832a.callBy(hashMap));
            }
        }
        return arrayList;
    }

    private final Statements getWhereStatement(Function1<? super Where, Where> function1) {
        String[] strArr;
        String str;
        String str2 = null;
        if (function1 != null) {
            Where where = new Where();
            function1.invoke(where);
            str2 = where.getClauseString$hybid_sdk_voyager_release();
            strArr = where.getArgs$hybid_sdk_voyager_release();
            str = where.getOrder$hybid_sdk_voyager_release();
        } else {
            str = null;
            strArr = null;
        }
        return new Statements(str2, strArr, str);
    }

    static /* synthetic */ Statements getWhereStatement$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.getWhereStatement(function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getWhereStatement");
    }

    public static /* synthetic */ void update$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, Object obj, Function1 function1, int i, Object obj2) {
        if (obj2 == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            sQLiteDatabaseHelper.update(obj, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: update");
    }

    public static /* synthetic */ void update$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, HashMap hashMap, AbstractC18551c abstractC18551c, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                function1 = null;
            }
            sQLiteDatabaseHelper.update(hashMap, abstractC18551c, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: update");
    }

    private final DataBaseSchema validateValidClass(AbstractC18551c<?> abstractC18551c) {
        if (abstractC18551c.mo3720e()) {
            String tableName = DataBaseFunctionsKt.getTableName(abstractC18551c);
            if (tableName.length() == 0) {
                throw new IllegalArgumentException("Object Must Be Contain Table Name");
            }
            HashMap<String, AbstractC20107m<?, ?>> dataBaseField = DataBaseFunctionsKt.getDataBaseField(abstractC18551c);
            if (dataBaseField.isEmpty()) {
                throw new IllegalArgumentException("Object Must Be Contain Field(s)");
            }
            return new DataBaseSchema(tableName, dataBaseField);
        }
        throw new IllegalArgumentException("Object Must Be Instance of Data Class");
    }

    public final void closeDatabase() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        C18524p.m3843b(writableDatabase, "writableDatabase");
        if (writableDatabase.isOpen()) {
            getWritableDatabase().close();
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        C18524p.m3843b(readableDatabase, "readableDatabase");
        if (readableDatabase.isOpen()) {
            getReadableDatabase().close();
        }
    }

    public final int count(AbstractC18551c<?> tableClass, Function1<? super Where, Where> function1) {
        C18524p.m3840d(tableClass, "tableClass");
        String component1 = validateValidClass(tableClass).component1();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Statements whereStatement = getWhereStatement(function1);
        String component12 = whereStatement.component1();
        String[] component2 = whereStatement.component2();
        StringBuilder sb = new StringBuilder(COUNT_SQL_QUERY);
        sb.append(component1);
        String str = component12;
        if (!(str == null || str.length() == 0)) {
            String str2 = SPACE;
            sb.append(str2);
            sb.append(WHERE);
            sb.append(str2);
            sb.append(component12);
        }
        Cursor c = readableDatabase.rawQuery(sb.toString(), component2);
        C18524p.m3843b(c, "c");
        int count = c.getCount();
        c.close();
        return count;
    }

    public final void createTable(AbstractC18551c<?> tableClass) {
        C18524p.m3840d(tableClass, "tableClass");
        DataBaseSchema validateValidClass = validateValidClass(tableClass);
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        StringBuilder sb = new StringBuilder();
        sb.append(CREATE_TABLE);
        String str = SPACE;
        sb.append(str);
        sb.append(IF_NOT_EXIST);
        sb.append(str);
        sb.append(component1);
        sb.append("(");
        Set<String> keySet = component2.keySet();
        C18524p.m3843b(keySet, "fieldMap.keys");
        int i = 0;
        for (Object obj : keySet) {
            if (i < 0) {
                C18282n.m4175a();
            }
            String str2 = (String) obj;
            AbstractC20107m<?, ?> abstractC20107m = component2.get(str2);
            if (abstractC20107m != null) {
                if (DataBaseFunctionsKt.getDataBaseFieldType(C18568a.m3827a(abstractC20107m.getReturnType())).length() > 0) {
                    sb.append(str2);
                    String str3 = SPACE;
                    sb.append(str3);
                    sb.append(DataBaseFunctionsKt.getDataBaseFieldType(C18568a.m3827a(abstractC20107m.getReturnType())));
                    sb.append(str3);
                    if (DataBaseFunctionsKt.isDataBaseFieldGeneratedId(abstractC20107m)) {
                        sb.append(PRIMARY_KEY);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldAutoIncrease(abstractC20107m)) {
                        sb.append(AUTO_INCREMENT);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldNonNullable(abstractC20107m)) {
                        sb.append(NOT_NULL);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldUnique(abstractC20107m)) {
                        sb.append(UNIQUE);
                        sb.append(str3);
                    }
                    if (i != component2.keySet().size() - 1) {
                        sb.append(",");
                    }
                }
            }
            i++;
        }
        sb.append(");");
        getWritableDatabase().execSQL(sb.toString());
    }

    public final void delete(Object obj) {
        C18524p.m3840d(obj, "obj");
        if (!(obj instanceof Collection)) {
            deleteObject$hybid_sdk_voyager_release(obj);
            return;
        }
        for (Object obj2 : (Collection) obj) {
            deleteObject$hybid_sdk_voyager_release(obj2);
        }
    }

    public final <T> void delete(AbstractC18551c<T> kClass, Function1<? super Where, Where> function1) {
        C18524p.m3840d(kClass, "kClass");
        String component1 = validateValidClass(C18496ac.m3882b(kClass.getClass())).component1();
        Statements whereStatement = getWhereStatement(function1);
        getWritableDatabase().delete(component1, whereStatement.component1(), whereStatement.component2());
    }

    public final void deleteObject$hybid_sdk_voyager_release(Object obj) {
        String[] strArr;
        String str;
        Schema schema;
        Field m3825a;
        Annotation[] annotations;
        if (obj == null) {
            return;
        }
        DataBaseSchema validateValidClass = validateValidClass(C18496ac.m3882b(obj.getClass()));
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        Iterator<String> it2 = component2.keySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String key = it2.next();
            AbstractC20107m<?, ?> abstractC20107m = component2.get(key);
            if (abstractC20107m != null && (m3825a = C18569b.m3825a(abstractC20107m)) != null && (annotations = m3825a.getAnnotations()) != null) {
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
            if (schema3 != null && schema3.generatedId()) {
                if (schema3.field() != null) {
                    C18524p.m3843b(key, "key");
                    if (DataBaseFunctionsKt.getDataBaseFieldValue(obj, key) != null) {
                        strArr = new String[]{String.valueOf(DataBaseFunctionsKt.getDataBaseFieldValue(obj, key))};
                        str = schema3.field() + Where.IStatement.Companion.getEqual();
                    }
                }
            }
        }
        strArr = null;
        str = null;
        getWritableDatabase().delete(component1, str, strArr);
    }

    public final <T> List<T> execRawSQL(AbstractC18551c<T> abstractC18551c, String sqlString) {
        C18524p.m3840d(sqlString, "sqlString");
        if (abstractC18551c == null) {
            getWritableDatabase().rawQuery(sqlString, null);
            return null;
        }
        DataBaseSchema validateValidClass = validateValidClass(abstractC18551c);
        validateValidClass.component1();
        validateValidClass.component2();
        Cursor c = getReadableDatabase().rawQuery(sqlString, null);
        C18524p.m3843b(c, "c");
        List<T> cursorObjects = getCursorObjects(abstractC18551c, c);
        c.close();
        return cursorObjects;
    }

    public final <T> List<T> get(AbstractC18551c<T> kClass, Function1<? super Where, Where> function1) {
        Object obj;
        C18524p.m3840d(kClass, "kClass");
        DataBaseSchema validateValidClass = validateValidClass(kClass);
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        int size = component2.keySet().size();
        String[] strArr = new String[size];
        int i = 0;
        while (i < size) {
            Set<String> keySet = component2.keySet();
            C18524p.m3843b(keySet, "fieldMap.keys");
            Set<String> elementAtOrElse = keySet;
            C18524p.m3840d(elementAtOrElse, "$this$elementAt");
            boolean z = elementAtOrElse instanceof List;
            if (z) {
                obj = ((List) elementAtOrElse).get(i);
            } else {
                C18292x.C18294b defaultValue = new C18292x.C18294b(i);
                C18524p.m3840d(elementAtOrElse, "$this$elementAtOrElse");
                C18524p.m3840d(defaultValue, "defaultValue");
                if (z) {
                    List list = (List) elementAtOrElse;
                    obj = (i < 0 || i > C18282n.m4173a(list)) ? defaultValue.invoke(Integer.valueOf(i)) : list.get(i);
                } else {
                    if (i >= 0) {
                        Iterator<T> it2 = elementAtOrElse.iterator();
                        int i2 = 0;
                        while (it2.hasNext()) {
                            obj = it2.next();
                            if (i == i2) {
                                break;
                            }
                            i2++;
                        }
                    }
                    obj = defaultValue.invoke(Integer.valueOf(i));
                }
            }
            strArr[i] = (String) obj;
            i++;
        }
        Statements whereStatement = getWhereStatement(function1);
        Cursor c = readableDatabase.query(component1, strArr, whereStatement.component1(), whereStatement.component2(), null, null, whereStatement.component3());
        C18524p.m3843b(c, "c");
        List<T> cursorObjects = getCursorObjects(kClass, c);
        c.close();
        return cursorObjects;
    }

    public final long insert(Object obj) {
        C18524p.m3840d(obj, "obj");
        if (obj instanceof Collection) {
            Iterator it2 = ((Collection) obj).iterator();
            if (!it2.hasNext()) {
                return -1L;
            }
            return insertObj$hybid_sdk_voyager_release(it2.next());
        }
        return insertObj$hybid_sdk_voyager_release(obj);
    }

    public final long insertObj$hybid_sdk_voyager_release(Object obj) {
        Schema schema;
        Field m3825a;
        Annotation[] annotations;
        if (obj == null) {
            return -1L;
        }
        DataBaseSchema validateValidClass = validateValidClass(C18496ac.m3882b(obj.getClass()));
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        ContentValues contentValues = new ContentValues();
        for (String key : component2.keySet()) {
            AbstractC20107m<?, ?> abstractC20107m = component2.get(key);
            if (abstractC20107m != null && (m3825a = C18569b.m3825a(abstractC20107m)) != null && (annotations = m3825a.getAnnotations()) != null) {
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
            if (schema2 == null || !schema2.generatedId()) {
                C18524p.m3843b(key, "key");
                Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
                if (dataBaseFieldValue != null) {
                    SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
                }
            }
        }
        return getWritableDatabase().insert(component1, null, contentValues);
    }

    public final void update(Object obj) {
        C18524p.m3840d(obj, "obj");
        if (!(obj instanceof Collection)) {
            updateObject$hybid_sdk_voyager_release(obj);
            return;
        }
        for (Object obj2 : (Collection) obj) {
            updateObject$hybid_sdk_voyager_release(obj2);
        }
    }

    public final void update(Object obj, Function1<? super Where, Where> function1) {
        C18524p.m3840d(obj, "obj");
        if (C18558b.m3831a(C18496ac.m3882b(obj.getClass()), C18496ac.m3882b(Collection.class))) {
            return;
        }
        DataBaseSchema validateValidClass = validateValidClass(C18496ac.m3882b(obj.getClass()));
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        Statements whereStatement = getWhereStatement(function1);
        String component12 = whereStatement.component1();
        String[] component22 = whereStatement.component2();
        ContentValues contentValues = new ContentValues();
        for (String key : component2.keySet()) {
            C18524p.m3843b(key, "key");
            Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
            if (dataBaseFieldValue != null) {
                SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
            }
        }
        getWritableDatabase().update(component1, contentValues, component12, component22);
    }

    public final <T> void update(HashMap<String, Object> updateFieldMap, AbstractC18551c<T> kClass, Function1<? super Where, Where> function1) {
        C18524p.m3840d(updateFieldMap, "updateFieldMap");
        C18524p.m3840d(kClass, "kClass");
        String component1 = validateValidClass(kClass).component1();
        Statements whereStatement = getWhereStatement(function1);
        String component12 = whereStatement.component1();
        String[] component2 = whereStatement.component2();
        ContentValues contentValues = new ContentValues();
        for (String key : updateFieldMap.keySet()) {
            Object obj = updateFieldMap.get(key);
            if (obj != null) {
                C18524p.m3843b(key, "key");
                SQLiteDatabaseHelperKt.put(contentValues, key, obj);
            }
        }
        getWritableDatabase().update(component1, contentValues, component12, component2);
    }

    public final void updateObject$hybid_sdk_voyager_release(Object obj) {
        Schema schema;
        Field m3825a;
        Annotation[] annotations;
        if (obj == null) {
            return;
        }
        DataBaseSchema validateValidClass = validateValidClass(C18496ac.m3882b(obj.getClass()));
        String component1 = validateValidClass.component1();
        HashMap<String, AbstractC20107m<?, ?>> component2 = validateValidClass.component2();
        ContentValues contentValues = new ContentValues();
        String str = null;
        String[] strArr = null;
        for (String key : component2.keySet()) {
            AbstractC20107m<?, ?> abstractC20107m = component2.get(key);
            if (abstractC20107m != null && (m3825a = C18569b.m3825a(abstractC20107m)) != null && (annotations = m3825a.getAnnotations()) != null) {
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
            if (!(schema3 != null ? schema3.generatedId() : false)) {
                C18524p.m3843b(key, "key");
                Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
                if (dataBaseFieldValue != null) {
                    SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
                }
            } else if ((schema3 != null ? schema3.field() : null) != null) {
                C18524p.m3843b(key, "key");
                if (DataBaseFunctionsKt.getDataBaseFieldValue(obj, key) != null) {
                    str = schema3.field() + Where.IStatement.Companion.getEqual();
                    strArr = new String[]{String.valueOf(DataBaseFunctionsKt.getDataBaseFieldValue(obj, key))};
                }
            }
        }
        getWritableDatabase().update(component1, contentValues, str, strArr);
    }
}
