package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
/* renamed from: u81 */
/* loaded from: classes3-dex2jar.jar:u81.class */
public class u81 extends v71<u81> {

    /* renamed from: j */
    public static long f8284j = 86400000;

    /* renamed from: k */
    public static final String f8285k = v71.m384C("name");

    /* renamed from: l */
    public static final String f8286l = v71.m384C("o_type");

    /* renamed from: m */
    public static final String f8287m = v71.m384C("ttl");

    /* renamed from: d */
    public String f8288d;

    /* renamed from: g */
    public String f8290g;

    /* renamed from: f */
    public EnumC1675a f8289f = EnumC1675a.OVERRIDE_AUTO;

    /* renamed from: h */
    public long f8291h = f8284j;

    /* renamed from: u81$a */
    /* loaded from: classes3-dex2jar.jar:u81$a.class */
    public enum EnumC1675a {
        OVERRIDE_AUTO,
        OVERRIDE_USER
    }

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", this.f8290g);
        contentValues.put(f8285k, this.f8288d);
        contentValues.put(f8286l, Integer.valueOf(this.f8289f.ordinal()));
        contentValues.put(f8287m, Long.valueOf(System.currentTimeMillis()));
        return contentValues;
    }

    /* renamed from: E */
    public void m414E() {
        this.f8290g = null;
        this.f8288d = "";
        this.f8289f = EnumC1675a.OVERRIDE_AUTO;
        this.f8331a = true;
    }

    /* renamed from: F */
    public u81 m413F(i91 i91Var, String str) {
        StringBuilder sb;
        String str2;
        this.f8288d = str;
        Cursor m366w = m366w("_id = ?", new String[]{i91Var.toString()});
        if (m366w == null || !m366w.moveToFirst()) {
            sb = new StringBuilder();
            sb.append("No override for ");
            sb.append(i91Var);
        } else {
            mo61k(m366w);
            if (this.f8289f != EnumC1675a.OVERRIDE_AUTO || System.currentTimeMillis() - this.f8291h < f8284j) {
                sb = new StringBuilder();
                str2 = "Found name override for ";
            } else {
                this.f8288d = str;
                sb = new StringBuilder();
                str2 = "Found name override, but TTL is exceeded. ";
            }
            sb.append(str2);
            sb.append(i91Var);
            sb.append(": ");
            sb.append(this.f8288d);
        }
        sb.toString();
        if (m366w != null) {
            m366w.close();
        }
        return this;
    }

    /* renamed from: G */
    public void m412G(i91 i91Var, String str, EnumC1675a enumC1675a) {
        this.f8290g = i91Var.toString();
        this.f8288d = str;
        this.f8289f = enumC1675a;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return this.f8290g;
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
            this.f8290g = cursor.getString(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        try {
            this.f8288d = cursor.getString(cursor.getColumnIndex(f8285k));
        } catch (Throwable th2) {
        }
        try {
            this.f8289f = EnumC1675a.values()[cursor.getInt(cursor.getColumnIndex(f8286l))];
        } catch (Throwable th3) {
        }
        try {
            this.f8291h = cursor.getLong(cursor.getColumnIndex(f8287m));
        } catch (Throwable th4) {
        }
        this.f8331a = TextUtils.isEmpty(this.f8290g);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        return new String[]{"CREATE TABLE IF NOT EXISTS " + mo59p() + " (_id TEXT NOT NULL PRIMARY KEY, " + f8285k + " TEXT NOT NULL," + f8286l + " INTEGER NOT NULL DEFAULT(" + EnumC1675a.OVERRIDE_AUTO.ordinal() + ")," + f8287m + " INTEGER NOT NULL DEFAULT(" + f8284j + ") );"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("name_override");
    }

    @Override // p000.v71
    /* renamed from: z */
    public boolean mo148z() {
        boolean mo148z = super.mo148z();
        if (mo148z && this.f8289f == EnumC1675a.OVERRIDE_USER) {
            l61.m1375b();
            o71.m1155d();
        }
        return mo148z;
    }
}
