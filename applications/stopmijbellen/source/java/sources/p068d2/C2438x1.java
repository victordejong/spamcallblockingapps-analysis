package p068d2;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
/* renamed from: d2.x1 */
/* loaded from: classes-dex2jar.jar:d2/x1.class */
public class C2438x1 {

    /* renamed from: a */
    public final List<C2439a> f8621a = new ArrayList();

    /* renamed from: b */
    public final List<ContentValues> f8622b = new ArrayList();

    /* renamed from: d2.x1$a */
    /* loaded from: classes-dex2jar.jar:d2/x1$a.class */
    public static class C2439a {

        /* renamed from: a */
        public final int f8623a;

        /* renamed from: b */
        public final String f8624b;

        /* renamed from: c */
        public final int f8625c;

        public C2439a(int i, String str, int i2, RunnableC2426v1 runnableC2426v1) {
            this.f8623a = i;
            this.f8624b = str;
            this.f8625c = i2;
        }
    }

    /* renamed from: b */
    public static void m3555b(C2438x1 c2438x1, Cursor cursor) {
        ContentValues contentValues = new ContentValues();
        for (C2439a c2439a : c2438x1.f8621a) {
            int i = c2439a.f8625c;
            if (i == 1) {
                contentValues.put(c2439a.f8624b, Long.valueOf(cursor.getLong(c2439a.f8623a)));
            } else if (i == 2) {
                contentValues.put(c2439a.f8624b, Double.valueOf(cursor.getDouble(c2439a.f8623a)));
            } else if (i != 4) {
                contentValues.put(c2439a.f8624b, cursor.getString(c2439a.f8623a));
            } else {
                contentValues.put(c2439a.f8624b, cursor.getBlob(c2439a.f8623a));
            }
        }
        c2438x1.f8622b.add(contentValues);
    }

    /* renamed from: a */
    public String m3556a(int i) {
        return (i < 0 || i >= this.f8621a.size()) ? null : this.f8621a.get(i).f8624b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            String str = "\n";
            if (i >= this.f8621a.size()) {
                break;
            }
            sb.append(this.f8621a.get(i).f8624b);
            if (i != this.f8621a.size() - 1) {
                str = " | ";
            }
            sb.append(str);
            i++;
        }
        for (ContentValues contentValues : this.f8622b) {
            int i2 = 0;
            while (i2 < this.f8621a.size()) {
                sb.append(contentValues.getAsString(m3556a(i2)));
                sb.append(i2 == this.f8621a.size() - 1 ? "\n" : " | ");
                i2++;
            }
        }
        return sb.toString();
    }
}
