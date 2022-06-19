package p000;

import android.content.ContentValues;
import android.database.Cursor;
/* renamed from: m81 */
/* loaded from: classes3-dex2jar.jar:m81.class */
public class m81 extends v71<m81> {

    /* renamed from: m */
    public static final String f6960m = v71.m384C("name");

    /* renamed from: n */
    public static final String f6961n = v71.m384C("location");

    /* renamed from: o */
    public static final String f6962o = v71.m384C("spam_level");

    /* renamed from: p */
    public static final String f6963p = v71.m384C("spam_likely");

    /* renamed from: q */
    public static final String f6964q = v71.m384C("caller_type_id");

    /* renamed from: r */
    public static final String f6965r = v71.m384C("modify_at");

    /* renamed from: d */
    public long f6966d;

    /* renamed from: f */
    public String f6967f;

    /* renamed from: g */
    public String f6968g;

    /* renamed from: h */
    public int f6969h;

    /* renamed from: j */
    public int f6970j;

    /* renamed from: k */
    public int f6971k;

    /* renamed from: l */
    public long f6972l = 0;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(this.f6966d ^ (-72057594037927937L)));
        contentValues.put(f6960m, this.f6967f);
        contentValues.put(f6962o, Integer.valueOf(this.f6969h));
        contentValues.put(f6963p, Integer.valueOf(this.f6970j));
        contentValues.put(f6961n, this.f6968g);
        contentValues.put(f6964q, Integer.valueOf(this.f6971k));
        String str = f6965r;
        char c = this.f6972l;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: E */
    public boolean m1288E(i91 i91Var) {
        m1285H(i91Var);
        boolean z = false;
        if (this.f6966d != 0) {
            z = m379g("_id = ? ", new String[]{"" + (this.f6966d ^ (-72057594037927937L))});
        }
        return z;
    }

    /* renamed from: F */
    public void m1287F() {
        m377i("DELETE FROM " + mo59p() + " WHERE " + f6965r + " < " + (System.currentTimeMillis() - 2592000000L));
    }

    /* renamed from: G */
    public m81 m1286G(Cursor cursor) {
        if (cursor.getColumnIndex("_id") != -1) {
            try {
                this.f6966d = cursor.getLong(cursor.getColumnIndex("_id")) ^ (-72057594037927937L);
            } catch (Throwable th) {
            }
        }
        this.f8331a = this.f6966d <= 0;
        try {
            this.f6967f = cursor.getString(cursor.getColumnIndex(f6960m));
        } catch (Throwable th2) {
        }
        try {
            this.f6968g = cursor.getString(cursor.getColumnIndex(f6961n));
        } catch (Throwable th3) {
        }
        try {
            this.f6969h = cursor.getInt(cursor.getColumnIndex(f6962o));
        } catch (Throwable th4) {
        }
        try {
            this.f6970j = cursor.getInt(cursor.getColumnIndex(f6963p));
        } catch (Throwable th5) {
        }
        try {
            this.f6971k = cursor.getInt(cursor.getColumnIndex(f6964q));
        } catch (Throwable th6) {
        }
        try {
            this.f6972l = cursor.getLong(cursor.getColumnIndex(f6965r));
        } catch (Throwable th7) {
        }
        return this;
    }

    /* renamed from: H */
    public m81 m1285H(i91 i91Var) {
        m1284I(i91Var.toString(), true);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010c  */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000.m81 m1284I(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.m81.m1284I(java.lang.String, boolean):m81");
    }

    /* renamed from: J */
    public Long m1283J() {
        long j = this.f6966d;
        return 0 == j ? null : Long.valueOf(j);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: K */
    public void m1282K(i91 i91Var) {
        Long m1636c = ha1.m1636c(ha1.m1637b(i91Var.toString()));
        this.f6966d = m1636c != null ? m1636c.longValue() : (char) 0;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return null;
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ m81 mo61k(Cursor cursor) {
        m1286G(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE IF NOT EXISTS " + mo59p() + " (_id INTEGER NOT NULL PRIMARY KEY, " + f6960m + " TEXT NULL, " + f6961n + " TEXT NULL, " + f6962o + " INTEGER NULL, " + f6963p + " INTEGER NULL, " + f6964q + " INTEGER NULL, " + f6965r + " INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("caller_info");
    }
}
