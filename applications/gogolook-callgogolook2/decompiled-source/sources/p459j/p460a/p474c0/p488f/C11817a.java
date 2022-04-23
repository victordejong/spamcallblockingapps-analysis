package p459j.p460a.p474c0.p488f;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import gogolook.callgogolook2.R$xml;
import p459j.p460a.p474c0.p488f.C11819b;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.f.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/a.class */
public class C11817a extends SQLiteOpenHelper {

    /* renamed from: a */
    public static Context f26497a;

    /* renamed from: b */
    public static C11817a f26498b;

    /* renamed from: j.a.c0.f.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/a$a.class */
    public static final class C11818a implements C11819b.AbstractC11820a {

        /* renamed from: a */
        public final /* synthetic */ SQLiteDatabase f26499a;

        public C11818a(SQLiteDatabase sQLiteDatabase) {
            this.f26499a = sQLiteDatabase;
        }

        @Override // p459j.p460a.p474c0.p488f.C11819b.AbstractC11820a
        /* renamed from: a */
        public void mo8227a(ContentValues contentValues) {
            this.f26499a.insert("apn", null, contentValues);
        }
    }

    public C11817a() {
        super(f26497a, "apn.db", (SQLiteDatabase.CursorFactory) null, 3);
    }

    /* renamed from: a */
    public static void m8244a() {
        SQLiteDatabase writableDatabase = m8241b().getWritableDatabase();
        writableDatabase.execSQL("DROP TABLE IF EXISTS apn");
        writableDatabase.execSQL("CREATE TABLE apn(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT,sub_id INTEGER DEFAULT -1);");
        m8240b(writableDatabase);
    }

    /* renamed from: a */
    public static void m8243a(Context context) {
        f26497a = context;
    }

    /* renamed from: b */
    public static C11817a m8241b() {
        if (f26498b == null) {
            f26498b = new C11817a();
        }
        return f26498b;
    }

    /* renamed from: b */
    public static void m8240b(SQLiteDatabase sQLiteDatabase) {
        if (C12153d0.m6992a("MessagingApp", 2)) {
            C12153d0.m6983d("MessagingApp", "ApnDatabase loadApnTable");
        }
        XmlResourceParser xml = f26497a.getResources().getXml(R$xml.apns);
        C11819b a = C11819b.m8231a(xml);
        a.m8236a(new C11818a(sQLiteDatabase));
        try {
            try {
                a.m8239a();
            } catch (Exception e) {
                Log.e("MessagingApp", "Got exception while loading APN database.", e);
            }
        } finally {
            xml.close();
        }
    }

    /* renamed from: a */
    public final void m8242a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS apn;");
        sQLiteDatabase.execSQL("CREATE TABLE apn(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsc TEXT,authtype INTEGER,type TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER,mvno_type TEXT,mvno_match_data TEXT,sub_id INTEGER DEFAULT -1);");
        m8240b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public void close() {
        super.close();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m8242a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m8242a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m8242a(sQLiteDatabase);
    }
}
