package net.sqlcipher;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/Cursor.class */
public interface Cursor extends android.database.Cursor {
    public static final int FIELD_TYPE_BLOB = 4;
    public static final int FIELD_TYPE_FLOAT = 2;
    public static final int FIELD_TYPE_INTEGER = 1;
    public static final int FIELD_TYPE_NULL = 0;
    public static final int FIELD_TYPE_STRING = 3;

    @Override // net.sqlcipher.Cursor
    int getType(int i);
}
