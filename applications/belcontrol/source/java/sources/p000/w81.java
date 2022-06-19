package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.google.android.gms.common.internal.ImagesContract;
import p000.fa1;
/* renamed from: w81 */
/* loaded from: classes3-dex2jar.jar:w81.class */
public class w81 extends v71<w81> {

    /* renamed from: d */
    public long f8449d;

    /* renamed from: f */
    public i91 f8450f;

    /* renamed from: g */
    public String f8451g;

    /* renamed from: h */
    public EnumC1707b f8452h;

    /* renamed from: j */
    public String f8453j;

    /* renamed from: k */
    public String f8454k;

    /* renamed from: l */
    public String f8455l;

    /* renamed from: m */
    public int f8456m;

    /* renamed from: n */
    public Uri f8457n;

    /* renamed from: o */
    public Uri f8458o;

    /* renamed from: p */
    public long f8459p;

    /* renamed from: q */
    public EnumC1706a f8460q;

    /* renamed from: r */
    public static final String f8440r = v71.m384C("international_address");

    /* renamed from: s */
    public static final String f8441s = v71.m384C("kind");

    /* renamed from: t */
    public static final String f8442t = v71.m384C("spam_level");

    /* renamed from: u */
    public static final String f8443u = v71.m384C("call_type");

    /* renamed from: v */
    public static final String f8444v = v71.m384C("reporter");

    /* renamed from: w */
    public static final String f8445w = v71.m384C("reporter_type");

    /* renamed from: x */
    public static final String f8446x = v71.m384C("type");

    /* renamed from: y */
    public static final String f8447y = v71.m384C("caller");

    /* renamed from: z */
    public static final String f8448z = v71.m384C("avatar");

    /* renamed from: A */
    public static final String f8438A = v71.m384C(ImagesContract.URL);

    /* renamed from: B */
    public static final String f8439B = v71.m384C("created_at");

    /* renamed from: w81$a */
    /* loaded from: classes3-dex2jar.jar:w81$a.class */
    public enum EnumC1706a {
        COMMUNITY_ACTIVITY,
        RECENT_REPORTS,
        USER_ACTIVITY
    }

    /* renamed from: w81$b */
    /* loaded from: classes3-dex2jar.jar:w81$b.class */
    public enum EnumC1707b {
        EveryCaller,
        CallControl,
        PublicReporter
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8449d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8440r, this.f8450f.toString());
        contentValues.put(f8441s, Integer.valueOf(this.f8460q.ordinal()));
        contentValues.put(f8442t, Integer.valueOf(this.f8456m));
        contentValues.put(f8443u, this.f8455l);
        contentValues.put(f8444v, this.f8451g);
        contentValues.put(f8445w, Integer.valueOf(this.f8452h.ordinal()));
        contentValues.put(f8446x, this.f8453j);
        contentValues.put(f8447y, this.f8454k);
        Uri uri = this.f8457n;
        if (uri != null) {
            contentValues.put(f8448z, uri.toString());
        }
        Uri uri2 = this.f8458o;
        if (uri2 != null) {
            contentValues.put(f8438A, uri2.toString());
        }
        contentValues.put(f8439B, Long.valueOf(this.f8459p));
        return contentValues;
    }

    /* renamed from: E */
    public void m281E() {
        this.f8449d = 0L;
        this.f8331a = true;
    }

    /* renamed from: F */
    public w81 m280F(Cursor cursor) {
        try {
            this.f8449d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f8449d <= 0;
        try {
            this.f8450f = fa1.C1420e.m1800o(cursor.getString(cursor.getColumnIndex(f8440r)));
        } catch (Throwable th2) {
        }
        try {
            this.f8460q = EnumC1706a.values()[cursor.getInt(cursor.getColumnIndex(f8441s))];
        } catch (Throwable th3) {
        }
        try {
            this.f8456m = cursor.getInt(cursor.getColumnIndex(f8442t));
        } catch (Throwable th4) {
        }
        try {
            this.f8455l = cursor.getString(cursor.getColumnIndex(f8443u));
        } catch (Throwable th5) {
        }
        try {
            this.f8451g = cursor.getString(cursor.getColumnIndex(f8444v));
        } catch (Throwable th6) {
        }
        try {
            this.f8452h = EnumC1707b.values()[cursor.getInt(cursor.getColumnIndex(f8445w))];
        } catch (Throwable th7) {
        }
        try {
            this.f8453j = cursor.getString(cursor.getColumnIndex(f8446x));
        } catch (Throwable th8) {
        }
        try {
            this.f8454k = cursor.getString(cursor.getColumnIndex(f8447y));
        } catch (Throwable th9) {
        }
        try {
            this.f8457n = Uri.parse(cursor.getString(cursor.getColumnIndex(f8448z)));
        } catch (Throwable th10) {
        }
        try {
            this.f8458o = Uri.parse(cursor.getString(cursor.getColumnIndex(f8438A)));
        } catch (Throwable th11) {
        }
        try {
            this.f8459p = cursor.getLong(cursor.getColumnIndex(f8439B));
        } catch (Throwable th12) {
        }
        return this;
    }

    /* renamed from: G */
    public Cursor m279G(EnumC1706a enumC1706a) {
        return m365x(f8441s + "=" + enumC1706a.ordinal(), null, null, null, f8439B + " DESC", null);
    }

    /* renamed from: H */
    public void m278H(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f8441s;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " INTEGER NULL");
        }
        String mo59p2 = mo59p();
        String str2 = f8442t;
        if (!t71.m548m(sQLiteDatabase, mo59p2, str2)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str2 + " INTEGER NULL");
        }
        String mo59p3 = mo59p();
        String str3 = f8443u;
        if (!t71.m548m(sQLiteDatabase, mo59p3, str3)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str3 + " TEXT NULL");
        }
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8449d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ w81 mo61k(Cursor cursor) {
        m280F(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE IF NOT EXISTS " + mo59p() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + f8440r + " TEXT NOT NULL, " + f8441s + " INTEGER NULL, " + f8442t + " INTEGER NULL, " + f8443u + " TEXT NULL, " + f8444v + " INTEGER NULL, " + f8445w + " INTEGER NOT NULL DEFAULT(" + EnumC1707b.CallControl.ordinal() + "), " + f8446x + " TEXT NULL, " + f8447y + " TEXT NULL, " + f8448z + " TEXT NULL, " + f8438A + " TEXT NULL, " + f8439B + " INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000));"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("recent_activity");
    }
}
