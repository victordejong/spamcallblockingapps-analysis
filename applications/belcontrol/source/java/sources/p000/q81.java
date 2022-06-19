package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.internal.telephony.PhoneConstants;
import com.kedlin.cca.core.sync.ServerSync;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.a81;
import p000.i91;
import p000.q71;
import p000.r71;
/* renamed from: q81 */
/* loaded from: classes3-dex2jar.jar:q81.class */
public class q81 extends v71<q81> {

    /* renamed from: C */
    public static final String f7745C = "q81";

    /* renamed from: H */
    public static ScheduledFuture<?> f7750H;

    /* renamed from: A */
    public Long f7776A;

    /* renamed from: d */
    public long f7778d;

    /* renamed from: f */
    public String f7779f;

    /* renamed from: g */
    public String f7780g;

    /* renamed from: o */
    public String f7787o;

    /* renamed from: p */
    public boolean f7788p;

    /* renamed from: q */
    public String f7789q;

    /* renamed from: r */
    public String f7790r;

    /* renamed from: s */
    public String f7791s;

    /* renamed from: t */
    public String f7792t;

    /* renamed from: u */
    public String f7793u;

    /* renamed from: v */
    public String f7794v;

    /* renamed from: w */
    public String f7795w;

    /* renamed from: x */
    public Uri f7796x;

    /* renamed from: y */
    public boolean f7797y;

    /* renamed from: z */
    public int f7798z;

    /* renamed from: D */
    public static final String f7746D = v71.m384C("contacts");

    /* renamed from: E */
    public static ScheduledExecutorService f7747E = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: F */
    public static ScheduledFuture<?> f7748F = null;

    /* renamed from: G */
    public static ScheduledExecutorService f7749G = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: I */
    public static Handler f7751I = new Handler(Looper.getMainLooper());

    /* renamed from: J */
    public static final String f7752J = v71.m384C("version");

    /* renamed from: K */
    public static final String f7753K = v71.m384C("hash");

    /* renamed from: L */
    public static final String f7754L = v71.m384C("hash_deep");

    /* renamed from: M */
    public static final String f7755M = v71.m384C("name");

    /* renamed from: N */
    public static final String f7756N = v71.m384C("name_index");

    /* renamed from: O */
    public static final String f7757O = v71.m384C("alpha_index");

    /* renamed from: P */
    public static final String f7758P = v71.m384C("lastname");

    /* renamed from: Q */
    public static final String f7759Q = v71.m384C("lastname_alpha");

    /* renamed from: R */
    public static final String f7760R = v71.m384C("is_starred");

    /* renamed from: S */
    public static final String f7761S = v71.m384C("photo_uri");

    /* renamed from: T */
    public static final String f7762T = v71.m384C("sts");

    /* renamed from: U */
    public static final String f7763U = v71.m384C("groups");

    /* renamed from: V */
    public static final String f7764V = v71.m384C("content_mask");

    /* renamed from: W */
    public static final String f7765W = v71.m384C("call_block_mode");

    /* renamed from: X */
    public static final String f7766X = v71.m384C("permission");

    /* renamed from: Y */
    public static final String f7767Y = v71.m384C("count_block_rules");

    /* renamed from: Z */
    public static final String f7768Z = v71.m384C("voice_mailed_android");

    /* renamed from: a0 */
    public static final String f7769a0 = v71.m384C("country_masks");

    /* renamed from: b0 */
    public static final String f7770b0 = v71.m384C("area_masks");

    /* renamed from: c0 */
    public static final String f7771c0 = v71.m384C("similar_masks");

    /* renamed from: d0 */
    public static final String f7772d0 = v71.m384C("exactly_same_masks");

    /* renamed from: e0 */
    public static final String f7773e0 = v71.m384C("intl_masks");

    /* renamed from: f0 */
    public static final String f7774f0 = v71.m384C("modify");

    /* renamed from: g0 */
    public static final String f7775g0 = v71.m384C("is_contact");

    /* renamed from: h */
    public EnumSet<q71.EnumC1618e> f7781h = EnumSet.noneOf(q71.EnumC1618e.class);

    /* renamed from: j */
    public q71.EnumC1614a f7782j = q71.EnumC1614a.DEFAULT;

    /* renamed from: k */
    public q71.EnumC1620g f7783k = q71.EnumC1620g.UNSPECIFIED;

    /* renamed from: l */
    public boolean f7784l = false;

    /* renamed from: m */
    public long f7785m = 0;

    /* renamed from: n */
    public a81 f7786n = null;

    /* renamed from: B */
    public boolean f7777B = false;

    /* renamed from: q81$a */
    /* loaded from: classes3-dex2jar.jar:q81$a.class */
    public class RunnableC1622a implements Runnable {

        /* renamed from: q81$a$a */
        /* loaded from: classes3-dex2jar.jar:q81$a$a.class */
        public class RunnableC1623a implements Runnable {
            public RunnableC1623a() {
                RunnableC1622a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                q81.this.m858n0();
            }
        }

        public RunnableC1622a() {
            q81.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            q81.f7751I.post(new RunnableC1623a());
        }
    }

    /* renamed from: q81$b */
    /* loaded from: classes3-dex2jar.jar:q81$b.class */
    public class RunnableC1624b implements Runnable {
        public RunnableC1624b() {
            q81.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            q81 q81Var = q81.this;
            q81Var.m377i("UPDATE " + v71.m384C("call_log") + " SET " + v71.m384C("contact_id") + " = (SELECT _id FROM " + q81.this.mo59p() + " WHERE " + q81.f7773e0 + " LIKE '%,' || " + v71.m384C("call_log") + "." + v71.m384C("international_address") + " || ',%' LIMIT 1) WHERE length(" + v71.m384C("international_address") + ") > 0;");
        }
    }

    /* renamed from: q81$c */
    /* loaded from: classes3-dex2jar.jar:q81$c.class */
    public static class C1625c {

        /* renamed from: a */
        public String f7802a;

        /* renamed from: b */
        public Long f7803b;

        /* renamed from: c */
        public boolean f7804c;

        /* renamed from: d */
        public boolean f7805d;

        /* renamed from: e */
        public String f7806e;

        public C1625c(String str, Long l, boolean z, boolean z2, String str2) {
            this.f7802a = str;
            this.f7803b = l;
            this.f7804c = z;
            this.f7805d = z2;
            this.f7806e = str2;
        }
    }

    /* renamed from: U */
    public static int m877U(Cursor cursor, boolean z) {
        return cursor.getColumnIndex(z ? f7759Q : f7757O);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* renamed from: l0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m860l0() {
        /*
            q81 r0 = new q81
            r1 = r0
            r1.<init>()
            android.database.Cursor r0 = r0.m374m()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L3b
            r0 = r3
            int r0 = r0.getCount()
            if (r0 <= 0) goto L3b
            r0 = r3
            boolean r0 = r0.moveToFirst()
        L1f:
            q81 r0 = new q81
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            r1 = r3
            q81 r0 = r0.m881Q(r1)
            r0 = r4
            boolean r0 = r0.mo149d()
            r0 = r3
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L1f
        L3b:
            r0 = r3
            if (r0 == 0) goto L45
            r0 = r3
            r0.close()
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.q81.m860l0():void");
    }

    /* renamed from: q0 */
    public static void m855q0(String[] strArr, boolean z) {
        SQLiteDatabase writableDatabase = v71.f8330c.getWritableDatabase();
        if (writableDatabase == null) {
            j91.m1505k(f7745C, "Unable to get DB!");
            return;
        }
        String[] strArr2 = new String[strArr.length];
        int length = strArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            strArr2[i2] = "?";
        }
        String[] strArr3 = new String[strArr.length + 1];
        strArr3[0] = z ? "1" : "0";
        int length2 = strArr.length;
        while (true) {
            int i3 = i;
            if (i3 >= length2) {
                writableDatabase.execSQL("UPDATE " + f7746D + " SET " + f7762T + " = ? WHERE _id IN (" + TextUtils.join(",", strArr2) + ")", strArr3);
                return;
            }
            i = i3 + 1;
            strArr3[i] = strArr[i3];
        }
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    /* renamed from: A0 */
    public void m894A0(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f7757O;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " TEXT NULL DEFAULT(NULL)");
        }
        sQLiteDatabase.execSQL("UPDATE " + mo59p() + " SET " + f7752J + "=0, " + f7753K + "=\"\"," + str + "=\"#\"");
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        String str;
        a81.C0018a c0018a;
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(this.f7778d));
        Long l = this.f7776A;
        if (l != null) {
            contentValues.put(f7752J, l);
        }
        contentValues.put(f7755M, this.f7779f);
        contentValues.put(f7758P, this.f7780g);
        String str2 = f7761S;
        Uri uri = this.f7796x;
        contentValues.put(str2, uri != null ? uri.toString() : null);
        contentValues.put(f7760R, Boolean.valueOf(this.f7797y));
        contentValues.put(f7764V, q71.EnumC1618e.m903a(this.f7781h));
        contentValues.put(f7765W, this.f7782j.m909g());
        contentValues.put(f7766X, Integer.valueOf(this.f7783k.ordinal()));
        contentValues.put(f7773e0, this.f7795w);
        contentValues.put(f7772d0, this.f7791s);
        contentValues.put(f7771c0, this.f7792t);
        contentValues.put(f7770b0, this.f7793u);
        contentValues.put(f7769a0, this.f7794v);
        contentValues.put(f7763U, this.f7787o);
        contentValues.put(f7767Y, Integer.valueOf(this.f7798z));
        contentValues.put(f7768Z, Boolean.valueOf(this.f7788p));
        contentValues.put(f7753K, this.f7789q);
        contentValues.put(f7762T, Boolean.valueOf(this.f7784l));
        contentValues.put(f7754L, this.f7790r);
        contentValues.put(f7774f0, Long.valueOf(System.currentTimeMillis()));
        if (this.f7779f != null) {
            str = "" + this.f7779f.toLowerCase();
        } else {
            str = "";
        }
        a81 a81Var = this.f7786n;
        String str3 = str;
        if (a81Var != null) {
            this.f7791s = ",";
            this.f7792t = ",";
            this.f7793u = ",";
            this.f7794v = ",";
            this.f7795w = ",";
            a81.C0018a[] c0018aArr = a81Var.f186h;
            int length = c0018aArr.length;
            int i = 0;
            while (true) {
                str3 = str;
                if (i >= length) {
                    break;
                }
                str = str + " " + c0018a.toString().replaceAll("[^\\d\\+]+", "");
                i91 m7321a = c0018aArr[i].m7321a();
                this.f7791s += m7321a.m1607g(i91.EnumC1446b.FULL) + ",";
                this.f7792t += m7321a.m1607g(i91.EnumC1446b.PARTIAL) + ",";
                this.f7793u += m7321a.m1607g(i91.EnumC1446b.AREA_CODE) + ",";
                this.f7794v += m7321a.m1607g(i91.EnumC1446b.WHOLE_COUNTRY) + ",";
                this.f7795w += m7321a.toString() + ",";
                i++;
            }
        }
        contentValues.put(f7756N, str3);
        contentValues.put(f7757O, (TextUtils.isEmpty(this.f7779f) ? "#" : this.f7779f.substring(0, 1)).replaceAll("[\\d\\W]+", "#").toUpperCase());
        contentValues.put(f7759Q, (TextUtils.isEmpty(this.f7780g) ? "#" : this.f7780g.substring(0, 1)).replaceAll("[\\d\\W]+", "#").toUpperCase());
        return contentValues;
    }

    /* renamed from: M */
    public void m885M() {
        m376j("UPDATE " + mo59p() + " SET " + f7766X + " = ?", new String[]{String.valueOf(q71.EnumC1620g.UNSPECIFIED.ordinal())});
    }

    /* renamed from: N */
    public final String[] m884N() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER NOT NULL PRIMARY KEY,");
        sb.append(f7752J);
        sb.append(" INTEGER NOT NULL DEFAULT(-1),");
        sb.append(f7755M);
        sb.append(" TEXT NULL, ");
        String str = f7756N;
        sb.append(str);
        sb.append(" TEXT NULL, ");
        sb.append(f7760R);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7761S);
        sb.append(" TEXT NULL, ");
        sb.append(f7753K);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f7754L);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f7763U);
        sb.append(" TEXT NULL, ");
        sb.append(f7764V);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7765W);
        sb.append(" INTEGER NOT NULL DEFAULT(");
        sb.append(q71.EnumC1614a.DEFAULT.m909g());
        sb.append("), ");
        sb.append(f7766X);
        sb.append(" INTEGER NOT NULL DEFAULT(");
        sb.append(q71.EnumC1620g.UNSPECIFIED.ordinal());
        sb.append("), ");
        sb.append(f7767Y);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7768Z);
        sb.append(" INTEGER NOT NULL DEFAULT(0),");
        String str2 = f7769a0;
        sb.append(str2);
        sb.append(" TEXT NOT NULL,");
        String str3 = f7770b0;
        sb.append(str3);
        sb.append(" TEXT NOT NULL,");
        String str4 = f7771c0;
        sb.append(str4);
        sb.append(" TEXT NOT NULL,");
        String str5 = f7772d0;
        sb.append(str5);
        sb.append(" TEXT NOT NULL,");
        String str6 = f7773e0;
        sb.append(str6);
        sb.append(" TEXT NOT NULL,");
        sb.append(f7774f0);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        return new String[]{sb.toString(), "CREATE INDEX " + v71.m384C("name_index_idx") + "    ON " + mo59p() + " (" + str + ");", "CREATE INDEX " + v71.m384C("mask_full_idx") + "     ON " + mo59p() + " (" + str5 + ");", "CREATE INDEX " + v71.m384C("masks_similar_idx") + " ON " + mo59p() + " (" + str4 + ");", "CREATE INDEX " + v71.m384C("masks_area_idx") + "    ON " + mo59p() + " (" + str3 + ");", "CREATE INDEX " + v71.m384C("masks_country_idx") + " ON " + mo59p() + " (" + str2 + ");", "CREATE INDEX " + v71.m384C("masks_intl_idx") + "    ON " + mo59p() + " (" + str6 + ");", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("contact_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN DELETE FROM " + v71.m384C("favorites") + " WHERE " + v71.m384C("contact_id") + " = OLD._id; END"};
    }

    /* renamed from: O */
    public void m883O() {
        this.f7796x = null;
    }

    /* renamed from: P */
    public boolean m882P() {
        EnumSet allOf = EnumSet.allOf(q71.EnumC1614a.class);
        allOf.removeAll(p71.m945a());
        boolean z = false;
        if (allOf.size() == 0) {
            return false;
        }
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
            return false;
        }
        ContentValues contentValues = new ContentValues();
        String str = f7765W;
        contentValues.put(str, q71.EnumC1614a.DEFAULT.m909g());
        contentValues.put(f7774f0, Long.valueOf(System.currentTimeMillis()));
        String str2 = str + " IN (";
        Iterator it = allOf.iterator();
        int i = 0;
        while (it.hasNext()) {
            q71.EnumC1614a enumC1614a = (q71.EnumC1614a) it.next();
            String str3 = str2;
            if (i > 0) {
                str3 = str2 + ",";
            }
            str2 = str3 + enumC1614a.m909g();
            i++;
        }
        if (readableDatabase.update(mo59p(), contentValues, str2 + ")", null) > 0) {
            z = true;
        }
        if (z) {
            r71.EnumC1638a.f7992u0.m682n(Long.valueOf(System.currentTimeMillis()));
            mo859m0();
        }
        return z;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0269 -> B:115:0x00d7). Please submit an issue!!! */
    /* renamed from: Q */
    public q81 m881Q(Cursor cursor) {
        try {
            this.f7778d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f8331a = this.f7778d <= 0;
        try {
            this.f7779f = cursor.getString(cursor.getColumnIndex(f7755M));
        } catch (Throwable th2) {
        }
        try {
            this.f7783k = q71.EnumC1620g.values()[cursor.getInt(cursor.getColumnIndex(f7766X))];
        } catch (Throwable th3) {
        }
        try {
            this.f7788p = cursor.getInt(cursor.getColumnIndex(f7768Z)) > 0;
        } catch (Throwable th4) {
        }
        try {
            this.f7798z = cursor.getInt(cursor.getColumnIndex(f7767Y));
        } catch (Throwable th5) {
        }
        try {
            this.f7781h = q71.EnumC1618e.m901c(Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f7764V))));
        } catch (Throwable th6) {
        }
        try {
            this.f7785m = cursor.getLong(cursor.getColumnIndex(f7774f0));
        } catch (Throwable th7) {
        }
        try {
            this.f7782j = q71.EnumC1614a.m908h(Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f7765W))));
        } catch (Throwable th8) {
        }
        try {
            String str = f7775g0;
            if (cursor.getColumnIndex(str) != -1 && cursor.getInt(cursor.getColumnIndex(str)) != 1) {
                this.f7779f = this.f7779f.replace("%", PhoneConstants.APN_TYPE_ALL).replace("_", "?");
            }
        } catch (Throwable th9) {
        }
        try {
            String string = cursor.getString(cursor.getColumnIndex(f7761S));
            this.f7796x = !TextUtils.isEmpty(string) ? Uri.parse(string) : null;
        } catch (Throwable th10) {
        }
        try {
            this.f7780g = cursor.getString(cursor.getColumnIndex(f7758P));
        } catch (Throwable th11) {
        }
        this.f7786n = null;
        if (cursor.getColumnCount() == 14) {
            return this;
        }
        try {
            this.f7797y = cursor.getInt(cursor.getColumnIndex(f7760R)) > 0;
        } catch (Throwable th12) {
        }
        try {
            this.f7776A = Long.valueOf(cursor.getLong(cursor.getColumnIndex(f7752J)));
        } catch (Throwable th13) {
        }
        try {
            this.f7795w = cursor.getString(cursor.getColumnIndex(f7773e0));
        } catch (Throwable th14) {
        }
        try {
            this.f7791s = cursor.getString(cursor.getColumnIndex(f7772d0));
        } catch (Throwable th15) {
        }
        try {
            this.f7792t = cursor.getString(cursor.getColumnIndex(f7771c0));
        } catch (Throwable th16) {
        }
        try {
            this.f7793u = cursor.getString(cursor.getColumnIndex(f7770b0));
        } catch (Throwable th17) {
        }
        try {
            this.f7794v = cursor.getString(cursor.getColumnIndex(f7769a0));
        } catch (Throwable th18) {
        }
        try {
            this.f7787o = cursor.getString(cursor.getColumnIndex(f7763U));
        } catch (Throwable th19) {
        }
        boolean z = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex(f7762T)) == 1) {
                z = true;
            }
            this.f7784l = z;
        } catch (Throwable th20) {
        }
        try {
            this.f7789q = cursor.getString(cursor.getColumnIndex(f7753K));
        } catch (Throwable th21) {
        }
        try {
            this.f7790r = cursor.getString(cursor.getColumnIndex(f7754L));
        } catch (Throwable th22) {
        }
        return this;
    }

    /* renamed from: R */
    public Cursor m880R(q71.EnumC1620g enumC1620g, String str, String[] strArr, boolean z, boolean z2) {
        return m879S(enumC1620g, str, strArr, z2, z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0532  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x055a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x071d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0768  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v100, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v101, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v102, types: [java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v104 */
    /* JADX WARN: Type inference failed for: r0v107 */
    /* JADX WARN: Type inference failed for: r0v108 */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v16, types: [java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.Collection, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v28, types: [android.database.sqlite.SQLiteDatabase, java.lang.Object[], java.lang.String[], java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v31, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v56, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v61, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v64, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v75, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v81, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v83, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v87, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v89, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v92, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v95, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v96, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor m879S(p000.q71.EnumC1620g r5, java.lang.String r6, java.lang.String[] r7, boolean r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 2003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.q81.m879S(q71$g, java.lang.String, java.lang.String[], boolean, boolean, boolean):android.database.Cursor");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0123  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000.C1344e4<p000.q81.C1625c> m878T(boolean r14) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.q81.m878T(boolean):e4");
    }

    /* renamed from: V */
    public a81 m876V() {
        if (this.f7786n == null) {
            this.f7786n = a81.m7333a(this.f7778d);
        }
        return this.f7786n;
    }

    /* renamed from: W */
    public Cursor m875W(i91 i91Var) {
        String str = f7766X;
        String str2 = str;
        if (q71.EnumC1616c.m906b().equals(q71.EnumC1616c.BLOCK_LIST)) {
            str2 = str + " DESC";
        }
        return m365x(f7772d0 + " LIKE ? ", new String[]{"%," + i91Var.m1607g(i91.EnumC1446b.FULL) + ",%"}, null, null, str2, null);
    }

    /* renamed from: X */
    public int m874X(int i) {
        Cursor m366w = m366w(f7763U + " LIKE ? ", new String[]{"%," + i + ",%"});
        int i2 = 0;
        if (m366w != null) {
            i2 = 0;
            if (m366w.moveToFirst()) {
                i2 = m366w.getCount();
            }
        }
        if (m366w != null) {
            m366w.close();
        }
        return i2;
    }

    /* renamed from: Y */
    public int m873Y() {
        Cursor m366w = m366w(f7763U + " IS NULL", null);
        int count = (m366w == null || !m366w.moveToFirst()) ? 0 : m366w.getCount();
        if (m366w != null) {
            m366w.close();
        }
        return count;
    }

    /* renamed from: Z */
    public Cursor m872Z() {
        return m365x(f7762T + " = 0", null, null, null, null, null);
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f7778d);
    }

    /* renamed from: a0 */
    public String m871a0() {
        String str = this.f7791s;
        if (str == null) {
            str = "";
        }
        return str;
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    /* renamed from: b0 */
    public Uri m870b0() {
        return this.f7796x;
    }

    /* renamed from: c0 */
    public Integer[] m869c0() {
        int i = 0;
        if (TextUtils.isEmpty(this.f7787o)) {
            return new Integer[0];
        }
        String str = this.f7787o;
        String[] split = TextUtils.split(str.substring(1, str.length() - 1), ",");
        Integer[] numArr = new Integer[split.length];
        int length = split.length;
        int i2 = 0;
        while (i < length) {
            numArr[i2] = Integer.valueOf(Integer.parseInt(split[i]));
            i++;
            i2++;
        }
        return numArr;
    }

    @Override // p000.v71
    /* renamed from: d */
    public boolean mo149d() {
        boolean mo149d = super.mo149d();
        r71.EnumC1638a.f7992u0.m682n(Long.valueOf(System.currentTimeMillis()));
        if (mo149d) {
            mo859m0();
        }
        return mo149d;
    }

    /* renamed from: d0 */
    public String m868d0() {
        return m867e0(true);
    }

    /* renamed from: e0 */
    public String m867e0(boolean z) {
        String str = this.f7779f + this.f7788p + this.f7796x + this.f7776A + this.f7797y;
        String str2 = str;
        if (z) {
            str2 = str + this.f7787o;
        }
        a81 a81Var = this.f7786n;
        String str3 = str2;
        if (a81Var != null) {
            a81.C0018a[] c0018aArr = a81Var.f186h;
            int length = c0018aArr.length;
            int i = 0;
            while (true) {
                str3 = str2;
                if (i >= length) {
                    break;
                }
                a81.C0018a c0018a = c0018aArr[i];
                str2 = str2 + c0018a.m7321a();
                i++;
            }
        }
        String m1410n = ka1.m1410n(str3);
        String str4 = m1410n;
        if (m1410n == null) {
            str4 = String.valueOf(hashCode());
        }
        return str4;
    }

    /* renamed from: f0 */
    public String[] m866f0() {
        String str = this.f7795w;
        return str == null ? new String[0] : TextUtils.split(str.replaceFirst(",", "").replaceAll(",$", ""), ",");
    }

    /* renamed from: g0 */
    public boolean m865g0() {
        return m864h0() || this.f7798z > 0;
    }

    /* renamed from: h0 */
    public boolean m864h0() {
        return this.f7788p || (q71.EnumC1620g.BLACK_LIST == this.f7783k && !this.f7781h.isEmpty());
    }

    /* renamed from: i0 */
    public boolean m863i0() {
        return this.f7797y;
    }

    /* renamed from: j0 */
    public boolean m862j0() {
        return this.f7788p;
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ q81 mo61k(Cursor cursor) {
        m881Q(cursor);
        return this;
    }

    /* renamed from: k0 */
    public final void m861k0(SQLiteDatabase sQLiteDatabase, String[] strArr) {
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("contact_delete"));
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("contact_update"));
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("contact_insert"));
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (str.startsWith("CREATE TRIGGER")) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    /* renamed from: m0 */
    public void mo859m0() {
        ScheduledFuture<?> scheduledFuture = f7750H;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        f7750H = f7749G.schedule(new RunnableC1622a(), 30000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: n0 */
    public final void m858n0() {
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7998w0;
        long m689g = enumC1638a.m689g();
        m91.m1279c(this, null);
        enumC1638a.m682n(Long.valueOf(m689g));
        ServerSync.m4356l();
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER NOT NULL PRIMARY KEY,");
        sb.append(f7752J);
        sb.append(" INTEGER NOT NULL DEFAULT(-1),");
        sb.append(f7755M);
        sb.append(" TEXT NULL, ");
        String str = f7756N;
        sb.append(str);
        sb.append(" TEXT NULL, ");
        sb.append(f7757O);
        sb.append(" TEXT NULL, ");
        sb.append(f7758P);
        sb.append(" TEXT NULL, ");
        sb.append(f7759Q);
        sb.append(" TEXT NULL, ");
        sb.append(f7760R);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7761S);
        sb.append(" TEXT NULL, ");
        sb.append(f7753K);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f7754L);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f7763U);
        sb.append(" TEXT NULL, ");
        sb.append(f7764V);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7765W);
        sb.append(" INTEGER NOT NULL DEFAULT(");
        sb.append(q71.EnumC1614a.DEFAULT.m909g());
        sb.append("), ");
        sb.append(f7766X);
        sb.append(" INTEGER NOT NULL DEFAULT(");
        sb.append(q71.EnumC1620g.UNSPECIFIED.ordinal());
        sb.append("), ");
        sb.append(f7767Y);
        sb.append(" INTEGER NOT NULL DEFAULT(0), ");
        sb.append(f7768Z);
        sb.append(" INTEGER NOT NULL DEFAULT(0),");
        String str2 = f7769a0;
        sb.append(str2);
        sb.append(" TEXT NOT NULL,");
        String str3 = f7770b0;
        sb.append(str3);
        sb.append(" TEXT NOT NULL,");
        String str4 = f7771c0;
        sb.append(str4);
        sb.append(" TEXT NOT NULL,");
        String str5 = f7772d0;
        sb.append(str5);
        sb.append(" TEXT NOT NULL,");
        String str6 = f7773e0;
        sb.append(str6);
        sb.append(" TEXT NOT NULL,");
        sb.append(f7762T);
        sb.append(" INTEGER NOT NULL DEFAULT(0),");
        sb.append(f7774f0);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        return new String[]{sb.toString(), "CREATE INDEX " + v71.m384C("name_index_idx") + "    ON " + mo59p() + " (" + str + ");", "CREATE INDEX " + v71.m384C("mask_full_idx") + "     ON " + mo59p() + " (" + str5 + ");", "CREATE INDEX " + v71.m384C("masks_similar_idx") + " ON " + mo59p() + " (" + str4 + ");", "CREATE INDEX " + v71.m384C("masks_area_idx") + "    ON " + mo59p() + " (" + str3 + ");", "CREATE INDEX " + v71.m384C("masks_country_idx") + " ON " + mo59p() + " (" + str2 + ");", "CREATE INDEX " + v71.m384C("masks_intl_idx") + "    ON " + mo59p() + " (" + str6 + ");", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("contact_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN DELETE FROM " + v71.m384C("favorites") + " WHERE " + v71.m384C("contact_id") + " = OLD._id; END"};
    }

    /* renamed from: o0 */
    public q81 m857o0(a81 a81Var) {
        m856p0(a81Var, true);
        return this;
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return f7746D;
    }

    /* renamed from: p0 */
    public q81 m856p0(a81 a81Var, boolean z) {
        Integer[] m7327g;
        String str;
        if (a81Var == null) {
            return this;
        }
        boolean z2 = this.f7797y;
        boolean z3 = a81Var.f182d;
        this.f7777B = z2 != z3;
        this.f7786n = a81Var;
        this.f7779f = a81Var.f180b;
        this.f7780g = a81Var.f181c;
        this.f7778d = a81Var.f179a;
        this.f7788p = a81Var.f183e;
        this.f7797y = z3;
        this.f7776A = a81Var.m7325i();
        if (!z) {
            this.f7778d = -1L;
            str = "";
        } else {
            str = a81Var.m7327g().length > 0 ? "," + TextUtils.join(",", m7327g) + "," : null;
        }
        this.f7787o = str;
        this.f7791s = ",";
        this.f7792t = ",";
        this.f7793u = ",";
        this.f7794v = ",";
        this.f7795w = ",";
        for (a81.C0018a c0018a : a81Var.f186h) {
            i91 m7321a = c0018a.m7321a();
            this.f7791s += m7321a.m1607g(i91.EnumC1446b.FULL) + ",";
            this.f7792t += m7321a.m1607g(i91.EnumC1446b.PARTIAL) + ",";
            this.f7793u += m7321a.m1607g(i91.EnumC1446b.AREA_CODE) + ",";
            this.f7794v += m7321a.m1607g(i91.EnumC1446b.WHOLE_COUNTRY) + ",";
            this.f7795w += m7321a.toString() + ",";
        }
        this.f7796x = a81Var.f184f;
        this.f7789q = m867e0(false);
        this.f7790r = m867e0(true);
        return this;
    }

    @Override // p000.v71
    /* renamed from: q */
    public void mo372q(SQLiteDatabase sQLiteDatabase) {
        super.mo372q(sQLiteDatabase);
        m854r0();
    }

    @Override // p000.v71
    /* renamed from: r */
    public void mo371r(SQLiteDatabase sQLiteDatabase) {
        super.mo371r(sQLiteDatabase);
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT COUNT(*) FROM ");
        sb.append(v71.m384C("rules"));
        sb.append(" r INNER JOIN ");
        sb.append(mo59p());
        sb.append(" c ON  r.");
        sb.append(v71.m384C("permission"));
        sb.append(" = ");
        sb.append(q71.EnumC1620g.BLACK_LIST.ordinal());
        sb.append(" AND ( c.");
        String str = f7772d0;
        sb.append(str);
        sb.append(" LIKE '%,' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR c.");
        String str2 = f7771c0;
        sb.append(str2);
        sb.append(" LIKE '%,' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR  c.");
        String str3 = f7770b0;
        sb.append(str3);
        sb.append(" LIKE '%,' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR  c.");
        String str4 = f7769a0;
        sb.append(str4);
        sb.append(" LIKE '%,' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR c.");
        String str5 = f7773e0;
        sb.append(str5);
        sb.append(" LIKE '%,' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%'  OR  c.");
        sb.append(str);
        sb.append(" LIKE '%,+' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR c.");
        sb.append(str2);
        sb.append(" LIKE '%,+' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR  c.");
        sb.append(str3);
        sb.append(" LIKE '%,+' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR  c.");
        sb.append(str4);
        sb.append(" LIKE '%,+' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' OR c.");
        sb.append(str5);
        sb.append(" LIKE '%,+' || r.");
        sb.append(v71.m384C("address"));
        sb.append(" || ',%' ) WHERE c.");
        sb.append("_id");
        sb.append("=");
        sb.append(this.f7778d);
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        if (rawQuery != null && rawQuery.moveToFirst() && this.f7798z != rawQuery.getInt(0)) {
            this.f7798z = rawQuery.getInt(0);
            mo148z();
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
        if (this.f7797y) {
            s81 s81Var = new s81();
            Cursor m613I = s81Var.m613I(this.f7778d);
            if (m613I == null || m613I.getCount() == 0) {
                String str6 = "Contact " + this.f7779f + " added to favorites";
                s81Var.m616F(this);
                s81Var.mo148z();
            }
            if (m613I != null) {
                m613I.close();
            }
        }
        m854r0();
    }

    /* renamed from: r0 */
    public final void m854r0() {
        synchronized (this) {
            ScheduledFuture<?> scheduledFuture = f7748F;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            f7748F = f7747E.schedule(new RunnableC1624b(), 1L, TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x01df  */
    @Override // p000.v71
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo370s(android.database.sqlite.SQLiteDatabase r9) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.q81.mo370s(android.database.sqlite.SQLiteDatabase):void");
    }

    /* renamed from: s0 */
    public void m853s0() {
        m377i("UPDATE " + v71.m384C("call_log") + " SET " + v71.m384C("contact_id") + " = (SELECT _id FROM " + mo59p() + " WHERE " + f7773e0 + " LIKE '%,' || " + v71.m384C("call_log") + "." + v71.m384C("international_address") + " || ',%' LIMIT 1) WHERE length(" + v71.m384C("international_address") + ") > 0;");
    }

    /* renamed from: t0 */
    public void m852t0(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f7758P;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " TEXT NULL DEFAULT(NULL)");
        }
        String mo59p2 = mo59p();
        String str2 = f7759Q;
        if (!t71.m548m(sQLiteDatabase, mo59p2, str2)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str2 + " TEXT NULL DEFAULT(NULL)");
        }
        sQLiteDatabase.execSQL("UPDATE " + mo59p() + " SET " + f7752J + "=0, " + f7753K + "=\"\"," + str2 + "=\"#\"");
    }

    /* renamed from: u0 */
    public void m851u0(SQLiteDatabase sQLiteDatabase) {
        m861k0(sQLiteDatabase, mo60o());
    }

    @Override // p000.v71
    /* renamed from: v */
    public void mo367v(SQLiteDatabase sQLiteDatabase) {
        super.mo367v(sQLiteDatabase);
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM " + v71.m384C("rules") + " r INNER JOIN " + mo59p() + " c ON  r." + v71.m384C("permission") + " = " + q71.EnumC1620g.BLACK_LIST.ordinal() + " AND ( '" + this.f7791s + "' LIKE '%,' || r." + v71.m384C("address") + " || ',%' OR '" + this.f7792t + "' LIKE '%,' || r." + v71.m384C("address") + " || ',%' OR  '" + this.f7793u + "' LIKE '%,' || r." + v71.m384C("address") + " || ',%' OR  '" + this.f7794v + "' LIKE '%,' || r." + v71.m384C("address") + " || ',%' OR '" + this.f7795w + "' LIKE '%,' || r." + v71.m384C("address") + " || ',%'  OR  '" + this.f7791s + "' LIKE '%,+' || r." + v71.m384C("address") + " || ',%' OR '" + this.f7792t + "' LIKE '%,+' || r." + v71.m384C("address") + " || ',%' OR  '" + this.f7793u + "' LIKE '%,+' || r." + v71.m384C("address") + " || ',%' OR  '" + this.f7794v + "' LIKE '%,+' || r." + v71.m384C("address") + " || ',%' OR '" + this.f7795w + "' LIKE '%,+' || r." + v71.m384C("address") + " || ',%' ) WHERE c._id=" + this.f7778d, null);
        if (rawQuery != null && rawQuery.moveToFirst()) {
            this.f7798z = rawQuery.getInt(0);
        }
        if (rawQuery != null) {
            rawQuery.close();
        }
    }

    /* renamed from: v0 */
    public void m850v0(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f7762T;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " INTEGER NOT NULL DEFAULT(0)");
        }
    }

    /* renamed from: w0 */
    public void m849w0(SQLiteDatabase sQLiteDatabase) {
        m861k0(sQLiteDatabase, m884N());
    }

    /* renamed from: x0 */
    public void m848x0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("contact_update"));
    }

    /* renamed from: y0 */
    public void m847y0(SQLiteDatabase sQLiteDatabase) {
        m861k0(sQLiteDatabase, m884N());
    }

    @Override // p000.v71
    /* renamed from: z */
    public boolean mo148z() {
        boolean mo148z = super.mo148z();
        r71.EnumC1638a.f7992u0.m682n(Long.valueOf(System.currentTimeMillis()));
        if (mo148z) {
            mo859m0();
        }
        return mo148z;
    }

    /* renamed from: z0 */
    public void m846z0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("name_index_idx"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("mask_full_idx"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("masks_similar_idx"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("masks_area_idx"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("masks_country_idx"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS " + v71.m384C("masks_intl_idx"));
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("contact_delete"));
        sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " RENAME TO " + mo59p() + "old");
        String[] m884N = m884N();
        int length = m884N.length;
        for (int i = 0; i < length; i++) {
            sQLiteDatabase.execSQL(m884N[i]);
        }
        String str = f7752J;
        String str2 = f7753K;
        String join = TextUtils.join(",", new String[]{"_id", str, str2, f7754L, f7755M, f7760R, f7756N, f7763U, f7764V, f7765W, f7766X, f7767Y, f7768Z, f7769a0, f7770b0, f7771c0, f7772d0, f7773e0, f7774f0});
        sQLiteDatabase.execSQL("INSERT INTO " + mo59p() + " (" + join + ") SELECT " + join + " FROM " + mo59p() + "old");
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(mo59p());
        sb.append("old");
        sQLiteDatabase.execSQL(sb.toString());
        sQLiteDatabase.execSQL("UPDATE " + mo59p() + " SET " + str + "=0, " + str2 + "=\"\"");
    }
}
