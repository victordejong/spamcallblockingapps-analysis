package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: e.a.m0.c1.l */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/l.class */
public final class C18070l implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE msg_im_attachments (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE,\n    uri TEXT NOT NULL,\n    thumbnail BLOB\n)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i >= 27 || sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.execSQL("CREATE TABLE msg_im_attachments (\n    _id INTEGER PRIMARY KEY AUTOINCREMENT,\n    entity_id INTEGER NOT NULL REFERENCES msg_entities (_id) ON DELETE CASCADE,\n    uri TEXT NOT NULL,\n    thumbnail BLOB\n)");
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public String[] mo15496c() {
        return new String[]{"CREATE VIEW msg_im_attachments_entities AS SELECT\n  a._id as _id,\n  e._id as entity_id,\n  a.uri as source_uri,\n  a.thumbnail as thumbnail,\n  e.entity_info1 as current_uri,\n  CASE e.entity_type\n       WHEN 1 THEN e.entity_info4\n       WHEN 2 THEN e.entity_info4\n       WHEN 7 THEN e.entity_info5\n       WHEN 6 THEN e.entity_info4\n       ELSE ''\n  END as thumbnail_uri,\n  e.entity_info2 as status,\n  e.entity_info3 as size,\n  e.type as mime_type\nFROM msg_im_attachments a INNER JOIN msg_entities e\nON e._id = a.entity_id\n"};
    }
}
