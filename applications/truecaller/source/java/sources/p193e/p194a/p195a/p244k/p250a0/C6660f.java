package p193e.p194a.p195a.p244k.p250a0;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.provider.Telephony;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.sms.SmsTransportInfo;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.C6110d0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6679g;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.a;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.k.a0.f */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a0/f.class */
public class C6660f extends AbstractC6679g<SmsTransportInfo, AbstractC6679g.AbstractC6680a> {

    /* renamed from: d */
    public static final String[] f21968d = {"_id", "address", "body", "date", "error_code", "locked", "person", "protocol", "read", "reply_path_present", "seen", "service_center", UpdateKey.STATUS, "subject", "thread_id", "type"};

    /* renamed from: e */
    public static final String[] f21969e = {"date_sent"};

    /* renamed from: f */
    public static volatile int f21970f = -1;

    /* renamed from: g */
    public static volatile String[] f21971g;

    public C6660f(Context context, AbstractC13497p abstractC13497p, C20592g c20592g) {
        super(context, abstractC13497p, c20592g);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: c */
    public Set<Participant> mo30501c(long j, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, Participant participant, boolean z) {
        HashSet hashSet = new HashSet();
        hashSet.add(participant);
        for (String str : abstractC6691j.mo30570a(j)) {
            if (z) {
                Participant.C3848b m35454e = abstractC6694m.mo30567a(C8574c0.m28346m(str)).m35454e();
                m35454e.f11597d = str;
                hashSet.add(m35454e.m35443a());
            } else {
                hashSet.add(abstractC6694m.mo30567a(str));
            }
        }
        return hashSet;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: d */
    public AbstractC6679g.AbstractC6680a mo30500d(ContentResolver contentResolver, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, b bVar, b bVar2, boolean z) {
        long j = ((e) bVar).a;
        long j2 = ((e) bVar2).a;
        Uri uri = Telephony.Sms.CONTENT_URI;
        String[] strArr = f21971g;
        String[] strArr2 = strArr;
        if (strArr == null) {
            synchronized (this) {
                String[] strArr3 = f21971g;
                strArr2 = strArr3;
                if (strArr3 == null) {
                    String[] strArr4 = f21968d;
                    String[] strArr5 = strArr4;
                    if (m30598m(contentResolver)) {
                        strArr5 = (String[]) a.a(strArr4, "date_sent");
                    }
                    String mo21751g = this.f22036b.mo21751g();
                    strArr2 = strArr5;
                    if (mo21751g != null) {
                        strArr2 = (String[]) a.a(strArr5, mo21751g);
                    }
                    f21971g = strArr2;
                }
            }
        }
        Cursor query = contentResolver.query(uri, strArr2, "date>=? AND date<=? AND type != 3", new String[]{String.valueOf(j), String.valueOf(j2)}, "date DESC, _id DESC");
        if (query == null) {
            return null;
        }
        return new C6658d(abstractC6691j, abstractC6694m, this.f22036b, query, z);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: f */
    public ContentValues mo30499f(AbstractC6691j abstractC6691j, SmsTransportInfo smsTransportInfo, int i) {
        return C10480a.m26026R0(smsTransportInfo);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: g */
    public boolean mo30498g(AbstractC6139g0 abstractC6139g0, AbstractC6679g.AbstractC6680a abstractC6680a) {
        C6110d0 c6110d0 = (C6110d0) abstractC6139g0;
        boolean z = true;
        if ((c6110d0.getStatus() & 1) != 0 || h.e(c6110d0.m31793u1(), abstractC6680a.mo30509u1())) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
        if (r0.m31797j() != r7.mo30516F()) goto L25;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30497h(p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r6, p193e.p194a.p195a.p244k.AbstractC6679g.AbstractC6680a r7) {
        /*
            r5 = this;
            r0 = r6
            e.a.a.g.d0 r0 = (p193e.p194a.p195a.p231g.C6110d0) r0
            r6 = r0
            r0 = r6
            int r0 = r0.getStatus()
            r8 = r0
            r0 = r7
            int r0 = r0.getStatus()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r8
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 != 0) goto L26
            goto L28
        L26:
            r0 = 0
            return r0
        L28:
            r0 = r8
            r1 = r9
            if (r0 != r1) goto L8a
            r0 = r6
            r1 = r6
            int r1 = r1.f20269e
            int r0 = r0.getInt(r1)
            if (r0 == 0) goto L3f
            r0 = 1
            r11 = r0
            goto L42
        L3f:
            r0 = 0
            r11 = r0
        L42:
            r0 = r11
            r1 = r7
            boolean r1 = r1.mo30510q1()
            if (r0 != r1) goto L8a
            r0 = r6
            int r0 = r0.m31796k()
            r1 = 1
            if (r0 == r1) goto L62
            r0 = r6
            boolean r0 = r0.m31802X0()
            r1 = r7
            boolean r1 = r1.mo30515X0()
            if (r0 != r1) goto L8a
        L62:
            r0 = r6
            int r0 = r0.m31796k()
            r1 = 1
            if (r0 == r1) goto L77
            r0 = r6
            boolean r0 = r0.m31801Y()
            r1 = r7
            boolean r1 = r1.mo30514Y()
            if (r0 != r1) goto L8a
        L77:
            r0 = r10
            r11 = r0
            r0 = r6
            long r0 = r0.m31797j()
            r1 = r7
            int r1 = r1.mo30516F()
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L8d
        L8a:
            r0 = 1
            r11 = r0
        L8d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p250a0.C6660f.mo30497h(e.a.a.g.j0.g0, e.a.a.k.g$a):boolean");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: i */
    public boolean mo30496i(int i) {
        boolean z = true;
        if ((i & 1) != 0) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: k */
    public boolean mo30494k(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, List<ContentProviderOperation> list, AbstractC6139g0 abstractC6139g0, AbstractC6679g.AbstractC6680a abstractC6680a, boolean z) {
        Message message = abstractC6680a.getMessage();
        SmsTransportInfo smsTransportInfo = (SmsTransportInfo) message.f13393n;
        C6110d0 c6110d0 = (C6110d0) abstractC6139g0;
        long m31794u = c6110d0.m31794u();
        Message.C4209b m35024b = message.m35024b();
        Objects.requireNonNull(smsTransportInfo);
        SmsTransportInfo.C4266b c4266b = new SmsTransportInfo.C4266b(smsTransportInfo, null);
        c4266b.f13875a = m31794u;
        SmsTransportInfo m34886a = c4266b.m34886a();
        m35024b.f13431k = 0;
        m35024b.f13434n = m34886a;
        m35024b.f13421a = m31794u;
        Message m35012a = m35024b.m35012a();
        Message message2 = m35012a;
        if (c6110d0.m31796k() == 1) {
            Message.C4209b m35024b2 = m35012a.m35024b();
            m35024b2.f13428h = c6110d0.m31801Y();
            m35024b2.f13429i = c6110d0.m31802X0();
            message2 = m35024b2.m35012a();
        }
        C10480a.m25877w3(list, message2, -1);
        return true;
    }

    /* renamed from: m */
    public boolean m30598m(ContentResolver contentResolver) {
        int i = f21970f;
        boolean z = true;
        int i2 = i;
        if (i == -1) {
            synchronized (this) {
                int i3 = f21970f;
                i2 = i3;
                if (i3 == -1) {
                    try {
                        Cursor query = contentResolver.query(Telephony.Sms.CONTENT_URI, f21969e, null, null, "date_sent ASC LIMIT 1");
                        if (query != null) {
                            query.close();
                        }
                        i2 = 1;
                    } catch (SQLException e) {
                        i2 = 0;
                    }
                    f21970f = i2;
                }
            }
        }
        if (i2 == 0) {
            z = false;
        }
        return z;
    }
}
