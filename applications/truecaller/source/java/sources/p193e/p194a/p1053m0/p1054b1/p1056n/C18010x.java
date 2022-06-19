package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.x */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/x.class */
public final class C18010x implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_info ADD COLUMN invite_notification_date INTEGER NOT NULL DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_info ADD COLUMN invite_notification_count INTEGER NOT NULL DEFAULT 0");
        sQLiteDatabase.execSQL("\n                UPDATE msg_im_group_info\n                    SET invite_notification_date = " + System.currentTimeMillis() + ",\n                        invite_notification_count = 1\n                WHERE (roles & 2) != 0\n            ");
    }
}
