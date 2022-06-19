package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import p000.a81;
import p000.fa1;
import p000.m91;
import p000.n91;
import p000.q71;
import p000.r71;
/* renamed from: l81 */
/* loaded from: classes3-dex2jar.jar:l81.class */
public class l81 extends v71<l81> {

    /* renamed from: I */
    public static final String f6884I = v71.m384C("call_log");

    /* renamed from: J */
    public static final String f6885J = v71.m384C("hash");

    /* renamed from: K */
    public static final String f6886K = v71.m384C("ref_id");

    /* renamed from: L */
    public static final String f6887L = v71.m384C("lookup_status");

    /* renamed from: M */
    public static final String f6888M = v71.m384C("display_name");

    /* renamed from: N */
    public static final String f6889N = v71.m384C("is_seen");

    /* renamed from: O */
    public static final String f6890O = v71.m384C("contact_id");

    /* renamed from: P */
    public static final String f6891P = v71.m384C("phone_kind");

    /* renamed from: Q */
    public static final String f6892Q = v71.m384C("international_address");

    /* renamed from: R */
    public static final String f6893R = v71.m384C("mask_matched");

    /* renamed from: S */
    public static final String f6894S = v71.m384C("is_blocked");

    /* renamed from: T */
    public static final String f6895T = v71.m384C(ImpressionData.COUNTRY);

    /* renamed from: U */
    public static final String f6896U = v71.m384C("type");

    /* renamed from: V */
    public static final String f6897V = v71.m384C("content_mask");

    /* renamed from: W */
    public static final String f6898W = v71.m384C("filter_reason");

    /* renamed from: X */
    public static final String f6899X = v71.m384C("community_type");

    /* renamed from: Y */
    public static final String f6900Y = v71.m384C(VastIconXmlManager.DURATION);

    /* renamed from: Z */
    public static final String f6901Z = v71.m384C("extra_data");

    /* renamed from: a0 */
    public static final String f6902a0 = v71.m384C("thread_id");

    /* renamed from: b0 */
    public static final String f6903b0 = v71.m384C("meta_thread_id");

    /* renamed from: c0 */
    public static final String f6904c0 = v71.m384C("meta_message_id");

    /* renamed from: d0 */
    public static final String f6905d0 = v71.m384C("message_parts");

    /* renamed from: e0 */
    public static final String f6906e0 = v71.m384C("cch_device_id");

    /* renamed from: f0 */
    public static final String f6907f0 = v71.m384C("cch_raw_data");

    /* renamed from: g0 */
    public static final String f6908g0 = v71.m384C("modify");

    /* renamed from: h0 */
    public static final String f6909h0 = v71.m384C("grouped_count");

    /* renamed from: i0 */
    public static final String f6910i0 = v71.m384C("grouped_addressee");

    /* renamed from: j0 */
    public static final String f6911j0 = v71.m384C("grouped_display_name");

    /* renamed from: k0 */
    public static final String f6912k0 = v71.m384C("contact_photo_uri");

    /* renamed from: l0 */
    public static final String f6913l0 = v71.m384C("message_with_time");

    /* renamed from: H */
    public String f6921H;

    /* renamed from: d */
    public long f6922d;

    /* renamed from: f */
    public long f6923f;

    /* renamed from: g */
    public int f6924g;

    /* renamed from: h */
    public String f6925h;

    /* renamed from: j */
    public boolean f6926j;

    /* renamed from: k */
    public String f6927k;

    /* renamed from: l */
    public String f6928l;

    /* renamed from: m */
    public i91 f6929m;

    /* renamed from: n */
    public int f6930n = -1;

    /* renamed from: o */
    public EnumSet<q71.EnumC1618e> f6931o = EnumSet.noneOf(q71.EnumC1618e.class);

    /* renamed from: p */
    public n91.EnumC1484a f6932p = n91.EnumC1484a.NONE;

    /* renamed from: q */
    public Integer f6933q = null;

    /* renamed from: r */
    public int f6934r = 0;

    /* renamed from: s */
    public long f6935s = 0;

    /* renamed from: t */
    public int f6936t = 1;

    /* renamed from: u */
    public long f6937u = 0;

    /* renamed from: v */
    public int f6938v = 0;

    /* renamed from: w */
    public long f6939w = 0;

    /* renamed from: x */
    public long f6940x = 0;

    /* renamed from: y */
    public boolean f6941y = false;

    /* renamed from: z */
    public String f6942z = "";

    /* renamed from: A */
    public String f6914A = "";

    /* renamed from: B */
    public int f6915B = -1;

    /* renamed from: C */
    public boolean f6916C = false;

    /* renamed from: D */
    public Long f6917D = null;

    /* renamed from: E */
    public Uri f6918E = null;

    /* renamed from: F */
    public Long f6919F = null;

    /* renamed from: G */
    public String f6920G = "";

    /* renamed from: l81$a */
    /* loaded from: classes3-dex2jar.jar:l81$a.class */
    public static /* synthetic */ class C1461a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6943a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f6944b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberUtil.PhoneNumberType.values().length];
            f6944b = iArr;
            try {
                iArr[PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6944b[PhoneNumberUtil.PhoneNumberType.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6944b[PhoneNumberUtil.PhoneNumberType.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[q71.EnumC1618e.values().length];
            f6943a = iArr2;
            try {
                iArr2[q71.EnumC1618e.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6943a[q71.EnumC1618e.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6943a[q71.EnumC1618e.MMS.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: l81$b */
    /* loaded from: classes3-dex2jar.jar:l81$b.class */
    public static class C1462b {

        /* renamed from: a */
        public String f6945a;

        /* renamed from: b */
        public boolean f6946b;

        public C1462b(String str, long j, boolean z) {
            this.f6945a = str;
            this.f6946b = z;
        }
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f6922d = j;
    }

    /* renamed from: A0 */
    public void m1369A0() {
        if (this.f6937u != 0) {
            this.f6916C = true;
            m377i("UPDATE " + mo59p() + " SET " + f6889N + "=1 WHERE " + f6902a0 + "=" + this.f6937u);
            m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        m1352K0();
        if (this.f6921H == null) {
            this.f6921H = m1320q0();
        }
        Long l = this.f6917D;
        if (l != null && l.longValue() <= 0) {
            this.f6917D = null;
        }
        i91 i91Var = this.f6929m;
        if (i91Var != null && i91Var.m1601m().equals(this.f6925h)) {
            this.f6925h = null;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(f6886K, Long.valueOf(this.f6923f));
        contentValues.put(f6887L, Integer.valueOf(this.f6915B));
        contentValues.put(f6888M, this.f6925h);
        contentValues.put(f6891P, Integer.valueOf(this.f6934r));
        contentValues.put(f6892Q, this.f6929m.toString());
        contentValues.put(f6889N, Boolean.valueOf(this.f6916C));
        contentValues.put(f6890O, this.f6917D);
        contentValues.put(f6893R, this.f6927k);
        contentValues.put(f6894S, Boolean.valueOf(this.f6926j));
        contentValues.put(f6895T, this.f6929m.m1612b());
        contentValues.put(f6896U, Integer.valueOf(this.f6930n));
        contentValues.put(f6897V, q71.EnumC1618e.m903a(this.f6931o));
        contentValues.put(f6898W, Integer.valueOf(this.f6932p.ordinal()));
        contentValues.put(f6899X, this.f6933q);
        contentValues.put(f6900Y, Integer.valueOf(this.f6924g));
        contentValues.put(f6885J, m1320q0());
        contentValues.put(f6901Z, this.f6928l);
        contentValues.put(f6902a0, Long.valueOf(this.f6937u));
        contentValues.put(f6903b0, Long.valueOf(this.f6939w));
        contentValues.put(f6904c0, Long.valueOf(this.f6940x));
        contentValues.put(f6906e0, this.f6919F);
        contentValues.put(f6907f0, this.f6920G);
        String str = f6908g0;
        char c = this.f6935s;
        if (c <= 0) {
            c = System.currentTimeMillis();
        }
        contentValues.put(str, Long.valueOf(c));
        return contentValues;
    }

    /* renamed from: B0 */
    public l81 m1368B0() {
        this.f6916C = false;
        return this;
    }

    /* renamed from: C0 */
    public void m1367C0(int i) {
        this.f6915B = i;
    }

    /* renamed from: D0 */
    public void m1366D0(int i, String[] strArr) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return;
        }
        readableDatabase.execSQL("UPDATE " + mo59p() + " SET " + f6887L + "=" + i + " WHERE " + f6892Q + " IN (" + m375l(strArr.length) + ")", strArr);
        m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
    }

    /* renamed from: E */
    public boolean m1365E() {
        String str = this.f6925h;
        String str2 = "";
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        if (!m1319r0() && !EnumSet.of(n91.EnumC1484a.BLACK_LIST, n91.EnumC1484a.BLACK_LIST_MASK, n91.EnumC1484a.WHITE_LIST).contains(this.f6932p)) {
            u81 u81Var = new u81();
            u81Var.m413F(this.f6929m, this.f6925h);
            this.f6925h = u81Var.f8288d;
        }
        String str4 = this.f6925h;
        if (str4 != null) {
            str2 = str4;
        }
        return !str3.equals(str2);
    }

    /* renamed from: E0 */
    public void m1364E0() {
        i91 i91Var;
        a81[] m7330d = a81.m7330d(this.f6929m);
        if (m7330d != null && m7330d.length != 0) {
            if (m7330d.length > 1) {
                String str = "There are " + m7330d.length + " contacts with number " + this.f6929m + ". Using the first one";
            }
            int i = 0;
            this.f6925h = m7330d[0].f180b;
            this.f6917D = Long.valueOf(m7330d[0].f179a);
            a81.C0018a[] c0018aArr = m7330d[0].f186h;
            int length = c0018aArr.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                a81.C0018a c0018a = c0018aArr[i];
                if (c0018a.m7321a().toString().equals(this.f6929m.toString())) {
                    this.f6934r = c0018a.f191c;
                    break;
                }
                i++;
            }
        } else {
            int i2 = C1461a.f6944b[this.f6929m.m1604j().ordinal()];
            if (i2 == 1 || i2 == 2) {
                this.f6934r = 1;
            } else if (i2 == 3) {
                this.f6934r = 2;
            }
        }
        if (!TextUtils.isEmpty(this.f6925h) || (i91Var = this.f6929m) == null) {
            return;
        }
        this.f6925h = i91Var.m1601m();
    }

    /* renamed from: F */
    public void m1363F() {
        if (this.f6929m == null || this.f6937u != 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f6892Q);
        sb.append("=? AND ((");
        String str = f6897V;
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" OR (");
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb.append(enumC1618e2.m902b());
        sb.append(") = ");
        sb.append(enumC1618e2.m902b());
        sb.append(")");
        Cursor m366w = m366w(sb.toString(), new String[]{this.f6929m.toString()});
        if (m366w == null) {
            j91.m1505k(this, "Unable to attach to message thread as cursor is null");
            return;
        }
        if (m366w.moveToFirst()) {
            this.f6937u = m366w.getLong(m366w.getColumnIndex(f6902a0));
        }
        if (this.f6937u == 0) {
            SQLiteDatabase writableDatabase = v71.f8330c.getWritableDatabase();
            if (writableDatabase == null) {
                j91.m1505k(this, "Unable to create new Thread ID because db is null");
                m366w.close();
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SELECT MAX(");
            String str2 = f6902a0;
            sb2.append(str2);
            sb2.append(")+1 AS ");
            sb2.append(str2);
            sb2.append(" FROM ");
            sb2.append(mo59p());
            Cursor rawQuery = writableDatabase.rawQuery(sb2.toString(), null);
            if (rawQuery != null && rawQuery.moveToFirst()) {
                this.f6937u = rawQuery.getLong(rawQuery.getColumnIndex(str2)) + 1;
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
        m366w.close();
    }

    /* renamed from: F0 */
    public void m1362F0(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f6906e0;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " INTEGER NULL DEFAULT(NULL)");
        }
    }

    /* renamed from: G */
    public String[] m1361G() {
        return new String[]{"CREATE TABLE " + mo59p() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + f6886K + " INTEGER NOT NULL," + f6887L + " INTEGER NOT NULL DEFAULT(-1)," + f6889N + " INTEGER NOT NULL DEFAULT(0)," + f6890O + " INTEGER NULL DEFAULT NULL," + f6885J + " TEXT NOT NULL, " + f6888M + " TEXT NULL, " + f6891P + " INTEGER NOT NULL, " + f6892Q + " TEXT NOT NULL, " + f6893R + " TEXT NULL, " + f6894S + " INTEGER NOT NULL DEFAULT(0), " + f6896U + " INTEGER NOT NULL, " + f6897V + " INTEGER NOT NULL, " + f6898W + " INTEGER NOT NULL, " + f6895T + " TEXT NOT NULL, " + f6900Y + " INTEGER NOT NULL, " + f6901Z + " TEXT NULL, " + f6902a0 + " INTEGER NOT NULL DEFAULT(0), " + f6903b0 + " INTEGER NOT NULL DEFAULT(0), " + f6904c0 + " INTEGER NOT NULL DEFAULT(0), " + f6905d0 + " INTEGER NOT NULL DEFAULT(0), " + f6906e0 + " INTEGER NULL DEFAULT(NULL), " + f6907f0 + " TEXT NULL," + f6908g0 + " INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("call_log_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN DELETE FROM " + v71.m384C("message_parts") + " WHERE " + v71.m384C("message_id") + " = OLD._id; END"};
    }

    /* renamed from: G0 */
    public void m1360G0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " RENAME TO " + mo59p() + "old");
        String[] m1361G = m1361G();
        int length = m1361G.length;
        for (int i = 0; i < length; i++) {
            sQLiteDatabase.execSQL(m1361G[i]);
        }
        String str = f6885J;
        String str2 = f6886K;
        String str3 = f6887L;
        String str4 = f6888M;
        String str5 = f6889N;
        String str6 = f6891P;
        String str7 = f6892Q;
        String join = TextUtils.join(",", new String[]{"_id", str, str2, str3, str4, str5, str6, str7, f6893R, f6894S, f6895T, f6896U, f6897V, f6898W, f6900Y, f6901Z, f6902a0, f6903b0, f6904c0, f6905d0, f6908g0});
        sQLiteDatabase.execSQL("INSERT INTO " + mo59p() + " (" + join + ") SELECT " + join + " FROM " + mo59p() + "old");
        StringBuilder sb = new StringBuilder();
        sb.append("DROP TABLE ");
        sb.append(mo59p());
        sb.append("old");
        sQLiteDatabase.execSQL(sb.toString());
        sQLiteDatabase.execSQL("UPDATE " + mo59p() + " SET " + f6890O + " = (SELECT _id FROM " + v71.m384C("contacts") + " WHERE " + v71.m384C("intl_masks") + " LIKE '%,' || " + mo59p() + "." + str7 + " || ',%' LIMIT 1) WHERE length(" + str7 + ") > 0");
    }

    /* renamed from: H */
    public boolean m1359H() {
        StringBuilder sb = new StringBuilder();
        sb.append(f6894S);
        sb.append("=1 AND (");
        String str = f6897V;
        sb.append(str);
        sb.append("=");
        sb.append(q71.EnumC1618e.SMS.m902b());
        sb.append(" OR ");
        sb.append(str);
        sb.append("=");
        sb.append(q71.EnumC1618e.MMS.m902b());
        sb.append(")");
        return m379g(sb.toString(), null);
    }

    /* renamed from: H0 */
    public void m1358H0(SQLiteDatabase sQLiteDatabase) {
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE ");
        sb.append(mo59p());
        sb.append(" SET ");
        sb.append(f6890O);
        sb.append(" = (SELECT _id FROM ");
        sb.append(v71.m384C("contacts"));
        sb.append(" WHERE ");
        sb.append(v71.m384C("intl_masks"));
        sb.append(" LIKE '%,' || ");
        sb.append(mo59p());
        sb.append(".");
        String str = f6892Q;
        sb.append(str);
        sb.append(" || ',%' LIMIT 1) WHERE length(");
        sb.append(str);
        sb.append(") > 0");
        sQLiteDatabase.execSQL(sb.toString());
    }

    /* renamed from: I */
    public boolean m1357I() {
        return m381e(f6897V, new String[]{String.valueOf(q71.EnumC1618e.CALL.m902b())});
    }

    /* renamed from: I0 */
    public void m1356I0(SQLiteDatabase sQLiteDatabase) {
        String mo59p = mo59p();
        String str = f6907f0;
        if (!t71.m548m(sQLiteDatabase, mo59p, str)) {
            sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + str + " TEXT NULL");
        }
    }

    /* renamed from: J */
    public boolean m1355J() {
        return m381e(f6897V, new String[]{String.valueOf(q71.EnumC1618e.SMS.m902b()), String.valueOf(q71.EnumC1618e.MMS.m902b())});
    }

    /* renamed from: J0 */
    public void m1354J0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE " + mo59p() + " ADD COLUMN " + f6899X + " INTEGER DEFAULT(NULL)");
    }

    /* renamed from: K */
    public boolean m1353K() {
        return m379g(f6894S + "=1 AND " + f6897V + "=" + q71.EnumC1618e.CALL.m902b(), null);
    }

    /* renamed from: K0 */
    public final void m1352K0() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = this.f6935s;
        if (currentTimeMillis >= j) {
            this.f6935s = j * 1000;
        }
    }

    /* renamed from: L */
    public boolean m1351L(Long[] lArr) {
        return m381e("_id", ka1.m1408p(lArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0072, code lost:
        if (p000.fa1.m1840j().getContentResolver().delete(p000.fa1.C1419d.f6586a, "_id IN (" + m375l(r0.length) + ")", r0) > 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00b7, code lost:
        if (p000.fa1.m1840j().getContentResolver().delete(p000.fa1.C1422f.f6598e, "_id IN (" + m375l(r0.length) + ")", r0) > 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00fc, code lost:
        if (p000.fa1.m1840j().getContentResolver().delete(android.provider.CallLog.Calls.CONTENT_URI, "_id IN (" + m375l(r0.length) + ")", r0) > 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ff, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0102, code lost:
        r8 = true & r9;
     */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m1350M(p000.q71.EnumC1618e r6, java.lang.Long[] r7) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.l81.m1350M(q71$e, java.lang.Long[]):boolean");
    }

    /* renamed from: N */
    public boolean m1349N(Long[] lArr) {
        return m381e(f6886K, ka1.m1408p(lArr));
    }

    /* renamed from: O */
    public boolean m1348O() {
        return m379g(f6896U + "=3 AND " + f6894S + "= 0  AND " + f6897V + "=" + q71.EnumC1618e.CALL.m902b(), null);
    }

    /* renamed from: P */
    public void m1347P(long j) {
        m377i("DELETE FROM " + mo59p() + " WHERE " + f6908g0 + " < " + j + " AND " + f6906e0 + " IS NULL");
    }

    /* renamed from: Q */
    public l81 m1346Q(Cursor cursor, boolean z) {
        if (!z) {
            this.f6922d = -1L;
            this.f8331a = true;
            this.f6927k = null;
            this.f6926j = false;
        }
        try {
            this.f6923f = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f6929m = fa1.C1420e.m1800o(cursor.getString(cursor.getColumnIndex("number")));
        try {
            this.f6930n = cursor.getInt(cursor.getColumnIndex("type"));
        } catch (Throwable th2) {
        }
        this.f6931o = EnumSet.of(q71.EnumC1618e.CALL);
        this.f6932p = n91.EnumC1484a.NONE;
        try {
            this.f6924g = cursor.getInt(cursor.getColumnIndex(VastIconXmlManager.DURATION));
        } catch (Throwable th3) {
        }
        try {
            this.f6935s = cursor.getLong(cursor.getColumnIndex("date"));
        } catch (Throwable th4) {
        }
        boolean z2 = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex("new")) == 0) {
                z2 = true;
            }
            this.f6916C = z2;
        } catch (Throwable th5) {
        }
        this.f6934r = 7;
        try {
            this.f6925h = cursor.getString(cursor.getColumnIndex("name"));
        } catch (Throwable th6) {
        }
        if (TextUtils.isEmpty(this.f6925h)) {
            this.f6925h = this.f6929m.m1601m();
        }
        int i = this.f6930n;
        if (i == 2) {
            this.f6916C = true;
        }
        if (i == 1 && this.f6924g > 0) {
            this.f6916C = true;
        }
        m1364E0();
        this.f6921H = m1320q0();
        return this;
    }

    /* renamed from: R */
    public l81 m1345R(Cursor cursor, q71.EnumC1618e enumC1618e, boolean z) {
        int i = C1461a.f6943a[enumC1618e.ordinal()];
        if (i == 1) {
            m1346Q(cursor, z);
            return this;
        } else if (i == 2) {
            m1342U(cursor, z);
            return this;
        } else if (i != 3) {
            return this;
        } else {
            m1343T(cursor, z);
            return this;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:145:0x042d -> B:165:0x026c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:146:0x0432 -> B:169:0x029a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:0x0437 -> B:177:0x02c8). Please submit an issue!!! */
    /* renamed from: S */
    public l81 m1344S(Cursor cursor) {
        try {
            this.f6922d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        try {
            this.f6923f = cursor.getLong(cursor.getColumnIndex(f6886K));
        } catch (Throwable th2) {
        }
        try {
            this.f6929m = new i91(cursor.getString(cursor.getColumnIndex(f6892Q)), cursor.getString(cursor.getColumnIndex(f6895T)));
        } catch (Throwable th3) {
        }
        try {
            this.f6925h = cursor.getString(cursor.getColumnIndex(f6888M));
        } catch (Throwable th4) {
        }
        try {
            this.f6915B = cursor.getInt(cursor.getColumnIndex(f6887L));
        } catch (Throwable th5) {
        }
        try {
            this.f6927k = cursor.getString(cursor.getColumnIndex(f6893R));
        } catch (Throwable th6) {
        }
        try {
            this.f6926j = cursor.getInt(cursor.getColumnIndex(f6894S)) == 1;
        } catch (Throwable th7) {
        }
        try {
            this.f6916C = cursor.getInt(cursor.getColumnIndex(f6889N)) == 1;
        } catch (Throwable th8) {
        }
        try {
            this.f6917D = Long.valueOf(cursor.getLong(cursor.getColumnIndex(f6890O)));
        } catch (Throwable th9) {
        }
        try {
            this.f6934r = cursor.getInt(cursor.getColumnIndex(f6891P));
        } catch (Throwable th10) {
        }
        try {
            this.f6930n = cursor.getInt(cursor.getColumnIndex(f6896U));
        } catch (Throwable th11) {
        }
        try {
            this.f6931o = q71.EnumC1618e.m901c(Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f6897V))));
        } catch (Throwable th12) {
        }
        try {
            this.f6932p = n91.EnumC1484a.values()[cursor.getInt(cursor.getColumnIndex(f6898W))];
        } catch (Throwable th13) {
        }
        try {
            this.f6933q = Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f6899X)));
        } catch (Throwable th14) {
        }
        try {
            this.f6924g = cursor.getInt(cursor.getColumnIndex(f6900Y));
        } catch (Throwable th15) {
        }
        try {
            this.f6921H = cursor.getString(cursor.getColumnIndex(f6885J));
        } catch (Throwable th16) {
        }
        try {
            this.f6928l = cursor.getString(cursor.getColumnIndex(f6901Z));
        } catch (Throwable th17) {
        }
        try {
            this.f6937u = cursor.getLong(cursor.getColumnIndex(f6902a0));
        } catch (Throwable th18) {
        }
        try {
            this.f6938v = cursor.getInt(cursor.getColumnIndex(f6905d0));
        } catch (Throwable th19) {
        }
        try {
            this.f6935s = cursor.getLong(cursor.getColumnIndex(f6908g0));
        } catch (Throwable th20) {
        }
        try {
            this.f6939w = cursor.getLong(cursor.getColumnIndex(f6903b0));
        } catch (Throwable th21) {
        }
        try {
            this.f6940x = cursor.getLong(cursor.getColumnIndex(f6904c0));
        } catch (Throwable th22) {
        }
        try {
            this.f6919F = Long.valueOf(cursor.getLong(cursor.getColumnIndex(f6906e0)));
        } catch (Throwable th23) {
        }
        try {
            this.f6920G = cursor.getString(cursor.getColumnIndex(f6907f0));
        } catch (Throwable th24) {
        }
        Long l = this.f6919F;
        if (l != null && l.longValue() == 0) {
            this.f6919F = null;
        }
        try {
            String str = f6909h0;
            this.f6936t = cursor.getColumnIndex(str) != -1 ? cursor.getInt(cursor.getColumnIndex(str)) : 0;
        } catch (Throwable th25) {
        }
        try {
            String str2 = f6910i0;
            this.f6942z = cursor.getColumnIndex(str2) != -1 ? cursor.getString(cursor.getColumnIndex(str2)) : "";
        } catch (Throwable th26) {
        }
        try {
            String str3 = f6911j0;
            this.f6914A = cursor.getColumnIndex(str3) != -1 ? cursor.getString(cursor.getColumnIndex(str3)) : "";
        } catch (Throwable th27) {
        }
        try {
            String str4 = f6913l0;
            this.f6941y = cursor.getColumnIndex(str4) != -1 && cursor.getInt(cursor.getColumnIndex(str4)) == 1;
        } catch (Throwable th28) {
        }
        try {
            this.f6918E = null;
            String str5 = f6912k0;
            if (cursor.getColumnIndex(str5) != -1) {
                String string = cursor.getString(cursor.getColumnIndex(str5));
                this.f6918E = !TextUtils.isEmpty(string) ? Uri.parse(string) : null;
            }
        } catch (Throwable th29) {
        }
        if (!TextUtils.isEmpty(this.f6942z)) {
            this.f6942z = TextUtils.join(",", (String[]) new HashSet(Arrays.asList(TextUtils.split(this.f6942z, ","))).toArray(new String[0]));
        }
        if (TextUtils.isEmpty(this.f6925h)) {
            i91 i91Var = this.f6929m;
            this.f6925h = i91Var == null ? "" : i91Var.m1601m();
        }
        Integer num = this.f6933q;
        if (num != null && num.intValue() == 0) {
            this.f6933q = null;
        }
        boolean z = false;
        if (this.f6922d <= 0) {
            z = true;
        }
        this.f8331a = z;
        return this;
    }

    /* renamed from: T */
    public l81 m1343T(Cursor cursor, boolean z) {
        if (!z) {
            this.f6922d = -1L;
            this.f8331a = true;
            this.f6927k = null;
            this.f6926j = false;
        }
        this.f6923f = cursor.getLong(cursor.getColumnIndex("_id"));
        try {
            this.f6925h = cursor.getString(cursor.getColumnIndex("sub"));
        } catch (Throwable th) {
        }
        try {
            this.f6935s = cursor.getLong(cursor.getColumnIndex("date"));
        } catch (Throwable th2) {
        }
        try {
            this.f6937u = cursor.getLong(cursor.getColumnIndex("thread_id"));
        } catch (Throwable th3) {
        }
        try {
            this.f6930n = cursor.getInt(cursor.getColumnIndex("msg_box"));
        } catch (Throwable th4) {
        }
        this.f6931o = EnumSet.of(q71.EnumC1618e.MMS);
        this.f6932p = n91.EnumC1484a.NONE;
        boolean z2 = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex("read")) == 1) {
                z2 = true;
            }
            this.f6916C = z2;
        } catch (Throwable th5) {
        }
        this.f6929m = fa1.C1419d.m1817a(this.f6923f, this.f6930n);
        this.f6928l = null;
        if (TextUtils.isEmpty(this.f6925h)) {
            this.f6925h = this.f6929m.m1601m();
        }
        if (this.f6930n != 1) {
            this.f6916C = true;
        }
        m1364E0();
        this.f6921H = m1320q0();
        return this;
    }

    /* renamed from: U */
    public l81 m1342U(Cursor cursor, boolean z) {
        if (!z) {
            this.f6922d = -1L;
            this.f8331a = true;
            this.f6927k = null;
            this.f6926j = false;
        }
        try {
            this.f6923f = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        this.f6929m = fa1.C1420e.m1800o(cursor.getString(cursor.getColumnIndex("address")));
        try {
            this.f6930n = cursor.getInt(cursor.getColumnIndex("type"));
        } catch (Throwable th2) {
        }
        this.f6931o = EnumSet.of(q71.EnumC1618e.SMS);
        this.f6932p = n91.EnumC1484a.NONE;
        try {
            this.f6935s = cursor.getLong(cursor.getColumnIndex("date"));
        } catch (Throwable th3) {
        }
        try {
            this.f6937u = cursor.getLong(cursor.getColumnIndex("thread_id"));
        } catch (Throwable th4) {
        }
        try {
            this.f6928l = cursor.getString(cursor.getColumnIndex("body"));
        } catch (Throwable th5) {
        }
        boolean z2 = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex("read")) == 1) {
                z2 = true;
            }
            this.f6916C = z2;
        } catch (Throwable th6) {
        }
        this.f6934r = 7;
        this.f6925h = this.f6929m.m1601m();
        if (this.f6930n != 1) {
            this.f6916C = true;
        }
        m1364E0();
        this.f6921H = m1320q0();
        return this;
    }

    /* renamed from: V */
    public Cursor m1341V() {
        StringBuilder sb = new StringBuilder();
        String str = f6908g0;
        sb.append(str);
        sb.append(" > ");
        sb.append(r71.EnumC1638a.f7963k1.m689g());
        String sb2 = sb.toString();
        return m364y(false, sb2, null, null, null, str + " DESC", "10");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0131  */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p000.C1344e4<p000.l81.C1462b> m1340W(p000.q71.EnumC1618e r11) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.l81.m1340W(q71$e):e4");
    }

    /* renamed from: X */
    public Cursor m1339X(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(f6889N);
        sb.append("=0 AND ((");
        String str = f6897V;
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" OR (");
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb.append(enumC1618e2.m902b());
        sb.append(") = ");
        sb.append(enumC1618e2.m902b());
        sb.append(")");
        String sb2 = sb.toString();
        String str2 = sb2;
        if (z) {
            str2 = sb2 + " AND " + f6894S + "=0";
        }
        return m366w(str2, null);
    }

    /* renamed from: Y */
    public Cursor m1338Y(i91 i91Var, long j, boolean z, String str, EnumSet<q71.EnumC1618e> enumSet) {
        String str2 = "1";
        if (str == null && enumSet == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(f6892Q);
            sb.append(" = ? AND ");
            String str3 = f6908g0;
            sb.append(str3);
            sb.append(" = ? AND ");
            sb.append(f6894S);
            sb.append(" = ?");
            String sb2 = sb.toString();
            String i91Var2 = i91Var.toString();
            if (!z) {
                str2 = "0";
            }
            return m365x(sb2, new String[]{i91Var2, String.valueOf(j), str2}, null, null, str3 + " DESC", null);
        } else if (enumSet == null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(f6892Q);
            sb3.append(" = ? AND ");
            String str4 = f6908g0;
            sb3.append(str4);
            sb3.append(" = ? AND ");
            sb3.append(f6894S);
            sb3.append(" = ? AND ");
            sb3.append(f6901Z);
            sb3.append(" = ?");
            String sb4 = sb3.toString();
            String i91Var3 = i91Var.toString();
            if (!z) {
                str2 = "0";
            }
            return m365x(sb4, new String[]{i91Var3, String.valueOf(j), str2, str}, null, null, str4 + " DESC", null);
        } else {
            int intValue = q71.EnumC1618e.m903a(enumSet).intValue();
            if (str == null) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(f6892Q);
                sb5.append(" = ? AND ");
                String str5 = f6908g0;
                sb5.append(str5);
                sb5.append(" = ? AND ");
                sb5.append(f6894S);
                sb5.append(" = ? AND (");
                sb5.append(f6897V);
                sb5.append(" & ");
                sb5.append(intValue);
                sb5.append(") = ");
                sb5.append(intValue);
                String sb6 = sb5.toString();
                String i91Var4 = i91Var.toString();
                if (!z) {
                    str2 = "0";
                }
                return m365x(sb6, new String[]{i91Var4, String.valueOf(j), str2}, null, null, str5 + " DESC", null);
            }
            StringBuilder sb7 = new StringBuilder();
            sb7.append(f6892Q);
            sb7.append(" = ? AND ");
            String str6 = f6908g0;
            sb7.append(str6);
            sb7.append(" = ? AND ");
            sb7.append(f6894S);
            sb7.append(" = ? AND ");
            sb7.append(f6901Z);
            sb7.append(" = ? AND (");
            sb7.append(f6897V);
            sb7.append(" & ");
            sb7.append(intValue);
            sb7.append(") = ");
            sb7.append(intValue);
            String sb8 = sb7.toString();
            String i91Var5 = i91Var.toString();
            if (!z) {
                str2 = "0";
            }
            return m365x(sb8, new String[]{i91Var5, String.valueOf(j), str2, str}, null, null, str6 + " DESC", null);
        }
    }

    /* renamed from: Z */
    public Cursor m1337Z(i91 i91Var, long j, boolean z, EnumSet<q71.EnumC1618e> enumSet) {
        return m1338Y(i91Var, j, z, null, enumSet);
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f6922d);
    }

    /* renamed from: a0 */
    public l81 m1336a0(long j, q71.EnumC1618e enumC1618e) {
        Cursor m366w = m366w(f6886K + " = ? AND " + f6897V + "=" + enumC1618e.m902b(), new String[]{String.valueOf(j)});
        if (m366w.moveToFirst()) {
            m1344S(m366w);
            this.f8331a = false;
        }
        m366w.close();
        return this;
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    /* renamed from: b0 */
    public Cursor m1335b0(Integer num, boolean z, boolean z2, boolean z3) {
        return m1334c0(num, z, z2, z3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x07c1  */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v52, types: [java.lang.StringBuilder, int, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v54, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v57, types: [android.database.sqlite.SQLiteDatabase, java.lang.Object[], java.lang.String[], java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v62, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v63, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v64, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v65, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v67, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v69, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v79, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r0v80 */
    /* JADX WARN: Type inference failed for: r0v81, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v111, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v50, types: [java.lang.String] */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor m1334c0(java.lang.Integer r6, boolean r7, boolean r8, boolean r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 2164
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.l81.m1334c0(java.lang.Integer, boolean, boolean, boolean, java.lang.String):android.database.Cursor");
    }

    /* renamed from: d0 */
    public long m1333d0() {
        return this.f6917D.longValue();
    }

    /* renamed from: e0 */
    public Uri m1332e0() {
        return this.f6918E;
    }

    /* renamed from: f0 */
    public Cursor m1331f0(boolean z) {
        return m1330g0(z, "");
    }

    /* renamed from: g0 */
    public Cursor m1330g0(boolean z, String str) {
        q71.EnumC1618e enumC1618e;
        StringBuilder sb;
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        j91.m1521C("SQL");
        String str2 = "SELECT * FROM " + mo59p() + " WHERE ";
        String str3 = str2;
        if (!str.isEmpty()) {
            str3 = str2 + f6892Q + " LIKE '%" + str + "%' AND ";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        String str4 = f6892Q;
        sb2.append(str4);
        sb2.append(" IS NOT NULL AND ");
        sb2.append(str4);
        sb2.append(" <> '' AND ");
        if (!z) {
            sb = new StringBuilder();
            sb.append(" ((");
            sb.append(f6897V);
            sb.append(" & ");
            enumC1618e = q71.EnumC1618e.CALL;
        } else {
            sb = new StringBuilder();
            sb.append(" ((");
            String str5 = f6897V;
            sb.append(str5);
            sb.append(" & ");
            q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.SMS;
            sb.append(enumC1618e2.m902b());
            sb.append(")=");
            sb.append(enumC1618e2.m902b());
            sb.append(" OR (");
            sb.append(str5);
            sb.append(" & ");
            enumC1618e = q71.EnumC1618e.MMS;
        }
        sb.append(enumC1618e.m902b());
        sb.append(")=");
        sb.append(enumC1618e.m902b());
        sb.append(")");
        sb2.append(sb.toString());
        sb2.append(" GROUP BY ");
        sb2.append(str4);
        sb2.append(" ORDER BY ");
        sb2.append(f6908g0);
        sb2.append(" DESC LIMIT 15");
        Cursor rawQuery = readableDatabase.rawQuery(sb2.toString(), null);
        m383D(rawQuery);
        j91.m1518F("SQL", "CallLog.getLastRecordForLookup execution");
        return rawQuery;
    }

    /* renamed from: h0 */
    public Cursor m1329h0(boolean z, boolean z2) {
        return m1328i0(z, z2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x060e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0840  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0890  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x09aa  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x09e7  */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.lang.StringBuilder, java.lang.String, q71$e] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.StringBuilder, q71$e, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v43, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.lang.StringBuilder, java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v53, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v59, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v62, types: [android.database.sqlite.SQLiteDatabase, java.lang.Object[], java.lang.String[], java.lang.String, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v65, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v66, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v67, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v69, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v73, types: [java.lang.CharSequence, java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v76, types: [java.lang.StringBuilder, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v82, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v85, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v90, types: [java.lang.StringBuilder, java.lang.String] */
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor m1328i0(boolean r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 2675
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.l81.m1328i0(boolean, boolean, boolean):android.database.Cursor");
    }

    /* renamed from: j0 */
    public Cursor m1327j0(long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append(f6903b0);
        sb.append(" = ? AND ");
        sb.append(f6904c0);
        sb.append(" = ? AND ((");
        String str = f6897V;
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" OR (");
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb.append(enumC1618e2.m902b());
        sb.append(") = ");
        sb.append(enumC1618e2.m902b());
        sb.append(")");
        Cursor m366w = m366w(sb.toString(), new String[]{String.valueOf(j), String.valueOf(j2)});
        if (m366w.moveToFirst()) {
            return m366w;
        }
        return null;
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ l81 mo61k(Cursor cursor) {
        m1344S(cursor);
        return this;
    }

    /* renamed from: k0 */
    public Cursor m1326k0() {
        if (this.f6929m == null) {
            j91.m1517G(this, "Requested related logs for an object without phone number associated");
            return null;
        }
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        j91.m1521C("SQL");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.f6931o.size() > 0) {
            int intValue = q71.EnumC1618e.m903a(this.f6931o).intValue();
            arrayList.add("(" + f6897V + " & " + intValue + ") = " + intValue);
        }
        arrayList.add(f6896U + " = " + this.f6930n);
        StringBuilder sb = new StringBuilder();
        sb.append(f6894S);
        sb.append(" = ");
        sb.append(this.f6926j ? "1" : "0");
        arrayList.add(sb.toString());
        arrayList.add(f6892Q + " = ?");
        arrayList2.add(String.valueOf(this.f6929m.toString()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("CAST((");
        String str = f6908g0;
        sb2.append(str);
        sb2.append("/");
        sb2.append(86400000L);
        sb2.append(") AS INTEGER) = ?");
        arrayList.add(sb2.toString());
        arrayList2.add(String.valueOf(this.f6935s / 86400000));
        String str2 = "SELECT * FROM " + mo59p();
        String str3 = str2;
        if (arrayList.size() > 0) {
            str3 = str2 + " WHERE " + TextUtils.join(" AND ", arrayList.toArray());
        }
        String str4 = str3 + " ORDER BY " + str + " DESC";
        String[] strArr = new String[arrayList2.size()];
        arrayList2.toArray(strArr);
        Cursor rawQuery = readableDatabase.rawQuery(str4, strArr);
        m383D(rawQuery);
        j91.m1518F("SQL", "CallLog. getRelatedLogs execution");
        return rawQuery;
    }

    /* renamed from: l0 */
    public Cursor m1325l0(long j, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(f6903b0);
        sb.append(" = ? AND ((");
        String str = f6897V;
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" OR (");
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb.append(enumC1618e2.m902b());
        sb.append(") = ");
        sb.append(enumC1618e2.m902b());
        sb.append(") AND ");
        sb.append(f6894S);
        sb.append("=");
        sb.append(z ? "1" : "0");
        String sb2 = sb.toString();
        String str2 = f6904c0;
        Cursor m365x = m365x(sb2, new String[]{String.valueOf(j)}, str2, null, f6908g0 + " ASC", null);
        if (m365x.moveToFirst()) {
            return m365x;
        }
        return null;
    }

    /* renamed from: m0 */
    public Cursor m1324m0(long j, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(f6902a0);
        sb.append(" = ? AND ((");
        String str = f6897V;
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" OR (");
        sb.append(str);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb.append(enumC1618e2.m902b());
        sb.append(") = ");
        sb.append(enumC1618e2.m902b());
        sb.append(") AND ");
        sb.append(f6894S);
        sb.append("=");
        sb.append(z ? "1" : "0");
        sb.append(" AND ");
        sb.append(f6903b0);
        sb.append("=0");
        String sb2 = sb.toString();
        Cursor m365x = m365x(sb2, new String[]{String.valueOf(j)}, null, null, f6908g0 + " ASC", null);
        if (m365x.moveToFirst()) {
            return m365x;
        }
        return null;
    }

    /* renamed from: n0 */
    public Cursor m1323n0(long j, boolean z) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        j91.m1521C("SQL");
        StringBuilder sb = new StringBuilder();
        sb.append("cl.");
        String str = f6894S;
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cl.");
        String str2 = f6897V;
        sb2.append(str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("cl.");
        String str3 = f6903b0;
        sb3.append(str3);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("cl.");
        String str4 = f6904c0;
        sb5.append(str4);
        String sb6 = sb5.toString();
        StringBuilder sb7 = new StringBuilder();
        sb7.append("cl.");
        String str5 = f6908g0;
        sb7.append(str5);
        String join = TextUtils.join(",", new String[]{"cl._id", "cl." + f6885J, "cl." + f6886K, "cl." + f6887L, "cl." + f6888M, "cl." + f6889N, "cl." + f6890O, "cl." + f6891P, "cl." + f6892Q, "cl." + f6893R, sb.toString(), "cl." + f6895T, "cl." + f6896U, sb2.toString(), "cl." + f6898W, "cl." + f6900Y, "cl." + f6901Z, "cl." + f6902a0, "cl." + f6905d0, sb4, sb6, sb7.toString(), "cl." + f6899X});
        StringBuilder sb8 = new StringBuilder();
        sb8.append("SELECT ");
        sb8.append(join);
        sb8.append(",  IFNULL(cl2.pModify AND 1, 0) ");
        sb8.append(f6913l0);
        sb8.append(" FROM ");
        sb8.append(mo59p());
        sb8.append(" as cl  LEFT JOIN (SELECT MIN(cl2.");
        sb8.append(str5);
        sb8.append(") AS pModify FROM ");
        sb8.append(mo59p());
        sb8.append(" AS cl2 WHERE cl2.");
        sb8.append(str3);
        sb8.append(" = ?  AND ((cl2.");
        sb8.append(str2);
        sb8.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb8.append(enumC1618e.m902b());
        sb8.append(") = ");
        sb8.append(enumC1618e.m902b());
        sb8.append("  OR (cl2.");
        sb8.append(str2);
        sb8.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb8.append(enumC1618e2.m902b());
        sb8.append(") = ");
        sb8.append(enumC1618e2.m902b());
        sb8.append(") AND cl2.");
        sb8.append(str);
        sb8.append("=");
        sb8.append(z ? "1" : "0");
        sb8.append("  GROUP BY cl2.");
        sb8.append(str5);
        sb8.append("/1000/60/60/24 ) AS cl2 ON cl.");
        sb8.append(str5);
        sb8.append(" = cl2.pModify   WHERE cl.");
        sb8.append(str3);
        sb8.append(" = ? AND ((cl.");
        sb8.append(str2);
        sb8.append(" & ");
        sb8.append(enumC1618e.m902b());
        sb8.append(") = ");
        sb8.append(enumC1618e.m902b());
        sb8.append(" OR (cl.");
        sb8.append(str2);
        sb8.append(" & ");
        sb8.append(enumC1618e2.m902b());
        sb8.append(") = ");
        sb8.append(enumC1618e2.m902b());
        sb8.append(")  AND cl.");
        sb8.append(str);
        sb8.append("=");
        sb8.append(z ? "1" : "0");
        sb8.append(" GROUP BY cl.");
        sb8.append(str4);
        sb8.append(" ORDER BY cl.");
        sb8.append(str5);
        sb8.append(" ASC");
        Cursor rawQuery = readableDatabase.rawQuery(sb8.toString(), new String[]{String.valueOf(j), String.valueOf(j)});
        m383D(rawQuery);
        j91.m1518F("SQL", "CallLog.getSMSTimesByMetaThreadId execution");
        if (!rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE " + mo59p() + " (_id INTEGER PRIMARY KEY AUTOINCREMENT," + f6886K + " INTEGER NOT NULL," + f6887L + " INTEGER NOT NULL DEFAULT(-1)," + f6889N + " INTEGER NOT NULL DEFAULT(0)," + f6890O + " INTEGER NULL DEFAULT NULL," + f6885J + " TEXT NOT NULL, " + f6888M + " TEXT NULL, " + f6891P + " INTEGER NOT NULL, " + f6892Q + " TEXT NOT NULL, " + f6893R + " TEXT NULL, " + f6894S + " INTEGER NOT NULL DEFAULT(0), " + f6896U + " INTEGER NOT NULL, " + f6897V + " INTEGER NOT NULL, " + f6898W + " INTEGER NOT NULL, " + f6899X + " INTEGER DEFAULT(NULL), " + f6895T + " TEXT NOT NULL, " + f6900Y + " INTEGER NOT NULL, " + f6901Z + " TEXT NULL, " + f6902a0 + " INTEGER NOT NULL DEFAULT(0), " + f6903b0 + " INTEGER NOT NULL DEFAULT(0), " + f6904c0 + " INTEGER NOT NULL DEFAULT(0), " + f6905d0 + " INTEGER NOT NULL DEFAULT(0), " + f6906e0 + " INTEGER NULL DEFAULT(NULL)," + f6907f0 + " TEXT NULL," + f6908g0 + " INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("call_log_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN DELETE FROM " + v71.m384C("message_parts") + " WHERE " + v71.m384C("message_id") + " = OLD._id; END"};
    }

    /* renamed from: o0 */
    public Cursor m1322o0(long j, boolean z) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return null;
        }
        j91.m1521C("SQL");
        StringBuilder sb = new StringBuilder();
        sb.append("cl.");
        String str = f6894S;
        sb.append(str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("cl.");
        String str2 = f6897V;
        sb2.append(str2);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("cl.");
        String str3 = f6902a0;
        sb3.append(str3);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("cl.");
        String str4 = f6903b0;
        sb4.append(str4);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("cl.");
        String str5 = f6908g0;
        sb5.append(str5);
        String join = TextUtils.join(",", new String[]{"cl._id", "cl." + f6885J, "cl." + f6886K, "cl." + f6887L, "cl." + f6888M, "cl." + f6889N, "cl." + f6890O, "cl." + f6891P, "cl." + f6892Q, "cl." + f6893R, sb.toString(), "cl." + f6895T, "cl." + f6896U, sb2.toString(), "cl." + f6898W, "cl." + f6900Y, "cl." + f6901Z, sb3.toString(), "cl." + f6905d0, sb4.toString(), "cl." + f6904c0, sb5.toString(), "cl." + f6899X});
        StringBuilder sb6 = new StringBuilder();
        sb6.append("SELECT ");
        sb6.append(join);
        sb6.append(",  IFNULL(cl2.pModify AND 1, 0) ");
        sb6.append(f6913l0);
        sb6.append(" FROM ");
        sb6.append(mo59p());
        sb6.append(" as cl  LEFT JOIN (SELECT MIN(cl2.");
        sb6.append(str5);
        sb6.append(") AS pModify FROM ");
        sb6.append(mo59p());
        sb6.append(" AS cl2 WHERE cl2.");
        sb6.append(str3);
        sb6.append(" = ?  AND ((cl2.");
        sb6.append(str2);
        sb6.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.SMS;
        sb6.append(enumC1618e.m902b());
        sb6.append(") = ");
        sb6.append(enumC1618e.m902b());
        sb6.append("  OR (cl2.");
        sb6.append(str2);
        sb6.append(" & ");
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.MMS;
        sb6.append(enumC1618e2.m902b());
        sb6.append(") = ");
        sb6.append(enumC1618e2.m902b());
        sb6.append(") AND cl2.");
        sb6.append(str);
        sb6.append("=");
        sb6.append(z ? "1" : "0");
        sb6.append(" AND cl2.");
        sb6.append(str4);
        sb6.append("=0 GROUP BY cl2.");
        sb6.append(str5);
        sb6.append("/1000/60/60/24 ) AS cl2 ON cl.");
        sb6.append(str5);
        sb6.append(" = cl2.pModify   WHERE cl.");
        sb6.append(str3);
        sb6.append(" = ? AND ((cl.");
        sb6.append(str2);
        sb6.append(" & ");
        sb6.append(enumC1618e.m902b());
        sb6.append(") = ");
        sb6.append(enumC1618e.m902b());
        sb6.append(" OR (cl.");
        sb6.append(str2);
        sb6.append(" & ");
        sb6.append(enumC1618e2.m902b());
        sb6.append(") = ");
        sb6.append(enumC1618e2.m902b());
        sb6.append(")  AND cl.");
        sb6.append(str);
        sb6.append("=");
        sb6.append(z ? "1" : "0");
        sb6.append("  AND cl.");
        sb6.append(str4);
        sb6.append("=0  ORDER BY cl.");
        sb6.append(str5);
        sb6.append(" ASC");
        Cursor rawQuery = readableDatabase.rawQuery(sb6.toString(), new String[]{String.valueOf(j), String.valueOf(j)});
        m383D(rawQuery);
        j91.m1518F("SQL", "CallLog.getSMSTimesByThreadId execution");
        if (!rawQuery.moveToFirst()) {
            return null;
        }
        return rawQuery;
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return f6884I;
    }

    /* renamed from: p0 */
    public q71.EnumC1618e m1321p0() {
        int intValue = q71.EnumC1618e.m903a(this.f6931o).intValue();
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
        if (intValue == q71.EnumC1618e.m903a(EnumSet.of(enumC1618e)).intValue()) {
            return enumC1618e;
        }
        q71.EnumC1618e enumC1618e2 = q71.EnumC1618e.SMS;
        if (intValue == q71.EnumC1618e.m903a(EnumSet.of(enumC1618e2)).intValue()) {
            return enumC1618e2;
        }
        q71.EnumC1618e enumC1618e3 = q71.EnumC1618e.MMS;
        if (intValue != q71.EnumC1618e.m903a(EnumSet.of(enumC1618e3)).intValue()) {
            return null;
        }
        return enumC1618e3;
    }

    /* renamed from: q0 */
    public String m1320q0() {
        String m1410n = ka1.m1410n(this.f6923f + this.f6925h + this.f6929m + this.f6924g + this.f6916C);
        String str = m1410n;
        if (m1410n == null) {
            str = String.valueOf(hashCode());
        }
        return str;
    }

    /* renamed from: r0 */
    public boolean m1319r0() {
        Long l = this.f6917D;
        return l != null && l.longValue() > 0;
    }

    /* renamed from: s0 */
    public boolean m1318s0() {
        return this.f6916C;
    }

    /* renamed from: t0 */
    public boolean m1317t0() {
        return this.f6915B > 0;
    }

    /* renamed from: u0 */
    public l81 m1316u0(i91 i91Var) {
        Cursor m365x = m365x(f6892Q + " = ?", new String[]{i91Var.toString()}, null, null, f6908g0 + " DESC", "1");
        if (m365x != null && m365x.moveToFirst()) {
            m1344S(m365x);
        }
        if (m365x != null) {
            m365x.close();
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* renamed from: v0 */
    public long m1315v0(long j) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return 0L;
        }
        Cursor rawQuery = readableDatabase.rawQuery("SELECT MAX(" + f6904c0 + ") FROM " + mo59p(), null);
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
        return c + 1;
    }

    /* renamed from: w0 */
    public void m1314w0() {
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE ");
        sb.append(mo59p());
        sb.append(" SET ");
        sb.append(f6889N);
        sb.append("=1 WHERE (");
        sb.append(f6897V);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" AND ");
        sb.append(f6894S);
        sb.append("=1");
        m377i(sb.toString());
        m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
    }

    /* renamed from: x0 */
    public void m1313x0() {
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE ");
        sb.append(mo59p());
        sb.append(" SET ");
        sb.append(f6889N);
        sb.append("=1 WHERE (");
        sb.append(f6897V);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        m377i(sb.toString());
        m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
    }

    /* renamed from: y0 */
    public void m1312y0(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE ");
        sb.append(mo59p());
        sb.append(" SET ");
        sb.append(f6889N);
        sb.append("=1 WHERE (");
        sb.append(f6897V);
        sb.append(" & ");
        q71.EnumC1618e enumC1618e = q71.EnumC1618e.CALL;
        sb.append(enumC1618e.m902b());
        sb.append(") = ");
        sb.append(enumC1618e.m902b());
        sb.append(" AND ");
        sb.append(f6896U);
        sb.append("=");
        sb.append(i);
        m377i(sb.toString());
        m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
    }

    /* renamed from: z0 */
    public l81 m1311z0() {
        this.f6916C = true;
        return this;
    }
}
