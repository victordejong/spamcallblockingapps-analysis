package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.openadsdk.d.g;
import com.bytedance.sdk.openadsdk.d.m;
import com.bytedance.sdk.openadsdk.d.o;
import com.bytedance.sdk.openadsdk.m.h;
import com.bytedance.sdk.openadsdk.utils.q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e.class */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f8854c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private c f8855a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8856b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$a.class */
    public class a extends SQLiteOpenHelper {

        /* renamed from: a  reason: collision with root package name */
        final Context f8861a;

        public a(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 5);
            this.f8861a = context;
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> b2 = b(sQLiteDatabase);
            if (b2 != null && b2.size() > 0) {
                Iterator<String> it2 = b2.iterator();
                while (it2.hasNext()) {
                    sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it2.next()));
                }
            }
        }

        private void a(SQLiteDatabase sQLiteDatabase, Context context) {
            q.b("DBHelper", "initDB........");
            sQLiteDatabase.execSQL(g.d());
            sQLiteDatabase.execSQL(o.f());
            sQLiteDatabase.execSQL(m.d());
            sQLiteDatabase.execSQL(h.b());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.widget.webview.a.a.c());
        }

        private ArrayList<String> b(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> arrayList = new ArrayList<>();
            try {
                Cursor rawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
                if (rawQuery != null) {
                    while (rawQuery.moveToNext()) {
                        String string = rawQuery.getString(0);
                        if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                            arrayList.add(string);
                        }
                    }
                    rawQuery.close();
                }
            } catch (Exception e) {
            }
            return arrayList;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                a(sQLiteDatabase, this.f8861a);
            } catch (Throwable th) {
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                q.b("DBHelper", "onUpgrade....数据库版本升级.....old:" + i + ",new:" + i2);
                if (i > i2) {
                    a(sQLiteDatabase);
                    a(sQLiteDatabase, e.this.f8856b);
                    q.b("DBHelper", "onUpgrade...逆向安装.数据库重置-创建表.....");
                } else {
                    a(sQLiteDatabase, e.this.f8856b);
                }
                if (i == 1) {
                    q.b("DBHelper", "onUpgrade.....执行表创建.....");
                } else if (i == 2) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                } else if (i == 3) {
                    sQLiteDatabase.execSQL(o.f());
                } else if (i == 4) {
                    sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.core.widget.webview.a.a.c());
                } else if (i == 5) {
                    sQLiteDatabase.execSQL(m.d());
                }
            } catch (Throwable th) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$b.class */
    class b extends AbstractCursor {
        private b() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$c.class */
    public class c {

        /* renamed from: b  reason: collision with root package name */
        private SQLiteDatabase f8873b = null;

        public c() {
        }

        private void d() {
            synchronized (this) {
                try {
                    synchronized (e.f8854c) {
                        SQLiteDatabase sQLiteDatabase = this.f8873b;
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            e eVar = e.this;
                            SQLiteDatabase writableDatabase = new a(eVar.c()).getWritableDatabase();
                            this.f8873b = writableDatabase;
                            writableDatabase.setLockingEnabled(false);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    if (e()) {
                        throw th;
                    }
                }
            }
        }

        private boolean e() {
            boolean z;
            synchronized (this) {
                SQLiteDatabase sQLiteDatabase = this.f8873b;
                if (sQLiteDatabase != null) {
                    if (sQLiteDatabase.inTransaction()) {
                        z = true;
                    }
                }
                z = false;
            }
            return z;
        }

        public int a(String str, ContentValues contentValues, String str2, String[] strArr) {
            int i;
            synchronized (this) {
                try {
                    d();
                    i = this.f8873b.update(str, contentValues, str2, strArr);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (!e()) {
                        i = 0;
                    } else {
                        throw e;
                    }
                }
            }
            return i;
        }

        public int a(String str, String str2, String[] strArr) {
            int i;
            synchronized (this) {
                try {
                    d();
                    i = this.f8873b.delete(str, str2, strArr);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (!e()) {
                        i = 0;
                    } else {
                        throw e;
                    }
                }
            }
            return i;
        }

        public long a(String str, String str2, ContentValues contentValues) {
            long j;
            synchronized (this) {
                try {
                    d();
                    j = this.f8873b.replace(str, str2, contentValues);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (!e()) {
                        j = -1;
                    } else {
                        throw e;
                    }
                }
            }
            return j;
        }

        public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursor;
            boolean e;
            synchronized (this) {
                try {
                    d();
                    cursor = this.f8873b.query(str, strArr, str2, strArr2, str3, str4, str5);
                } finally {
                    if (e) {
                        throw th;
                    }
                    return cursor;
                }
            }
            return cursor;
        }

        public void a() {
            synchronized (this) {
                d();
                SQLiteDatabase sQLiteDatabase = this.f8873b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.beginTransaction();
                }
            }
        }

        public void a(String str) throws SQLException {
            synchronized (this) {
                try {
                    d();
                    this.f8873b.execSQL(str);
                } catch (Throwable th) {
                    if (e()) {
                        throw th;
                    }
                }
            }
        }

        public void b() {
            synchronized (this) {
                d();
                SQLiteDatabase sQLiteDatabase = this.f8873b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.setTransactionSuccessful();
                }
            }
        }

        public void c() {
            synchronized (this) {
                d();
                SQLiteDatabase sQLiteDatabase = this.f8873b;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.endTransaction();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        try {
            this.f8856b = context == null ? n.a() : context.getApplicationContext();
            if (this.f8855a == null) {
                this.f8855a = new c();
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context c() {
        Context context = this.f8856b;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }

    public c a() {
        return this.f8855a;
    }
}
