package p000;

import android.content.ContentValues;
import android.database.Cursor;
import com.kedlin.cca.core.util.billing.Purchase;
/* renamed from: v81 */
/* loaded from: classes3-dex2jar.jar:v81.class */
public class v81 extends v71<v81> {

    /* renamed from: m */
    public static final String f8333m = v71.m384C("transaction_id");

    /* renamed from: n */
    public static final String f8334n = v71.m384C("sku");

    /* renamed from: o */
    public static final String f8335o = v71.m384C("purchase_json");

    /* renamed from: p */
    public static final String f8336p = v71.m384C("signature");

    /* renamed from: q */
    public static final String f8337q = v71.m384C("created_at");

    /* renamed from: r */
    public static final String f8338r = v71.m384C("sent_at");

    /* renamed from: s */
    public static final String f8339s = v71.m384C("status");

    /* renamed from: d */
    public String f8340d;

    /* renamed from: f */
    public String f8341f;

    /* renamed from: g */
    public String f8342g;

    /* renamed from: h */
    public String f8343h;

    /* renamed from: j */
    public long f8344j;

    /* renamed from: k */
    public long f8345k;

    /* renamed from: l */
    public EnumC1690a f8346l = EnumC1690a.NEED_SEND;

    /* renamed from: v81$a */
    /* loaded from: classes3-dex2jar.jar:v81$a.class */
    public enum EnumC1690a {
        NEED_SEND,
        SENDING,
        SENT
    }

    /* renamed from: E */
    public static boolean m363E(Purchase purchase) {
        v81 v81Var = new v81();
        v81Var.m373n(purchase.m4351b());
        v81 v81Var2 = v81Var;
        if (v81Var2.f8340d != null) {
            return false;
        }
        v81Var2.f8341f = purchase.m4348e();
        v81Var2.f8340d = purchase.m4351b();
        v81Var2.f8342g = da1.m2710f(purchase.m4350c().getBytes());
        v81Var2.f8343h = purchase.m4349d();
        v81Var2.f8344j = System.currentTimeMillis();
        v81Var2.f8346l = EnumC1690a.NEED_SEND;
        return v81Var2.mo148z();
    }

    /* renamed from: F */
    public static boolean m362F(String str, EnumC1690a enumC1690a) {
        v81 v81Var = new v81();
        v81Var.m373n(str);
        v81 v81Var2 = v81Var;
        if (v81Var2.f8340d == null) {
            return false;
        }
        v81Var2.f8346l = enumC1690a;
        if (enumC1690a == EnumC1690a.SENDING) {
            v81Var2.f8345k = System.currentTimeMillis();
        }
        if (enumC1690a == EnumC1690a.SENT) {
            v81Var2.f8343h = "";
            v81Var2.f8342g = "";
        }
        return v81Var2.mo148z();
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8334n, this.f8341f);
        contentValues.put(f8333m, this.f8340d);
        contentValues.put(f8335o, this.f8342g);
        contentValues.put(f8336p, this.f8343h);
        contentValues.put(f8337q, Long.valueOf(this.f8344j));
        contentValues.put(f8338r, Long.valueOf(this.f8345k));
        contentValues.put(f8339s, Integer.valueOf(this.f8346l.ordinal()));
        return contentValues;
    }

    /* renamed from: G */
    public v81 m361G(Cursor cursor) {
        try {
            this.f8340d = cursor.getString(cursor.getColumnIndex(f8333m));
        } catch (Throwable th) {
        }
        try {
            this.f8341f = cursor.getString(cursor.getColumnIndex(f8334n));
        } catch (Throwable th2) {
        }
        try {
            this.f8342g = cursor.getString(cursor.getColumnIndex(f8335o));
        } catch (Throwable th3) {
        }
        try {
            this.f8343h = cursor.getString(cursor.getColumnIndex(f8336p));
        } catch (Throwable th4) {
        }
        try {
            this.f8344j = cursor.getLong(cursor.getColumnIndex(f8337q));
        } catch (Throwable th5) {
        }
        try {
            this.f8345k = cursor.getLong(cursor.getColumnIndex(f8338r));
        } catch (Throwable th6) {
        }
        try {
            this.f8346l = EnumC1690a.values()[cursor.getInt(cursor.getColumnIndex(f8339s))];
        } catch (Throwable th7) {
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00f1  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<p000.v81> m360H() {
        /*
            r6 = this;
            t71 r0 = p000.v71.f8330c
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r7 = r0
            r0 = r7
            if (r0 != 0) goto Ld
            r0 = 0
            return r0
        Ld:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "SELECT * FROM "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r6
            java.lang.String r1 = r1.mo59p()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " WHERE (("
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = p000.v81.f8339s
            r12 = r0
            r0 = r11
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            v81$a r1 = p000.v81.EnumC1690a.NEED_SEND
            int r1 = r1.ordinal()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = ") OR ("
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " = "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            v81$a r1 = p000.v81.EnumC1690a.SENDING
            int r1 = r1.ordinal()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " AND "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = p000.v81.f8338r
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " < "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r9
            r2 = 3600000(0x36ee80, double:1.7786363E-317)
            long r1 = r1 - r2
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = "))"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r11
            java.lang.String r1 = r1.toString()
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto Lec
            r0 = r12
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto Lec
        Lc8:
            v81 r0 = new v81
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r12
            v81 r0 = r0.m361G(r1)
            r0 = r8
            r1 = r11
            boolean r0 = r0.add(r1)
            r0 = r12
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto Lc8
        Lec:
            r0 = r12
            if (r0 == 0) goto Lf8
            r0 = r12
            r0.close()
        Lf8:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.v81.m360H():java.util.List");
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8340d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return f8333m;
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ v81 mo61k(Cursor cursor) {
        m361G(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE IF NOT EXISTS " + mo59p() + " (" + f8333m + " TEXT PRIMARY KEY, " + f8334n + " TEXT NOT NULL, " + f8335o + " TEXT NULL, " + f8336p + " TEXT NULL, " + f8337q + " INTEGER NULL, " + f8338r + " INTEGER NULL, " + f8339s + " INTEGER NOT NULL DEFAULT(" + EnumC1690a.NEED_SEND.ordinal() + "));"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("purchase_record");
    }
}
