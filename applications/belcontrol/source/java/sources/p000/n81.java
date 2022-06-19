package p000;

import android.content.ContentValues;
import android.database.Cursor;
import p000.fa1;
/* renamed from: n81 */
/* loaded from: classes3-dex2jar.jar:n81.class */
public class n81 extends v71<n81> {

    /* renamed from: j */
    public static final String f7049j = v71.m384C("international_address");

    /* renamed from: k */
    public static final String f7050k = v71.m384C("name");

    /* renamed from: l */
    public static final String f7051l = v71.m384C("modify_at");

    /* renamed from: d */
    public long f7052d;

    /* renamed from: f */
    public i91 f7053f;

    /* renamed from: g */
    public String f7054g;

    /* renamed from: h */
    public long f7055h = 0;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f7052d = j;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f7049j, this.f7053f.toString());
        contentValues.put(f7050k, this.f7054g);
        String str = f7051l;
        char c = this.f7055h;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: E */
    public boolean m1220E(String str) {
        return m379g(f7049j + " = ? ", new String[]{str});
    }

    /* renamed from: F */
    public void m1219F() {
        m377i("DELETE FROM " + mo59p() + " WHERE " + f7051l + " < " + (System.currentTimeMillis() - 1296000000));
    }

    /* renamed from: G */
    public n81 m1218G(i91 i91Var) {
        if (i91Var == null) {
            return this;
        }
        Cursor m366w = m366w(f7049j + " = ?", new String[]{i91Var.toString()});
        if (m366w != null && m366w.moveToFirst() && m366w.getCount() > 0) {
            m1217H(m366w);
        }
        if (m366w != null) {
            m366w.close();
        }
        return this;
    }

    /* renamed from: H */
    public n81 m1217H(Cursor cursor) {
        try {
            this.f7052d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f7052d <= 0;
        try {
            this.f7053f = fa1.C1420e.m1800o(cursor.getString(cursor.getColumnIndex(f7049j)));
        } catch (Throwable th2) {
        }
        try {
            this.f7054g = cursor.getString(cursor.getColumnIndex(f7050k));
        } catch (Throwable th3) {
        }
        try {
            this.f7055h = cursor.getLong(cursor.getColumnIndex(f7051l));
        } catch (Throwable th4) {
        }
        return this;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f7052d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ n81 mo61k(Cursor cursor) {
        m1217H(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE IF NOT EXISTS ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        String str = f7049j;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f7050k);
        sb.append(" TEXT NULL, ");
        sb.append(f7051l);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        String sb2 = sb.toString();
        return new String[]{sb2, "CREATE INDEX " + v71.m384C("carrier_address_idx") + " ON " + mo59p() + " (" + str + ");"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("carrier_name");
    }
}
