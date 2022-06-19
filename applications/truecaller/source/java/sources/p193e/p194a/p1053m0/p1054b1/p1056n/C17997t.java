package p193e.p194a.p1053m0.p1054b1.p1056n;

import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.p1054b1.AbstractC17918k;
import s1.d0.i;
import s1.k;
import s1.u.z;
import s1.z.c.l;
/* renamed from: e.a.m0.b1.n.t */
/* loaded from: classes8-dex2jar.jar:e/a/m0/b1/n/t.class */
public final class C17997t implements AbstractC17918k {
    @Override // p193e.p194a.p1053m0.p1054b1.AbstractC17918k
    /* renamed from: a */
    public void mo15540a(SQLiteDatabase sQLiteDatabase) {
        l.e(sQLiteDatabase, "db");
        sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN raw_id TEXT");
        z it = new i(1, 27).iterator();
        while (it.hasNext()) {
            int a = it.a();
            sQLiteDatabase.execSQL("ALTER TABLE msg_messages ADD COLUMN info" + a + " TEXT");
        }
        C18004v.m15541a(sQLiteDatabase, "msg_mms_transport_info", 1, s1.u.i.T(new k[]{new k("raw_id", "raw_id"), new k("raw_thread_id", "info1"), new k("raw_status", "info2"), new k("message_uri", "info3"), new k("version", "info4"), new k("type", "info5"), new k("subject", "info6"), new k("subject_charset", "info7"), new k("retrieve_text", "info8"), new k("retrieve_text_charset", "info9"), new k("content_type", "info10"), new k("content_class", "info11"), new k("content_location", "info12"), new k(CommonCode.MapKey.TRANSACTION_ID, "info13"), new k("expiry", "info14"), new k(RemoteMessageConst.Notification.PRIORITY, "info15"), new k("retrieve_status", "info16"), new k("response_status", "info17"), new k("response_text", "info18"), new k("message_class", "info19"), new k("mms_message_id", "info20"), new k("message_box", "info21"), new k("size", "info22"), new k("delivery_report", "info23"), new k("delivery_time", "info24"), new k("read_report", "info25"), new k("read_status", "info26"), new k("report_allowed", "info27")}));
        C18004v.m15541a(sQLiteDatabase, "msg_sms_transport_info", 0, s1.u.i.T(new k[]{new k("raw_id", "raw_id"), new k("raw_thread_id", "info1"), new k("raw_status", "info2"), new k("message_uri", "info3"), new k("protocol", "info4"), new k("type", "info5"), new k("service_center", "info6"), new k("subject", "info7"), new k("error_code", "info8"), new k("reply_path_present", "info9"), new k("stripped_raw_address", "info10")}));
        C18004v.m15541a(sQLiteDatabase, "msg_im_transport_info", 2, s1.u.i.T(new k[]{new k("raw_id", "raw_id"), new k("delivery_status", "info1"), new k("read_status", "info2"), new k("delivery_sync_status", "info3"), new k("read_sync_status", "info4"), new k("im_status", "info5"), new k("error_code", "info6"), new k("api_version", "info7"), new k("random_id", "info8"), new k("reactions", "info9")}));
        C18004v.m15541a(sQLiteDatabase, "msg_history_transport_info", 5, s1.u.i.T(new k[]{new k("raw_id", "raw_id"), new k("call_log_id", "info1"), new k("type", "info2"), new k("number_type", "info3"), new k("features", "info4")}));
        C18004v.m15541a(sQLiteDatabase, "msg_status_transport_info", 6, C25225a.m3962T1(new k("raw_id", "raw_id")));
        sQLiteDatabase.execSQL("CREATE INDEX idx_msg_messages_transport_raw_id ON msg_messages (transport, raw_id)");
    }
}
