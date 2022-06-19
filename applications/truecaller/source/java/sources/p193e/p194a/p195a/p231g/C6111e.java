package p193e.p194a.p195a.p231g;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.a.g.e */
/* loaded from: classes6-dex2jar.jar:e/a/a/g/e.class */
public class C6111e extends CursorWrapper {
    public C6111e(Cursor cursor) {
        super(cursor);
    }

    /* renamed from: b */
    public List<String> m31792b(String str) throws SQLException {
        ArrayList arrayList = new ArrayList();
        int length = str == null ? 0 : str.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (i < length) {
            char charAt = str.charAt(i);
            int i5 = i4;
            int i6 = i2;
            if (i4 == 0) {
                arrayList.add(str.substring(i2, i));
                i5 = i4 - 1;
                i6 = i;
            }
            if (i5 != -1) {
                if (Character.isSurrogate(charAt)) {
                    boolean z = true;
                    if (i >= str.length() - 1) {
                        z = false;
                    }
                    if (z && Character.isSurrogatePair(charAt, str.charAt(i + 1))) {
                    }
                }
                i5--;
            } else if (charAt != '|') {
                int i7 = charAt - '0';
                if (i7 < 0 || i7 > 9) {
                    throw new SQLiteException(C22128a.m8543z2("Invalid content length: ", str));
                }
                i3 = (i3 * 10) + i7;
            } else if (i6 == i) {
                arrayList.add(null);
                i6 = i + 1;
            } else {
                i6 = i + 1;
                i5 = i3;
                i3 = 0;
            }
            i++;
            i4 = i5;
            i2 = i6;
        }
        if (i4 == 0) {
            arrayList.add(str.substring(i2));
        }
        return arrayList;
    }
}
