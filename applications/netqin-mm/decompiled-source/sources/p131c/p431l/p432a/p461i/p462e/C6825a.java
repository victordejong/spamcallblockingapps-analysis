package p131c.p431l.p432a.p461i.p462e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import p131c.p431l.p432a.p461i.C6820a;
import p131c.p431l.p432a.p461i.C6821b;
import p131c.p431l.p432a.p461i.C6823c;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.a.i.e.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/e/a.class */
public class C6825a extends C6830d {

    /* renamed from: d */
    public static C6825a f21003d;

    /* renamed from: b */
    public C6826a f21004b;

    /* renamed from: c */
    public SQLiteDatabase f21005c;

    /* renamed from: c.l.a.i.e.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/i/e/a$a.class */
    public static class C6826a extends SQLiteOpenHelper {
        public C6826a(Context context) {
            super(context, "CallLogDB", (SQLiteDatabase.CursorFactory) null, 2);
        }

        /* renamed from: a */
        public Cursor m19655a(SQLiteDatabase sQLiteDatabase) {
            return sQLiteDatabase.query("calllog", null, "groupid=0", null, null, null, null);
        }

        /* renamed from: a */
        public void m19654a(SQLiteDatabase sQLiteDatabase, int i, long j) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("time", Long.valueOf(j));
            sQLiteDatabase.update("calllog", contentValues, "_id = " + i, null);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("create table calllog (_id integer primary key autoincrement, groupid integer not null default 0, type interger not null,name text, phonenumber text not null,time text not null,duration integer not null,read integer not null default 1);");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Cursor a;
            if (i == 1 && i2 == 2) {
                Cursor cursor = null;
                Cursor cursor2 = null;
                try {
                    try {
                        a = m19655a(sQLiteDatabase);
                        if (a != null) {
                            while (true) {
                                cursor2 = a;
                                cursor = a;
                                if (!a.moveToNext()) {
                                    break;
                                }
                                m19654a(sQLiteDatabase, a.getInt(a.getColumnIndex("_id")), C6823c.m19678a(a.getString(a.getColumnIndex("time"))));
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        if (cursor == null) {
                            return;
                        }
                    }
                    if (a != null) {
                        cursor = a;
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        }
    }

    public C6825a(Context context) {
        new C6821b(context);
        new C6820a(context);
    }

    /* renamed from: b */
    public static C6825a m19661b(Context context) {
        C6825a aVar;
        synchronized (C6825a.class) {
            try {
                C6850i.m19580a("CalllogDB---getInstance");
                if (f21003d == null) {
                    C6850i.m19580a("CalllogDB---getInstance--2222");
                    C6825a aVar2 = new C6825a(context);
                    f21003d = aVar2;
                    aVar2.m19664a(context);
                }
                aVar = f21003d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: g */
    public static boolean m19656g() {
        return C6830d.m19633a("CallLogDB");
    }

    /* renamed from: a */
    public C6825a m19664a(Context context) {
        try {
            this.f21004b = new C6826a(context);
            if ((this.f21005c == null || !this.f21005c.isOpen()) && this.f21004b != null) {
                this.f21005c = this.f21004b.getWritableDatabase();
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
    public boolean m19665a(long j) {
        SQLiteDatabase sQLiteDatabase = this.f21005c;
        StringBuilder sb = new StringBuilder();
        sb.append("_id=");
        sb.append(j);
        boolean z = sQLiteDatabase.delete("calllog", sb.toString(), null) > 0;
        if (z) {
            m19634a(1);
        }
        return z;
    }

    /* renamed from: b */
    public Cursor m19662b(int i) {
        SQLiteDatabase sQLiteDatabase = this.f21005c;
        return sQLiteDatabase.query("calllog", null, "groupid=" + i, null, null, null, null);
    }

    /* renamed from: b */
    public void m19663b() {
        this.f21005c.beginTransaction();
    }

    /* renamed from: c */
    public void m19660c() {
        this.f21005c.endTransaction();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0126, code lost:
        if (r13 == null) goto L_0x012c;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<p131c.p431l.p432a.p461i.p462e.C6827b> m19659d() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p461i.p462e.C6825a.m19659d():java.util.List");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public int m19658e() {
        int i;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = this.f21005c.query("calllog", new String[]{"_id"}, null, null, null, null, null);
                cursor2 = query;
                cursor = query;
                int count = query.getCount();
                i = count;
                if (query != null) {
                    query.close();
                    i = count;
                }
            } catch (Exception e) {
                cursor2 = cursor;
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                i = 0;
            }
            return i;
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: f */
    public void m19657f() {
        this.f21005c.setTransactionSuccessful();
    }
}
