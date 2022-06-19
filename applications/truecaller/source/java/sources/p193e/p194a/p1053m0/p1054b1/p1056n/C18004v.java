package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.b.l;
/* renamed from: e.a.m0.b1.n.v */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/v.class */
public final class C18004v {

    /* renamed from: a */
    public static final List<String> f50903a = i.T(new String[]{"_id", "conversation_id", "participant_id", "date", "date_sent", UpdateKey.STATUS, "seen", "read", "locked", "transport", "sim_token", "scheduled_transport", "analytics_id", "hidden_number", "raw_address", "category", "sync_status", "classification", "retry_count", "retry_date", "reply_to_msg_id", "sequence_number"});

    /* renamed from: a */
    public static final void m15541a(SQLiteDatabase sQLiteDatabase, String str, int i, List list) {
        StringBuilder m8728C = C22128a.m8728C("\n            INSERT OR REPLACE INTO msg_messages (\n                ");
        List<String> list2 = f50903a;
        m8728C.append(i.O(list2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 63));
        m8728C.append(",\n                ");
        m8728C.append(i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C25284i3.f70732c, 31));
        m8728C.append("\n            )\n            SELECT\n                ");
        m8728C.append(i.O(list2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C18001u.f50902b, 31));
        m8728C.append(",\n                ");
        C22128a.m8666T0(m8728C, i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C25284i3.f70733d, 31), "\n            FROM msg_messages m\n            INNER JOIN ", str, " i ON m._id = i.message_id AND m.transport = ");
        m8728C.append(i);
        m8728C.append("\n        ");
        sQLiteDatabase.execSQL(m8728C.toString());
        sQLiteDatabase.execSQL("DROP TABLE " + str);
    }
}
