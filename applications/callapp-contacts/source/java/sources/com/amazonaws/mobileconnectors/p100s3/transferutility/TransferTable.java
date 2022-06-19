package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferTable */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferTable.class */
class TransferTable {
    TransferTable() {
    }

    /* renamed from: a */
    private static void m38529a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN user_metadata text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN expiration_time_rule_id text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN http_expires_date text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN sse_algorithm text;");
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN content_md5 text;");
    }

    /* renamed from: a */
    public static void m38528a(SQLiteDatabase sQLiteDatabase, int i) {
        sQLiteDatabase.execSQL("create table awstransfer(_id integer primary key autoincrement, main_upload_id integer, type text not null, state text not null, bucket_name text not null, key text not null, version_id text, bytes_total bigint, bytes_current bigint, speed bigint, is_requester_pays integer, is_encrypted integer, file text not null, file_offset bigint, is_multipart int, part_num int not null, is_last_part integer, multipart_id text, etag text, range_start bigint, range_last bigint, header_content_type text, header_content_language text, header_content_disposition text, header_content_encoding text, header_cache_control text, header_expire text);");
        m38527a(sQLiteDatabase, 1, i);
    }

    /* renamed from: a */
    public static void m38527a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2 && i2 >= 2) {
            m38529a(sQLiteDatabase);
        }
        if (i < 3 && i2 >= 3) {
            sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN kms_key text;");
        }
        if (i < 4 && i2 >= 4) {
            sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN canned_acl text;");
        }
        if (i < 5 && i2 >= 5) {
            sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN header_storage_class text;");
        }
        if (i >= 6 || i2 < 6) {
            return;
        }
        sQLiteDatabase.execSQL("ALTER TABLE awstransfer ADD COLUMN transfer_utility_options text;");
    }
}
