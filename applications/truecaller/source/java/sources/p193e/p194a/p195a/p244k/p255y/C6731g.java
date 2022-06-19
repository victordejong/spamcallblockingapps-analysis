package p193e.p194a.p195a.p244k.p255y;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.C4161R;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import p1727n3.p1789g0.C26232y;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p195a.p244k.p255y.C6743n;
import p193e.p194a.p712e4.AbstractC13497p;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.k.y.g */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/g.class */
public class C6731g extends CursorWrapper implements C6743n.AbstractC6744a {

    /* renamed from: J */
    public static volatile String[] f22148J;

    /* renamed from: A */
    public final int f22149A;

    /* renamed from: B */
    public final int f22150B;

    /* renamed from: C */
    public final AbstractC19223c0 f22151C;

    /* renamed from: D */
    public final AbstractC6691j f22152D;

    /* renamed from: E */
    public final AbstractC6694m f22153E;

    /* renamed from: a */
    public final int f22154a;

    /* renamed from: b */
    public final int f22155b;

    /* renamed from: c */
    public final int f22156c;

    /* renamed from: d */
    public final int f22157d;

    /* renamed from: e */
    public final int f22158e;

    /* renamed from: f */
    public final int f22159f;

    /* renamed from: g */
    public final int f22160g;

    /* renamed from: h */
    public final int f22161h;

    /* renamed from: i */
    public final int f22162i;

    /* renamed from: j */
    public final int f22163j;

    /* renamed from: k */
    public final int f22164k;

    /* renamed from: l */
    public final int f22165l;

    /* renamed from: m */
    public final int f22166m;

    /* renamed from: n */
    public final int f22167n;

    /* renamed from: o */
    public final int f22168o;

    /* renamed from: p */
    public final int f22169p;

    /* renamed from: q */
    public final int f22170q;

    /* renamed from: r */
    public final int f22171r;

    /* renamed from: s */
    public final int f22172s;

    /* renamed from: t */
    public final int f22173t;

    /* renamed from: u */
    public final int f22174u;

    /* renamed from: v */
    public final int f22175v;

    /* renamed from: w */
    public final int f22176w;

    /* renamed from: x */
    public final int f22177x;

    /* renamed from: y */
    public final int f22178y;

    /* renamed from: z */
    public final int f22179z;

    public C6731g(AbstractC19223c0 abstractC19223c0, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, Cursor cursor, AbstractC13497p abstractC13497p) {
        super(cursor);
        this.f22151C = abstractC19223c0;
        this.f22154a = cursor.getColumnIndexOrThrow("_id");
        this.f22155b = cursor.getColumnIndexOrThrow("thread_id");
        this.f22156c = cursor.getColumnIndexOrThrow("st");
        this.f22157d = cursor.getColumnIndexOrThrow("seen");
        this.f22158e = cursor.getColumnIndexOrThrow("read");
        this.f22159f = cursor.getColumnIndexOrThrow("locked");
        this.f22160g = cursor.getColumnIndexOrThrow("date_sent");
        this.f22161h = cursor.getColumnIndexOrThrow("date");
        this.f22162i = cursor.getColumnIndexOrThrow("sub");
        this.f22163j = cursor.getColumnIndexOrThrow("sub_cs");
        this.f22164k = cursor.getColumnIndexOrThrow("tr_id");
        this.f22165l = cursor.getColumnIndexOrThrow("ct_l");
        this.f22166m = cursor.getColumnIndexOrThrow("ct_t");
        this.f22167n = cursor.getColumnIndexOrThrow("exp");
        this.f22168o = cursor.getColumnIndexOrThrow("pri");
        this.f22169p = cursor.getColumnIndexOrThrow("retr_st");
        this.f22170q = cursor.getColumnIndexOrThrow("resp_st");
        this.f22171r = cursor.getColumnIndexOrThrow("m_id");
        this.f22172s = cursor.getColumnIndexOrThrow("msg_box");
        this.f22173t = cursor.getColumnIndexOrThrow("m_type");
        this.f22174u = cursor.getColumnIndexOrThrow("m_cls");
        this.f22175v = cursor.getColumnIndexOrThrow("m_size");
        this.f22176w = cursor.getColumnIndexOrThrow("d_rpt");
        this.f22177x = cursor.getColumnIndexOrThrow("d_tm");
        this.f22178y = cursor.getColumnIndexOrThrow("rr");
        this.f22179z = cursor.getColumnIndexOrThrow("read_status");
        this.f22149A = cursor.getColumnIndexOrThrow("rpt_a");
        String mo21752f = abstractC13497p.mo21752f();
        this.f22150B = mo21752f != null ? cursor.getColumnIndex(mo21752f) : -1;
        this.f22152D = abstractC6691j;
        this.f22153E = abstractC6694m;
    }

    /* renamed from: b */
    public static String m30513b(AbstractC19223c0 abstractC19223c0, MmsTransportInfo mmsTransportInfo) {
        String[] strArr = f22148J;
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = abstractC19223c0.mo13761i(C4161R.array.MmsEmptySubject);
            f22148J = strArr2;
        }
        String str = mmsTransportInfo.f13793h;
        String m2349h0 = str == null ? null : C26232y.m2349h0(C26232y.m2487A0(str, 4), mmsTransportInfo.f13794i);
        if (mmsTransportInfo.f13792g == 130) {
            String str2 = strArr2[0];
            String str3 = m2349h0;
            if (h.i(m2349h0)) {
                str3 = str2;
            }
            return str3;
        } else if (h.i(m2349h0)) {
            return null;
        } else {
            for (String str4 : strArr2) {
                if (str4.equalsIgnoreCase(m2349h0)) {
                    return null;
                }
            }
            return m2349h0;
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: F */
    public int mo30516F() {
        return getInt(this.f22156c);
    }

    @Override // p193e.p194a.p195a.p244k.p255y.C6743n.AbstractC6744a
    /* renamed from: N */
    public int mo30491N() {
        return getInt(this.f22176w);
    }

    @Override // p193e.p194a.p195a.p244k.p255y.C6743n.AbstractC6744a
    /* renamed from: V0 */
    public int mo30490V0() {
        return getInt(this.f22169p);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: X0 */
    public boolean mo30515X0() {
        return getInt(this.f22158e) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: Y */
    public boolean mo30514Y() {
        return getInt(this.f22157d) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: g0 */
    public long mo30512g0() {
        if (isNull(this.f22155b)) {
            return -1L;
        }
        return getLong(this.f22155b);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: g2 */
    public long mo30511g2() {
        return getLong(this.f22161h) * 1000;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public long getId() {
        return getLong(this.f22154a);
    }

    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public Message getMessage() throws SQLiteException {
        MmsTransportInfo.C4261b c4261b = new MmsTransportInfo.C4261b();
        long id = getId();
        int i = getInt(this.f22163j);
        String string = getString(this.f22162i);
        String str = string;
        if (string == null) {
            str = "";
        }
        c4261b.f13818b = id;
        c4261b.m34897d(id);
        c4261b.f13819c = mo30516F();
        c4261b.f13820d = isNull(this.f22155b) ? (char) 65535 : getLong(this.f22155b);
        c4261b.f13823g = str;
        c4261b.f13824h = i;
        c4261b.f13832p = getString(this.f22164k);
        c4261b.m34898c(getLong(this.f22167n));
        c4261b.f13834r = getInt(this.f22168o);
        c4261b.f13835s = getInt(this.f22169p);
        c4261b.f13836t = getInt(this.f22170q);
        c4261b.f13837u = getString(this.f22171r);
        c4261b.f13838v = getInt(this.f22172s);
        c4261b.f13839w = getInt(this.f22173t);
        c4261b.f13831o = getString(this.f22174u);
        c4261b.f13840x = getInt(this.f22175v);
        c4261b.f13841y = getInt(this.f22176w);
        c4261b.f13828l = getString(this.f22166m);
        c4261b.f13842z = getLong(this.f22177x);
        c4261b.f13812A = getInt(this.f22178y);
        c4261b.f13813B = getInt(this.f22179z);
        c4261b.f13814C = getInt(this.f22149A) != 0;
        String string2 = getString(this.f22165l);
        if (!TextUtils.isEmpty(string2)) {
            c4261b.f13827k = Uri.parse(string2);
        }
        MmsTransportInfo m34899b = c4261b.m34899b();
        long j = getLong(this.f22155b);
        int i2 = this.f22150B;
        String string3 = (i2 < 0 || isNull(i2)) ? "-1" : getString(this.f22150B);
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.m35009d(getLong(this.f22160g) * 1000);
        c4209b.m35010c(mo30511g2());
        c4209b.f13427g = MmsTransportInfo.m34901c(m34899b.f13808w, m34899b.f13792g, m34899b.f13804s);
        c4209b.f13428h = mo30514Y();
        c4209b.f13429i = mo30515X0();
        c4209b.f13430j = mo30510q1();
        c4209b.m35003j(string3);
        c4209b.f13431k = 1;
        c4209b.f13434n = m34899b;
        AssertionUtil.AlwaysFatal.isNotNull(m34899b.f13790e, "Message URI can not be null");
        c4209b.f13423c = this.f22153E.mo30567a(this.f22152D.mo30569b(j, m34899b.f13790e));
        String m30513b = m30513b(this.f22151C, m34899b);
        if (m30513b != null) {
            c4209b.m35006g(Entity.m35050a(-1L, "text/plain", 0, m30513b));
        }
        return c4209b.m35012a();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    public int getStatus() {
        return MmsTransportInfo.m34901c(getInt(this.f22172s), getInt(this.f22173t), getInt(this.f22170q));
    }

    @Override // p193e.p194a.p195a.p244k.p255y.C6743n.AbstractC6744a
    /* renamed from: m0 */
    public int mo30489m0() {
        return getInt(this.f22170q);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: q1 */
    public boolean mo30510q1() {
        return getInt(this.f22159f) != 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a
    /* renamed from: u1 */
    public String mo30509u1() {
        return null;
    }
}
