package org.xutils.p343db.sqlite;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.List;
import org.xutils.common.util.KeyValue;
import org.xutils.p343db.converter.ColumnConverter;
import org.xutils.p343db.converter.ColumnConverterFactory;
import org.xutils.p343db.table.ColumnUtils;
/* renamed from: org.xutils.db.sqlite.SqlInfo */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/sqlite/SqlInfo.class */
public final class SqlInfo {

    /* renamed from: a */
    private String f40633a;

    /* renamed from: b */
    private List<KeyValue> f40634b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.xutils.db.sqlite.SqlInfo$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/db/sqlite/SqlInfo$a.class */
    public static /* synthetic */ class C9642a {

        /* renamed from: a */
        static final /* synthetic */ int[] f40635a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ColumnDbType.values().length];
            f40635a = iArr;
            try {
                iArr[ColumnDbType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f40635a[ColumnDbType.REAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f40635a[ColumnDbType.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f40635a[ColumnDbType.BLOB.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public SqlInfo() {
    }

    public SqlInfo(String str) {
        this.f40633a = str;
    }

    public void addBindArg(KeyValue keyValue) {
        if (this.f40634b == null) {
            this.f40634b = new ArrayList();
        }
        this.f40634b.add(keyValue);
    }

    public void addBindArgs(List<KeyValue> list) {
        List<KeyValue> list2 = this.f40634b;
        if (list2 == null) {
            this.f40634b = list;
        } else {
            list2.addAll(list);
        }
    }

    public SQLiteStatement buildStatement(SQLiteDatabase sQLiteDatabase) {
        SQLiteStatement compileStatement = sQLiteDatabase.compileStatement(this.f40633a);
        if (this.f40634b != null) {
            for (int i = 1; i < this.f40634b.size() + 1; i++) {
                KeyValue keyValue = this.f40634b.get(i - 1);
                Object obj = keyValue.value;
                if (obj == null) {
                    compileStatement.bindNull(i);
                } else {
                    ColumnConverter columnConverter = ColumnConverterFactory.getColumnConverter(obj.getClass());
                    Object fieldValue2DbValue = columnConverter.fieldValue2DbValue(keyValue.value);
                    int i2 = C9642a.f40635a[columnConverter.getColumnDbType().ordinal()];
                    if (i2 == 1) {
                        compileStatement.bindLong(i, ((Number) fieldValue2DbValue).longValue());
                    } else if (i2 == 2) {
                        compileStatement.bindDouble(i, ((Number) fieldValue2DbValue).doubleValue());
                    } else if (i2 == 3) {
                        compileStatement.bindString(i, fieldValue2DbValue.toString());
                    } else if (i2 != 4) {
                        compileStatement.bindNull(i);
                    } else {
                        compileStatement.bindBlob(i, (byte[]) fieldValue2DbValue);
                    }
                }
            }
        }
        return compileStatement;
    }

    public Object[] getBindArgs() {
        Object[] objArr;
        List<KeyValue> list = this.f40634b;
        if (list != null) {
            Object[] objArr2 = new Object[list.size()];
            int i = 0;
            while (true) {
                objArr = objArr2;
                if (i >= this.f40634b.size()) {
                    break;
                }
                objArr2[i] = ColumnUtils.convert2DbValueIfNeeded(this.f40634b.get(i).value);
                i++;
            }
        } else {
            objArr = null;
        }
        return objArr;
    }

    public String[] getBindArgsAsStrArray() {
        List<KeyValue> list = this.f40634b;
        String[] strArr = null;
        if (list != null) {
            String[] strArr2 = new String[list.size()];
            for (int i = 0; i < this.f40634b.size(); i++) {
                Object convert2DbValueIfNeeded = ColumnUtils.convert2DbValueIfNeeded(this.f40634b.get(i).value);
                strArr2[i] = convert2DbValueIfNeeded == null ? null : convert2DbValueIfNeeded.toString();
            }
            strArr = strArr2;
        }
        return strArr;
    }

    public String getSql() {
        return this.f40633a;
    }

    public void setSql(String str) {
        this.f40633a = str;
    }
}
