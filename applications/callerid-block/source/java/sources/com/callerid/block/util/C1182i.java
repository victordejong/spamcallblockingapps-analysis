package com.callerid.block.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.util.i */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/i.class */
public class C1182i {

    /* renamed from: a */
    private SQLiteDatabase f5000a;

    /* renamed from: b */
    private C1180h f5001b;

    public C1182i(Context context) {
        C1180h c1180h = new C1180h(context);
        this.f5001b = c1180h;
        try {
            this.f5000a = c1180h.getWritableDatabase();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m9842a() {
        SQLiteDatabase sQLiteDatabase = this.f5000a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    /* renamed from: b */
    public int m9841b(String str) {
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.f5001b.getWritableDatabase();
            this.f5000a = writableDatabase;
            int delete = writableDatabase.delete("blacklistvest", "_id=?", new String[]{str});
            StringBuilder sb = new StringBuilder();
            sb.append(delete);
            sb.append("");
            C1227w.m9527a("spamlist", sb.toString());
            i = delete;
            m9842a();
            i = delete;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: c */
    public int m9840c(String str) {
        int i = 0;
        try {
            String m9579d = C1216t0.m9579d(EZCallApplication.m10163c(), str, C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code());
            SQLiteDatabase writableDatabase = this.f5001b.getWritableDatabase();
            this.f5000a = writableDatabase;
            int delete = writableDatabase.delete("blacklistvest", "number=? or number=?", new String[]{str, m9579d});
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("");
            C1227w.m9527a("spamlist", sb.toString());
            i = delete;
            m9842a();
            i = delete;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: d */
    public int m9839d() {
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.f5001b.getWritableDatabase();
            this.f5000a = writableDatabase;
            int delete = writableDatabase.delete("blacklistvest", "name!=?", new String[]{""});
            C1227w.m9527a("spamlist", "Delete Old");
            i = delete;
            m9842a();
            i = delete;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* renamed from: e */
    public List<EZBlackList> m9838e() {
        try {
            this.f5000a = this.f5001b.getWritableDatabase();
            ArrayList arrayList = new ArrayList();
            Cursor query = this.f5000a.query("blacklistvest", null, null, null, null, null, "_id DESC");
            query.moveToFirst();
            while (!query.isAfterLast() && query.getString(1) != null) {
                EZBlackList eZBlackList = new EZBlackList();
                eZBlackList.setId(query.getString(0));
                eZBlackList.setName(query.getString(1));
                eZBlackList.setNumber(query.getString(2));
                eZBlackList.setFormat_number(query.getString(3));
                if (eZBlackList.getName() != null && "".equals(eZBlackList.getName())) {
                    arrayList.add(eZBlackList);
                }
                query.moveToNext();
            }
            query.close();
            m9842a();
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* renamed from: f */
    public Boolean m9837f(String str) {
        Boolean bool;
        Boolean bool2 = Boolean.FALSE;
        Cursor cursor = bool2;
        try {
            String m9579d = C1216t0.m9579d(EZCallApplication.m10163c(), str, C1184j.m9826d(EZCallApplication.m10163c()).getCountry_code());
            cursor = bool2;
            this.f5000a = this.f5001b.getWritableDatabase();
            Boolean bool3 = bool2;
            try {
                if (C1199n0.m9707f(EZCallApplication.m10163c())) {
                    bool3 = bool2;
                    cursor = this.f5000a.query("blacklistvest", null, "number=? or number=?", new String[]{str, m9579d}, null, null, null);
                    bool = bool2;
                    if (cursor != 0) {
                        bool = Boolean.valueOf(cursor.moveToFirst());
                        StringBuilder sb = new StringBuilder();
                        sb.append("blocked:");
                        sb.append(bool);
                        C1227w.m9527a("spamlist", sb.toString());
                        bool3 = bool;
                        cursor.close();
                    }
                } else {
                    bool3 = bool2;
                    cursor = this.f5000a.query("blacklistvest", null, "number=? or number=?", new String[]{str, m9579d}, null, null, null);
                    bool = bool2;
                    if (cursor != 0) {
                        cursor.moveToFirst();
                        String string = cursor.getString(1);
                        if (string != null) {
                            bool3 = bool2;
                            if (!"".equals(string)) {
                                bool = bool2;
                            }
                        }
                        bool3 = bool2;
                        bool = Boolean.TRUE;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                bool = bool3;
            }
            cursor = bool;
            m9842a();
        } catch (Exception e2) {
            e2.printStackTrace();
            bool = cursor == 1 ? 1 : 0;
        }
        return bool;
    }

    /* renamed from: g */
    public Long m9836g(EZBlackList eZBlackList) {
        try {
            this.f5000a = this.f5001b.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(EZBlackList.NAME, eZBlackList.getName());
            contentValues.put(EZBlackList.NUMBER, eZBlackList.getNumber());
            contentValues.put(EZBlackList.FORMATNUMBER, eZBlackList.getFormat_number());
            long insert = this.f5000a.insert("blacklistvest", EZBlackList.f4115ID, contentValues);
            m9842a();
            return Long.valueOf(insert);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: h */
    public int m9835h(EZBlackList eZBlackList) {
        int i = 0;
        try {
            this.f5000a = this.f5001b.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(EZBlackList.f4115ID, eZBlackList.getId());
            contentValues.put(EZBlackList.NAME, eZBlackList.getName());
            contentValues.put(EZBlackList.NUMBER, eZBlackList.getNumber());
            contentValues.put(EZBlackList.FORMATNUMBER, eZBlackList.getFormat_number());
            SQLiteDatabase sQLiteDatabase = this.f5000a;
            StringBuilder sb = new StringBuilder();
            sb.append("_id=");
            sb.append(eZBlackList.getId());
            int update = sQLiteDatabase.update("blacklistvest", contentValues, sb.toString(), null);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(update);
            sb2.append("");
            C1227w.m9527a("spamlist", sb2.toString());
            i = update;
            m9842a();
            i = update;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
