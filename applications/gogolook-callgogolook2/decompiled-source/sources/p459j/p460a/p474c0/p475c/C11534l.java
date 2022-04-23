package p459j.p460a.p474c0.p475c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteQueryBuilder;
import android.database.sqlite.SQLiteStatement;
import android.util.SparseArray;
import gogolook.callgogolook2.R$string;
import java.util.Locale;
import java.util.Stack;
import java.util.regex.Pattern;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: j.a.c0.c.l */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/l.class */
public class C11534l {

    /* renamed from: f */
    public static ThreadLocal<Stack<C11536b>> f25773f = new C11535a();

    /* renamed from: g */
    public static String[] f25774g = {"took %d ms to %s", "   took %d ms to %s", "      took %d ms to %s"};

    /* renamed from: a */
    public final SQLiteDatabase f25775a;

    /* renamed from: b */
    public final Context f25776b;

    /* renamed from: c */
    public final boolean f25777c = C12153d0.m6992a("MessagingAppDbPerf", 2);

    /* renamed from: d */
    public final String f25778d = null;

    /* renamed from: e */
    public final SparseArray<SQLiteStatement> f25779e = new SparseArray<>();

    /* renamed from: j.a.c0.c.l$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/l$a.class */
    public static final class C11535a extends ThreadLocal<Stack<C11536b>> {
        @Override // java.lang.ThreadLocal
        public Stack<C11536b> initialValue() {
            return new Stack<>();
        }
    }

    /* renamed from: j.a.c0.c.l$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/l$b.class */
    public static class C11536b {

        /* renamed from: a */
        public long f25780a;

        /* renamed from: b */
        public boolean f25781b;
    }

    public C11534l(Context context, SQLiteDatabase sQLiteDatabase) {
        AbstractC11516a.m9413n().mo9406c().mo6917a("bugle_query_plan_regexp", (String) null);
        this.f25775a = sQLiteDatabase;
        this.f25776b = context;
    }

    /* renamed from: a */
    public static void m9225a(long j, String str) {
        int size = f25773f.get().size();
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (currentTimeMillis > 50) {
            Locale locale = Locale.US;
            String[] strArr = f25774g;
            C12153d0.m6983d("MessagingAppDbPerf", String.format(locale, strArr[Math.min(strArr.length - 1, size)], Long.valueOf(currentTimeMillis), str));
        }
    }

    /* renamed from: a */
    public int m9220a(String str, ContentValues contentValues, String str2, String[] strArr) {
        int i;
        long currentTimeMillis = this.f25777c ? System.currentTimeMillis() : 0L;
        try {
            i = this.f25775a.update(str, contentValues, str2, strArr);
        } catch (SQLiteFullException e) {
            C12153d0.m6986b("MessagingAppDb", "Database full, unable to update", e);
            C12212s0.m6796a((int) R$string.db_full);
            i = 0;
        }
        if (this.f25777c) {
            m9225a(currentTimeMillis, String.format(Locale.US, "update %s with %s ==> %d", str, str2, Integer.valueOf(i)));
        }
        return i;
    }

    /* renamed from: a */
    public int m9218a(String str, String str2, String[] strArr) {
        int i;
        long currentTimeMillis = this.f25777c ? System.currentTimeMillis() : 0L;
        try {
            i = this.f25775a.delete(str, str2, strArr);
        } catch (SQLiteFullException e) {
            C12153d0.m6986b("MessagingAppDb", "Database full, unable to delete", e);
            C12212s0.m6796a((int) R$string.db_full);
            i = 0;
        }
        if (this.f25777c) {
            m9225a(currentTimeMillis, String.format(Locale.US, "delete from %s with %s ==> %d", str, str2, Integer.valueOf(i)));
        }
        return i;
    }

    /* renamed from: a */
    public long m9219a(String str, String str2, ContentValues contentValues) {
        long currentTimeMillis = this.f25777c ? System.currentTimeMillis() : 0L;
        long j = -1;
        try {
            j = this.f25775a.insert(str, str2, contentValues);
        } catch (SQLiteFullException e) {
            C12153d0.m6986b("MessagingAppDb", "Database full, unable to insert", e);
            C12212s0.m6796a((int) R$string.db_full);
        }
        if (this.f25777c) {
            m9225a(currentTimeMillis, String.format(Locale.US, "insert to %s", str));
        }
        return j;
    }

    /* renamed from: a */
    public Cursor m9222a(SQLiteQueryBuilder sQLiteQueryBuilder, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        if (this.f25778d != null) {
            m9223a(sQLiteQueryBuilder, this.f25775a, strArr, str, strArr2, str2, str3, str4, str5);
        }
        long j = 0;
        if (this.f25777c) {
            j = System.currentTimeMillis();
        }
        Cursor query = sQLiteQueryBuilder.query(this.f25775a, strArr, str, strArr2, str2, str3, str4, str5);
        if (this.f25777c) {
            m9225a(j, String.format(Locale.US, "query %s with %s ==> %d", sQLiteQueryBuilder.getTables(), str, Integer.valueOf(query.getCount())));
        }
        return query;
    }

    /* renamed from: a */
    public Cursor m9217a(String str, String[] strArr) {
        if (this.f25778d != null) {
            m9224a(this.f25775a, str, strArr);
        }
        long j = 0;
        if (this.f25777c) {
            j = System.currentTimeMillis();
        }
        Cursor rawQuery = this.f25775a.rawQuery(str, strArr);
        if (this.f25777c) {
            m9225a(j, String.format(Locale.US, "rawQuery %s ==> %d", str, Integer.valueOf(rawQuery.getCount())));
        }
        return rawQuery;
    }

    /* renamed from: a */
    public Cursor m9216a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return m9215a(str, strArr, str2, strArr2, str3, str4, str5, (String) null);
    }

    /* renamed from: a */
    public Cursor m9215a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        if (this.f25778d != null) {
            SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
            sQLiteQueryBuilder.setTables(str);
            m9223a(sQLiteQueryBuilder, this.f25775a, strArr, str2, strArr2, str3, str4, str5, str6);
        }
        long j = 0;
        if (this.f25777c) {
            j = System.currentTimeMillis();
        }
        Cursor query = this.f25775a.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
        if (this.f25777c) {
            m9225a(j, String.format(Locale.US, "query %s with %s ==> %d", str, str2, Integer.valueOf(query.getCount())));
        }
        return query;
    }

    /* renamed from: a */
    public SQLiteStatement m9226a(int i, String str) {
        C12151d.m6999b(this.f25775a.inTransaction());
        SQLiteStatement sQLiteStatement = this.f25779e.get(i);
        SQLiteStatement sQLiteStatement2 = sQLiteStatement;
        if (sQLiteStatement == null) {
            sQLiteStatement2 = this.f25775a.compileStatement(str);
            C12151d.m6999b(sQLiteStatement2.toString().contains(str.trim()));
            this.f25779e.put(i, sQLiteStatement2);
        }
        return sQLiteStatement2;
    }

    /* renamed from: a */
    public void m9227a() {
        long currentTimeMillis = System.currentTimeMillis();
        C11536b bVar = new C11536b();
        bVar.f25780a = currentTimeMillis;
        f25773f.get().push(bVar);
        this.f25775a.beginTransaction();
    }

    /* renamed from: a */
    public final void m9224a(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        if (Pattern.matches(this.f25778d, str)) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("explain query plan " + str, strArr);
            if (rawQuery != null) {
                try {
                    try {
                        if (rawQuery.moveToFirst()) {
                            int columnIndex = rawQuery.getColumnIndex("detail");
                            StringBuilder sb = new StringBuilder();
                            do {
                                sb.append(rawQuery.getString(columnIndex));
                                sb.append("\n");
                            } while (rawQuery.moveToNext());
                            if (sb.length() > 0) {
                                sb.setLength(sb.length() - 1);
                            }
                            C12153d0.m6983d("MessagingAppDb", "for query " + str + "\nplan is: " + sb.toString());
                        }
                    } catch (Exception e) {
                        C12153d0.m6982d("MessagingAppDb", "Query plan failed ", e);
                        if (rawQuery == null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    throw th;
                }
            }
            if (rawQuery == null) {
                return;
            }
            rawQuery.close();
        }
    }

    /* renamed from: a */
    public final void m9223a(SQLiteQueryBuilder sQLiteQueryBuilder, SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        m9224a(sQLiteDatabase, sQLiteQueryBuilder.buildQuery(strArr, str, str2, null, str4, str5), strArr2);
    }

    /* renamed from: a */
    public void m9221a(String str) {
        long currentTimeMillis = this.f25777c ? System.currentTimeMillis() : 0L;
        try {
            this.f25775a.execSQL(str);
        } catch (SQLiteFullException e) {
            C12153d0.m6986b("MessagingAppDb", "Database full, unable to execSQL", e);
            C12212s0.m6796a((int) R$string.db_full);
        }
        if (this.f25777c) {
            m9225a(currentTimeMillis, String.format(Locale.US, "execSQL %s", str));
        }
    }

    /* renamed from: b */
    public long m9213b(String str, String str2, String[] strArr) {
        long currentTimeMillis = this.f25777c ? System.currentTimeMillis() : 0L;
        long queryNumEntries = DatabaseUtils.queryNumEntries(this.f25775a, str, str2, strArr);
        if (this.f25777c) {
            m9225a(currentTimeMillis, String.format(Locale.US, "queryNumEntries %s with %s ==> %d", str, str2, Long.valueOf(queryNumEntries)));
        }
        return queryNumEntries;
    }

    /* renamed from: b */
    public void m9214b() {
        long j;
        StackTraceElement[] stackTrace;
        C11536b pop = f25773f.get().pop();
        if (!pop.f25781b) {
            C12153d0.m6981e("MessagingAppDb", "endTransaction without setting successful");
            for (StackTraceElement stackTraceElement : new Exception().getStackTrace()) {
                C12153d0.m6981e("MessagingAppDb", "    " + stackTraceElement.toString());
            }
        }
        long j2 = 0;
        if (this.f25777c) {
            j2 = pop.f25780a;
            j = System.currentTimeMillis();
        } else {
            j = 0;
        }
        try {
            this.f25775a.endTransaction();
        } catch (SQLiteFullException e) {
            C12153d0.m6986b("MessagingAppDb", "Database full, unable to endTransaction", e);
            C12212s0.m6796a((int) R$string.db_full);
        }
        if (this.f25777c) {
            m9225a(j, String.format(Locale.US, ">>> endTransaction (total for this transaction: %d)", Long.valueOf(System.currentTimeMillis() - j2)));
        }
    }

    /* renamed from: c */
    public Context m9212c() {
        return this.f25776b;
    }

    /* renamed from: d */
    public SQLiteDatabase m9211d() {
        return this.f25775a;
    }

    /* renamed from: e */
    public void m9210e() {
        f25773f.get().peek().f25781b = true;
        this.f25775a.setTransactionSuccessful();
    }
}
