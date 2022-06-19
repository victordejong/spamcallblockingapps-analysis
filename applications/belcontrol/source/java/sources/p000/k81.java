package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
/* renamed from: k81 */
/* loaded from: classes3-dex2jar.jar:k81.class */
public class k81 extends v71<k81> {

    /* renamed from: h */
    public static final String f6846h = v71.m384C("name");

    /* renamed from: j */
    public static final String f6847j = v71.m384C("created_at");

    /* renamed from: d */
    public long f6848d;

    /* renamed from: f */
    public String f6849f;

    /* renamed from: g */
    public long f6850g = 0;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f6848d = j;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f6846h, this.f6849f.trim().replaceAll(" +", " ").toUpperCase());
        String str = f6847j;
        char c = this.f6850g;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: E */
    public k81 m1427E(String str) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        String upperCase = str.trim().replaceAll(" +", " ").toUpperCase();
        Cursor m366w = m366w(f6846h + " = ?", new String[]{upperCase});
        if (m366w != null && m366w.moveToFirst() && m366w.getCount() > 0) {
            m1426F(m366w);
        }
        if (m366w != null) {
            m366w.close();
        }
        return this;
    }

    /* renamed from: F */
    public k81 m1426F(Cursor cursor) {
        try {
            this.f6848d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f6848d <= 0;
        try {
            this.f6849f = cursor.getString(cursor.getColumnIndex(f6846h));
        } catch (Throwable th2) {
        }
        try {
            this.f6850g = cursor.getLong(cursor.getColumnIndex(f6847j));
        } catch (Throwable th3) {
        }
        return this;
    }

    /* renamed from: G */
    public Cursor m1425G() {
        return m365x(null, null, null, null, f6847j + " DESC", null);
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f6848d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ k81 mo61k(Cursor cursor) {
        m1426F(cursor);
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
        String str = f6846h;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f6847j);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        String sb2 = sb.toString();
        return new String[]{sb2, "CREATE INDEX " + v71.m384C("blocked_carrier_names_idx") + " ON " + mo59p() + " (" + str + ");"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("blocked_carrier_names");
    }
}
