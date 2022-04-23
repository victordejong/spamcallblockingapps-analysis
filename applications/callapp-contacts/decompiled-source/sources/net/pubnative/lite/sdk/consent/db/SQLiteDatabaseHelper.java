package net.pubnative.lite.sdk.consent.db;

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
import kotlin.a.n;
import kotlin.a.x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.KFunction;
import kotlin.reflect.c;
import kotlin.reflect.full.b;
import kotlin.reflect.jvm.a;
import kotlin.reflect.k;
import kotlin.reflect.m;
import net.pubnative.lite.sdk.consent.db.Where;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018�� 22\u00020\u0001:\u00012B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u000b\u001a\u00020\fJ/\u0010\r\u001a\u00020\t2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0012\u0010\u0014\u001a\u00020\f2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u000fJ\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017J;\u0010\u0015\u001a\u00020\f\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0017\u0010\u001a\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b\u001bJ2\u0010\u001c\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\b\b��\u0010\u0018*\u00020\u00172\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u0005JC\u0010 \u001a\n\u0012\u0004\u0012\u0002H\u0018\u0018\u00010\u001d\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J.\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00180\u001d\"\b\b��\u0010\u0018*\u00020\u00172\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010$\u001a\u00020%2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013H\u0002J\u000e\u0010&\u001a\u00020'2\u0006\u0010\u0016\u001a\u00020\u0017J\u0017\u0010(\u001a\u00020'2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b)J\u000e\u0010*\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0017J+\u0010*\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J_\u0010*\u001a\u00020\f\"\b\b��\u0010\u0018*\u00020\u00172\"\u0010+\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170,j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0017`-2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u000f2\u001b\b\u0002\u0010\u0010\u001a\u0015\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011¢\u0006\u0002\b\u0013J\u0017\u0010.\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H��¢\u0006\u0002\b/J\u0014\u00100\u001a\u0002012\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¨\u00063"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper;", "Landroid/database/sqlite/SQLiteOpenHelper;", "context", "Landroid/content/Context;", "name", "", "factory", "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;", "version", "", "(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V", "closeDatabase", "", "count", "tableClass", "Lkotlin/reflect/KClass;", "where", "Lkotlin/Function1;", "Lnet/pubnative/lite/sdk/consent/db/Where;", "Lkotlin/ExtensionFunctionType;", "createTable", "delete", "obj", "", "T", "kClass", "deleteObject", "deleteObject$hybid_sdk_voyager_release", "execRawSQL", "", "objClass", "sqlString", "get", "getCursorObjects", Constants.URL_CAMPAIGN, "Landroid/database/Cursor;", "getWhereStatement", "Lnet/pubnative/lite/sdk/consent/db/Statements;", "insert", "", "insertObj", "insertObj$hybid_sdk_voyager_release", "update", "updateFieldMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "updateObject", "updateObject$hybid_sdk_voyager_release", "validateValidClass", "Lnet/pubnative/lite/sdk/consent/db/DataBaseSchema;", "Companion", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
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

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0006R\u0014\u0010\u0019\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0006¨\u0006\u001b"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/SQLiteDatabaseHelper$Companion;", "", "()V", "AUTO_INCREMENT", "", "getAUTO_INCREMENT", "()Ljava/lang/String;", "COUNT_SQL_QUERY", "getCOUNT_SQL_QUERY", "CREATE_TABLE", "getCREATE_TABLE", "IF_EXIST", "getIF_EXIST", "IF_NOT_EXIST", "getIF_NOT_EXIST", "NOT_NULL", "getNOT_NULL", "ORDER_BY", "getORDER_BY", "PRIMARY_KEY", "getPRIMARY_KEY", "SPACE", "getSPACE", "UNIQUE", "getUNIQUE", "WHERE", "getWHERE", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
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
        p.d(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ int count$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, c cVar, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.count(cVar, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: count");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void delete$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, c cVar, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            sQLiteDatabaseHelper.delete(cVar, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
    }

    public static /* synthetic */ List execRawSQL$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, c cVar, String str, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                cVar = null;
            }
            return sQLiteDatabaseHelper.execRawSQL(cVar, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execRawSQL");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List get$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, c cVar, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.get(cVar, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get");
    }

    private final <T> List<T> getCursorObjects(c<T> cVar, Cursor cursor) {
        Schema schema;
        Annotation[] annotations;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            KFunction a2 = b.a(cVar);
            HashMap hashMap = new HashMap();
            if (a2 != null) {
                for (m mVar : b.b(cVar)) {
                    Field a3 = kotlin.reflect.jvm.b.a(mVar);
                    boolean z = false;
                    BigDecimal bigDecimal = null;
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
                    String field = schema3 != null ? schema3.field() : null;
                    if (field != null && field.length() > 0) {
                        c<?> a4 = a.a(mVar.getReturnType());
                        if (p.a(a4, ac.b(String.class))) {
                            bigDecimal = cursor.getString(cursor.getColumnIndex(field));
                        } else if (p.a(a4, ac.b(Date.class))) {
                            bigDecimal = new Date(cursor.getLong(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Boolean.TYPE))) {
                            if (cursor.getInt(cursor.getColumnIndex(field)) == 1) {
                                z = true;
                            }
                            bigDecimal = Boolean.valueOf(z);
                        } else if (p.a(a4, ac.b(Character.TYPE))) {
                            bigDecimal = cursor.getString(cursor.getColumnIndex(field));
                        } else if (p.a(a4, ac.b(Byte.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Short.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Integer.TYPE))) {
                            bigDecimal = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Long.TYPE))) {
                            bigDecimal = Long.valueOf(cursor.getLong(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Float.TYPE))) {
                            bigDecimal = Float.valueOf(cursor.getFloat(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(Double.TYPE))) {
                            bigDecimal = Double.valueOf(cursor.getDouble(cursor.getColumnIndex(field)));
                        } else if (p.a(a4, ac.b(byte[].class))) {
                            bigDecimal = (Serializable) cursor.getBlob(cursor.getColumnIndex(field));
                        } else if (p.a(a4, ac.b(BigDecimal.class))) {
                            bigDecimal = new BigDecimal(cursor.getDouble(cursor.getColumnIndex(field)));
                        }
                        k a5 = kotlin.reflect.full.a.a(a2, mVar.getName());
                        if (a5 != null) {
                            hashMap.put(a5, bigDecimal);
                        }
                    }
                }
                arrayList.add(a2.callBy(hashMap));
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

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Statements getWhereStatement$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                function1 = null;
            }
            return sQLiteDatabaseHelper.getWhereStatement(function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getWhereStatement");
    }

    /* JADX WARN: Multi-variable type inference failed */
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void update$default(SQLiteDatabaseHelper sQLiteDatabaseHelper, HashMap hashMap, c cVar, Function1 function1, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                function1 = null;
            }
            sQLiteDatabaseHelper.update(hashMap, cVar, function1);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: update");
    }

    private final DataBaseSchema validateValidClass(c<?> cVar) {
        if (cVar.e()) {
            String tableName = DataBaseFunctionsKt.getTableName(cVar);
            if (!(tableName.length() == 0)) {
                HashMap<String, m<?, ?>> dataBaseField = DataBaseFunctionsKt.getDataBaseField(cVar);
                if (!dataBaseField.isEmpty()) {
                    return new DataBaseSchema(tableName, dataBaseField);
                }
                throw new IllegalArgumentException("Object Must Be Contain Field(s)");
            }
            throw new IllegalArgumentException("Object Must Be Contain Table Name");
        }
        throw new IllegalArgumentException("Object Must Be Instance of Data Class");
    }

    public final void closeDatabase() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        p.b(writableDatabase, "writableDatabase");
        if (writableDatabase.isOpen()) {
            getWritableDatabase().close();
        }
        SQLiteDatabase readableDatabase = getReadableDatabase();
        p.b(readableDatabase, "readableDatabase");
        if (readableDatabase.isOpen()) {
            getReadableDatabase().close();
        }
    }

    public final int count(c<?> tableClass, Function1<? super Where, Where> function1) {
        p.d(tableClass, "tableClass");
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
        Cursor c2 = readableDatabase.rawQuery(sb.toString(), component2);
        p.b(c2, "c");
        int count = c2.getCount();
        c2.close();
        return count;
    }

    public final void createTable(c<?> tableClass) {
        p.d(tableClass, "tableClass");
        DataBaseSchema validateValidClass = validateValidClass(tableClass);
        String component1 = validateValidClass.component1();
        HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
        StringBuilder sb = new StringBuilder();
        sb.append(CREATE_TABLE);
        String str = SPACE;
        sb.append(str);
        sb.append(IF_NOT_EXIST);
        sb.append(str);
        sb.append(component1);
        sb.append("(");
        Set<String> keySet = component2.keySet();
        p.b(keySet, "fieldMap.keys");
        int i = 0;
        for (Object obj : keySet) {
            if (i < 0) {
                n.a();
            }
            String str2 = (String) obj;
            m<?, ?> mVar = component2.get(str2);
            if (mVar != null) {
                if (DataBaseFunctionsKt.getDataBaseFieldType(a.a(mVar.getReturnType())).length() > 0) {
                    sb.append(str2);
                    String str3 = SPACE;
                    sb.append(str3);
                    sb.append(DataBaseFunctionsKt.getDataBaseFieldType(a.a(mVar.getReturnType())));
                    sb.append(str3);
                    if (DataBaseFunctionsKt.isDataBaseFieldGeneratedId(mVar)) {
                        sb.append(PRIMARY_KEY);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldAutoIncrease(mVar)) {
                        sb.append(AUTO_INCREMENT);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldNonNullable(mVar)) {
                        sb.append(NOT_NULL);
                        sb.append(str3);
                    }
                    if (DataBaseFunctionsKt.isDataBaseFieldUnique(mVar)) {
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
        p.d(obj, "obj");
        if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                deleteObject$hybid_sdk_voyager_release(obj2);
            }
            return;
        }
        deleteObject$hybid_sdk_voyager_release(obj);
    }

    public final <T> void delete(c<T> kClass, Function1<? super Where, Where> function1) {
        p.d(kClass, "kClass");
        String component1 = validateValidClass(ac.b(kClass.getClass())).component1();
        Statements whereStatement = getWhereStatement(function1);
        getWritableDatabase().delete(component1, whereStatement.component1(), whereStatement.component2());
    }

    public final void deleteObject$hybid_sdk_voyager_release(Object obj) {
        String[] strArr;
        String str;
        Annotation annotation;
        Field a2;
        Annotation[] annotations;
        if (obj != null) {
            DataBaseSchema validateValidClass = validateValidClass(ac.b(obj.getClass()));
            String component1 = validateValidClass.component1();
            HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
            Iterator<String> it2 = component2.keySet().iterator();
            while (true) {
                str = null;
                if (!it2.hasNext()) {
                    break;
                }
                String key = it2.next();
                m<?, ?> mVar = component2.get(key);
                if (!(mVar == null || (a2 = kotlin.reflect.jvm.b.a(mVar)) == null || (annotations = a2.getAnnotations()) == null)) {
                    int length = annotations.length;
                    for (int i = 0; i < length; i++) {
                        annotation = annotations[i];
                        if (annotation instanceof Schema) {
                            break;
                        }
                    }
                }
                annotation = null;
                Schema schema = annotation;
                if (!(annotation instanceof Schema)) {
                    schema = null;
                }
                Schema schema2 = schema;
                if (schema2 != null && schema2.generatedId()) {
                    if (schema2.field() != null) {
                        p.b(key, "key");
                        if (DataBaseFunctionsKt.getDataBaseFieldValue(obj, key) != null) {
                            str = schema2.field() + Where.IStatement.Companion.getEqual();
                            strArr = new String[]{String.valueOf(DataBaseFunctionsKt.getDataBaseFieldValue(obj, key))};
                        }
                    }
                }
            }
            strArr = null;
            getWritableDatabase().delete(component1, str, strArr);
        }
    }

    public final <T> List<T> execRawSQL(c<T> cVar, String sqlString) {
        p.d(sqlString, "sqlString");
        if (cVar == null) {
            getWritableDatabase().rawQuery(sqlString, null);
            return null;
        }
        DataBaseSchema validateValidClass = validateValidClass(cVar);
        validateValidClass.component1();
        validateValidClass.component2();
        Cursor c2 = getReadableDatabase().rawQuery(sqlString, null);
        p.b(c2, "c");
        List<T> cursorObjects = getCursorObjects(cVar, c2);
        c2.close();
        return cursorObjects;
    }

    public final <T> List<T> get(c<T> kClass, Function1<? super Where, Where> function1) {
        T t;
        p.d(kClass, "kClass");
        DataBaseSchema validateValidClass = validateValidClass(kClass);
        String component1 = validateValidClass.component1();
        HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        int size = component2.keySet().size();
        String[] strArr = new String[size];
        int i = 0;
        while (i < size) {
            Set<String> keySet = component2.keySet();
            p.b(keySet, "fieldMap.keys");
            Set<String> elementAtOrElse = keySet;
            p.d(elementAtOrElse, "$this$elementAt");
            boolean z = elementAtOrElse instanceof List;
            if (z) {
                t = (T) ((List) elementAtOrElse).get(i);
            } else {
                x.b defaultValue = new x.b(i);
                p.d(elementAtOrElse, "$this$elementAtOrElse");
                p.d(defaultValue, "defaultValue");
                if (z) {
                    List list = (List) elementAtOrElse;
                    t = (i < 0 || i > n.a(list)) ? defaultValue.invoke(Integer.valueOf(i)) : (T) list.get(i);
                } else {
                    if (i >= 0) {
                        Iterator<T> it2 = elementAtOrElse.iterator();
                        int i2 = 0;
                        while (it2.hasNext()) {
                            t = it2.next();
                            if (i == i2) {
                                break;
                            }
                            i2++;
                        }
                    }
                    t = defaultValue.invoke(Integer.valueOf(i));
                }
            }
            strArr[i] = (String) t;
            i++;
        }
        Statements whereStatement = getWhereStatement(function1);
        Cursor c2 = readableDatabase.query(component1, strArr, whereStatement.component1(), whereStatement.component2(), null, null, whereStatement.component3());
        p.b(c2, "c");
        List<T> cursorObjects = getCursorObjects(kClass, c2);
        c2.close();
        return cursorObjects;
    }

    public final long insert(Object obj) {
        p.d(obj, "obj");
        if (!(obj instanceof Collection)) {
            return insertObj$hybid_sdk_voyager_release(obj);
        }
        Iterator it2 = ((Collection) obj).iterator();
        if (it2.hasNext()) {
            return insertObj$hybid_sdk_voyager_release(it2.next());
        }
        return -1L;
    }

    public final long insertObj$hybid_sdk_voyager_release(Object obj) {
        Annotation annotation;
        Field a2;
        Annotation[] annotations;
        if (obj == null) {
            return -1L;
        }
        DataBaseSchema validateValidClass = validateValidClass(ac.b(obj.getClass()));
        String component1 = validateValidClass.component1();
        HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
        ContentValues contentValues = new ContentValues();
        Iterator<String> it2 = component2.keySet().iterator();
        while (true) {
            Schema schema = null;
            if (!it2.hasNext()) {
                return getWritableDatabase().insert(component1, null, contentValues);
            }
            String key = it2.next();
            m<?, ?> mVar = component2.get(key);
            if (!(mVar == null || (a2 = kotlin.reflect.jvm.b.a(mVar)) == null || (annotations = a2.getAnnotations()) == null)) {
                int length = annotations.length;
                for (int i = 0; i < length; i++) {
                    annotation = annotations[i];
                    if (annotation instanceof Schema) {
                        break;
                    }
                }
            }
            annotation = null;
            boolean z = annotation instanceof Schema;
            schema = annotation;
            if (!z) {
            }
            Schema schema2 = schema;
            if (schema2 == null || !schema2.generatedId()) {
                p.b(key, "key");
                Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
                if (dataBaseFieldValue != null) {
                    SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
                }
            }
        }
    }

    public final void update(Object obj) {
        p.d(obj, "obj");
        if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                updateObject$hybid_sdk_voyager_release(obj2);
            }
            return;
        }
        updateObject$hybid_sdk_voyager_release(obj);
    }

    public final void update(Object obj, Function1<? super Where, Where> function1) {
        p.d(obj, "obj");
        if (!b.a(ac.b(obj.getClass()), ac.b(Collection.class))) {
            DataBaseSchema validateValidClass = validateValidClass(ac.b(obj.getClass()));
            String component1 = validateValidClass.component1();
            HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
            Statements whereStatement = getWhereStatement(function1);
            String component12 = whereStatement.component1();
            String[] component22 = whereStatement.component2();
            ContentValues contentValues = new ContentValues();
            for (String key : component2.keySet()) {
                p.b(key, "key");
                Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
                if (dataBaseFieldValue != null) {
                    SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
                }
            }
            getWritableDatabase().update(component1, contentValues, component12, component22);
        }
    }

    public final <T> void update(HashMap<String, Object> updateFieldMap, c<T> kClass, Function1<? super Where, Where> function1) {
        p.d(updateFieldMap, "updateFieldMap");
        p.d(kClass, "kClass");
        String component1 = validateValidClass(kClass).component1();
        Statements whereStatement = getWhereStatement(function1);
        String component12 = whereStatement.component1();
        String[] component2 = whereStatement.component2();
        ContentValues contentValues = new ContentValues();
        for (String key : updateFieldMap.keySet()) {
            Object obj = updateFieldMap.get(key);
            if (obj != null) {
                p.b(key, "key");
                SQLiteDatabaseHelperKt.put(contentValues, key, obj);
            }
        }
        getWritableDatabase().update(component1, contentValues, component12, component2);
    }

    public final void updateObject$hybid_sdk_voyager_release(Object obj) {
        Annotation annotation;
        Field a2;
        Annotation[] annotations;
        if (obj != null) {
            DataBaseSchema validateValidClass = validateValidClass(ac.b(obj.getClass()));
            String component1 = validateValidClass.component1();
            HashMap<String, m<?, ?>> component2 = validateValidClass.component2();
            ContentValues contentValues = new ContentValues();
            String str = null;
            String[] strArr = null;
            for (String key : component2.keySet()) {
                m<?, ?> mVar = component2.get(key);
                if (!(mVar == null || (a2 = kotlin.reflect.jvm.b.a(mVar)) == null || (annotations = a2.getAnnotations()) == null)) {
                    int length = annotations.length;
                    for (int i = 0; i < length; i++) {
                        annotation = annotations[i];
                        if (annotation instanceof Schema) {
                            break;
                        }
                    }
                }
                annotation = null;
                Schema schema = annotation;
                if (!(annotation instanceof Schema)) {
                    schema = null;
                }
                Schema schema2 = schema;
                if (!(schema2 != null ? schema2.generatedId() : false)) {
                    p.b(key, "key");
                    Object dataBaseFieldValue = DataBaseFunctionsKt.getDataBaseFieldValue(obj, key);
                    if (dataBaseFieldValue != null) {
                        SQLiteDatabaseHelperKt.put(contentValues, key, dataBaseFieldValue);
                    }
                } else if ((schema2 != null ? schema2.field() : null) != null) {
                    p.b(key, "key");
                    if (DataBaseFunctionsKt.getDataBaseFieldValue(obj, key) != null) {
                        str = schema2.field() + Where.IStatement.Companion.getEqual();
                        strArr = new String[]{String.valueOf(DataBaseFunctionsKt.getDataBaseFieldValue(obj, key))};
                    }
                }
            }
            getWritableDatabase().update(component1, contentValues, str, strArr);
        }
    }
}
