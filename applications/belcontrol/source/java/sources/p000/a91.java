package p000;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: a91 */
/* loaded from: classes3-dex2jar.jar:a91.class */
public class a91 extends v71<a91> {

    /* renamed from: g */
    public static final String f193g = v71.m384C("type");

    /* renamed from: d */
    public String f194d;

    /* renamed from: f */
    public int f195f;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", this.f194d);
        contentValues.put(f193g, Integer.valueOf(this.f195f));
        return contentValues;
    }

    /* renamed from: E */
    public String[] m7320E() {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            if (i2 < 8) {
                arrayList.add("INSERT INTO " + mo59p() + " (_id," + f193g + ") VALUES(\"" + new String[]{"anonymous", "unavailable", "unknown", "restricted", "withhelt", "unknown name", "unknown number", "unknown caller"}[i2] + "\", 1);");
                i2++;
            }
        }
        for (i = 0; i < 5; i++) {
            arrayList.add("INSERT INTO " + mo59p() + " (_id," + f193g + ") VALUES(\"" + new String[]{"private", "private number", "private name", "number private", "caller private"}[i] + "\", 2);");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* renamed from: F */
    public int m7319F(String str) {
        if (v71.f8330c.getReadableDatabase() == null) {
            return -1;
        }
        Cursor m366w = m366w("_id = ?", new String[]{str.toLowerCase()});
        if (m366w != null && m366w.moveToFirst()) {
            int i = m366w.getInt(m366w.getColumnIndex(f193g));
            m366w.close();
            return i;
        } else if (m366w == null) {
            return -1;
        } else {
            m366w.close();
            return -1;
        }
    }

    /* renamed from: G */
    public void m7318G(SQLiteDatabase sQLiteDatabase) {
        for (String str : mo60o()) {
            sQLiteDatabase.execSQL(str);
        }
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f194d);
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
            this.f194d = cursor.getString(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        try {
            this.f195f = cursor.getInt(cursor.getColumnIndex(f193g));
        } catch (Throwable th2) {
        }
        this.f8331a = TextUtils.isEmpty(this.f194d);
        return this;
    }

    @Override // p000.v71
    /* renamed from: o */
    public String[] mo60o() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("CREATE TABLE " + mo59p() + " (_id TEXT NOT NULL PRIMARY KEY," + f193g + " INTEGER NOT NULL DEFAULT(-1));");
        Collections.addAll(arrayList, m7320E());
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("stringnumber");
    }
}
