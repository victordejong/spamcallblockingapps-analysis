package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.mopub.network.ImpressionData;
/* renamed from: o81 */
/* loaded from: classes3-dex2jar.jar:o81.class */
public class o81 extends v71<o81> {

    /* renamed from: j */
    public static final String f7163j = v71.m384C("id_2");

    /* renamed from: k */
    public static final String f7164k = v71.m384C(ImpressionData.COUNTRY);

    /* renamed from: l */
    public static final String f7165l = v71.m384C("call_type_id");

    /* renamed from: d */
    public int f7166d;

    /* renamed from: f */
    public String f7167f;

    /* renamed from: g */
    public long f7168g;

    /* renamed from: h */
    public long f7169h;

    /* renamed from: L */
    public static boolean m1138L(int i) {
        boolean z = false;
        if (r71.m700v().get(i) == null) {
            z = false;
            if (r71.m707o(false).get(i) == null) {
                z = true;
            }
        }
        return z;
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(this.f7168g ^ (-72057594037927937L)));
        contentValues.put(f7163j, Long.valueOf(this.f7169h ^ (-72057594037927937L)));
        contentValues.put(f7164k, this.f7167f);
        contentValues.put(f7165l, Integer.valueOf(this.f7166d));
        return contentValues;
    }

    /* renamed from: E */
    public void m1144E() {
        this.f7168g = 0L;
        this.f7169h = 0L;
        this.f7167f = null;
        this.f8331a = true;
    }

    /* renamed from: F */
    public boolean m1143F(long j) {
        m1142G(j);
        if (this.f7168g != 0) {
            return m379g("_id = ? ", new String[]{"" + (this.f7168g ^ (-72057594037927937L))});
        }
        return false;
    }

    /* renamed from: G */
    public o81 m1142G(long j) {
        Cursor m366w = m366w("_id = ?", new String[]{String.valueOf(j ^ (-72057594037927937L))});
        if (m366w != null && m366w.moveToFirst()) {
            mo61k(m366w);
        }
        if (m366w != null) {
            m366w.close();
        }
        return this;
    }

    /* renamed from: H */
    public o81 m1141H(String str) {
        m1140I(str, true);
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
    public p000.o81 m1140I(java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.o81.m1140I(java.lang.String, boolean):o81");
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* renamed from: J */
    public long mo938J() {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to get readable database");
            return 0L;
        }
        Cursor rawQuery = readableDatabase.rawQuery("SELECT COUNT(*) FROM " + mo59p(), null);
        char c = (char) 0;
        if (rawQuery != null) {
            c = 0;
            if (rawQuery.moveToFirst()) {
                c = rawQuery.getLong(0);
            }
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
        return c;
    }

    /* renamed from: K */
    public Long m1139K() {
        long j = this.f7168g;
        return 0 == j ? null : Long.valueOf(j);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: M */
    public void m1137M(long j, i91 i91Var) {
        this.f7168g = j;
        Long m1636c = ha1.m1636c(ha1.m1637b(i91Var.m1602l()));
        this.f7169h = m1636c != null ? m1636c.longValue() : (char) 0;
        this.f7167f = i91Var.m1606h();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: N */
    public void m1136N(i91 i91Var) {
        Long m1636c = ha1.m1636c(ha1.m1637b(i91Var.toString()));
        char longValue = m1636c != null ? m1636c.longValue() : (char) 0;
        this.f7168g = longValue;
        m1137M(longValue, i91Var);
    }

    /* renamed from: O */
    public void m1135O(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE " + mo59p());
        String[] mo60o = mo60o();
        int length = mo60o.length;
        for (int i = 0; i < length; i++) {
            sQLiteDatabase.execSQL(mo60o[i]);
        }
    }

    /* renamed from: P */
    public void m1134P(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + f7165l + " INTEGER NOT NULL DEFAULT(-1)");
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p000.v71
    /* renamed from: k */
    public <T> T mo61k(Cursor cursor) {
        String str = f7163j;
        if (cursor.getColumnIndex(str) != -1) {
            try {
                this.f7169h = cursor.getLong(cursor.getColumnIndex(str)) ^ (-72057594037927937L);
            } catch (Throwable th) {
            }
        }
        if (cursor.getColumnIndex("_id") != -1) {
            try {
                this.f7168g = cursor.getLong(cursor.getColumnIndex("_id")) ^ (-72057594037927937L);
            } catch (Throwable th2) {
            }
        }
        String str2 = f7164k;
        if (cursor.getColumnIndex(str2) != -1) {
            try {
                this.f7167f = cursor.getString(cursor.getColumnIndex(str2));
            } catch (Throwable th3) {
            }
        }
        String str3 = f7165l;
        if (cursor.getColumnIndex(str3) != -1) {
            try {
                this.f7166d = cursor.getInt(cursor.getColumnIndex(str3));
            } catch (Throwable th4) {
            }
        }
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE " + mo59p() + " (_id INTEGER NOT NULL PRIMARY KEY, " + f7163j + " INTEGER NOT NULL, " + f7164k + " TEXT NULL, " + f7165l + " INTEGER NOT NULL);"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("community");
    }

    @Override // p000.v71
    /* renamed from: z */
    public boolean mo148z() {
        if (this.f7168g <= 0) {
            return false;
        }
        return super.mo148z();
    }
}
