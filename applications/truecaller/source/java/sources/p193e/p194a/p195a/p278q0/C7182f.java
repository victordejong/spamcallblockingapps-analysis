package p193e.p194a.p195a.p278q0;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.truecaller.messaging.clevertap.NUMBERS;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p281t0.AbstractC7262a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.i;
import w3.b.a.h;
import w3.b.a.p;
/* renamed from: e.a.a.q0.f */
/* loaded from: classes10-dex2jar.jar:e/a/a/q0/f.class */
public final class C7182f implements AbstractC7178b {

    /* renamed from: a */
    public final ContentResolver f23077a;

    /* renamed from: b */
    public final AbstractC6392i0 f23078b;

    /* renamed from: c */
    public final AbstractC19230g f23079c;

    /* renamed from: d */
    public final AbstractC7262a f23080d;

    @Inject
    public C7182f(ContentResolver contentResolver, AbstractC6392i0 abstractC6392i0, AbstractC19230g abstractC19230g, AbstractC7262a abstractC7262a) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC7262a, "inboxCleanerDataFetcher");
        this.f23077a = contentResolver;
        this.f23078b = abstractC6392i0;
        this.f23079c = abstractC19230g;
        this.f23080d = abstractC7262a;
    }

    /* renamed from: a */
    public final int m30010a(int i) {
        int count;
        Cursor query = this.f23077a.query(C8582g0.m28338C(), new String[]{"im_group_id"}, C22128a.m8599l2("(roles & ", i, ") != 0"), null, null);
        if (query != null) {
            try {
                l.d(query, "it");
                count = query.getCount();
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            count = 0;
        }
        return count;
    }

    /* renamed from: b */
    public final Long m30009b(boolean z) {
        ContentResolver contentResolver = this.f23077a;
        Uri m28305o = C8582g0.m28305o(5);
        l.d(m28305o, "MessagesTable.getContent…i(Transport.TYPE_HISTORY)");
        return C19286f.m13699E(contentResolver, m28305o, "date", "info2 = 1 AND " + m30007d(z), null, "date DESC LIMIT 1");
    }

    /* renamed from: c */
    public final Long m30008c(String str) {
        ContentResolver contentResolver = this.f23077a;
        Uri m28305o = C8582g0.m28305o(2);
        l.d(m28305o, "MessagesTable.getContentUri(Transport.TYPE_IM)");
        return C19286f.m13699E(contentResolver, m28305o, "date", str, null, "sequence_number DESC, date DESC LIMIT 1");
    }

    /* renamed from: d */
    public final String m30007d(boolean z) {
        return z ? "(status & 1) != 0" : "(status & 1) = 0";
    }

    /* renamed from: e */
    public final NUMBERS m30006e(int i) {
        return i <= 0 ? NUMBERS.ZERO : i == 1 ? NUMBERS.ONE : (2 <= i && 5 >= i) ? NUMBERS.TWO_FIVE : (6 <= i && 10 >= i) ? NUMBERS.SIX_TEN : (11 <= i && 20 >= i) ? NUMBERS.ELEVEN_TWENTY : (21 <= i && 30 >= i) ? NUMBERS.TWENTY_ONE_THIRTY : (31 <= i && 50 >= i) ? NUMBERS.THIRTY_ONE_FIFTY : NUMBERS.FIFTY_PLUS;
    }

    /* renamed from: f */
    public final NUMBERS m30005f(Long l) {
        if (l == null) {
            return NUMBERS.NONE;
        }
        h r = h.r(new b(l.longValue()).L(), p.h());
        l.d(r, "Days.daysBetween(DateTim…lDate(), LocalDate.now())");
        int i = ((i) r).a;
        return i <= 0 ? NUMBERS.ZERO : i == 1 ? NUMBERS.ONE : (2 <= i && 4 >= i) ? NUMBERS.TWO_FOUR : (5 <= i && 7 >= i) ? NUMBERS.FIVE_SEVEN : (8 <= i && 14 >= i) ? NUMBERS.EIGHT_FOURTEEN : (15 <= i && 30 >= i) ? NUMBERS.FIFTEEN_THIRTY : NUMBERS.THIRTY_PLUS;
    }

    /* renamed from: g */
    public final NUMBERS m30004g(int i) {
        return i <= 0 ? NUMBERS.ZERO : i == 1 ? NUMBERS.ONE : i == 2 ? NUMBERS.TWO : (3 <= i && 5 >= i) ? NUMBERS.THREE_FIVE : (6 <= i && 10 >= i) ? NUMBERS.SIX_TEN : NUMBERS.TEN_PLUS;
    }
}
