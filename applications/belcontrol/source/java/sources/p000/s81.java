package p000;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import p000.a81;
/* renamed from: s81 */
/* loaded from: classes3-dex2jar.jar:s81.class */
public class s81 extends v71<s81> {

    /* renamed from: n */
    public static final String f8078n = v71.m384C("name");

    /* renamed from: o */
    public static final String f8079o = v71.m384C("is_blocked");

    /* renamed from: p */
    public static final String f8080p = v71.m384C("has_photo");

    /* renamed from: q */
    public static final String f8081q = v71.m384C("contact_id");

    /* renamed from: r */
    public static final String f8082r = v71.m384C("number_id");

    /* renamed from: s */
    public static final String f8083s = v71.m384C("phone");

    /* renamed from: t */
    public static final String f8084t = v71.m384C("type");

    /* renamed from: u */
    public static final String f8085u = v71.m384C("contact_photo_uri");

    /* renamed from: d */
    public long f8086d;

    /* renamed from: f */
    public String f8087f;

    /* renamed from: g */
    public Long f8088g;

    /* renamed from: h */
    public Long f8089h;

    /* renamed from: j */
    public String f8090j;

    /* renamed from: k */
    public boolean f8091k;

    /* renamed from: l */
    public boolean f8092l;

    /* renamed from: m */
    public Integer f8093m;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8086d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8078n, this.f8087f);
        contentValues.put(f8081q, this.f8088g);
        contentValues.put(f8082r, this.f8089h);
        contentValues.put(f8083s, this.f8090j);
        contentValues.put(f8080p, Boolean.valueOf(this.f8092l));
        contentValues.put(f8079o, Boolean.valueOf(this.f8091k));
        contentValues.put(f8084t, this.f8093m);
        return contentValues;
    }

    /* renamed from: E */
    public void m617E() {
        this.f8090j = null;
        this.f8089h = null;
        this.f8093m = null;
    }

    /* renamed from: F */
    public s81 m616F(q81 q81Var) {
        m615G(q81Var);
        a81 m876V = q81Var.m876V();
        if (m876V != null) {
            a81.C0018a[] c0018aArr = m876V.f186h;
            if (c0018aArr.length == 1) {
                m610L(c0018aArr[0]);
            }
        }
        return this;
    }

    /* renamed from: G */
    public s81 m615G(q81 q81Var) {
        this.f8087f = q81Var.f7779f;
        this.f8091k = q81Var.m865g0();
        this.f8092l = q81Var.m870b0() != null;
        this.f8088g = Long.valueOf(q81Var.f7778d);
        return this;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0120 -> B:52:0x00dd). Please submit an issue!!! */
    /* renamed from: H */
    public s81 m614H(Cursor cursor) {
        try {
            this.f8086d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f8086d <= 0;
        try {
            this.f8087f = cursor.getString(cursor.getColumnIndex(f8078n));
        } catch (Throwable th2) {
        }
        try {
            this.f8091k = cursor.getInt(cursor.getColumnIndex(f8079o)) == 1;
        } catch (Throwable th3) {
        }
        boolean z = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex(f8080p)) == 1) {
                z = true;
            }
            this.f8092l = z;
        } catch (Throwable th4) {
        }
        try {
            this.f8088g = Long.valueOf(cursor.getLong(cursor.getColumnIndex(f8081q)));
        } catch (Throwable th5) {
        }
        try {
            this.f8089h = Long.valueOf(cursor.getLong(cursor.getColumnIndex(f8082r)));
        } catch (Throwable th6) {
        }
        try {
            this.f8090j = cursor.getString(cursor.getColumnIndex(f8083s));
        } catch (Throwable th7) {
        }
        try {
            this.f8093m = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8084t)));
        } catch (Throwable th8) {
        }
        try {
            String str = f8085u;
            if (cursor.getColumnIndex(str) != -1) {
                String string = cursor.getString(cursor.getColumnIndex(str));
                if (!TextUtils.isEmpty(string)) {
                    Uri.parse(string);
                }
            }
        } catch (Throwable th9) {
        }
        return this;
    }

    /* renamed from: I */
    public Cursor m613I(long j) {
        Cursor m366w = m366w(f8081q + " = ?", new String[]{String.valueOf(j)});
        m383D(m366w);
        return m366w;
    }

    /* renamed from: J */
    public Cursor m612J(long j, long j2) {
        Cursor m366w = m366w(f8081q + " = ? AND " + f8082r + " = ?", new String[]{String.valueOf(j), String.valueOf(j2)});
        m383D(m366w);
        return m366w;
    }

    /* renamed from: K */
    public String m611K() {
        return this.f8090j;
    }

    /* renamed from: L */
    public void m610L(a81.C0018a c0018a) {
        this.f8090j = c0018a.m7321a().toString();
        this.f8089h = Long.valueOf(c0018a.f189a);
        this.f8093m = Integer.valueOf(c0018a.f191c);
    }

    /* renamed from: M */
    public void m609M(boolean z) {
        ContentResolver contentResolver = fa1.m1840j().getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("starred", Integer.valueOf(z ? 1 : 0));
        contentResolver.update(ContactsContract.Contacts.CONTENT_URI, contentValues, "_id = ?", new String[]{String.valueOf(this.f8088g)});
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8086d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ s81 mo61k(Cursor cursor) {
        m614H(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        sb.append(f8078n);
        sb.append(" TEXT NULL, ");
        sb.append(f8079o);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f8080p);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        String str = f8081q;
        sb.append(str);
        sb.append(" INTEGER NOT NULL, ");
        String str2 = f8082r;
        sb.append(str2);
        sb.append(" INTEGER NULL, ");
        sb.append(f8083s);
        sb.append(" TEXT NULL, ");
        sb.append(f8084t);
        sb.append(" INTEGER NULL );");
        String sb2 = sb.toString();
        return new String[]{sb2, "CREATE UNIQUE INDEX " + v71.m384C("fav_unique") + " ON " + mo59p() + " (" + str + "," + str2 + ");"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("favorites");
    }

    @Override // p000.v71
    /* renamed from: q */
    public void mo372q(SQLiteDatabase sQLiteDatabase) {
        super.mo372q(sQLiteDatabase);
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + mo59p() + " WHERE " + f8081q + "=" + this.f8088g, null);
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            m609M(false);
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
    }

    @Override // p000.v71
    /* renamed from: r */
    public void mo371r(SQLiteDatabase sQLiteDatabase) {
        super.mo371r(sQLiteDatabase);
        m609M(true);
    }

    @Override // p000.v71
    /* renamed from: s */
    public void mo370s(SQLiteDatabase sQLiteDatabase) {
        super.mo370s(sQLiteDatabase);
        q81 q81Var = new q81();
        q81Var.m373n(String.valueOf(this.f8088g));
        if (!q81Var.m863i0()) {
            m609M(true);
        }
    }
}
