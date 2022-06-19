package p000;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import p000.fa1;
import p000.u81;
/* renamed from: j81 */
/* loaded from: classes3-dex2jar.jar:j81.class */
public class j81 extends v71<j81> {

    /* renamed from: k */
    public static final String f6808k = "j81";

    /* renamed from: l */
    public static final String f6809l = v71.m384C("attorney");

    /* renamed from: m */
    public static final String f6810m = v71.m384C("id");

    /* renamed from: n */
    public static final String f6811n = v71.m384C("name");

    /* renamed from: o */
    public static final String f6812o = v71.m384C("address");

    /* renamed from: p */
    public static final String f6813p = v71.m384C("restrictions");

    /* renamed from: q */
    public static final String f6814q = v71.m384C("available_to");

    /* renamed from: d */
    public long f6815d;

    /* renamed from: f */
    public String f6816f;

    /* renamed from: g */
    public i91 f6817g;

    /* renamed from: h */
    public C1451a f6818h = new C1451a();

    /* renamed from: j */
    public long f6819j = 0;

    /* renamed from: j81$a */
    /* loaded from: classes3-dex2jar.jar:j81$a.class */
    public static class C1451a {

        /* renamed from: a */
        public int f6820a;

        public C1451a() {
            this.f6820a = 0;
        }

        public C1451a(int i) {
            this.f6820a = i;
        }

        /* renamed from: b */
        public boolean m1525b() {
            boolean z = true;
            if ((this.f6820a & 1) != 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: c */
        public void m1524c(boolean z) {
            this.f6820a = z ? this.f6820a | 1 : this.f6820a & (-2);
        }
    }

    /* renamed from: E */
    public static void m1530E(String str, String str2, Long l, boolean z) {
        i91 m1800o = fa1.C1420e.m1800o(str);
        j81 m1527H = new j81().m1527H(m1800o);
        m1527H.f6816f = str2;
        m1527H.f6817g = m1800o;
        m1527H.f6818h.m1524c(z);
        m1527H.f6819j = l.longValue();
        if (!m1527H.mo148z()) {
            j91.m1505k(f6808k, "Unable to save attorney entry");
            return;
        }
        o71.m1150j(m1800o);
        u81 u81Var = new u81();
        u81Var.m413F(m1800o, null);
        u81Var.m412G(m1800o, str2, u81.EnumC1675a.OVERRIDE_AUTO);
        if (u81Var.mo148z()) {
            return;
        }
        j91.m1505k(f6808k, "Unable to save nameOverride entry");
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f6815d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f6811n, this.f6816f);
        contentValues.put(f6812o, this.f6817g.toString());
        contentValues.put(f6813p, Integer.valueOf(this.f6818h.f6820a));
        contentValues.put(f6814q, Long.valueOf(this.f6819j));
        return contentValues;
    }

    /* renamed from: F */
    public void m1529F() {
        m377i("DELETE FROM " + mo59p() + " WHERE " + f6814q + " < " + System.currentTimeMillis());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x008a -> B:30:0x0055). Please submit an issue!!! */
    /* renamed from: G */
    public j81 m1528G(Cursor cursor) {
        try {
            this.f6815d = cursor.getLong(cursor.getColumnIndex(f6810m));
        } catch (Throwable th) {
        }
        this.f8331a = this.f6815d <= 0;
        try {
            this.f6816f = cursor.getString(cursor.getColumnIndex(f6811n));
        } catch (Throwable th2) {
        }
        try {
            this.f6817g = fa1.C1420e.m1800o(cursor.getString(cursor.getColumnIndex(f6812o)));
        } catch (Throwable th3) {
        }
        try {
            this.f6818h = new C1451a(cursor.getInt(cursor.getColumnIndex(f6813p)));
        } catch (Throwable th4) {
        }
        try {
            this.f6819j = cursor.getLong(cursor.getColumnIndex(f6814q));
        } catch (Throwable th5) {
        }
        return this;
    }

    /* renamed from: H */
    public j81 m1527H(i91 i91Var) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(i91Var.toString().replaceAll("\\+", ""));
        arrayList.add(i91Var.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("( ? LIKE ");
        String str = f6812o;
        sb.append(str);
        sb.append(" OR ? LIKE ");
        sb.append(str);
        sb.append(" )");
        String sb2 = sb.toString();
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        Cursor m366w = m366w(sb2, strArr);
        j81 j81Var = new j81();
        if (m366w != null && m366w.getCount() > 0 && m366w.moveToFirst()) {
            j81Var.m1528G(m366w);
        }
        if (m366w != null) {
            m366w.close();
        }
        return j81Var;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f6815d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return f6810m;
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ j81 mo61k(Cursor cursor) {
        m1528G(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append(f6810m);
        sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        sb.append(f6811n);
        sb.append(" TEXT NOT NULL,");
        String str = f6812o;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f6813p);
        sb.append(" INTEGER NOT NULL,");
        sb.append(f6814q);
        sb.append(" TEXT NOT NULL );");
        String sb2 = sb.toString();
        return new String[]{sb2, "CREATE INDEX " + v71.m384C("attorney_address_idx") + " ON " + mo59p() + " (" + str + ");"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return f6809l;
    }
}
