package com.unknownphone.callblocker.p186d;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.custom.CustomApplication;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p187e.C5296a;
import com.unknownphone.callblocker.p189g.C5329a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.d.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/d/b.class */
public class C5290b extends SQLiteOpenHelper {

    /* renamed from: a */
    private SharedPreferences f22146a;

    public C5290b(Context context) {
        super(context, "Call Blocker", (SQLiteDatabase.CursorFactory) null, 3);
        this.f22146a = context.getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
    }

    /* renamed from: c */
    private void m1049c(C5296a c5296a) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.insert("contact", null, c5296a.m1028g());
        writableDatabase.close();
    }

    /* renamed from: d */
    private void m1047d(C5296a c5296a) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.update("contact", c5296a.m1028g(), "id = " + c5296a.m1040a(), null);
        writableDatabase.close();
    }

    /* renamed from: a */
    public List<C5296a> m1064a(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor rawQuery = readableDatabase.rawQuery("SELECT * FROM contact ORDER BY time DESC LIMIT " + (i * i2) + ", " + i2, null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            arrayList.add(new C5296a(rawQuery));
            rawQuery.moveToNext();
        }
        rawQuery.close();
        readableDatabase.close();
        return arrayList;
    }

    /* renamed from: a */
    public List<C5207c> m1060a(String str, int i, int i2) {
        String str2 = TextUtils.isEmpty(str) ? "" : " WHERE (name LIKE '%" + str + "%' OR number LIKE '%" + str + "%')";
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor rawQuery = readableDatabase.rawQuery("SELECT *, CASE WHEN type = 0 THEN 0 ELSE 1 END AS order_key FROM blocked_number" + str2 + " ORDER BY order_key, id DESC LIMIT " + (i * i2) + ", " + i2, null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            arrayList.add(new C5207c(rawQuery));
            rawQuery.moveToNext();
        }
        rawQuery.close();
        readableDatabase.close();
        return arrayList;
    }

    /* renamed from: a */
    public void m1065a() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("contact", null, null);
        writableDatabase.close();
    }

    /* renamed from: a */
    public void m1063a(C5207c c5207c) {
        Log.d("DatabaseHelper", "insertBlockedNumber() was called.");
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.insertWithOnConflict("blocked_number", null, c5207c.m1220e(), 5);
        writableDatabase.close();
        CustomApplication.m1110a("Block a Phone Number");
        switch (c5207c.m1224b()) {
            case 0:
                CustomApplication.m1110a("User phone numbers starting with a certain pattern.");
                break;
            case 1:
                CustomApplication.m1110a("User blocked a phone number from contacts.");
                break;
            case 2:
                CustomApplication.m1110a("User manually blocked a phone number.");
                break;
            case 3:
                CustomApplication.m1110a("User blocked a phone number from recent calls.");
                break;
        }
        if (c5207c.m1224b() == 0) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("phone", C5287g.m1076c(c5207c.m1221d()));
        hashMap.put("os_version", C5287g.m1076c(String.valueOf(Build.VERSION.SDK_INT)));
        hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(this.f22146a.getString("language_code", Locale.getDefault().getLanguage())).first));
        hashMap.put("api_key", C5287g.m1076c(this.f22146a.getString("api_key", "")));
        hashMap.put("_action", "_blocked_phone_number");
        hashMap.put("device", C5287g.m1076c(Build.MODEL));
    }

    /* renamed from: a */
    public void m1062a(C5296a c5296a) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM contact ORDER BY id DESC LIMIT 1", null);
        if (!rawQuery.moveToFirst() || !rawQuery.getString(rawQuery.getColumnIndex("number")).equals(c5296a.m1030e()) || rawQuery.getInt(rawQuery.getColumnIndex("type")) != c5296a.m1032c()) {
            rawQuery.close();
            writableDatabase.close();
            m1049c(c5296a);
            return;
        }
        C5296a c5296a2 = new C5296a(rawQuery);
        c5296a2.m1039a(c5296a2.m1029f() + 1);
        c5296a2.m1034b(System.currentTimeMillis());
        rawQuery.close();
        writableDatabase.close();
        m1047d(c5296a2);
    }

    /* renamed from: a */
    public void m1059a(String str, String str2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM contact WHERE number = '" + str + "' ORDER BY id DESC LIMIT 1", null);
        if (!rawQuery.moveToFirst()) {
            rawQuery.close();
            writableDatabase.close();
            return;
        }
        C5296a c5296a = new C5296a(rawQuery);
        c5296a.m1037a(str2);
        c5296a.m1036a((short) 4);
        writableDatabase.update("contact", c5296a.m1028g(), "id = " + c5296a.m1040a(), null);
        rawQuery.close();
        writableDatabase.close();
    }

    /* renamed from: a */
    public void m1058a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM blocked_number WHERE type != 0", null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            if (C5287g.m1085a(rawQuery.getString(rawQuery.getColumnIndex("number")), str, str2, str3)) {
                writableDatabase.delete("blocked_number", "id = " + rawQuery.getLong(rawQuery.getColumnIndex("id")), null);
            }
            rawQuery.moveToNext();
        }
        rawQuery.close();
        writableDatabase.close();
    }

    /* renamed from: a */
    public void m1057a(List<C5296a> list) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        for (C5296a c5296a : list) {
            Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM contact ORDER BY id DESC LIMIT 1", null);
            if (!rawQuery.moveToFirst() || !rawQuery.getString(rawQuery.getColumnIndex("number")).equals(c5296a.m1030e()) || rawQuery.getInt(rawQuery.getColumnIndex("type")) != c5296a.m1032c()) {
                writableDatabase.insert("contact", null, c5296a.m1028g());
            } else {
                C5296a c5296a2 = new C5296a(rawQuery);
                c5296a2.m1039a(c5296a2.m1029f() + 1);
                c5296a2.m1034b(System.currentTimeMillis());
                writableDatabase.update("contact", c5296a.m1028g(), "id = " + c5296a.m1040a(), null);
            }
            rawQuery.close();
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        writableDatabase.close();
    }

    /* renamed from: a */
    public boolean m1061a(String str) {
        boolean z = true;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM contact WHERE number = ? AND type = 1 ORDER BY id DESC LIMIT 1", new String[]{str});
        if (rawQuery.getCount() <= 0) {
            z = false;
        }
        rawQuery.close();
        writableDatabase.close();
        return z;
    }

    /* renamed from: b */
    public List<C5207c> m1056b() {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM blocked_number ORDER BY id DESC", null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            arrayList.add(new C5207c(rawQuery));
            rawQuery.moveToNext();
        }
        rawQuery.close();
        writableDatabase.close();
        return arrayList;
    }

    /* renamed from: b */
    public void m1055b(C5207c c5207c) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("blocked_number", "id = " + c5207c.m1227a(), null);
        writableDatabase.close();
        HashMap hashMap = new HashMap();
        hashMap.put("phone", C5287g.m1076c(c5207c.m1221d()));
        hashMap.put("os_version", C5287g.m1076c(String.valueOf(Build.VERSION.SDK_INT)));
        hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(this.f22146a.getString("language_code", Locale.getDefault().getLanguage())).first));
        hashMap.put("api_key", C5287g.m1076c(this.f22146a.getString("api_key", "")));
        hashMap.put("_action", "_unblocked_phone_number");
        hashMap.put("device", C5287g.m1076c(Build.MODEL));
    }

    /* renamed from: b */
    public void m1054b(C5296a c5296a) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("contact", "id = " + c5296a.m1040a(), null);
        writableDatabase.close();
    }

    /* renamed from: b */
    public void m1051b(List<C5329a> list) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        writableDatabase.execSQL("DELETE FROM spam_number");
        for (C5329a c5329a : list) {
            writableDatabase.insert("spam_number", null, c5329a.m981c());
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        writableDatabase.close();
    }

    /* renamed from: b */
    public boolean m1053b(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM blocked_number WHERE number = '" + str + "'", null);
        boolean z = rawQuery.getCount() > 0;
        rawQuery.close();
        writableDatabase.close();
        return z;
    }

    /* renamed from: b */
    public boolean m1052b(String str, String str2, String str3) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            Cursor rawQuery = writableDatabase.rawQuery("SELECT * FROM blocked_number WHERE type != 0", null);
            rawQuery.moveToFirst();
            z = false;
            while (!rawQuery.isAfterLast()) {
                if (C5287g.m1085a(rawQuery.getString(rawQuery.getColumnIndex("number")), str, str2, str3)) {
                    z = true;
                }
                rawQuery.moveToNext();
            }
            rawQuery.close();
            writableDatabase.close();
        }
        return z;
    }

    /* renamed from: c */
    public long m1048c(String str) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        long queryNumEntries = DatabaseUtils.queryNumEntries(readableDatabase, str);
        readableDatabase.close();
        return queryNumEntries;
    }

    /* renamed from: c */
    public List<C5329a> m1050c() {
        ArrayList arrayList = new ArrayList();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        Cursor rawQuery = writableDatabase.rawQuery("SELECT  * FROM spam_number", null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            arrayList.add(new C5329a(rawQuery));
            rawQuery.moveToNext();
        }
        rawQuery.close();
        writableDatabase.close();
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS contact (id INTEGER PRIMARY KEY AUTOINCREMENT,time INTEGER NOT NULL,type INTEGER NOT NULL,name TEXT NOT NULL,count INTEGER NOT NULL,number TEXT NOT NULL)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS spam_number (name TEXT NOT NULL,number TEXT NOT NULL)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS blocked_number (id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL,name TEXT NOT NULL,number TEXT NOT NULL UNIQUE)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 < 2 || i >= 2) {
            if (i2 <= 2 || i != 2) {
                return;
            }
            sQLiteDatabase.execSQL("ALTER TABLE blocked_number ADD COLUMN type INTEGER DEFAULT 3");
            return;
        }
        onCreate(sQLiteDatabase);
        sQLiteDatabase.beginTransaction();
        ContentValues contentValues = new ContentValues();
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM blacklist ORDER BY blackid", null);
        rawQuery.moveToFirst();
        while (!rawQuery.isAfterLast()) {
            contentValues.put("type", (Short) 3);
            contentValues.put("name", C5287g.m1076c(rawQuery.getString(rawQuery.getColumnIndex("phone_name"))));
            contentValues.put("number", rawQuery.getString(rawQuery.getColumnIndex("phone_number")));
            sQLiteDatabase.insertWithOnConflict("blocked_number", null, contentValues, 5);
            rawQuery.moveToNext();
        }
        rawQuery.close();
        sQLiteDatabase.setTransactionSuccessful();
        sQLiteDatabase.endTransaction();
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS calllist");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS blacklist");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS searchtable");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS credittable");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS dangeroustable");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS searchnumbertable");
    }
}
