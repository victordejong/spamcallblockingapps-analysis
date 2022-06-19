package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.mobileads.VastIconXmlManager;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.q1 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/q1.class */
public final class C17987q1 implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_entities RENAME TO msg_entities_temp");
        sQLiteDatabase.execSQL("\n            CREATE TABLE msg_entities(\n            _id INTEGER PRIMARY KEY AUTOINCREMENT, \n            message_id INTEGER NOT NULL REFERENCES msg_messages(_id) ON DELETE CASCADE, \n            type TEXT NOT NULL, \n            entity_type INTEGER NOT NULL DEFAULT(8), \n            entity_info1 TEXT NOT NULL DEFAULT(''), \n            entity_info2 TEXT NOT NULL DEFAULT(''), \n            entity_info3 TEXT NOT NULL DEFAULT(''), \n            entity_info4 TEXT NOT NULL DEFAULT(''), \n            entity_info5 TEXT NOT NULL DEFAULT(''), \n            entity_info6 TEXT NOT NULL DEFAULT(''), \n            entity_info7 TEXT NOT NULL DEFAULT('')\n            )\n        ");
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type IN ('text/plain','text/html')", C25225a.m3962T1(new k("content", "entity_info1")), 0);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type LIKE 'image/%'", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k("thumbnail", "entity_info4"), new k("width", "entity_info5"), new k("height", "entity_info6")}), 1);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type LIKE 'video/%'", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k("thumbnail", "entity_info4"), new k("width", "entity_info5"), new k("height", "entity_info6"), new k(VastIconXmlManager.DURATION, "entity_info7")}), 2);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type LIKE 'audio/%'", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k(VastIconXmlManager.DURATION, "entity_info4")}), 4);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type = 'tenor/gif'", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k("thumbnail", "entity_info4"), new k("width", "entity_info5"), new k("height", "entity_info6"), new k("source", "entity_info7")}), 3);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "(type LIKE 'application/%' AND type NOT LIKE 'application/vnd.truecaller%') OR type = 'text/vnd.plain-file' COLLATE NOCASE", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k("filename", "entity_info4")}), 5);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type LIKE 'application/vnd.truecaller.linkpreview%'", i.T(new k[]{new k("content", "entity_info1"), new k("width", "entity_info2"), new k("height", "entity_info3"), new k("filename", "entity_info4"), new k("thumbnail", "entity_info5"), new k("description", "entity_info6"), new k("source", "entity_info7")}), 7);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "type COLLATE NOCASE IN ('text/x-vcard','text/vcard','text/directory','text/directory; profile=vcard')", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3"), new k("thumbnail", "entity_info4"), new k("vcard_name", "entity_info5"), new k("vcard_contacts_count", "entity_info6")}), 6);
        C17891a1.C17902k.m15621d(sQLiteDatabase, "\n    NOT (type IN ('text/plain','text/html')) AND NOT (type LIKE 'image/%') AND NOT (type = 'tenor/gif') AND NOT (type LIKE 'video/%') AND NOT (type LIKE 'audio/%') \n    AND NOT (type LIKE 'application/vnd.truecaller.linkpreview%') AND NOT (type COLLATE NOCASE IN ('text/x-vcard','text/vcard','text/directory','text/directory; profile=vcard'))  AND NOT ((type LIKE 'application/%' AND type NOT LIKE 'application/vnd.truecaller%') OR type = 'text/vnd.plain-file' COLLATE NOCASE) \n", i.T(new k[]{new k("content", "entity_info1"), new k(UpdateKey.STATUS, "entity_info2"), new k("size", "entity_info3")}), 8);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg_entities_temp");
    }
}
