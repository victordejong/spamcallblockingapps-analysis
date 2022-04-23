package p131c.p431l.p432a.p461i.p462e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import p131c.p431l.p432a.p461i.C6823c;
import p131c.p431l.p432a.p461i.C6824d;
/* renamed from: c.l.a.i.e.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/e/c.class */
public class C6828c extends C6830d {

    /* renamed from: e */
    public static C6828c f21017e;

    /* renamed from: b */
    public C6829a f21018b;

    /* renamed from: c */
    public SQLiteDatabase f21019c;

    /* renamed from: d */
    public Context f21020d;

    /* renamed from: c.l.a.i.e.c$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/i/e/c$a.class */
    public static class C6829a extends SQLiteOpenHelper {

        /* renamed from: a */
        public C6824d f21021a;

        /* renamed from: b */
        public ArrayList<ContentValues> f21022b;

        public C6829a(Context context) {
            super(context, "contactsDB", (SQLiteDatabase.CursorFactory) null, 3);
            this.f21021a = new C6824d(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0205  */
        /* JADX WARN: Removed duplicated region for block: B:84:? A[RETURN, SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m19640a(android.database.sqlite.SQLiteDatabase r5) {
            /*
                Method dump skipped, instructions count: 532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p461i.p462e.C6828c.C6829a.m19640a(android.database.sqlite.SQLiteDatabase):void");
        }

        /* renamed from: b */
        public final Cursor m19639b(SQLiteDatabase sQLiteDatabase) {
            return sQLiteDatabase.query("private_contacts", null, null, null, null, null, null);
        }

        /* renamed from: c */
        public final void m19638c(SQLiteDatabase sQLiteDatabase) {
            if (this.f21022b != null) {
                for (int i = 0; i < this.f21022b.size(); i++) {
                    this.f21022b.get(i).put("passwordid", (Integer) 1);
                    sQLiteDatabase.insert("private_contacts", null, this.f21022b.get(i));
                }
            }
        }

        /* renamed from: d */
        public final void m19637d(SQLiteDatabase sQLiteDatabase) {
            if (this.f21021a.m19667e()) {
                String d = this.f21021a.m19668d();
                ContentValues contentValues = new ContentValues();
                if (C6823c.m19676b(d) && d.length() >= 3 && d.length() <= 15) {
                    contentValues.put("password", d);
                    sQLiteDatabase.insert("private_password", null, contentValues);
                }
            }
        }

        /* renamed from: e */
        public final void m19636e(SQLiteDatabase sQLiteDatabase) {
            m19637d(sQLiteDatabase);
            m19638c(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("create table sms_white_black_contacts (_id integer primary key autoincrement, groupid integer not null, type interger not null default 2,name text not null, phonenumber text not null unique,rule integer not null default 0);");
            sQLiteDatabase.execSQL("create table private_contacts (_id integer primary key autoincrement, passwordid integer not null, photo_id integer default 0,callhandle integer default 0,sms_reply text,groupid integer not null, type interger not null default 2,name text , phonenumber text ,contact_index integer default 0,phone_id integer,phone_type integer,phone_label text, master_rowid interger default 0);");
            sQLiteDatabase.execSQL("create table public_contacts (_id integer primary key autoincrement, groupid integer not null, type interger not null default 2,name text, phonenumber text not null unique);");
            sQLiteDatabase.execSQL("create table group_contacts (_id integer primary key autoincrement, groupid integer not null,name text , phonenumber text ,contact_index integer default 0,unique (groupid,contact_index));");
            sQLiteDatabase.execSQL("create table private_password (_id integer primary key autoincrement, password text not null unique);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            m19640a(sQLiteDatabase);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS private_contacts");
            sQLiteDatabase.execSQL("create table private_contacts (_id integer primary key autoincrement, passwordid integer not null, photo_id integer default 0,callhandle integer default 0,sms_reply text,groupid integer not null, type interger not null default 2,name text , phonenumber text ,contact_index integer default 0,phone_id integer,phone_type integer,phone_label text, master_rowid interger default 0);");
            sQLiteDatabase.execSQL("create table private_password (_id integer primary key autoincrement, password text not null unique);");
            m19636e(sQLiteDatabase);
            if (i == 2) {
                int i3 = 3;
                if (i2 == 3) {
                    sQLiteDatabase.execSQL("create table public_contacts (_id integer primary key autoincrement, groupid integer not null, type interger not null default 2,name text, phonenumber text not null unique);");
                    sQLiteDatabase.execSQL("create table group_contacts (_id integer primary key autoincrement, groupid integer not null,name text , phonenumber text ,contact_index integer default 0,unique (groupid,contact_index));");
                    int b = this.f21021a.m19672b();
                    if (b == 1) {
                        i3 = 4;
                    } else if (b != 2) {
                        i3 = b != 3 ? 0 : 1;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("callhandle", Integer.valueOf(i3));
                    if (TextUtils.isEmpty("")) {
                        contentValues.put("sms_reply", "");
                    } else {
                        contentValues.put("sms_reply", "");
                    }
                    sQLiteDatabase.update("private_contacts", contentValues, "groupid=?", new String[]{String.valueOf(5)});
                    if (this.f21021a.m19670c()) {
                        this.f21021a.m19674a(0);
                    } else {
                        this.f21021a.m19674a(2);
                    }
                    int f = this.f21021a.m19666f();
                    if (f == 0) {
                        this.f21021a.m19669c(0);
                        this.f21021a.m19673a(false);
                    } else if (f == 1) {
                        this.f21021a.m19669c(0);
                        this.f21021a.m19673a(true);
                    } else {
                        this.f21021a.m19669c(2);
                        this.f21021a.m19673a(false);
                    }
                }
            }
        }
    }

    public C6828c(Context context) {
        this.f21020d = context;
    }

    /* renamed from: b */
    public static C6828c m19649b(Context context) {
        C6828c cVar;
        synchronized (C6828c.class) {
            try {
                if (f21017e == null) {
                    C6828c cVar2 = new C6828c(context);
                    f21017e = cVar2;
                    try {
                        cVar2.m19652a(context);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                cVar = f21017e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    /* renamed from: i */
    public static boolean m19641i() {
        return C6830d.m19633a("contactsDB");
    }

    /* renamed from: a */
    public final C6828c m19652a(Context context) {
        try {
            if (this.f21018b == null) {
                this.f21018b = new C6829a(context);
                if ((this.f21019c == null || !this.f21019c.isOpen()) && this.f21018b != null) {
                    this.f21019c = this.f21018b.getWritableDatabase();
                }
            } else if ((this.f21019c == null || !this.f21019c.isOpen()) && this.f21018b != null) {
                this.f21019c = this.f21018b.getWritableDatabase();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return this;
    }

    /* renamed from: a */
    public boolean m19653a(int i, long j) {
        m19647c();
        String b = m19650b(i);
        SQLiteDatabase sQLiteDatabase = this.f21019c;
        StringBuilder sb = new StringBuilder();
        sb.append("_id=");
        sb.append(j);
        boolean z = sQLiteDatabase.delete(b, sb.toString(), null) > 0;
        if (!b.equals("public_contacts")) {
            m19635a();
        }
        return z;
    }

    /* renamed from: b */
    public final String m19650b(int i) {
        return (i == 11 || i == 32) ? "sms_white_black_contacts" : (i == 14 || i == 15) ? "public_contacts" : i == 5 ? "private_contacts" : "group_contacts";
    }

    /* renamed from: b */
    public void m19651b() {
        this.f21019c.beginTransaction();
    }

    /* renamed from: b */
    public boolean m19648b(String str) {
        Throwable th;
        Exception e;
        Cursor cursor = null;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        boolean z = false;
        try {
            try {
                Cursor g = m19643g();
                if (g != null) {
                    while (true) {
                        try {
                            if (g.moveToNext()) {
                                if (g.getString(g.getColumnIndex("password")).equals(str)) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            cursor2 = g;
                            e.printStackTrace();
                            if (cursor2 == null) {
                                return false;
                            }
                            cursor2.close();
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = g;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    g.close();
                } else {
                    cursor3 = g;
                }
                if (cursor3 != null) {
                    cursor3.close();
                }
                return z;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* renamed from: c */
    public final void m19647c() {
        try {
            if (this.f21019c == null || !this.f21019c.isOpen()) {
                if (this.f21018b == null) {
                    this.f21018b = new C6829a(this.f21020d);
                }
                if (this.f21018b != null) {
                    this.f21019c = this.f21018b.getWritableDatabase();
                }
            }
        } catch (SQLiteException e) {
            e.printStackTrace();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m19646d() {
        this.f21019c.endTransaction();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0128  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<p131c.p431l.p432a.p461i.p462e.C6827b> m19645e() {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p461i.p462e.C6828c.m19645e():java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008c  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m19644f() {
        /*
            r10 = this;
            r0 = r10
            r0.m19647c()
            r0 = 0
            r11 = r0
            r0 = -1
            r12 = r0
            r0 = r10
            android.database.sqlite.SQLiteDatabase r0 = r0.f21019c     // Catch: all -> 0x0062, Exception -> 0x0069
            java.lang.String r1 = "private_contacts"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0062, Exception -> 0x0069
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_id"
            r3[r4] = r5     // Catch: all -> 0x0062, Exception -> 0x0069
            java.lang.String r3 = "groupid=5"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: all -> 0x0062, Exception -> 0x0069
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x004a
            r0 = r13
            r14 = r0
            r0 = r13
            int r0 = r0.getCount()     // Catch: Exception -> 0x0046, all -> 0x0086
            r15 = r0
            r0 = r15
            r12 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            r0.close()     // Catch: Exception -> 0x0046, all -> 0x0086
            r0 = r11
            r14 = r0
            r0 = r15
            r12 = r0
            goto L_0x004d
        L_0x0046:
            r11 = move-exception
            goto L_0x006c
        L_0x004a:
            r0 = r13
            r14 = r0
        L_0x004d:
            r0 = r12
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0083
            r0 = r14
            r0.close()
            r0 = r12
            r15 = r0
            goto L_0x0083
        L_0x0062:
            r13 = move-exception
            r0 = 0
            r14 = r0
            goto L_0x0087
        L_0x0069:
            r11 = move-exception
            r0 = 0
            r13 = r0
        L_0x006c:
            r0 = r13
            r14 = r0
            r0 = r11
            r0.printStackTrace()     // Catch: all -> 0x0086
            r0 = r12
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0083
            r0 = r13
            r0.close()
            r0 = r12
            r15 = r0
        L_0x0083:
            r0 = r15
            return r0
        L_0x0086:
            r13 = move-exception
        L_0x0087:
            r0 = r14
            if (r0 == 0) goto L_0x0093
            r0 = r14
            r0.close()
        L_0x0093:
            r0 = r13
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p461i.p462e.C6828c.m19644f():int");
    }

    /* renamed from: g */
    public Cursor m19643g() {
        return this.f21019c.query("private_password", null, null, null, null, null, null);
    }

    /* renamed from: h */
    public void m19642h() {
        this.f21019c.setTransactionSuccessful();
    }
}
