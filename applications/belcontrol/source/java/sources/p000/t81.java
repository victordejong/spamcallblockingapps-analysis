package p000;

import android.content.ContentValues;
import android.database.Cursor;
import com.mopub.common.Constants;
import java.io.Serializable;
/* renamed from: t81 */
/* loaded from: classes3-dex2jar.jar:t81.class */
public class t81 extends v71<t81> implements Serializable {

    /* renamed from: k */
    public static final String f8155k = v71.m384C("name");

    /* renamed from: l */
    public static final String f8156l = v71.m384C("mime");

    /* renamed from: m */
    public static final String f8157m = v71.m384C("message_id");

    /* renamed from: n */
    public static final String f8158n = v71.m384C(Constants.VAST_TRACKER_CONTENT);

    /* renamed from: o */
    public static final String f8159o = v71.m384C("modify");

    /* renamed from: d */
    public long f8160d;

    /* renamed from: f */
    public long f8161f;

    /* renamed from: g */
    public String f8162g;

    /* renamed from: h */
    public String f8163h;

    /* renamed from: j */
    public byte[] f8164j;

    @Override // p000.v71
    /* renamed from: A */
    public void mo68A(long j) {
        this.f8160d = j;
    }

    @Override // p000.v71
    /* renamed from: B */
    public ContentValues mo67B() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f8157m, Long.valueOf(this.f8161f));
        contentValues.put(f8155k, this.f8163h);
        contentValues.put(f8156l, this.f8162g);
        contentValues.put(f8158n, this.f8164j);
        contentValues.put(f8159o, Long.valueOf(System.currentTimeMillis()));
        return contentValues;
    }

    /* renamed from: E */
    public t81 m546E(Cursor cursor) {
        try {
            this.f8160d = cursor.getLong(cursor.getColumnIndex("_id"));
        } catch (Throwable th) {
        }
        try {
            this.f8161f = cursor.getLong(cursor.getColumnIndex(f8157m));
        } catch (Throwable th2) {
        }
        try {
            this.f8163h = cursor.getString(cursor.getColumnIndex(f8155k));
        } catch (Throwable th3) {
        }
        try {
            this.f8162g = cursor.getString(cursor.getColumnIndex(f8156l));
        } catch (Throwable th4) {
        }
        try {
            this.f8164j = cursor.getBlob(cursor.getColumnIndex(f8158n));
        } catch (Throwable th5) {
        }
        try {
            cursor.getLong(cursor.getColumnIndex(f8159o));
        } catch (Throwable th6) {
        }
        this.f8331a = this.f8160d <= 0;
        return this;
    }

    /* renamed from: F */
    public Cursor m545F(long j) {
        return m366w(f8157m + " = " + j, null);
    }

    /* renamed from: G */
    public boolean m544G() {
        return this.f8162g.toLowerCase().startsWith("audio/") || this.f8162g.toLowerCase().equals("application/ogg");
    }

    /* renamed from: H */
    public boolean m543H() {
        return this.f8162g.toLowerCase().startsWith("image/");
    }

    /* renamed from: I */
    public boolean m542I() {
        return this.f8162g.toLowerCase().equals("application/smil");
    }

    /* renamed from: J */
    public boolean m541J() {
        return this.f8162g.toLowerCase().startsWith("text/");
    }

    /* renamed from: K */
    public boolean m540K() {
        return this.f8162g.toLowerCase().startsWith("video/");
    }

    /* renamed from: L */
    public void m539L() {
        this.f8160d = -1L;
        this.f8331a = true;
    }

    @Override // p000.v71
    /* renamed from: a */
    public String mo63a() {
        return String.valueOf(this.f8160d);
    }

    @Override // p000.v71
    /* renamed from: b */
    public String mo62b() {
        return "_id";
    }

    @Override // p000.v71
    /* renamed from: k */
    public /* bridge */ /* synthetic */ t81 mo61k(Cursor cursor) {
        m546E(cursor);
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
        String str = f8157m;
        sb.append(str);
        sb.append(" INTEGER NOT NULL, ");
        sb.append(f8155k);
        sb.append(" TEXT NULL, ");
        sb.append(f8156l);
        sb.append(" TEXT NOT NULL, ");
        sb.append(f8158n);
        sb.append(" BLOB NOT NULL, ");
        sb.append(f8159o);
        sb.append(" INTEGER NOT NULL DEFAULT(strftime('%s', 'now')*1000) );");
        return new String[]{sb.toString(), "CREATE INDEX " + v71.m384C("msg_id_idx") + "    ON " + mo59p() + " (" + str + ");", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("msg_part_add") + " AFTER INSERT ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("call_log") + " SET " + v71.m384C("message_parts") + "=" + v71.m384C("message_parts") + "+1 WHERE _id = NEW." + str + "; END", "CREATE TRIGGER IF NOT EXISTS " + v71.m384C("msg_part_delete") + " AFTER DELETE ON " + mo59p() + " FOR EACH ROW BEGIN UPDATE " + v71.m384C("contacts") + " SET " + v71.m384C("count_block_rules") + "=" + v71.m384C("count_block_rules") + "-1 WHERE _id = OLD." + str + "; END"};
    }

    @Override // p000.v71
    /* renamed from: p */
    public String mo59p() {
        return v71.m384C("message_parts");
    }
}
