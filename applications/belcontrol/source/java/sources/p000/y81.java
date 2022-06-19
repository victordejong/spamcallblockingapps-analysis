package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
/* renamed from: y81 */
/* loaded from: classes3-dex2jar.jar:y81.class */
public class y81 extends v71<y81> {

    /* renamed from: h */
    public static final String f8722h = v71.m384C("name");

    /* renamed from: j */
    public static final String f8723j = v71.m384C("created_at");

    /* renamed from: d */
    public long f8724d;

    /* renamed from: f */
    public String f8725f;

    /* renamed from: g */
    public long f8726g = 0;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8724d = j;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8722h, this.f8725f.trim().replaceAll(" +", " ").toUpperCase());
        String str = f8723j;
        char c = this.f8726g;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: E */
    public void m96E() {
        this.f8724d = 0L;
        this.f8331a = true;
    }

    /* renamed from: F */
    public y81 m95F(String str) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        String upperCase = str.trim().replaceAll(" +", " ").toUpperCase();
        Cursor m366w = m366w(f8722h + " = ?", new String[]{upperCase});
        if (m366w != null && m366w.moveToFirst() && m366w.getCount() > 0) {
            m94G(m366w);
        }
        if (m366w != null) {
            m366w.close();
        }
        return this;
    }

    /* renamed from: G */
    public y81 m94G(Cursor cursor) {
        try {
            this.f8724d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f8724d <= 0;
        try {
            this.f8725f = cursor.getString(cursor.getColumnIndex(f8722h));
        } catch (Throwable th2) {
        }
        try {
            this.f8726g = cursor.getLong(cursor.getColumnIndex(f8723j));
        } catch (Throwable th3) {
        }
        return this;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8724d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ y81 mo61k(Cursor cursor) {
        m94G(cursor);
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
        String str = f8722h;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f8723j);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        String sb2 = sb.toString();
        return new String[]{sb2, "CREATE INDEX " + v71.m384C("spam_carrier_names_idx") + " ON " + mo59p() + " (" + str + ");"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("spam_carrier_names");
    }
}
