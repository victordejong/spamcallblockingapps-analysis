package org.xutils.p343db.sqlite;
/* renamed from: org.xutils.db.sqlite.ColumnDbType */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/sqlite/ColumnDbType.class */
public enum ColumnDbType {
    INTEGER("INTEGER"),
    REAL("REAL"),
    TEXT("TEXT"),
    BLOB("BLOB");
    
    private String value;

    ColumnDbType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
