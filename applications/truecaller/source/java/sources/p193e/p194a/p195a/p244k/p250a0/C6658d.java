package p193e.p194a.p195a.p244k.p250a0;

import android.content.ContentUris;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.SQLException;
import android.provider.Telephony;
import android.text.TextUtils;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.sms.SmsTransportInfo;
import java.util.List;
import p193e.p194a.p195a.p244k.AbstractC6679g;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p712e4.AbstractC13497p;
/* renamed from: e.a.a.k.a0.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/d.class */
public class C6658d extends CursorWrapper implements AbstractC6679g.AbstractC6680a {

    /* renamed from: a */
    public final int f21948a;

    /* renamed from: b */
    public final int f21949b;

    /* renamed from: c */
    public final int f21950c;

    /* renamed from: d */
    public final int f21951d;

    /* renamed from: e */
    public final int f21952e;

    /* renamed from: f */
    public final int f21953f;

    /* renamed from: g */
    public final int f21954g;

    /* renamed from: h */
    public final int f21955h;

    /* renamed from: i */
    public final int f21956i;

    /* renamed from: j */
    public final int f21957j;

    /* renamed from: k */
    public final int f21958k;

    /* renamed from: l */
    public final int f21959l;

    /* renamed from: m */
    public final int f21960m;

    /* renamed from: n */
    public final int f21961n;

    /* renamed from: o */
    public final int f21962o;

    /* renamed from: p */
    public final int f21963p;

    /* renamed from: q */
    public final int f21964q;

    /* renamed from: r */
    public final AbstractC6691j f21965r;

    /* renamed from: s */
    public final AbstractC6694m f21966s;

    /* renamed from: t */
    public final boolean f21967t;

    public C6658d(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC13497p abstractC13497p, Cursor cursor, boolean z) {
        super(cursor);
        this.f21948a = cursor.getColumnIndexOrThrow("_id");
        this.f21949b = cursor.getColumnIndexOrThrow("thread_id");
        this.f21950c = cursor.getColumnIndexOrThrow(UpdateKey.STATUS);
        this.f21951d = cursor.getColumnIndexOrThrow("protocol");
        this.f21952e = cursor.getColumnIndexOrThrow("type");
        this.f21953f = cursor.getColumnIndexOrThrow("service_center");
        this.f21954g = cursor.getColumnIndexOrThrow("error_code");
        this.f21955h = cursor.getColumnIndexOrThrow("reply_path_present");
        this.f21956i = cursor.getColumnIndexOrThrow("subject");
        this.f21957j = cursor.getColumnIndexOrThrow("seen");
        this.f21958k = cursor.getColumnIndexOrThrow("read");
        this.f21959l = cursor.getColumnIndexOrThrow("locked");
        this.f21960m = cursor.getColumnIndexOrThrow("date_sent");
        this.f21961n = cursor.getColumnIndexOrThrow("date");
        this.f21962o = cursor.getColumnIndexOrThrow("body");
        this.f21963p = cursor.getColumnIndexOrThrow("address");
        this.f21965r = abstractC6691j;
        this.f21966s = abstractC6694m;
        String mo21751g = abstractC13497p.mo21751g();
        this.f21964q = mo21751g != null ? cursor.getColumnIndex(mo21751g) : -1;
        this.f21967t = z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: F */
    public int mo30516F() {
        return getInt(this.f21950c);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: X0 */
    public boolean mo30515X0() {
        return getInt(this.f21958k) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: Y */
    public boolean mo30514Y() {
        return getInt(this.f21957j) != 0;
    }

    /* renamed from: b */
    public final String m30599b(String str) {
        String str2 = str;
        if (this.f21967t) {
            str2 = C8574c0.m28346m(str);
        }
        return str2;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: g0 */
    public long mo30512g0() {
        if (isNull(this.f21949b)) {
            return -1L;
        }
        return getLong(this.f21949b);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: g2 */
    public long mo30511g2() {
        return getLong(this.f21961n);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public long getId() {
        return getLong(this.f21948a);
    }

    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public Message getMessage() throws SQLException {
        String string = getString(this.f21963p);
        String str = string;
        if (string == null) {
            str = "";
        }
        String m28346m = this.f21967t ? C8574c0.m28346m(str) : str;
        long id = getId();
        SmsTransportInfo.C4266b c4266b = new SmsTransportInfo.C4266b();
        c4266b.f13876b = id;
        c4266b.f13877c = mo30516F();
        c4266b.f13878d = isNull(this.f21949b) ? (char) 65535 : getLong(this.f21949b);
        c4266b.f13880f = getInt(this.f21951d);
        c4266b.f13881g = getInt(this.f21952e);
        c4266b.f13882h = getString(this.f21953f);
        c4266b.f13883i = getInt(this.f21954g);
        c4266b.f13884j = getInt(this.f21955h) != 0;
        c4266b.f13879e = ContentUris.withAppendedId(Telephony.Sms.CONTENT_URI, id);
        c4266b.f13885k = getString(this.f21956i);
        c4266b.f13886l = m28346m;
        SmsTransportInfo m34886a = c4266b.m34886a();
        int i = this.f21964q;
        String string2 = (i < 0 || isNull(i)) ? "-1" : getString(this.f21964q);
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.m35009d(getLong(this.f21960m));
        c4209b.m35010c(mo30511g2());
        c4209b.f13427g = SmsTransportInfo.m34887b(m34886a.f13870h);
        c4209b.f13428h = mo30514Y();
        c4209b.f13429i = mo30515X0();
        c4209b.f13430j = mo30510q1();
        c4209b.f13431k = 0;
        c4209b.f13434n = m34886a;
        c4209b.m35003j(string2);
        String string3 = getString(this.f21962o);
        if (string3 == null) {
            string3 = "";
        }
        c4209b.m35006g(Entity.m35050a(-1L, "text/plain", 0, string3));
        c4209b.f13438r = str;
        Participant mo30567a = this.f21966s.mo30567a(m28346m);
        Participant participant = mo30567a;
        String str2 = m28346m;
        if (mo30567a.f11569b == 1) {
            participant = mo30567a;
            str2 = m28346m;
            if (!isNull(this.f21949b)) {
                List<String> mo30570a = this.f21965r.mo30570a(getLong(this.f21949b));
                participant = mo30567a;
                str2 = m28346m;
                if (mo30570a.size() == 1) {
                    String m30599b = m30599b(mo30570a.get(0));
                    participant = mo30567a;
                    str2 = m30599b;
                    if (!TextUtils.equals(m30599b, mo30567a.f11571d)) {
                        participant = this.f21966s.mo30567a(m30599b);
                        str2 = m30599b;
                    }
                }
            }
        }
        Participant participant2 = participant;
        if (!str2.equals(str)) {
            Participant.C3848b m35454e = participant.m35454e();
            m35454e.f11597d = str;
            participant2 = m35454e.m35443a();
        }
        c4209b.f13423c = participant2;
        return c4209b.m35012a();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public int getStatus() {
        return SmsTransportInfo.m34887b(getInt(this.f21952e));
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: q1 */
    public boolean mo30510q1() {
        return getInt(this.f21959l) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: u1 */
    public String mo30509u1() {
        String string = getString(this.f21963p);
        String str = string;
        if (string == null) {
            str = "";
        }
        String str2 = str;
        if (this.f21967t) {
            str2 = C8574c0.m28346m(str);
        }
        return str2;
    }
}
