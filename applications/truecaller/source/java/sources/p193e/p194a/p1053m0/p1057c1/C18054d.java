package p193e.p194a.p1053m0.p1057c1;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1482g.p1483a.AbstractC22661p;
import p193e.p1482g.p1483a.C22659o;
import p193e.p1482g.p1483a.p1484r.C22666d;
import p193e.p194a.p1053m0.C17891a1;
/* renamed from: e.a.m0.c1.d */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/d.class */
public class C18054d implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public /* synthetic */ String[] mo15498a() {
        return C18061g0.m15510a(this);
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 12) {
            sQLiteDatabase.execSQL("UPDATE raw_contact SET contact_spam_score=(SELECT MAX(data3) FROM data WHERE data_raw_contact_id=raw_contact._id AND  data_type=4)");
            sQLiteDatabase.execSQL("UPDATE aggregated_contact SET contact_spam_score=(SELECT MAX(contact_spam_score) FROM raw_contact WHERE aggregated_contact_id=aggregated_contact._id)");
        }
        if (i < 15) {
            long currentTimeMillis = System.currentTimeMillis();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT data_raw_contact_id AS raw_id, r.aggregated_contact_id,  data1 FROM data LEFT JOIN raw_contact r ON data_raw_contact_id = r._id WHERE data_type = 2 ORDER BY raw_id", null);
            int count = rawQuery == null ? 0 : rawQuery.getCount();
            if (count <= 0) {
                return;
            }
            C22659o c22659o = new C22659o(count);
            C22659o c22659o2 = new C22659o(count);
            while (rawQuery.moveToNext()) {
                long j = rawQuery.getLong(0);
                char c = rawQuery.isNull(1) ? (char) 65535 : rawQuery.getLong(1);
                int m15570u = C17891a1.C17902k.m15570u(rawQuery.getString(2));
                c22659o.m7986e(j, c22659o.m7988b(j, 0) | m15570u);
                if (c != -1) {
                    c22659o2.m7986e(c, m15570u | c22659o2.m7988b(c, 0));
                }
            }
            rawQuery.close();
            if (!c22659o.isEmpty()) {
                sQLiteDatabase.execSQL(m15511d("raw_contact", c22659o));
            }
            if (!c22659o2.isEmpty()) {
                sQLiteDatabase.execSQL(m15511d("aggregated_contact", c22659o2));
            }
            sQLiteDatabase.execSQL("DELETE FROM data WHERE data_type = 2");
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            String.format("Migrating badges took %d millis (%.2f seconds)", Long.valueOf(currentTimeMillis2), Float.valueOf(((float) currentTimeMillis2) / 1000.0f));
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }

    /* renamed from: d */
    public final String m15511d(String str, AbstractC22661p abstractC22661p) {
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(str);
        sb.append(" SET ");
        sb.append("contact_badges");
        sb.append(" = CASE _id");
        StringBuilder sb2 = new StringBuilder();
        C22659o.C22660a c22660a = new C22659o.C22660a();
        while (c22660a.hasNext()) {
            C22666d next = c22660a.next();
            long j = next.f62730b;
            int i = next.f62731c;
            C22128a.m8675Q0(sb, " WHEN ", j, " THEN ");
            sb.append(i);
            sb2.append(j);
            sb2.append(",");
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        sb.append(" END WHERE _id IN (");
        sb.append((CharSequence) sb2);
        sb.append(")");
        return sb.toString();
    }
}
