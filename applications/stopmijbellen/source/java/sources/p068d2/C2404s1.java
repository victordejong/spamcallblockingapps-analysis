package p068d2;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p068d2.C2374o1;
/* renamed from: d2.s1 */
/* loaded from: classes-dex2jar.jar:d2/s1.class */
public class C2404s1 {

    /* renamed from: a */
    public final SQLiteDatabase f8524a;

    /* renamed from: b */
    public final C2374o1 f8525b;

    /* renamed from: d2.s1$a */
    /* loaded from: classes-dex2jar.jar:d2/s1$a.class */
    public static class C2405a {

        /* renamed from: a */
        public final String f8526a;

        /* renamed from: b */
        public final String f8527b;

        /* renamed from: c */
        public final String f8528c;

        public C2405a(String[] strArr) {
            this.f8526a = strArr[1];
            this.f8527b = strArr[2];
            this.f8528c = strArr[4];
        }
    }

    public C2404s1(SQLiteDatabase sQLiteDatabase, C2374o1 c2374o1) {
        this.f8524a = sQLiteDatabase;
        this.f8525b = c2374o1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<java.lang.String> m3601a() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.f8524a
            java.lang.String r1 = "SELECT name FROM sqlite_master  WHERE type='table' ORDER BY name"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r5 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L35
            r0 = r5
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L35
        L20:
            r0 = r6
            r1 = r5
            r2 = 0
            java.lang.String r1 = r1.getString(r2)
            boolean r0 = r0.add(r1)
            r0 = r5
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L20
        L35:
            r0 = r5
            r0.close()
            r0 = r6
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
            r7 = r0
        L42:
            r0 = r7
            if (r0 < 0) goto L6d
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r5
            java.lang.String r1 = "android_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L61
            r0 = r5
            java.lang.String r1 = "sqlite_"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L67
        L61:
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.remove(r1)
        L67:
            int r7 = r7 + (-1)
            goto L42
        L6d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2404s1.m3601a():java.util.ArrayList");
    }

    /* renamed from: b */
    public final void m3600b(C2374o1.C2375a c2375a) {
        for (C2374o1.C2377c c2377c : c2375a.f8404g) {
            m3599c(c2377c, c2375a.f8399b);
        }
    }

    /* renamed from: c */
    public final void m3599c(C2374o1.C2377c c2377c, String str) {
        String join = TextUtils.join(", ", c2377c.f8411b);
        StringBuilder m8752j = C0082b.m8752j("CREATE INDEX ");
        C0082b.m8749m(m8752j, c2377c.f8410a, " ON ", str, "(");
        this.f8524a.execSQL(C0082b.m8754h(m8752j, join, ")"));
    }

    /* renamed from: d */
    public final void m3598d(String str) {
        SQLiteDatabase sQLiteDatabase = this.f8524a;
        sQLiteDatabase.execSQL("DROP TABLE " + str);
    }

    /* renamed from: e */
    public final void m3597e(C2374o1.C2375a c2375a) {
        String str;
        StringBuilder m8752j = C0082b.m8752j("CREATE TABLE ");
        m8752j.append(c2375a.f8399b);
        m8752j.append(" (");
        for (int i = 0; i < c2375a.f8403f.size(); i++) {
            C2374o1.C2376b c2376b = c2375a.f8403f.get(i);
            m8752j.append(c2376b.f8407a);
            m8752j.append(" ");
            m8752j.append(c2376b.f8408b);
            Object obj = c2376b.f8409c;
            if (obj != null) {
                if (obj instanceof Boolean) {
                    str = ((Boolean) obj).booleanValue() ? "1" : "0";
                } else if (obj instanceof String) {
                    StringBuilder m8752j2 = C0082b.m8752j("'");
                    m8752j2.append(c2376b.f8409c);
                    m8752j2.append("'");
                    str = m8752j2.toString();
                } else {
                    str = obj.toString();
                }
                m8752j.append(" DEFAULT ");
                m8752j.append(str);
            }
            if (i < c2375a.f8403f.size() - 1) {
                m8752j.append(", ");
            }
        }
        m8752j.append(")");
        this.f8524a.execSQL(m8752j.toString());
    }

    /* renamed from: f */
    public ArrayList<String[]> m3596f(String str) {
        Cursor rawQuery = this.f8524a.rawQuery(str, null);
        ArrayList<String[]> arrayList = new ArrayList<>();
        if (rawQuery == null || !rawQuery.moveToFirst()) {
            rawQuery.close();
            return arrayList;
        }
        do {
            int columnCount = rawQuery.getColumnCount();
            String[] strArr = new String[columnCount];
            for (int i = 0; i < columnCount; i++) {
                strArr[i] = rawQuery.getString(i);
            }
            arrayList.add(strArr);
        } while (rawQuery.moveToNext());
        rawQuery.close();
        return arrayList;
    }

    /* renamed from: g */
    public final void m3595g(C2374o1.C2375a c2375a) {
        boolean z;
        boolean z2;
        boolean z3;
        String str = c2375a.f8399b;
        ArrayList arrayList = new ArrayList();
        Iterator<String[]> it2 = m3596f("PRAGMA table_info(" + str + ")").iterator();
        while (it2.hasNext()) {
            String[] next = it2.next();
            C2405a c2405a = next.length >= 5 ? new C2405a(next) : null;
            if (c2405a != null) {
                arrayList.add(c2405a);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        boolean z4 = false;
        for (C2374o1.C2376b c2376b : c2375a.f8403f) {
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    z2 = false;
                    z3 = false;
                    break;
                }
                C2405a c2405a2 = (C2405a) arrayList.get(size);
                if (Objects.equals(c2405a2.f8526a, c2376b.f8407a)) {
                    arrayList2.add(c2376b.f8407a);
                    z2 = Objects.equals(c2405a2.f8526a, c2376b.f8407a) && Objects.equals(c2405a2.f8527b, c2376b.f8408b) && Objects.equals(c2405a2.f8528c, c2376b.f8409c);
                    arrayList.remove(size);
                    z3 = true;
                } else {
                    size--;
                }
            }
            if (!z3 || !z2) {
                z4 = true;
            }
        }
        if (arrayList.size() > 0) {
            z4 = true;
        }
        if (z4) {
            String str2 = c2375a.f8399b;
            this.f8524a.execSQL("ALTER TABLE " + str2 + " RENAME TO manager_tmp_table");
            m3597e(c2375a);
            String str3 = c2375a.f8399b;
            String join = TextUtils.join(", ", arrayList2);
            this.f8524a.execSQL("INSERT INTO " + str3 + " (" + join + ") SELECT " + join + " FROM manager_tmp_table");
            this.f8524a.execSQL("DROP TABLE manager_tmp_table");
            m3600b(c2375a);
            return;
        }
        List<C2374o1.C2377c> list = c2375a.f8404g;
        ArrayList<String[]> m3596f = m3596f("PRAGMA index_list(" + c2375a.f8399b + ")");
        ArrayList arrayList3 = new ArrayList();
        Iterator<String[]> it3 = m3596f.iterator();
        while (it3.hasNext()) {
            String[] next2 = it3.next();
            if (next2.length >= 3) {
                arrayList3.add(next2[1]);
            }
        }
        for (C2374o1.C2377c c2377c : list) {
            if (arrayList3.contains(c2377c.f8410a)) {
                String str4 = c2375a.f8399b;
                ArrayList<String[]> m3596f2 = m3596f("PRAGMA index_info(" + c2377c.f8410a + ")");
                if (c2377c.f8411b.length == m3596f2.size()) {
                    int i = 0;
                    boolean z5 = false;
                    while (true) {
                        String[] strArr = c2377c.f8411b;
                        z = z5;
                        if (i >= strArr.length) {
                            break;
                        }
                        if (!Objects.equals(strArr[i], m3596f2.get(i)[2])) {
                            z5 = true;
                        }
                        i++;
                    }
                } else {
                    z = true;
                }
                if (z) {
                    String str5 = c2377c.f8410a;
                    this.f8524a.execSQL("DROP INDEX " + str5);
                    m3599c(c2377c, str4);
                }
            } else {
                m3599c(c2377c, c2375a.f8399b);
            }
            arrayList3.remove(c2377c.f8410a);
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            String str6 = (String) it4.next();
            this.f8524a.execSQL("DROP INDEX " + str6);
        }
    }
}
