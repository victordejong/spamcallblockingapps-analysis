package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p000.m91;
/* renamed from: v71 */
/* loaded from: classes3-dex2jar.jar:v71.class */
public abstract class v71<T> {

    /* renamed from: c */
    public static t71 f8330c;

    /* renamed from: a */
    public boolean f8331a = true;

    /* renamed from: b */
    public ArrayList<Cursor> f8332b = new ArrayList<>();

    /* renamed from: C */
    public static String m384C(String str) {
        if (!fa1.m1852N()) {
            return str;
        }
        int i = 0;
        int length = str.length();
        char c = 1;
        while (true) {
            char c2 = c;
            length--;
            if (length < 0) {
                return GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION + (i & 4294967295L);
            }
            i += str.charAt(length) * c2;
            c = (c2 << 5) - c2;
        }
    }

    public static void init(t71 t71Var) {
        f8330c = t71Var;
    }

    /* renamed from: A */
    public abstract void mo68A(long j);

    /* renamed from: B */
    public abstract ContentValues mo67B();

    /* renamed from: D */
    public Cursor m383D(Cursor cursor) {
        if (cursor != null && this.f8332b.contains(cursor)) {
            this.f8332b.add(cursor);
        }
        return cursor;
    }

    /* renamed from: a */
    public abstract String mo63a();

    /* renamed from: b */
    public abstract String mo62b();

    /* renamed from: c */
    public void m382c() {
        SQLiteDatabase readableDatabase = f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
        } else {
            readableDatabase.beginTransaction();
        }
    }

    /* renamed from: d */
    public boolean mo149d() {
        SQLiteDatabase writableDatabase = f8330c.getWritableDatabase();
        boolean z = false;
        if (writableDatabase == null) {
            j91.m1505k(this, "Unable to delete from to DB. It's null");
            return false;
        } else if (TextUtils.isEmpty(mo63a())) {
            return false;
        } else {
            m369t(writableDatabase);
            if (writableDatabase.delete(mo59p(), mo62b() + " = ?", new String[]{mo63a()}) > 0) {
                z = true;
            }
            if (z) {
                mo372q(writableDatabase);
                m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
            }
            return z;
        }
    }

    /* renamed from: e */
    public boolean m381e(String str, String[] strArr) {
        SQLiteDatabase writableDatabase = f8330c.getWritableDatabase();
        if (writableDatabase == null) {
            j91.m1505k(this, "Unable to delete from to DB. It's null");
            return false;
        } else if (strArr == null || strArr.length == 0) {
            return true;
        } else {
            m369t(writableDatabase);
            int length = strArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                int i2 = 500;
                if (i + 500 >= length) {
                    i2 = length - i;
                }
                String[] strArr2 = (String[]) Arrays.copyOfRange(strArr, i, i2 + i);
                String mo59p = mo59p();
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" IN (");
                sb.append(m375l(strArr2.length));
                sb.append(")");
                z &= writableDatabase.delete(mo59p, sb.toString(), strArr2) > 0;
                i += strArr2.length;
            }
            if (z) {
                mo372q(writableDatabase);
                m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, null);
            }
            return z;
        }
    }

    /* renamed from: f */
    public boolean m380f() {
        return m379g(null, null);
    }

    public void finalize() {
        if (this.f8332b.size() > 0) {
            j91.m1517G(this, "Finalizing object.");
        }
        Iterator<Cursor> it = this.f8332b.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Cursor next = it.next();
            if (next != null) {
                try {
                    if (!next.isClosed()) {
                        next.close();
                        i++;
                    }
                } catch (Throwable th) {
                    i2++;
                }
            }
        }
        if (this.f8332b.size() > 0) {
            j91.m1517G(this, "Object finalized. Closed " + i + "/" + this.f8332b.size() + " been unclosed, " + i2 + " did not close (maybe already disposed)");
        }
        this.f8332b.clear();
        super.finalize();
    }

    /* renamed from: g */
    public boolean m379g(String str, String[] strArr) {
        SQLiteDatabase writableDatabase = f8330c.getWritableDatabase();
        if (writableDatabase == null) {
            j91.m1505k(this, "Unable to delete from to DB. It's null");
            return false;
        }
        m369t(writableDatabase);
        if (writableDatabase.delete(mo59p(), str, strArr) <= 0) {
            return false;
        }
        mo372q(writableDatabase);
        m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, null);
        return true;
    }

    /* renamed from: h */
    public void m378h(boolean z) {
        SQLiteDatabase readableDatabase = f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
            return;
        }
        if (z) {
            readableDatabase.setTransactionSuccessful();
        }
        readableDatabase.endTransaction();
    }

    /* renamed from: i */
    public void m377i(String str) {
        m376j(str, null);
    }

    /* renamed from: j */
    public void m376j(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
            return;
        }
        fa1.m1832r().booleanValue();
        if (strArr == null || strArr.length <= 0) {
            readableDatabase.execSQL(str);
            return;
        }
        if (fa1.m1832r().booleanValue()) {
            Arrays.toString(strArr);
        }
        readableDatabase.execSQL(str, strArr);
    }

    /* renamed from: k */
    public abstract <T> T mo61k(Cursor cursor);

    /* renamed from: l */
    public String m375l(int i) {
        if (i <= 0) {
            return "";
        }
        String str = " ?";
        for (int i2 = 1; i2 < i; i2++) {
            str = str + ", ?";
        }
        return str;
    }

    /* renamed from: m */
    public Cursor m374m() {
        return m366w(null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public T m373n(String str) {
        Cursor m366w = m366w(mo62b() + " = ?", new String[]{str});
        if (m366w.moveToFirst()) {
            mo61k(m366w);
            this.f8331a = false;
        }
        m366w.close();
        return this;
    }

    /* renamed from: o */
    public abstract String[] mo60o();

    /* renamed from: p */
    public abstract String mo59p();

    /* renamed from: q */
    public void mo372q(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: r */
    public void mo371r(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: s */
    public void mo370s(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: t */
    public void m369t(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: u */
    public void m368u(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: v */
    public void mo367v(SQLiteDatabase sQLiteDatabase) {
    }

    /* renamed from: w */
    public Cursor m366w(String str, String[] strArr) {
        return m364y(false, str, strArr, null, null, null, null);
    }

    /* renamed from: x */
    public Cursor m365x(String str, String[] strArr, String str2, String str3, String str4, String str5) {
        return m364y(false, str, strArr, str2, str3, str4, str5);
    }

    /* renamed from: y */
    public Cursor m364y(boolean z, String str, String[] strArr, String str2, String str3, String str4, String str5) {
        SQLiteDatabase readableDatabase = f8330c.getReadableDatabase();
        if (readableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
            return null;
        }
        if (fa1.m1832r().booleanValue() && strArr != null) {
            Arrays.toString(strArr);
        }
        Cursor query = readableDatabase.query(z, mo59p(), null, str, strArr, str2, str3, str4, str5);
        m383D(query);
        return query;
    }

    /* renamed from: z */
    public boolean mo148z() {
        boolean z;
        SQLiteDatabase writableDatabase = f8330c.getWritableDatabase();
        boolean z2 = false;
        if (writableDatabase == null) {
            j91.m1505k(this, "Unable to write to DB. It's null");
            return false;
        }
        ContentValues mo67B = mo67B();
        if (!this.f8331a) {
            mo367v(writableDatabase);
            if (writableDatabase.update(mo59p(), mo67B, mo62b() + " = ?", new String[]{mo63a()}) == 1) {
                z2 = true;
            }
            z = z2;
            if (z2) {
                mo370s(writableDatabase);
                z = z2;
            }
        } else {
            m368u(writableDatabase);
            long insert = writableDatabase.insert(mo59p(), null, mo67B);
            mo68A(insert);
            this.f8331a = false;
            boolean z3 = false;
            if (insert != -1) {
                z3 = true;
            }
            z = z3;
            if (z3) {
                mo371r(writableDatabase);
                z = z3;
            }
        }
        if (z) {
            m91.m1281a(this, m91.EnumC1470c.DATA_UPDATE, this);
        }
        return z;
    }
}
