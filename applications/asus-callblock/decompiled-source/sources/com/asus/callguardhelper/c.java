package com.asus.callguardhelper;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/c.class */
public class c extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2560a = c.class.getSimpleName();

    public c(Context context) {
        super(context, "callguard.db", (SQLiteDatabase.CursorFactory) null, 4);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE tag_table(_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT,minmatch TEXT,value TEXT,name TEXT NOT NULL DEFAULT 'unknown',type TEXT NOT NULL DEFAULT '-1',weight TEXT NOT NULL DEFAULT '-5',createAt REAL,isuploaded INTEGER NOT NULL DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE cache_table(key TEXT PRIMARY KEY,name TEXT NOT NULL DEFAULT 'unknown',type TEXT NOT NULL DEFAULT '-1',weight TEXT NOT NULL DEFAULT '-5',createAt REAL,isuploaded INTEGER NOT NULL DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE user_data_statistics(_id INTEGER PRIMARY KEY AUTOINCREMENT,total_query_count INTEGER NOT NULL DEFAULT 0,total_query_mark_count INTEGER NOT NULL DEFAULT 0,success_reverse INTEGER NOT NULL DEFAULT 0,success_unmark INTEGER NOT NULL DEFAULT 0,success_mark INTEGER NOT NULL DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE contacts_call_log(_id INTEGER PRIMARY KEY AUTOINCREMENT,cc TEXT,cc_1 TEXT,cc_2 TEXT,cc_3 TEXT,cc_4 TEXT,is_0 TEXT,is_1 TEXT,is_2 TEXT,is_3 TEXT,cc_5 TEXT,cc_6 TEXT,cc_7 TEXT,lo_1 TEXT,lo_2 TEXT,lo TEXT,lo_4 TEXT,lo_3 TEXT,lo_5 TEXT,lo_6 TEXT,lo_7 TEXT,lo_8 TEXT,new_1 TEXT,new_2 TEXT,new_3 TEXT,new_4 TEXT,new_5 TEXT,new_6 TEXT);");
        sQLiteDatabase.execSQL("CREATE TABLE phone_call_log(_id INTEGER PRIMARY KEY AUTOINCREMENT,cc TEXT,cc_6 TEXT,pc_2 TEXT,ts TEXT,ts_1 TEXT,pc_6 TEXT,pc_5 TEXT,i_0 TEXT,i_1 TEXT,i_2 TEXT,i_3 TEXT,pc_4 TEXT,pc_3 TEXT);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 == 4) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS contacts_call_log");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS phone_call_log");
        } else if (i < 3) {
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN log_create_time_stamp TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN incallui_version TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN is_first_upload TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN is_voice_mail TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN has_photo TEXT");
            sQLiteDatabase.execSQL("ALTER TABLE contacts_call_log ADD COLUMN is_read TEXT");
        } else {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache_table");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS tag_table");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS user_data_statistics");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS contacts_call_log");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS phone_call_log");
            onCreate(sQLiteDatabase);
        }
    }
}
