package com.asus.contacts.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/a/a.class */
public class a extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2578a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static a f2579b = null;
    private final Context c;

    private a(Context context) {
        super(context, "asus_contacts.db", (SQLiteDatabase.CursorFactory) null, 7);
        this.c = context;
    }

    public static a a(Context context) {
        a aVar;
        synchronized (a.class) {
            try {
                if (f2579b == null) {
                    f2579b = new a(context);
                }
                aVar = f2579b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE blocklist (_id INTEGER PRIMARY KEY,number TEXT,block_type INTEGER,contact_name TEXT,contact_id INTEGER,contact_lookupkey TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE blockcalls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,presentation INTEGER NOT NULL DEFAULT 1,date INTEGER,type INTEGER,subscription_component_name TEXT,subscription_id INTEGER NOT NULL DEFAULT -1,contact_id INTEGER NOT NULL DEFAULT 0,contact_name TEXT,contact_lookupkey TEXT,photo_id INTEGER NOT NULL DEFAULT 0,isSim INTEGER NOT NULL DEFAULT 0,sim_index INTEGER NOT NULL DEFAULT -1);");
            sQLiteDatabase.execSQL("CREATE TABLE blocktags (tag_name TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS usertags (number TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blocksim (sim_contact_id INTEGER,sim_numbertype INTEGER);");
            Log.d(f2578a, "snap call call table:  CREATE TABLE snap_call_call_table ( _id INTEGER PRIMARY KEY, call_id INTEGER NOT NULL unique);");
            sQLiteDatabase.execSQL(" CREATE TABLE snap_call_number_table ( _id INTEGER PRIMARY KEY, data LONG NOT NULL unique, phone TEXT NOT NULL);");
            sQLiteDatabase.execSQL(" CREATE TABLE snap_call_call_table ( _id INTEGER PRIMARY KEY, call_id INTEGER NOT NULL unique);");
            sQLiteDatabase.execSQL("CREATE TABLE prefersim_contact ( _id INTEGER PRIMARY KEY, contact_id INT, sim INT, isdiff INT)");
            sQLiteDatabase.execSQL("CREATE TABLE prefersim_number ( _id INTEGER PRIMARY KEY, number TEXT, sim INT)");
        } catch (Exception e) {
            Log.d(f2578a, "failed to create DB ...");
            e.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        i = 5;
        i = 4;
        i = 3;
        i = 2;
        Log.i(f2578a, "Upgrading from version " + i + " to " + i2);
        if (i2 == 3) {
            try {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS usertags");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS usertags (number TEXT);");
                i = 2;
            } catch (Exception e) {
                Log.d(f2578a, "failed to create DB ...");
                e.printStackTrace();
            }
        }
        if (i < 2) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS usertags (number TEXT);");
            } catch (Exception e2) {
                Log.d(f2578a, "failed to create DB ...");
                e2.printStackTrace();
            }
        }
        if (i < 3) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blocksim (sim_contact_id INTEGER,sim_numbertype INTEGER);");
            } catch (Exception e3) {
                Log.d(f2578a, "failed to create DB ...");
                e3.printStackTrace();
            }
        }
        if (i < 4) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blocksim (sim_contact_id INTEGER,sim_numbertype INTEGER);");
            } catch (Exception e4) {
                Log.d(f2578a, "failed to create DB ...");
                e4.printStackTrace();
            }
        }
        if (i < 5) {
            try {
                sQLiteDatabase.execSQL(" CREATE TABLE snap_call_number_table ( _id INTEGER PRIMARY KEY, data LONG NOT NULL unique, phone TEXT NOT NULL);");
                sQLiteDatabase.execSQL(" CREATE TABLE snap_call_call_table ( _id INTEGER PRIMARY KEY, call_id INTEGER NOT NULL unique);");
            } catch (Exception e5) {
                Log.d(f2578a, "failed to create DB ...");
                e5.printStackTrace();
            }
        }
        if (i < 6) {
            try {
                sQLiteDatabase.execSQL("CREATE TABLE prefersim_contact ( _id INTEGER PRIMARY KEY, contact_id INT, sim INT, isdiff INT)");
                sQLiteDatabase.execSQL("CREATE TABLE prefersim_number ( _id INTEGER PRIMARY KEY, number TEXT, sim INT)");
                i = 6;
            } catch (Exception e6) {
                Log.d(f2578a, "failed to create DB ...");
                e6.printStackTrace();
            }
        }
        if (i < 7) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(CoverUtils.CoverData.COVER_TYPE, (Integer) 2);
                Log.d(f2578a, "update sim contact data2 row: " + this.c.getContentResolver().update(ContactsContract.Data.CONTENT_URI, contentValues, "data2 is null AND mimetype ='vnd.android.cursor.item/phone_v2'", null));
            } catch (Exception e7) {
                Log.d(f2578a, "failed to update DB sim contact data2 null...: " + e7.toString());
                e7.printStackTrace();
            }
        }
    }
}
