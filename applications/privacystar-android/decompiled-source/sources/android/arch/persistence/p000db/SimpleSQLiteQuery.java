package android.arch.persistence.p000db;

import android.support.annotation.Nullable;
/* renamed from: android.arch.persistence.db.SimpleSQLiteQuery */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/SimpleSQLiteQuery.class */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    @Nullable
    private final Object[] mBindArgs;
    private final String mQuery;

    public SimpleSQLiteQuery(String str) {
        this(str, null);
    }

    public SimpleSQLiteQuery(String str, @Nullable Object[] objArr) {
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
            supportSQLiteProgram.bindLong(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
        } else {
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: null, byte[], float, double, long, int, short, byte, string");
        }
    }

    public static void bind(SupportSQLiteProgram supportSQLiteProgram, Object[] objArr) {
        if (objArr != null) {
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                i++;
                bind(supportSQLiteProgram, i, obj);
            }
        }
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        bind(supportSQLiteProgram, this.mBindArgs);
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteQuery
    public int getArgCount() {
        return this.mBindArgs == null ? 0 : this.mBindArgs.length;
    }

    @Override // android.arch.persistence.p000db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }
}
