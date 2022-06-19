package p000;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* renamed from: r81 */
/* loaded from: classes3-dex2jar.jar:r81.class */
public class r81 extends v71<r81> {

    /* renamed from: l */
    public static String f8013l = "com.callcontrol.datashare.messaging";

    /* renamed from: m */
    public static String f8014m = "com.callcontrol.datashare.calls";

    /* renamed from: n */
    public static String f8015n = v71.m384C("data_share");

    /* renamed from: o */
    public static final String f8016o = v71.m384C("package");

    /* renamed from: p */
    public static final String f8017p = v71.m384C("uri");

    /* renamed from: q */
    public static final String f8018q = v71.m384C("request");

    /* renamed from: r */
    public static final String f8019r = v71.m384C("accessedAt");

    /* renamed from: s */
    public static final String f8020s = v71.m384C("status");

    /* renamed from: t */
    public static final String f8021t = v71.m384C("count");

    /* renamed from: d */
    public long f8022d;

    /* renamed from: f */
    public String f8023f;

    /* renamed from: g */
    public String f8024g;

    /* renamed from: h */
    public String f8025h;

    /* renamed from: j */
    public EnumC1640a f8026j = EnumC1640a.NORMAL;

    /* renamed from: k */
    public long f8027k;

    /* renamed from: r81$a */
    /* loaded from: classes3-dex2jar.jar:r81$a.class */
    public enum EnumC1640a {
        NEW,
        NORMAL,
        VIOLATING,
        BLOCKED
    }

    /* renamed from: r81$b */
    /* loaded from: classes3-dex2jar.jar:r81$b.class */
    public enum EnumC1641b {
        URI_REQUEST_TOKEN,
        URI_LOOKUP_CALL,
        URI_LOOKUP_TEXT
    }

    /* renamed from: F */
    public static void m675F(String str) {
        if (!str.trim().isEmpty()) {
            r81 r81Var = new r81();
            r81Var.m379g(f8016o + "=? AND " + f8020s + "<>?", new String[]{str, String.valueOf(EnumC1640a.NORMAL.ordinal())});
            return;
        }
        throw new IllegalArgumentException("You must set package id first");
    }

    /* renamed from: I */
    public static void m672I(String str) {
        r81 r81Var = new r81();
        r81Var.m379g(f8016o + "=?", new String[]{str});
    }

    /* renamed from: K */
    public static String m670K(String str, long j) {
        if (j == 0) {
            return null;
        }
        r81 r81Var = new r81();
        if (!r81Var.m664Q(str) || r81Var.m676E() - j > 10000) {
            return null;
        }
        return ka1.m1410n(j + r81Var.mo63a() + str);
    }

    /* renamed from: L */
    public static String m669L(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return null;
        }
        try {
            return m670K(str, Long.valueOf(str2).longValue());
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: P */
    public static EnumC1640a m665P(String str) {
        r81 r81Var = new r81();
        if (!r81Var.m664Q(str)) {
            return EnumC1640a.NEW;
        }
        EnumC1640a enumC1640a = r81Var.f8026j;
        return enumC1640a == EnumC1640a.BLOCKED ? enumC1640a : ((long) r81Var.m666O(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS)) >= 500 ? EnumC1640a.VIOLATING : EnumC1640a.NORMAL;
    }

    /* renamed from: S */
    public static EnumC1640a m662S(String str, String str2, String str3) {
        EnumC1640a m665P = m665P(str);
        EnumC1640a enumC1640a = EnumC1640a.BLOCKED;
        if (m665P == enumC1640a) {
            return m665P;
        }
        r81 r81Var = new r81();
        r81Var.f8023f = str;
        r81Var.f8024g = str2;
        r81Var.f8025h = str3;
        EnumC1640a enumC1640a2 = EnumC1640a.VIOLATING;
        if (m665P == enumC1640a2) {
            r81Var.f8026j = enumC1640a;
        }
        r81Var.mo148z();
        if (m665P == enumC1640a2) {
            return enumC1640a;
        }
        r81Var.m673H();
        return m665P;
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8022d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8016o, this.f8023f);
        contentValues.put(f8017p, this.f8024g);
        contentValues.put(f8018q, this.f8025h);
        contentValues.put(f8019r, Long.valueOf(System.currentTimeMillis()));
        contentValues.put(f8020s, Integer.valueOf(this.f8026j.ordinal()));
        return contentValues;
    }

    /* renamed from: E */
    public long m676E() {
        return this.f8027k;
    }

    /* renamed from: G */
    public void m674G() {
        r81 r81Var = new r81();
        r81Var.f8023f = this.f8023f;
        r81Var.f8026j = EnumC1640a.BLOCKED;
        r81Var.f8024g = "USER";
        r81Var.mo148z();
    }

    /* renamed from: H */
    public final void m673H() {
        String str = this.f8023f;
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("You must set package id first");
        }
        m379g(f8016o + "=? AND " + f8019r + " <= ?", new String[]{this.f8023f, String.valueOf(System.currentTimeMillis() - 180000)});
    }

    /* renamed from: J */
    public r81 m671J(Cursor cursor) {
        int i;
        EnumC1640a enumC1640a;
        try {
            this.f8022d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f8022d <= 0;
        try {
            this.f8023f = cursor.getString(cursor.getColumnIndex(f8016o));
        } catch (Throwable th2) {
        }
        try {
            this.f8024g = cursor.getString(cursor.getColumnIndex(f8017p));
        } catch (Throwable th3) {
        }
        try {
            this.f8025h = cursor.getString(cursor.getColumnIndex(f8018q));
        } catch (Throwable th4) {
        }
        try {
            this.f8027k = cursor.getLong(cursor.getColumnIndex(f8019r));
        } catch (Throwable th5) {
        }
        try {
            i = cursor.getInt(cursor.getColumnIndex(f8020s));
        } catch (Throwable th6) {
        }
        if (i >= 0 && i < EnumC1640a.values().length) {
            enumC1640a = EnumC1640a.values()[i];
            this.f8026j = enumC1640a;
            return this;
        }
        enumC1640a = EnumC1640a.BLOCKED;
        this.f8026j = enumC1640a;
        return this;
    }

    /* renamed from: M */
    public String m668M(Context context) {
        if (context == null) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.f8023f, 0)).toString();
        } catch (Throwable th) {
            return context.getString(i61.not_applicable);
        }
    }

    /* renamed from: N */
    public int m667N(String str) {
        Cursor m366w = m366w(f8016o + " = ? AND " + f8017p + " = ? ", new String[]{str, EnumC1641b.URI_REQUEST_TOKEN.toString()});
        if (m366w == null) {
            return 0;
        }
        int count = m366w.getCount();
        m366w.close();
        return count;
    }

    /* renamed from: O */
    public final int m666O(long j) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        String str = this.f8023f;
        if (str == null || str.trim().isEmpty()) {
            throw new IllegalArgumentException("You must set package id first");
        }
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(*) AS ");
        String str2 = f8021t;
        sb.append(str2);
        sb.append(" FROM ");
        sb.append(mo59p());
        sb.append(" WHERE ");
        sb.append(f8016o);
        sb.append(" = ? AND ");
        sb.append(f8019r);
        sb.append(" >= ?");
        Cursor rawQuery = readableDatabase.rawQuery(sb.toString(), new String[]{this.f8023f, String.valueOf(System.currentTimeMillis() - j)});
        rawQuery.moveToFirst();
        int i = rawQuery.getInt(rawQuery.getColumnIndex(str2));
        rawQuery.close();
        return i;
    }

    /* renamed from: Q */
    public boolean m664Q(String str) {
        boolean z = false;
        Cursor m366w = m366w(f8016o + " = ? ORDER BY " + f8019r + " DESC LIMIT 1", new String[]{str});
        if (m366w == null) {
            return false;
        }
        if (m366w.moveToFirst()) {
            m671J(m366w);
            z = !this.f8331a;
        }
        m366w.close();
        return z;
    }

    /* renamed from: R */
    public EnumC1640a m663R() {
        return this.f8026j;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8022d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ r81 mo61k(Cursor cursor) {
        m671J(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE " + mo59p() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + f8016o + " TEXT NOT NULL, " + f8017p + " TEXT NOT NULL , " + f8018q + " TEXT NULL, " + f8019r + " INTEGER NOT NULL, " + f8020s + " INTEGER NOT NULL );"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return f8015n;
    }
}
