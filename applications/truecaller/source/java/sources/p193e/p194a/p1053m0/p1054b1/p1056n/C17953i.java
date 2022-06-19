package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.i */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/i.class */
public final class C17953i implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_info ADD COLUMN history_status INTEGER NOT NULL DEFAULT 0");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_info ADD COLUMN history_sequence_num INTEGER NOT NULL DEFAULT -1");
        sQLiteDatabase.execSQL("ALTER TABLE msg_im_group_info ADD COLUMN history_message_count INTEGER NOT NULL DEFAULT 0");
    }
}
