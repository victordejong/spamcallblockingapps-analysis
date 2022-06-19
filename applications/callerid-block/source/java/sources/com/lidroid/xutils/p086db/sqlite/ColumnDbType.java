package com.lidroid.xutils.p086db.sqlite;
/* renamed from: com.lidroid.xutils.db.sqlite.ColumnDbType */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/ColumnDbType.class */
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
