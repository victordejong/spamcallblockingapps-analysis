package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* renamed from: e.a.m0.c1.m */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/m.class */
public final class C18073m implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"\n    CREATE TABLE msg_im_group_participants (\n        im_group_id TEXT NOT NULL,\n        im_peer_id TEXT NOT NULL,\n        roles INTEGER NOT NULL DEFAULT 0,\n        UNIQUE(im_group_id, im_peer_id)\n    )\n", "\n    CREATE TABLE msg_im_group_info (\n        im_group_id TEXT PRIMARY KEY,\n        title TEXT,\n        avatar TEXT,\n        invited_date INTEGER NOT NULL,\n        invited_by TEXT,\n        roles INTEGER NOT NULL DEFAULT 0,\n        actions INTEGER NOT NULL DEFAULT 0,\n        role_update_restriction_mask INTEGER NOT NULL DEFAULT 0,\n        role_update_mask INTEGER NOT NULL DEFAULT 0,\n        self_role_update_mask INTEGER NOT NULL DEFAULT 0,\n        notification_settings INTEGER NOT NULL DEFAULT 0,\n        history_status INTEGER NOT NULL DEFAULT 0,\n        history_sequence_num INTEGER NOT NULL DEFAULT -1,\n        history_message_count INTEGER NOT NULL DEFAULT 0,\n        are_participants_stale INTEGER NOT NULL DEFAULT 0,\n        current_sequence_number INTEGER NOT NULL DEFAULT 0,\n        invite_notification_date INTEGER NOT NULL DEFAULT 0,\n        invite_notification_count INTEGER NOT NULL DEFAULT 0,\n        join_mode INTEGER NOT NULL DEFAULT 0,\n        invite_key TEXT\n    )\n", "\n    CREATE INDEX idx_msg_im_group_info_are_participants_stale\n    ON msg_im_group_info (are_participants_stale)\n", "\n    CREATE TABLE msg_im_invite_group_info (\n        invite_key TEXT PRIMARY KEY,\n        title TEXT,\n        avatar TEXT,\n        user_count INTEGER NOT NULL DEFAULT 0,\n        user_list TEXT,\n        timestamp INTEGER NOT NULL\n    )\n", "\n    CREATE INDEX idx_msg_im_group_info_im_group_id\n    ON msg_im_group_info (im_group_id)\n"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public /* synthetic */ void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        C18061g0.m15508c(this, context, sQLiteDatabase, i, i2);
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
