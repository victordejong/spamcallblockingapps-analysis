package com.callapp.contacts.util.cursor;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.callapp.common.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/cursor/Cursors.class */
public class Cursors {
    public static boolean a(Cursor cursor, Cursor cursor2) {
        if (Objects.a(cursor, cursor2)) {
            return true;
        }
        return (cursor == null || cursor2 == null || !(cursor instanceof CursorWrapper) || !(cursor2 instanceof CursorWrapper)) ? false : a(((CursorWrapper) cursor).getWrappedCursor(), ((CursorWrapper) cursor2).getWrappedCursor());
    }
}
