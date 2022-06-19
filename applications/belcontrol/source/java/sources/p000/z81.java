package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import p000.n91;
import p000.w91;
/* renamed from: z81 */
/* loaded from: classes3-dex2jar.jar:z81.class */
public class z81 extends v71<z81> {

    /* renamed from: k */
    public static final String f8757k = v71.m384C("event");

    /* renamed from: l */
    public static final String f8758l = v71.m384C("reason");

    /* renamed from: m */
    public static final String f8759m = v71.m384C("quantity");

    /* renamed from: n */
    public static final String f8760n = v71.m384C("modified");

    /* renamed from: d */
    public long f8761d;

    /* renamed from: f */
    public w91.EnumC1708a f8762f;

    /* renamed from: g */
    public n91.EnumC1484a f8763g;

    /* renamed from: h */
    public int f8764h;

    /* renamed from: j */
    public long f8765j;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8761d = j;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8757k, Integer.valueOf(this.f8762f.ordinal()));
        contentValues.put(f8758l, Integer.valueOf(this.f8763g.ordinal()));
        contentValues.put(f8759m, Integer.valueOf(this.f8764h));
        String str = f8760n;
        char c = this.f8765j;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: E */
    public Cursor m66E() {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        j91.m1521C("SQL");
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT _id, total(");
        String str = f8759m;
        sb.append(str);
        sb.append(") as ");
        sb.append(str);
        sb.append(", ");
        String str2 = f8757k;
        sb.append(str2);
        sb.append(", ");
        String str3 = f8758l;
        sb.append(str3);
        sb.append(",");
        sb.append(f8760n);
        sb.append(" FROM ");
        sb.append(mo59p());
        sb.append(" WHERE ");
        sb.append(str2);
        sb.append("=");
        sb.append(w91.EnumC1708a.BLOCKED_CALL.ordinal());
        sb.append(" OR ");
        sb.append(str2);
        sb.append("=");
        sb.append(w91.EnumC1708a.NUMBER_DIALED.ordinal());
        sb.append(" OR ");
        sb.append(str2);
        sb.append("=");
        sb.append(w91.EnumC1708a.INCOMING_MMS.ordinal());
        sb.append(" OR ");
        sb.append(str2);
        sb.append("=");
        sb.append(w91.EnumC1708a.INCOMING_SMS.ordinal());
        sb.append(" GROUP BY ");
        sb.append(str2);
        sb.append(",");
        sb.append(str3);
        Cursor rawQuery = readableDatabase.rawQuery(sb.toString(), null);
        m383D(rawQuery);
        j91.m1518F("SQL", "Stats.getStatsSummary execution");
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery;
    }

    /* renamed from: F */
    public Cursor m65F(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        if (iArr.length > 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                StringBuilder sb = new StringBuilder();
                sb.append(" ");
                sb.append(f8757k);
                sb.append("=");
                int i3 = i2 + 1;
                sb.append(iArr[i2]);
                arrayList.add(sb.toString());
                if (i3 >= iArr.length) {
                    break;
                }
                i = i3;
            }
        }
        String join = arrayList.size() > 0 ? TextUtils.join(" OR ", arrayList.toArray()) : "0=1";
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        j91.m1521C("SQL");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SELECT _id, total(");
        String str = f8759m;
        sb2.append(str);
        sb2.append(") as ");
        sb2.append(str);
        sb2.append(", ");
        String str2 = f8757k;
        sb2.append(str2);
        sb2.append(", ");
        String str3 = f8758l;
        sb2.append(str3);
        sb2.append(",");
        sb2.append(f8760n);
        sb2.append(" FROM ");
        sb2.append(mo59p());
        sb2.append(" WHERE ");
        sb2.append(join);
        sb2.append(" GROUP BY ");
        sb2.append(str2);
        sb2.append(",");
        sb2.append(str3);
        Cursor rawQuery = readableDatabase.rawQuery(sb2.toString(), null);
        m383D(rawQuery);
        j91.m1518F("SQL", "Stats.getStatsSummary execution");
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery;
    }

    /* renamed from: G */
    public void m64G(w91.EnumC1708a enumC1708a, n91.EnumC1484a enumC1484a) {
        StringBuilder sb = new StringBuilder();
        String str = f8760n;
        sb.append(str);
        sb.append(">");
        sb.append(System.currentTimeMillis() - 360000);
        sb.append(" AND ");
        sb.append(f8757k);
        sb.append(" = ");
        sb.append(enumC1708a.ordinal());
        sb.append(" AND ");
        sb.append(f8758l);
        sb.append(" = ");
        sb.append(enumC1484a.ordinal());
        Cursor m366w = m366w(sb.toString(), null);
        z81 z81Var = new z81();
        z81Var.f8764h = 0;
        z81 z81Var2 = z81Var;
        if (m366w != null) {
            z81Var2 = z81Var;
            if (m366w.moveToFirst()) {
                z81Var.mo61k(m366w);
                z81 z81Var3 = z81Var;
                z81Var2 = z81Var3;
                if (m366w.getCount() > 1) {
                    j91.m1517G(this, "Expected only one record for " + enumC1708a.name() + " while " + m366w.getCount() + " found!");
                    z81Var2 = z81Var3;
                }
            }
        }
        z81Var2.f8764h++;
        z81Var2.f8762f = enumC1708a;
        z81Var2.f8763g = enumC1484a;
        z81Var2.mo148z();
        m377i("DELETE FROM " + mo59p() + " WHERE " + str + " < " + (System.currentTimeMillis() - 2592000000L));
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8761d);
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
        try {
            this.f8761d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f8761d <= 0;
        try {
            this.f8762f = w91.EnumC1708a.values()[cursor.getInt(cursor.getColumnIndex(f8757k))];
        } catch (Throwable th2) {
        }
        try {
            this.f8763g = n91.EnumC1484a.values()[cursor.getInt(cursor.getColumnIndex(f8758l))];
        } catch (Throwable th3) {
        }
        try {
            this.f8764h = cursor.getInt(cursor.getColumnIndex(f8759m));
        } catch (Throwable th4) {
        }
        try {
            this.f8765j = cursor.getLong(cursor.getColumnIndex(f8760n));
        } catch (Throwable th5) {
        }
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE " + mo59p() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + f8757k + " INTEGER NOT NULL, " + f8758l + " INTEGER NOT NULL, " + f8759m + " INTEGER NOT NULL DEFAULT(0), " + f8760n + " INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("stats");
    }
}
