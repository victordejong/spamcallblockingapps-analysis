package androidx.sqlite.p006db;
/* renamed from: androidx.sqlite.db.SimpleSQLiteQuery */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/SimpleSQLiteQuery.class */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    private final Object[] mBindArgs;
    private final String mQuery;

    public SimpleSQLiteQuery(String str) {
        this(str, null);
    }

    public SimpleSQLiteQuery(String str, Object[] objArr) {
        this.mQuery = str;
        this.mBindArgs = objArr;
    }

    private static void bind(SupportSQLiteProgram supportSQLiteProgram, int i, Object obj) {
        if (obj == null) {
            supportSQLiteProgram.bindNull(i);
        } else if (obj instanceof byte[]) {
            supportSQLiteProgram.bindBlob(i, (byte[]) obj);
        } else if (obj instanceof Float) {
            supportSQLiteProgram.bindDouble(i, ((Float) obj).floatValue());
        } else if (obj instanceof Double) {
            supportSQLiteProgram.bindDouble(i, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            supportSQLiteProgram.bindLong(i, ((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            supportSQLiteProgram.bindLong(i, ((Integer) obj).intValue());
        } else if (obj instanceof Short) {
            supportSQLiteProgram.bindLong(i, ((Short) obj).shortValue());
        } else if (obj instanceof Byte) {
            supportSQLiteProgram.bindLong(i, ((Byte) obj).byteValue());
        } else if (obj instanceof String) {
            supportSQLiteProgram.bindString(i, (String) obj);
        } else if (obj instanceof Boolean) {
            supportSQLiteProgram.bindLong(i, (((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    public static void bind(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i = 0;
        while (i < length) {
            i++;
            bind(supportSQLiteProgram, i, objArr[i]);
        }
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        bind(supportSQLiteProgram, this.mBindArgs);
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public int getArgCount() {
        Object[] objArr = this.mBindArgs;
        return objArr == null ? 0 : objArr.length;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }
}
