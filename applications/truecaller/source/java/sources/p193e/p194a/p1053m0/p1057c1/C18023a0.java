package p193e.p194a.p1053m0.p1057c1;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.razorpay.AnalyticsConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
@Deprecated
/* renamed from: e.a.m0.c1.a0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0.class */
public final class C18023a0 implements SharedPreferencesC18033b0.AbstractC18046m, SharedPreferencesC18033b0.AbstractC18037d {

    /* renamed from: c */
    public static final C18031h f50917c = new C18031h(null);

    /* renamed from: d */
    public static final AtomicInteger f50918d = new AtomicInteger();

    /* renamed from: e */
    public static final AtomicInteger f50919e = new AtomicInteger();

    /* renamed from: f */
    public static final Map<String, Queue<C18027d>> f50920f = new HashMap();

    /* renamed from: g */
    public static final HashMap<String, Object> f50921g = new HashMap<>();

    /* renamed from: a */
    public final C18028e f50922a;

    /* renamed from: b */
    public long f50923b;

    /* renamed from: e.a.m0.c1.a0$b */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$b.class */
    public interface AbstractC18025b {
        /* renamed from: a */
        void mo15523a(SQLiteDatabase sQLiteDatabase, long j);
    }

    /* renamed from: e.a.m0.c1.a0$c */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$c.class */
    public static final class C18026c implements AbstractC18025b {
        public C18026c(C18024a c18024a) {
        }

        @Override // p193e.p194a.p1053m0.p1057c1.C18023a0.AbstractC18025b
        /* renamed from: a */
        public void mo15523a(SQLiteDatabase sQLiteDatabase, long j) {
            sQLiteDatabase.delete(AnalyticsConstants.PREFERENCES, null, null);
        }
    }

    /* renamed from: e.a.m0.c1.a0$d */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$d.class */
    public static final class C18027d {

        /* renamed from: a */
        public final long f50924a = System.nanoTime();

        /* renamed from: b */
        public final Queue<AbstractC18025b> f50925b = new ArrayDeque();

        public C18027d() {
        }

        public C18027d(C18024a c18024a) {
        }
    }

    /* renamed from: e.a.m0.c1.a0$e */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$e.class */
    public static final class C18028e extends SQLiteOpenHelper {

        /* renamed from: d */
        public static final String f50926d = String.format("CREATE TABLE [%1$s] ( [%2$s] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, [%3$s] NVARCHAR(200) UNIQUE NOT NULL, [%4$s] TEXT, [%5$s] INTEGER NOT NULL,[%6$s] INTEGER NOT NULL )", AnalyticsConstants.PREFERENCES, "_id", AnalyticsConstants.KEY, "value", "type", "time");

        /* renamed from: e */
        public static final String f50927e = String.format("CREATE UNIQUE INDEX [IDX_%1$s_%2$s] ON [%1$s] ( [%2$s] )", AnalyticsConstants.PREFERENCES, AnalyticsConstants.KEY);

        /* renamed from: f */
        public static final String f50928f = String.format("CREATE INDEX [IDX_%1$s_%2$s] ON [%1$s] ( [%2$s] )", AnalyticsConstants.PREFERENCES, "time");

        /* renamed from: g */
        public static final String f50929g = String.format("DROP TABLE [%1$s]", AnalyticsConstants.PREFERENCES);

        /* renamed from: h */
        public static final String f50930h = String.format("DROP INDEX [IDX_%1$s_%2$s]", AnalyticsConstants.PREFERENCES, "time");

        /* renamed from: i */
        public static final String f50931i = String.format("DROP INDEX [IDX_%1$s_%2$s]", AnalyticsConstants.PREFERENCES, AnalyticsConstants.KEY);

        /* renamed from: a */
        public final String f50932a;

        /* renamed from: b */
        public final Object f50933b;

        /* renamed from: c */
        public final Context f50934c;

        public C18028e(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
            this.f50932a = str;
            this.f50934c = context;
            HashMap<String, Object> hashMap = C18023a0.f50921g;
            if (!hashMap.containsKey(str)) {
                synchronized (hashMap) {
                    hashMap.put(str, new Object());
                }
            }
            this.f50933b = hashMap.get(str);
        }

        /* renamed from: b */
        public void m15524b(SQLiteDatabase sQLiteDatabase) {
            int version = sQLiteDatabase.getVersion();
            if (version != 1) {
                if (sQLiteDatabase.isReadOnly()) {
                    StringBuilder m8728C = C22128a.m8728C("Can't upgrade read-only database from version ");
                    m8728C.append(sQLiteDatabase.getVersion());
                    m8728C.append(" to ");
                    m8728C.append(1);
                    m8728C.append(": ");
                    m8728C.append(this.f50932a);
                    throw new SQLiteException(m8728C.toString());
                }
                sQLiteDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        onCreate(sQLiteDatabase);
                    } else if (version > 1) {
                        onDowngrade(sQLiteDatabase, version, 1);
                    } else {
                        onUpgrade(sQLiteDatabase, version, 1);
                    }
                    sQLiteDatabase.setVersion(1);
                    sQLiteDatabase.setTransactionSuccessful();
                } finally {
                    sQLiteDatabase.endTransaction();
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getReadableDatabase() {
            try {
                return super.getReadableDatabase();
            } catch (Throwable th) {
                synchronized (this) {
                    SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(this.f50934c.getDatabasePath(this.f50932a).getPath(), null, 268435472);
                    onConfigure(openDatabase);
                    m15524b(openDatabase);
                    onOpen(openDatabase);
                    try {
                        Field field = getClass().getField("mDatabase");
                        if (field != null) {
                            field.setAccessible(true);
                            field.set(this, openDatabase);
                        }
                    } catch (Throwable th2) {
                    }
                    return openDatabase;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(f50926d);
            sQLiteDatabase.execSQL(f50927e);
            sQLiteDatabase.execSQL(f50928f);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            sQLiteDatabase.execSQL(f50930h);
            sQLiteDatabase.execSQL(f50931i);
            sQLiteDatabase.execSQL(f50929g);
            onCreate(sQLiteDatabase);
        }
    }

    /* renamed from: e.a.m0.c1.a0$f */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$f.class */
    public static final class C18029f implements AbstractC18025b, SharedPreferencesC18033b0.AbstractC18049p, SharedPreferencesC18033b0.AbstractC18050q {

        /* renamed from: a */
        public final String f50935a;

        /* renamed from: b */
        public final Object f50936b;

        public C18029f(String str, Object obj) {
            this.f50935a = str;
            this.f50936b = obj;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.C18023a0.AbstractC18025b
        /* renamed from: a */
        public void mo15523a(SQLiteDatabase sQLiteDatabase, long j) {
            byte[] bArr;
            int m15657N = C17891a1.C17902k.m15657N(this.f50936b);
            ContentValues contentValues = new ContentValues();
            contentValues.put(AnalyticsConstants.KEY, this.f50935a);
            contentValues.put("time", Long.valueOf(j));
            contentValues.put("type", Integer.valueOf(m15657N));
            Object obj = this.f50936b;
            if ((m15657N & 126) > 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    C17891a1.C17902k.m15622c1(new DataOutputStream(byteArrayOutputStream), m15657N, obj);
                } catch (Throwable th) {
                }
                bArr = byteArrayOutputStream.toByteArray();
            } else {
                bArr = null;
            }
            contentValues.put("value", bArr);
            if (sQLiteDatabase.update(AnalyticsConstants.PREFERENCES, contentValues, "[key] = ?", new String[]{this.f50935a}) == 0) {
                sQLiteDatabase.insert(AnalyticsConstants.PREFERENCES, null, contentValues);
            }
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18049p
        public String getKey() {
            return this.f50935a;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18050q
        public final Object getValue() {
            return this.f50936b;
        }
    }

    /* renamed from: e.a.m0.c1.a0$g */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$g.class */
    public static final class C18030g implements AbstractC18025b, SharedPreferencesC18033b0.AbstractC18049p {

        /* renamed from: a */
        public final String f50937a;

        public C18030g(String str) {
            this.f50937a = str;
        }

        @Override // p193e.p194a.p1053m0.p1057c1.C18023a0.AbstractC18025b
        /* renamed from: a */
        public void mo15523a(SQLiteDatabase sQLiteDatabase, long j) {
            sQLiteDatabase.delete(AnalyticsConstants.PREFERENCES, "[key] = ?", new String[]{this.f50937a});
        }

        @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18049p
        public String getKey() {
            return this.f50937a;
        }
    }

    /* renamed from: e.a.m0.c1.a0$h */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/c1/a0$h.class */
    public static final class C18031h {

        /* renamed from: a */
        public final AtomicInteger f50938a = new AtomicInteger();

        /* renamed from: b */
        public final AtomicInteger f50939b = new AtomicInteger();

        /* renamed from: c */
        public final AtomicInteger f50940c = new AtomicInteger();

        public C18031h(C18024a c18024a) {
        }
    }

    public C18023a0(Context context, String str) {
        this.f50922a = new C18028e(context, C22128a.m8543z2(new File(str).getName(), ".s3db"));
    }

    @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18037d
    /* renamed from: a */
    public void mo15518a(SharedPreferences.Editor editor) {
        f50918d.incrementAndGet();
    }

    @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18046m
    /* renamed from: b */
    public Map<String, ?> mo15513b(byte[] bArr) {
        Map<String, ?> m15526e;
        try {
            synchronized (this.f50922a.f50933b) {
                m15526e = m15526e();
            }
            return m15526e;
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18037d
    /* renamed from: c */
    public void mo15517c(SharedPreferences.Editor editor, Queue<SharedPreferencesC18033b0.AbstractC18035b> queue) {
        C18027d c18027d = new C18027d(null);
        for (SharedPreferencesC18033b0.AbstractC18035b abstractC18035b : queue) {
            int type = abstractC18035b.getType();
            if (type == 1) {
                c18027d.f50925b.add(new C18029f(((SharedPreferencesC18033b0.AbstractC18049p) abstractC18035b).getKey(), ((SharedPreferencesC18033b0.AbstractC18050q) abstractC18035b).getValue()));
            } else if (type == 2) {
                c18027d.f50925b.add(new C18030g(((SharedPreferencesC18033b0.AbstractC18049p) abstractC18035b).getKey()));
            } else if (type == 4) {
                c18027d.f50925b.clear();
                c18027d.f50925b.add(new C18026c(null));
            }
        }
        f50917c.f50938a.incrementAndGet();
        String str = this.f50922a.f50932a;
        Map<String, Queue<C18027d>> map = f50920f;
        Queue<C18027d> queue2 = map.get(str);
        Queue<C18027d> queue3 = queue2;
        if (queue2 == null) {
            synchronized (map) {
                Queue<C18027d> queue4 = map.get(str);
                queue3 = queue4;
                if (queue4 == null) {
                    queue3 = new ConcurrentLinkedQueue<>();
                    map.put(str, queue3);
                }
            }
        }
        queue3.offer(c18027d);
    }

    @Override // p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0.AbstractC18046m
    /* renamed from: d */
    public byte[] mo15512d(Map<String, ?> map) {
        try {
            synchronized (this.f50922a.f50933b) {
                m15525f();
            }
            return null;
        } catch (Throwable th) {
            boolean z = th instanceof SharedPreferencesC18033b0.C18044k;
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: e */
    public final Map<String, ?> m15526e() {
        Object obj;
        HashMap hashMap = new HashMap();
        char c = this.f50923b;
        SQLiteDatabase readableDatabase = this.f50922a.getReadableDatabase();
        Cursor query = readableDatabase.query(AnalyticsConstants.PREFERENCES, null, "[time] > ?", new String[]{C22128a.m8583p2("", c)}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    int columnIndex = query.getColumnIndex(AnalyticsConstants.KEY);
                    int columnIndex2 = query.getColumnIndex("type");
                    int columnIndex3 = query.getColumnIndex("value");
                    int columnIndex4 = query.getColumnIndex("time");
                    do {
                        String string = query.getString(columnIndex);
                        int i = query.getInt(columnIndex2);
                        byte[] blob = query.getBlob(columnIndex3);
                        c = Math.max((long) c, query.getLong(columnIndex4));
                        if ((i & 126) > 0) {
                            try {
                                obj = C17891a1.C17902k.m15635X0(new DataInputStream(new ByteArrayInputStream(blob)), i);
                            } catch (Throwable th) {
                            }
                            hashMap.put(string, obj);
                        }
                        obj = null;
                        hashMap.put(string, obj);
                    } while (query.moveToNext());
                }
            } finally {
                query.close();
            }
        }
        if (query != null) {
        }
        readableDatabase.close();
        this.f50923b = System.nanoTime();
        return hashMap;
    }

    /* renamed from: f */
    public final void m15525f() {
        f50917c.f50940c.incrementAndGet();
        SQLiteDatabase writableDatabase = this.f50922a.getWritableDatabase();
        Queue<C18027d> queue = f50920f.get(this.f50922a.f50932a);
        writableDatabase.beginTransaction();
        while (true) {
            C18027d poll = queue.poll();
            if (poll == null) {
                break;
            }
            while (true) {
                AbstractC18025b poll2 = poll.f50925b.poll();
                if (poll2 != null) {
                    poll2.mo15523a(writableDatabase, poll.f50924a);
                    f50917c.f50939b.incrementAndGet();
                }
            }
            f50919e.incrementAndGet();
        }
        writableDatabase.setTransactionSuccessful();
        writableDatabase.endTransaction();
        writableDatabase.close();
        if (f50918d.get() == f50919e.get()) {
            return;
        }
        throw new SharedPreferencesC18033b0.C18044k("Reschedule of synchronization job is required. Expected version does not match current.");
    }
}
