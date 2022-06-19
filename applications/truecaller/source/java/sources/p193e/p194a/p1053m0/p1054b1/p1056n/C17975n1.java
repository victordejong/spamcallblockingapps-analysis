package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.n1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/n1.class */
public final class C17975n1 implements AbstractC17918k {
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        C22128a.m8573s0(sQLiteDatabase, "db", "\n            CREATE TABLE msg_im_mentions (\n            _id INTEGER PRIMARY KEY AUTOINCREMENT, \n            message_id INTEGER NOT NULL REFERENCES msg_messages (_id) ON DELETE CASCADE,\n            im_id TEXT,\n            private_name TEXT,\n            public_name TEXT,\n            m_offset INTEGER DEFAULT(-1),\n            m_length INTEGER DEFAULT(-1))\n        ", "ALTER TABLE msg_im_users ADD COLUMN fallback_name TEXT");
        Cursor query = sQLiteDatabase.query("msg_im_users", new String[]{"im_peer_id"}, "im_peer_id IS NOT NULL", null, null, null, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(query.getString(0));
                }
                C25225a.m4016G(query, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    ContentValues contentValues = new ContentValues(1);
                    l.e(str, "imPeerId");
                    StringBuilder m8728C = C22128a.m8728C("User");
                    char c = 5381;
                    for (int i = 0; i < str.length(); i++) {
                        c = str.charAt(i) + (c << 5) + c;
                    }
                    m8728C.append(Math.abs(c % 16960));
                    contentValues.put("fallback_name", m8728C.toString());
                    sQLiteDatabase.update("msg_im_users", contentValues, "im_peer_id =?", new String[]{str});
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    C25225a.m4016G(query, th);
                    throw th2;
                }
            }
        }
    }
}
