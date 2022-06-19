package p068d2;

import android.content.ContentValues;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.C0082b;
/* renamed from: d2.a2 */
/* loaded from: classes-dex2jar.jar:d2/a2.class */
public class C2165a2 {
    /* renamed from: a */
    public static void m3798a(String str, ContentValues contentValues, SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                sQLiteDatabase.insertOrThrow(str, null, contentValues);
                sQLiteDatabase.setTransactionSuccessful();
            } catch (SQLException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Exception on insert to " + str + ", db version:");
                sb.append(sQLiteDatabase.getVersion());
                sb.append(". Values: " + contentValues.toString() + " caused: ");
                sb.append(e.toString());
                C2408t.m3591d().m3718p().m3686e(0, 1, sb.toString(), true);
            }
            sQLiteDatabase.endTransaction();
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error on insert to " + str + ", db version:");
            sb2.append(sQLiteDatabase.getVersion());
            sb2.append(". Values: " + contentValues.toString() + " caused: ");
            sb2.append(th.toString());
            C0082b.m8750l(0, 0, sb2.toString(), true);
        }
    }
}
