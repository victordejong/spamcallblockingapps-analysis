package net.sqlcipher;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/CursorWrapper.class */
public class CursorWrapper extends android.database.CursorWrapper implements Cursor {
    public final Cursor mCursor;

    public CursorWrapper(Cursor cursor) {
        super(cursor);
        this.mCursor = cursor;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor, net.sqlcipher.Cursor
    public int getType(int i) {
        return this.mCursor.getType(i);
    }

    @Override // android.database.CursorWrapper
    public Cursor getWrappedCursor() {
        return this.mCursor;
    }
}
