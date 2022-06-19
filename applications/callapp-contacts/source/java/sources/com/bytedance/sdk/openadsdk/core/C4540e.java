package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.p164d.C4814g;
import com.bytedance.sdk.openadsdk.p164d.C4829m;
import com.bytedance.sdk.openadsdk.p164d.C4831o;
import com.bytedance.sdk.openadsdk.p186m.C5067h;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.bytedance.sdk.openadsdk.core.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e.class */
public class C4540e {

    /* renamed from: c */
    private static final Object f16447c = new Object();

    /* renamed from: a */
    private C4544c f16448a;

    /* renamed from: b */
    private Context f16449b;

    /* renamed from: com.bytedance.sdk.openadsdk.core.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$a.class */
    public class C4542a extends SQLiteOpenHelper {

        /* renamed from: a */
        final Context f16450a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4542a(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 5);
            C4540e.this = r7;
            this.f16450a = context;
        }

        /* renamed from: a */
        private void m35348a(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> m35342b = m35342b(sQLiteDatabase);
            if (m35342b == null || m35342b.size() <= 0) {
                return;
            }
            Iterator<String> it2 = m35342b.iterator();
            while (it2.hasNext()) {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it2.next()));
            }
        }

        /* renamed from: a */
        private void m35347a(SQLiteDatabase sQLiteDatabase, Context context) {
            C5478q.m32112b("DBHelper", "initDB........");
            sQLiteDatabase.execSQL(C4814g.m33851d());
            sQLiteDatabase.execSQL(C4831o.m33778f());
            sQLiteDatabase.execSQL(C4829m.m33799d());
            sQLiteDatabase.execSQL(C5067h.m33125b());
            sQLiteDatabase.execSQL(C4786a.m33977c());
        }

        /* renamed from: b */
        private ArrayList<String> m35342b(SQLiteDatabase sQLiteDatabase) {
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
                m35347a(sQLiteDatabase, this.f16450a);
            } catch (Throwable th) {
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                C5478q.m32112b("DBHelper", "onUpgrade....数据库版本升级.....old:" + i + ",new:" + i2);
                if (i > i2) {
                    m35348a(sQLiteDatabase);
                    m35347a(sQLiteDatabase, C4540e.this.f16449b);
                    C5478q.m32112b("DBHelper", "onUpgrade...逆向安装.数据库重置-创建表.....");
                } else {
                    m35347a(sQLiteDatabase, C4540e.this.f16449b);
                }
                if (i == 1) {
                    C5478q.m32112b("DBHelper", "onUpgrade.....执行表创建.....");
                } else if (i == 2) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                } else if (i == 3) {
                    sQLiteDatabase.execSQL(C4831o.m33778f());
                } else if (i == 4) {
                    sQLiteDatabase.execSQL(C4786a.m33977c());
                } else if (i != 5) {
                } else {
                    sQLiteDatabase.execSQL(C4829m.m33799d());
                }
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.e$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$b.class */
    public class C4543b extends AbstractCursor {
        private C4543b() {
            C4540e.this = r4;
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

    /* renamed from: com.bytedance.sdk.openadsdk.core.e$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e$c.class */
    public class C4544c {

        /* renamed from: b */
        private SQLiteDatabase f16454b = null;

        public C4544c() {
            C4540e.this = r4;
        }

        /* renamed from: d */
        private void m35317d() {
            synchronized (this) {
                try {
                    synchronized (C4540e.f16447c) {
                        SQLiteDatabase sQLiteDatabase = this.f16454b;
                        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                            C4540e c4540e = C4540e.this;
                            SQLiteDatabase writableDatabase = new C4542a(c4540e.m35352c()).getWritableDatabase();
                            this.f16454b = writableDatabase;
                            writableDatabase.setLockingEnabled(false);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                    if (!m35316e()) {
                        return;
                    }
                    throw th;
                }
            }
        }

        /* renamed from: e */
        private boolean m35316e() {
            boolean z;
            synchronized (this) {
                SQLiteDatabase sQLiteDatabase = this.f16454b;
                if (sQLiteDatabase != null) {
                    if (sQLiteDatabase.inTransaction()) {
                        z = true;
                    }
                }
                z = false;
            }
            return z;
        }

        /* renamed from: a */
        public int m35323a(String str, ContentValues contentValues, String str2, String[] strArr) {
            int i;
            synchronized (this) {
                try {
                    m35317d();
                    i = this.f16454b.update(str, contentValues, str2, strArr);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (m35316e()) {
                        throw e;
                    }
                    i = 0;
                }
            }
            return i;
        }

        /* renamed from: a */
        public int m35321a(String str, String str2, String[] strArr) {
            int i;
            synchronized (this) {
                try {
                    m35317d();
                    i = this.f16454b.delete(str, str2, strArr);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (m35316e()) {
                        throw e;
                    }
                    i = 0;
                }
            }
            return i;
        }

        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* renamed from: a */
        public long m35322a(String str, String str2, ContentValues contentValues) {
            char c;
            synchronized (this) {
                try {
                    m35317d();
                    c = this.f16454b.replace(str, str2, contentValues);
                } catch (Exception e) {
                    e.printStackTrace();
                    if (m35316e()) {
                        throw e;
                    }
                    c = 65535;
                }
            }
            return c;
        }

        /* renamed from: a */
        public Cursor m35320a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursor;
            boolean m35316e;
            synchronized (this) {
                try {
                    m35317d();
                    cursor = this.f16454b.query(str, strArr, str2, strArr2, str3, str4, str5);
                } finally {
                    if (m35316e) {
                        throw th;
                    }
                    return cursor;
                }
            }
            return cursor;
        }

        /* renamed from: a */
        public void m35325a() {
            synchronized (this) {
                m35317d();
                SQLiteDatabase sQLiteDatabase = this.f16454b;
                if (sQLiteDatabase == null) {
                    return;
                }
                sQLiteDatabase.beginTransaction();
            }
        }

        /* renamed from: a */
        public void m35324a(String str) throws SQLException {
            synchronized (this) {
                try {
                    m35317d();
                    this.f16454b.execSQL(str);
                } catch (Throwable th) {
                    if (!m35316e()) {
                        return;
                    }
                    throw th;
                }
            }
        }

        /* renamed from: b */
        public void m35319b() {
            synchronized (this) {
                m35317d();
                SQLiteDatabase sQLiteDatabase = this.f16454b;
                if (sQLiteDatabase == null) {
                    return;
                }
                sQLiteDatabase.setTransactionSuccessful();
            }
        }

        /* renamed from: c */
        public void m35318c() {
            synchronized (this) {
                m35317d();
                SQLiteDatabase sQLiteDatabase = this.f16454b;
                if (sQLiteDatabase == null) {
                    return;
                }
                sQLiteDatabase.endTransaction();
            }
        }
    }

    public C4540e(Context context) {
        try {
            this.f16449b = context == null ? C4600n.m34815a() : context.getApplicationContext();
            if (this.f16448a != null) {
                return;
            }
            this.f16448a = new C4544c();
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public Context m35352c() {
        Context context = this.f16449b;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }

    /* renamed from: a */
    public C4544c mo35356a() {
        return this.f16448a;
    }
}
