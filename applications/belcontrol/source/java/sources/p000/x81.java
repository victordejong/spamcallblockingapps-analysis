package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.internal.telephony.PhoneConstants;
import com.kedlin.cca.core.sync.ServerSync;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.i91;
import p000.q71;
import p000.r71;
/* renamed from: x81 */
/* loaded from: classes3-dex2jar.jar:x81.class */
public class x81 extends v71<x81> {

    /* renamed from: d */
    public long f8635d;

    /* renamed from: f */
    public String f8636f;

    /* renamed from: g */
    public i91 f8637g;

    /* renamed from: h */
    public i91.EnumC1446b f8638h;

    /* renamed from: j */
    public EnumSet<q71.EnumC1618e> f8639j;

    /* renamed from: k */
    public q71.EnumC1614a f8640k;

    /* renamed from: l */
    public q71.EnumC1620g f8641l;

    /* renamed from: m */
    public long f8642m;

    /* renamed from: n */
    public long f8643n;

    /* renamed from: o */
    public long f8644o;

    /* renamed from: p */
    public ScheduledExecutorService f8645p;

    /* renamed from: q */
    public ScheduledFuture<?> f8646q;

    /* renamed from: r */
    public Handler f8647r;

    /* renamed from: s */
    public static final String f8627s = v71.m384C("rules");

    /* renamed from: t */
    public static final String f8628t = v71.m384C("alpha_index");

    /* renamed from: u */
    public static final String f8629u = v71.m384C("name");

    /* renamed from: v */
    public static final String f8630v = v71.m384C("name_index");

    /* renamed from: w */
    public static final String f8631w = v71.m384C("address");

    /* renamed from: x */
    public static final String f8632x = v71.m384C("international_address");

    /* renamed from: y */
    public static final String f8633y = v71.m384C("hintl");

    /* renamed from: z */
    public static final String f8634z = v71.m384C("hlocal");

    /* renamed from: A */
    public static final String f8621A = v71.m384C(ImpressionData.COUNTRY);

    /* renamed from: B */
    public static final String f8622B = v71.m384C("type");

    /* renamed from: C */
    public static final String f8623C = v71.m384C("content_mask");

    /* renamed from: D */
    public static final String f8624D = v71.m384C("call_block_mode");

    /* renamed from: E */
    public static final String f8625E = v71.m384C("permission");

    /* renamed from: F */
    public static final String f8626F = v71.m384C("modify");

    /* renamed from: x81$a */
    /* loaded from: classes3-dex2jar.jar:x81$a.class */
    public class RunnableC1721a implements Runnable {

        /* renamed from: x81$a$a */
        /* loaded from: classes3-dex2jar.jar:x81$a$a.class */
        public class RunnableC1722a implements Runnable {
            public RunnableC1722a() {
                RunnableC1721a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                x81.this.m153T();
            }
        }

        public RunnableC1721a() {
            x81.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            x81.this.f8647r.post(new RunnableC1722a());
        }
    }

    public x81() {
        this.f8638h = i91.EnumC1446b.FULL;
        this.f8639j = EnumSet.noneOf(q71.EnumC1618e.class);
        this.f8640k = q71.EnumC1614a.DEFAULT;
        this.f8641l = q71.EnumC1620g.UNSPECIFIED;
        this.f8642m = 0L;
        this.f8643n = 7957419012188434030L;
        this.f8644o = 7957419012188434030L;
        this.f8645p = Executors.newSingleThreadScheduledExecutor();
        this.f8647r = new Handler(Looper.getMainLooper());
    }

    public x81(x81 x81Var) {
        this.f8638h = i91.EnumC1446b.FULL;
        this.f8639j = EnumSet.noneOf(q71.EnumC1618e.class);
        this.f8640k = q71.EnumC1614a.DEFAULT;
        this.f8641l = q71.EnumC1620g.UNSPECIFIED;
        this.f8642m = 0L;
        this.f8643n = 7957419012188434030L;
        this.f8644o = 7957419012188434030L;
        this.f8645p = Executors.newSingleThreadScheduledExecutor();
        this.f8647r = new Handler(Looper.getMainLooper());
        this.f8635d = x81Var.f8635d;
        this.f8636f = x81Var.f8636f;
        this.f8637g = x81Var.f8637g;
        this.f8638h = x81Var.f8638h;
        this.f8639j = EnumSet.copyOf((EnumSet) x81Var.f8639j);
        this.f8640k = x81Var.f8640k;
        this.f8641l = x81Var.f8641l;
        this.f8642m = x81Var.f8642m;
        this.f8643n = x81Var.f8643n;
        this.f8644o = x81Var.f8644o;
    }

    /* renamed from: N */
    public static int m159N(q71.EnumC1620g enumC1620g) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return 0;
        }
        ArrayList arrayList = new ArrayList();
        j91.m1521C("SQL");
        arrayList.add(String.valueOf(enumC1620g.ordinal()));
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        Cursor rawQuery = readableDatabase.rawQuery("SELECT COUNT(_id) from " + v71.m384C("rules") + " WHERE " + v71.m384C("permission") + " == ?  GROUP BY " + v71.m384C("permission"), strArr);
        if (rawQuery != null && rawQuery.moveToFirst()) {
            int i = rawQuery.getInt(0);
            rawQuery.close();
            return i;
        } else if (rawQuery == null) {
            return 0;
        } else {
            rawQuery.close();
            return 0;
        }
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8635d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        String str;
        String str2;
        String str3;
        this.f8638h = (this.f8637g.m1594t() || this.f8638h == i91.EnumC1446b.ARBITRARY) ? this.f8638h : i91.EnumC1446b.FULL;
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8629u, !TextUtils.isEmpty(this.f8636f) ? this.f8636f : null);
        contentValues.put(f8631w, this.f8637g.m1607g(this.f8638h).replace(PhoneConstants.APN_TYPE_ALL, "%").replace("?", "_"));
        contentValues.put(f8632x, this.f8637g.toString());
        contentValues.put(f8621A, this.f8637g.m1612b());
        contentValues.put(f8633y, (String) null);
        contentValues.put(f8634z, (String) null);
        contentValues.put(f8622B, Integer.valueOf(this.f8638h.ordinal()));
        contentValues.put(f8623C, q71.EnumC1618e.m903a(this.f8639j));
        contentValues.put(f8624D, this.f8640k.m909g());
        contentValues.put(f8625E, Integer.valueOf(this.f8641l.ordinal()));
        contentValues.put(f8626F, Long.valueOf(System.currentTimeMillis()));
        if (this.f8636f != null) {
            str2 = "" + this.f8636f.toLowerCase() + " ";
        } else {
            str2 = "";
        }
        i91 i91Var = this.f8637g;
        if (i91Var == null || !i91Var.m1600n()) {
            str3 = str2 + contentValues.getAsString(str).replaceAll("[^\\d\\+X]+", "");
        } else {
            str3 = str2 + contentValues.getAsString(str).toLowerCase();
        }
        contentValues.put(f8630v, str3);
        contentValues.put(f8628t, (TextUtils.isEmpty(this.f8636f) ? "#" : this.f8636f.substring(0, 1)).replaceAll("[\\d\\W]+", "#").toUpperCase());
        return contentValues;
    }

    /* renamed from: G */
    public String[] m166G() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        sb.append(f8629u);
        sb.append(" TEXT NULL, ");
        String str = f8631w;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f8632x);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f8622B);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8623C);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8624D);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8625E);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8621A);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f8626F);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        String sb2 = sb.toString();
        String str2 = "CREATE INDEX " + v71.m384C("raw_address_idx") + " ON " + mo59p() + " (" + str + ");";
        StringBuilder sb3 = new StringBuilder();
        sb3.append("CREATE TRIGGER IF NOT EXISTS ");
        sb3.append(v71.m384C("rule_add"));
        sb3.append(" AFTER INSERT ON ");
        sb3.append(mo59p());
        sb3.append(" FOR EACH ROW BEGIN UPDATE ");
        sb3.append(v71.m384C("contacts"));
        sb3.append(" SET ");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append("=");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append("+1 WHERE NEW.");
        sb3.append(v71.m384C("permission"));
        sb3.append("=");
        q71.EnumC1620g enumC1620g = q71.EnumC1620g.BLACK_LIST;
        sb3.append(enumC1620g.ordinal());
        sb3.append(" AND (");
        sb3.append(v71.m384C("country_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("area_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("similar_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("exactly_same_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("intl_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' );UPDATE ");
        sb3.append(v71.m384C("favorites"));
        sb3.append(" SET ");
        sb3.append(v71.m384C("is_blocked"));
        sb3.append(" = (SELECT ");
        sb3.append(v71.m384C("voice_mailed_android"));
        sb3.append(" OR ");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append(" > 0 OR (");
        sb3.append(v71.m384C("content_mask"));
        sb3.append(" <> 0 AND ");
        sb3.append(v71.m384C("permission"));
        sb3.append(" = ");
        sb3.append(enumC1620g.ordinal());
        sb3.append(") FROM ");
        sb3.append(v71.m384C("contacts"));
        sb3.append(" WHERE ");
        sb3.append(v71.m384C("contacts"));
        sb3.append("._id = ");
        sb3.append(v71.m384C("favorites"));
        sb3.append(".");
        sb3.append(v71.m384C("contact_id"));
        sb3.append("); END");
        return new String[]{sb2, str2, sb3.toString(), "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("rule_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "-1 WHERE OLD." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND " + v71.m384C("count_block_rules") + " > 0 AND (" + v71.m384C("country_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%');UPDATE " + v71.m384C("favorites") + " SET " + v71.m384C("is_blocked") + " = (SELECT " + v71.m384C("voice_mailed_android") + " OR " + v71.m384C("count_block_rules") + " > 0 OR (" + v71.m384C("content_mask") + " <> 0 AND " + v71.m384C("permission") + " = " + enumC1620g.ordinal() + ") FROM " + v71.m384C("contacts") + " WHERE " + v71.m384C("contacts") + "._id = " + v71.m384C("favorites") + "." + v71.m384C("contact_id") + "); END", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("rule_update") + " AFTER UPDATE ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "-1 WHERE OLD." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND " + v71.m384C("count_block_rules") + " > 0 AND (" + v71.m384C("country_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%');UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "+1 WHERE NEW." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND (" + v71.m384C("country_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%'OR " + v71.m384C("intl_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' );UPDATE " + v71.m384C("favorites") + " SET " + v71.m384C("is_blocked") + " = (SELECT " + v71.m384C("voice_mailed_android") + " OR " + v71.m384C("count_block_rules") + " > 0 OR (" + v71.m384C("content_mask") + " <> 0 AND " + v71.m384C("permission") + " = " + enumC1620g.ordinal() + ") FROM " + v71.m384C("contacts") + " WHERE " + v71.m384C("contacts") + "._id = " + v71.m384C("favorites") + "." + v71.m384C("contact_id") + "); END"};
    }

    /* renamed from: H */
    public boolean m165H() {
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
        String str = f8624D;
        contentValues.put(str, q71.EnumC1614a.DEFAULT.m909g());
        contentValues.put(f8626F, Long.valueOf(System.currentTimeMillis()));
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
            r71.EnumC1638a.f7995v0.m682n(Long.valueOf(System.currentTimeMillis()));
            mo154S();
        }
        return z;
    }

    /* renamed from: I */
    public x81 m164I(Cursor cursor) {
        try {
            this.f8635d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        try {
            this.f8638h = i91.EnumC1446b.values()[cursor.getInt(cursor.getColumnIndex(f8622B))];
        } catch (Throwable th2) {
        }
        try {
            String string = cursor.getString(cursor.getColumnIndex(f8621A));
            String string2 = cursor.getString(cursor.getColumnIndex(f8632x));
            String string3 = cursor.getString(cursor.getColumnIndex(f8631w));
            if (this.f8638h != i91.EnumC1446b.ARBITRARY || string3 == null) {
                this.f8637g = new i91(string2, string);
            } else {
                this.f8637g = new i91(string2, string, string3.replace("%", PhoneConstants.APN_TYPE_ALL).replace("_", "?"));
            }
        } catch (Throwable th3) {
        }
        try {
            this.f8643n = cursor.getLong(cursor.getColumnIndex(f8633y)) ^ (-72057594037927937L);
        } catch (Throwable th4) {
        }
        try {
            this.f8644o = (-72057594037927937L) ^ cursor.getLong(cursor.getColumnIndex(f8634z));
        } catch (Throwable th5) {
        }
        try {
            this.f8636f = cursor.getString(cursor.getColumnIndex(f8629u));
        } catch (Throwable th6) {
        }
        try {
            this.f8639j = q71.EnumC1618e.m901c(Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8623C))));
        } catch (Throwable th7) {
        }
        try {
            this.f8640k = q71.EnumC1614a.m908h(Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8624D))));
        } catch (Throwable th8) {
        }
        try {
            this.f8641l = q71.EnumC1620g.values()[cursor.getInt(cursor.getColumnIndex(f8625E))];
        } catch (Throwable th9) {
        }
        try {
            this.f8642m = cursor.getLong(cursor.getColumnIndex(f8626F));
        } catch (Throwable th10) {
        }
        this.f8636f = !TextUtils.isEmpty(this.f8636f) ? this.f8636f : null;
        this.f8331a = this.f8635d <= 0;
        return this;
    }

    /* renamed from: J */
    public Object[] m163J(Cursor cursor) {
        try {
            int i = cursor.getInt(cursor.getColumnIndex(f8622B));
            return new Object[]{Integer.valueOf(i), cursor.getString(cursor.getColumnIndex(f8621A)), cursor.getString(cursor.getColumnIndex(f8632x)), cursor.getString(cursor.getColumnIndex(f8631w)), Long.valueOf(cursor.getLong(cursor.getColumnIndex(f8633y))), Long.valueOf(cursor.getLong(cursor.getColumnIndex(f8634z))), cursor.getString(cursor.getColumnIndex(f8629u)), Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8623C))), Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8624D))), Integer.valueOf(cursor.getInt(cursor.getColumnIndex(f8625E))), Long.valueOf(cursor.getLong(cursor.getColumnIndex(f8626F)))};
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: K */
    public Cursor m162K(i91 i91Var) {
        i91.EnumC1446b[] values;
        if (i91Var == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (i91Var.m1594t()) {
            for (i91.EnumC1446b enumC1446b : i91.EnumC1446b.values()) {
                if (enumC1446b != i91.EnumC1446b.ARBITRARY) {
                    arrayList.add(i91Var.m1607g(enumC1446b));
                }
            }
        } else {
            arrayList.add(i91Var.m1607g(i91.EnumC1446b.FULL));
        }
        StringBuilder sb = new StringBuilder();
        String str = f8631w;
        sb.append(str);
        sb.append(" IN (");
        sb.append(m375l(arrayList.size()));
        sb.append(")");
        arrayList.add(i91Var.toString().replaceAll("\\+", ""));
        arrayList.add(i91Var.toString());
        String str2 = (sb.toString() + " OR ? LIKE " + str + " OR ? LIKE " + str) + " ORDER BY " + f8625E;
        String str3 = str2;
        if (q71.EnumC1616c.m906b().equals(q71.EnumC1616c.BLOCK_LIST)) {
            str3 = str2 + " DESC";
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return m366w(str3, strArr);
    }

    /* renamed from: L */
    public String m161L() {
        i91 i91Var = this.f8637g;
        if (i91Var == null) {
            return null;
        }
        return i91Var.m1607g(this.f8638h);
    }

    /* renamed from: M */
    public void m160M(String str) {
        SQLiteDatabase readableDatabase = v71.f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        j91.m1521C("SQL");
        arrayList.add(str.replace(PhoneConstants.APN_TYPE_ALL, "%").replace("?", "_"));
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        Cursor rawQuery = readableDatabase.rawQuery("SELECT * from " + mo59p() + " WHERE ? LIKE " + f8631w, strArr);
        m383D(rawQuery);
        j91.m1518F("SQL", "Rule.getAllByConditions execution");
        if (rawQuery != null && rawQuery.moveToFirst()) {
            while (true) {
                x81 x81Var = new x81();
                x81Var.m164I(rawQuery);
                if (!x81Var.m161L().equals(str)) {
                    if (!rawQuery.moveToNext()) {
                        break;
                    }
                } else {
                    m164I(rawQuery);
                    break;
                }
            }
        }
        if (rawQuery == null) {
            return;
        }
        rawQuery.close();
    }

    /* renamed from: O */
    public String m158O() {
        return ka1.m1410n(this.f8635d + this.f8636f + m161L() + this.f8638h + q71.EnumC1618e.m903a(this.f8639j) + this.f8640k + this.f8641l + this.f8642m);
    }

    /* renamed from: P */
    public void m157P(i91 i91Var) {
        if (i91Var == null) {
            return;
        }
        Cursor m366w = m366w(f8632x + " = ?", new String[]{i91Var.toString()});
        if (m366w != null && m366w.moveToFirst()) {
            if (m366w.getCount() > 1) {
                j91.m1505k(this, "Number " + i91Var.toString() + " returned " + m366w.getCount() + " rules!");
            }
            m164I(m366w);
        }
        if (m366w == null) {
            return;
        }
        m366w.close();
    }

    /* renamed from: Q */
    public void m156Q(i91 i91Var) {
        if (i91Var == null) {
            return;
        }
        String m1607g = i91Var.m1607g(i91.EnumC1446b.FULL);
        Cursor m162K = m162K(i91Var);
        if (m162K != null && m162K.moveToFirst()) {
            while (true) {
                x81 x81Var = new x81();
                x81Var.m164I(m162K);
                if (!x81Var.m161L().equals(m1607g)) {
                    if (!m162K.moveToNext()) {
                        break;
                    }
                } else {
                    m164I(m162K);
                    break;
                }
            }
        }
        if (m162K == null) {
            return;
        }
        m162K.close();
    }

    /* renamed from: R */
    public final void m155R(SQLiteDatabase sQLiteDatabase, String[] strArr) {
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("rule_add"));
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("rule_delete"));
        sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS " + v71.m384C("rule_update"));
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (str.startsWith("CREATE TRIGGER")) {
                sQLiteDatabase.execSQL(str);
            }
        }
    }

    /* renamed from: S */
    public void mo154S() {
        ScheduledFuture<?> scheduledFuture = this.f8646q;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        this.f8646q = this.f8645p.schedule(new RunnableC1721a(), 3000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: T */
    public final void m153T() {
        r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7998w0;
        long m689g = enumC1638a.m689g();
        m91.m1279c(this, null);
        enumC1638a.m682n(Long.valueOf(m689g));
        ServerSync.m4356l();
    }

    /* renamed from: U */
    public void m152U(SQLiteDatabase sQLiteDatabase) {
        m155R(sQLiteDatabase, mo60o());
    }

    /* renamed from: V */
    public void m151V(SQLiteDatabase sQLiteDatabase) {
        m155R(sQLiteDatabase, m166G());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m150W(android.database.sqlite.SQLiteDatabase r10) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.x81.m150W(android.database.sqlite.SQLiteDatabase):void");
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8635d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: d */
    public boolean mo149d() {
        boolean mo149d = super.mo149d();
        r71.EnumC1638a.f7995v0.m682n(Long.valueOf(System.currentTimeMillis()));
        if (mo149d) {
            mo154S();
        }
        return mo149d;
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ x81 mo61k(Cursor cursor) {
        m164I(cursor);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        StringBuilder sb = new StringBuilder();
        sb.append("CREATE TABLE ");
        sb.append(mo59p());
        sb.append(" (");
        sb.append("_id");
        sb.append(" INTEGER PRIMARY KEY AUTOINCREMENT,");
        sb.append(f8629u);
        sb.append(" TEXT NULL, ");
        sb.append(f8630v);
        sb.append(" TEXT NULL, ");
        sb.append(f8628t);
        sb.append(" TEXT NULL, ");
        String str = f8631w;
        sb.append(str);
        sb.append(" TEXT NOT NULL UNIQUE, ");
        sb.append(f8632x);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f8633y);
        sb.append(" INTEGER NULL, ");
        sb.append(f8634z);
        sb.append(" INTEGER NULL, ");
        sb.append(f8622B);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8623C);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8624D);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8625E);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8621A);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f8626F);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        String sb2 = sb.toString();
        String str2 = "CREATE INDEX " + v71.m384C("raw_address_idx") + " ON " + mo59p() + " (" + str + ");";
        StringBuilder sb3 = new StringBuilder();
        sb3.append("CREATE TRIGGER IF NOT EXISTS ");
        sb3.append(v71.m384C("rule_add"));
        sb3.append(" AFTER INSERT ON ");
        sb3.append(mo59p());
        sb3.append(" FOR EACH ROW BEGIN UPDATE ");
        sb3.append(v71.m384C("contacts"));
        sb3.append(" SET ");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append("=");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append("+1 WHERE NEW.");
        sb3.append(v71.m384C("permission"));
        sb3.append("=");
        q71.EnumC1620g enumC1620g = q71.EnumC1620g.BLACK_LIST;
        sb3.append(enumC1620g.ordinal());
        sb3.append(" AND (");
        sb3.append(v71.m384C("country_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("area_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("similar_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("exactly_same_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("intl_masks"));
        sb3.append(" LIKE '%,' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%'  OR ");
        sb3.append(v71.m384C("country_masks"));
        sb3.append(" LIKE '%,+' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("area_masks"));
        sb3.append(" LIKE '%,+' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("similar_masks"));
        sb3.append(" LIKE '%,+' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("exactly_same_masks"));
        sb3.append(" LIKE '%,+' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' OR ");
        sb3.append(v71.m384C("intl_masks"));
        sb3.append(" LIKE '%,+' || NEW.");
        sb3.append(v71.m384C("address"));
        sb3.append(" || ',%' );UPDATE ");
        sb3.append(v71.m384C("favorites"));
        sb3.append(" SET ");
        sb3.append(v71.m384C("is_blocked"));
        sb3.append(" = (SELECT ");
        sb3.append(v71.m384C("voice_mailed_android"));
        sb3.append(" OR ");
        sb3.append(v71.m384C("count_block_rules"));
        sb3.append(" > 0 OR (");
        sb3.append(v71.m384C("content_mask"));
        sb3.append(" <> 0 AND ");
        sb3.append(v71.m384C("permission"));
        sb3.append(" = ");
        sb3.append(enumC1620g.ordinal());
        sb3.append(") FROM ");
        sb3.append(v71.m384C("contacts"));
        sb3.append(" WHERE ");
        sb3.append(v71.m384C("contacts"));
        sb3.append("._id = ");
        sb3.append(v71.m384C("favorites"));
        sb3.append(".");
        sb3.append(v71.m384C("contact_id"));
        sb3.append("); END");
        return new String[]{sb2, str2, sb3.toString(), "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("rule_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "-1 WHERE OLD." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND " + v71.m384C("count_block_rules") + " > 0 AND (" + v71.m384C("country_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("country_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%');UPDATE " + v71.m384C("favorites") + " SET " + v71.m384C("is_blocked") + " = (SELECT " + v71.m384C("voice_mailed_android") + " OR " + v71.m384C("count_block_rules") + " > 0 OR (" + v71.m384C("content_mask") + " <> 0 AND " + v71.m384C("permission") + " = " + enumC1620g.ordinal() + ") FROM " + v71.m384C("contacts") + " WHERE " + v71.m384C("contacts") + "._id = " + v71.m384C("favorites") + "." + v71.m384C("contact_id") + "); END", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("rule_update") + " AFTER UPDATE ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "-1 WHERE OLD." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND " + v71.m384C("count_block_rules") + " > 0 AND (" + v71.m384C("country_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("country_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%' OR " + v71.m384C("intl_masks") + " LIKE '%,+' || OLD." + v71.m384C("address") + " || ',%');UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "+1 WHERE NEW." + v71.m384C("permission") + "=" + enumC1620g.ordinal() + " AND (" + v71.m384C("country_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%'OR " + v71.m384C("intl_masks") + " LIKE '%,' || NEW." + v71.m384C("address") + " || ',%'  OR " + v71.m384C("country_masks") + " LIKE '%,+' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("area_masks") + " LIKE '%,+' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("similar_masks") + " LIKE '%,+' || NEW." + v71.m384C("address") + " || ',%' OR " + v71.m384C("exactly_same_masks") + " LIKE '%,+' || NEW." + v71.m384C("address") + " || ',%'OR " + v71.m384C("intl_masks") + " LIKE '%,+' || NEW." + v71.m384C("address") + " || ',%' );UPDATE " + v71.m384C("favorites") + " SET " + v71.m384C("is_blocked") + " = (SELECT " + v71.m384C("voice_mailed_android") + " OR " + v71.m384C("count_block_rules") + " > 0 OR (" + v71.m384C("content_mask") + " <> 0 AND " + v71.m384C("permission") + " = " + enumC1620g.ordinal() + ") FROM " + v71.m384C("contacts") + " WHERE " + v71.m384C("contacts") + "._id = " + v71.m384C("favorites") + "." + v71.m384C("contact_id") + "); END"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return f8627s;
    }

    @Override // p000.v71
    /* renamed from: z */
    public boolean mo148z() {
        i91 i91Var = this.f8637g;
        boolean z = true;
        if (i91Var == null || i91Var.m1607g(this.f8638h).replaceAll("[\\*\\?]+", "").length() != 0) {
            if (!this.f8331a && this.f8641l == q71.EnumC1620g.UNSPECIFIED) {
                z = mo149d();
            } else if (this.f8641l != q71.EnumC1620g.UNSPECIFIED) {
                z = super.mo148z();
            }
            r71.EnumC1638a.f7995v0.m682n(Long.valueOf(System.currentTimeMillis()));
            if (z) {
                mo154S();
            }
            return z;
        }
        return true;
    }
}
