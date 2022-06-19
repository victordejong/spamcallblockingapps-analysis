package androidx.room.p050b;

import android.database.Cursor;
import android.database.MatrixCursor;
/* renamed from: androidx.room.b.b */
/* loaded from: classes-dex2jar.jar:androidx/room/b/b.class */
public class C1014b {
    /* renamed from: a */
    public static int m18348a(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex < 0) {
            columnIndex = cursor.getColumnIndexOrThrow("`" + str + "`");
        }
        return columnIndex;
    }

    /* renamed from: a */
    public static Cursor m18349a(Cursor cursor) {
        try {
            MatrixCursor matrixCursor = new MatrixCursor(cursor.getColumnNames(), cursor.getCount());
            while (cursor.moveToNext()) {
                Object[] objArr = new Object[cursor.getColumnCount()];
                for (int i = 0; i < cursor.getColumnCount(); i++) {
                    switch (cursor.getType(i)) {
                        case 0:
                            objArr[i] = null;
                            break;
                        case 1:
                            objArr[i] = Long.valueOf(cursor.getLong(i));
                            break;
                        case 2:
                            objArr[i] = Double.valueOf(cursor.getDouble(i));
                            break;
                        case 3:
                            objArr[i] = cursor.getString(i);
                            break;
                        case 4:
                            objArr[i] = cursor.getBlob(i);
                            break;
                        default:
                            throw new IllegalStateException();
                    }
                }
                matrixCursor.addRow(objArr);
            }
            return matrixCursor;
        } finally {
            cursor.close();
        }
    }
}
