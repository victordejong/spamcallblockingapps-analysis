package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.n */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/n.class */
public final class C18075n implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE msg_im_users(normalized_number TEXT UNIQUE, im_peer_id TEXT UNIQUE, date INTEGER NOT NULL, join_im_notification INTEGER NOT NULL DEFAULT 0, registration_timestamp INTEGER NOT NULL DEFAULT 0, tc_id TEXT, fallback_name TEXT, CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE)", "CREATE INDEX idx_msg_im_users_im_peer_id ON msg_im_users(im_peer_id)", "CREATE INDEX idx_msg_im_users_normalized_number ON msg_im_users(normalized_number)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(sQLiteDatabase, "db");
        if (i < 57) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS msg_im_users");
            sQLiteDatabase.execSQL("CREATE TABLE msg_im_users(normalized_number TEXT UNIQUE, im_peer_id TEXT UNIQUE, date INTEGER NOT NULL, join_im_notification INTEGER NOT NULL DEFAULT 0, registration_timestamp INTEGER NOT NULL DEFAULT 0, tc_id TEXT, fallback_name TEXT, CHECK(normalized_number NOT NULL OR im_peer_id NOT NULL) ON CONFLICT REPLACE)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_msg_im_users_im_peer_id ON msg_im_users(im_peer_id)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_msg_im_users_normalized_number ON msg_im_users(normalized_number)");
        }
        if (57 <= i && 73 >= i) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_users ADD COLUMN join_im_notification INTEGER NOT NULL DEFAULT(0)");
        }
        if (57 <= i && 75 >= i) {
            sQLiteDatabase.execSQL("ALTER TABLE msg_im_users ADD COLUMN registration_timestamp INTEGER NOT NULL DEFAULT(0)");
            sQLiteDatabase.execSQL("\n                UPDATE msg_im_users SET join_im_notification = 1\n                WHERE im_peer_id IS NOT NULL\n            ");
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
