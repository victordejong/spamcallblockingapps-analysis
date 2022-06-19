package p193e.p194a.p195a.p244k.p255y;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.transport.mms.MmsTransportInfo;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.C26179e;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1436b.p1437a.p1438b.C22108c;
import p193e.p194a.p1114o5.AbstractC19101s0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6679g;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.f0.r;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.y.n */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/n.class */
public class C6743n extends AbstractC6679g<MmsTransportInfo, AbstractC6744a> {

    /* renamed from: l */
    public static final Uri f22202l = Uri.parse("content://mms/part");

    /* renamed from: m */
    public static final String[] f22203m = {"_id", "mid", "ct", "chset", "text"};

    /* renamed from: n */
    public static volatile boolean f22204n = false;

    /* renamed from: o */
    public static volatile long f22205o = -1;

    /* renamed from: p */
    public static volatile int f22206p = -1;

    /* renamed from: q */
    public static volatile long f22207q = -1;

    /* renamed from: r */
    public static volatile Exception f22208r = null;

    /* renamed from: s */
    public static final AtomicBoolean f22209s = new AtomicBoolean(false);

    /* renamed from: t */
    public static final AtomicInteger f22210t = new AtomicInteger(0);

    /* renamed from: d */
    public final AbstractC19223c0 f22211d;

    /* renamed from: e */
    public final AbstractC19101s0 f22212e;

    /* renamed from: f */
    public C26179e<Integer> f22213f;

    /* renamed from: g */
    public C26179e<Long> f22214g;

    /* renamed from: h */
    public StringBuilder f22215h;

    /* renamed from: i */
    public AbstractC8571b f22216i;

    /* renamed from: j */
    public boolean f22217j = false;

    /* renamed from: k */
    public final int f22218k = f22210t.getAndIncrement();

    /* renamed from: e.a.a.k.y.n$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/n$a.class */
    public interface AbstractC6744a extends AbstractC6679g.AbstractC6680a {
        /* renamed from: N */
        int mo30491N();

        /* renamed from: V0 */
        int mo30490V0();

        /* renamed from: m0 */
        int mo30489m0();
    }

    public C6743n(Context context, AbstractC13497p abstractC13497p, AbstractC19223c0 abstractC19223c0, AbstractC19101s0 abstractC19101s0, C20592g c20592g, AbstractC8571b abstractC8571b) {
        super(context, abstractC13497p, c20592g);
        this.f22211d = abstractC19223c0;
        this.f22212e = abstractC19101s0;
        this.f22216i = abstractC8571b;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: c */
    public Set<Participant> mo30501c(long j, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, Participant participant, boolean z) {
        HashSet hashSet = new HashSet();
        hashSet.add(participant);
        for (String str : abstractC6691j.mo30570a(j)) {
            hashSet.add(abstractC6694m.mo30567a(str));
        }
        return hashSet;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: d */
    public AbstractC6744a mo30500d(ContentResolver contentResolver, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, b bVar, b bVar2, boolean z) {
        Cursor query = contentResolver.query(Telephony.Mms.CONTENT_URI, null, "date>=? AND date<=? AND msg_box != 3 AND m_type IN (128, 130, 132)", new String[]{String.valueOf(((e) bVar).a / 1000), String.valueOf(((e) bVar2).a / 1000)}, "date DESC, _id DESC");
        return query == null ? null : new C6731g(this.f22211d, abstractC6691j, abstractC6694m, query, this.f22036b);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: f */
    public ContentValues mo30499f(AbstractC6691j abstractC6691j, MmsTransportInfo mmsTransportInfo, int i) {
        MmsTransportInfo mmsTransportInfo2 = mmsTransportInfo;
        AssertionUtil.AlwaysFatal.isNotNull(this.f22213f, new String[0]);
        AssertionUtil.AlwaysFatal.isNotNull(this.f22214g, new String[0]);
        AssertionUtil.AlwaysFatal.isNotNull(this.f22215h, new String[0]);
        if (this.f22213f.m2598m() != 0 || this.f22214g.m2598m() != 0) {
            this.f22215h.append(",");
        }
        this.f22215h.append(mmsTransportInfo2.f13787b);
        this.f22213f.m2600k(mmsTransportInfo2.f13787b, Integer.valueOf(i));
        return C10480a.m26030Q0(mmsTransportInfo2);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: g */
    public /* bridge */ /* synthetic */ boolean mo30498g(AbstractC6139g0 abstractC6139g0, AbstractC6744a abstractC6744a) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x010e, code lost:
        if ((r0.getInt(r0.f20274j) != 1 ? 0 : r0.getInt(r0.f20287w)) != r0.mo30491N()) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
        if ((r0 & 4) == 0) goto L6;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30497h(p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r6, p193e.p194a.p195a.p244k.p255y.C6743n.AbstractC6744a r7) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6743n.mo30497h(e.a.a.g.j0.g0, e.a.a.k.g$a):boolean");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: i */
    public boolean mo30496i(int i) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x02aa, code lost:
        if (r16 != null) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02e2, code lost:
        if (r16 == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x02e5, code lost:
        r16.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02f3 A[Catch: all -> 0x049f, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x049f, blocks: (B:38:0x0241, B:40:0x025b, B:42:0x0263, B:60:0x02b8, B:71:0x02e5, B:76:0x02f3, B:80:0x0312, B:82:0x0319, B:84:0x031c, B:86:0x0322, B:88:0x0332, B:90:0x0351, B:92:0x0359, B:94:0x036b, B:96:0x0375, B:99:0x037e, B:103:0x0389, B:105:0x0392, B:108:0x03c4, B:110:0x03d1, B:114:0x03e6, B:120:0x0404, B:123:0x0418, B:125:0x042d, B:127:0x043d, B:132:0x0480), top: B:164:0x0241 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0304  */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo30495j(p193e.p194a.p195a.p244k.AbstractC6691j r14, p193e.p194a.p195a.p244k.AbstractC6694m r15, p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r16, w3.b.a.b r17, w3.b.a.b r18, int r19, java.util.List<android.content.ContentProviderOperation> r20, p193e.p194a.p1129p5.AbstractC19244l0 r21, boolean r22, p193e.p194a.p437c.p580r.p587h.C10545d r23) {
        /*
            Method dump skipped, instructions count: 1291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6743n.mo30495j(e.a.a.k.j, e.a.a.k.m, e.a.a.g.j0.g0, w3.b.a.b, w3.b.a.b, int, java.util.List, e.a.p5.l0, boolean, e.a.c.r.h.d):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0226, code lost:
        if ((r0 & r0) == r0) goto L33;
     */
    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo30494k(p193e.p194a.p195a.p244k.AbstractC6691j r9, p193e.p194a.p195a.p244k.AbstractC6694m r10, java.util.List r11, p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0 r12, p193e.p194a.p195a.p244k.p255y.C6743n.AbstractC6744a r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p255y.C6743n.mo30494k(e.a.a.k.j, e.a.a.k.m, java.util.List, e.a.a.g.j0.g0, e.a.a.k.g$a, boolean):boolean");
    }

    /* renamed from: m */
    public final void m30493m(List<ContentProviderOperation> list, Integer num, Long l, String str, String str2, int i, int i2, int i3, String str3, int i4, String str4) {
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28296x());
        newInsert.withValue("type", str);
        if (Entity.m35045s(str)) {
            newInsert.withValue("entity_type", 0);
            newInsert.withValue("entity_info1", str2);
        } else if (Entity.m35048i(str)) {
            newInsert.withValue("entity_type", 3);
            newInsert.withValue("entity_info1", str2);
            newInsert.withValue("entity_info5", Integer.valueOf(i));
            newInsert.withValue("entity_info6", Integer.valueOf(i2));
            newInsert.withValue("entity_info4", str3);
        } else if (Entity.m35047m(str)) {
            newInsert.withValue("entity_type", 1);
            newInsert.withValue("entity_info1", str2);
            newInsert.withValue("entity_info5", Integer.valueOf(i));
            newInsert.withValue("entity_info6", Integer.valueOf(i2));
            newInsert.withValue("entity_info4", str3);
        } else if (Entity.m35043x(str)) {
            newInsert.withValue("entity_type", 2);
            newInsert.withValue("entity_info1", str2);
            newInsert.withValue("entity_info5", Integer.valueOf(i));
            newInsert.withValue("entity_info6", Integer.valueOf(i2));
            newInsert.withValue("entity_info4", str3);
            newInsert.withValue("entity_info7", Integer.valueOf(i3));
        } else {
            l.e(str, "contentType");
            if (r.w(str, "audio/", true)) {
                newInsert.withValue("entity_type", 4);
                newInsert.withValue("entity_info1", str2);
                newInsert.withValue("entity_info4", Integer.valueOf(i3));
            } else if (Entity.m35044v(str)) {
                newInsert.withValue("entity_type", 6);
                newInsert.withValue("entity_info1", str2);
                newInsert.withValue("entity_info4", str3);
                newInsert.withValue("entity_info6", Integer.valueOf(i4));
                newInsert.withValue("entity_info5", str4);
            } else {
                newInsert.withValue("entity_type", 8);
                newInsert.withValue("entity_info1", str2);
            }
        }
        if (l == null) {
            AssertionUtil.AlwaysFatal.isNotNull(num, new String[0]);
            newInsert.withValueBackReference("message_id", num.intValue());
        } else {
            newInsert.withValue("message_id", l);
        }
        list.add(newInsert.build());
    }

    /* renamed from: n */
    public final void m30492n(List<ContentProviderOperation> list, Integer num, Long l, String str, int i, String str2) {
        String str3;
        if (str2 == null) {
            str2 = "";
        }
        byte[] m2487A0 = C26232y.m2487A0(str2, i);
        if (i == 0) {
            str3 = new String(m2487A0);
        } else {
            try {
                str3 = new String(m2487A0, C22108c.m8797a(i));
            } catch (UnsupportedEncodingException e) {
                try {
                    str3 = new String(m2487A0, "iso-8859-1");
                } catch (UnsupportedEncodingException e2) {
                    str3 = new String(m2487A0);
                }
            }
        }
        if (!TextUtils.isEmpty(str3)) {
            m30493m(list, num, l, str, str3, -1, -1, -1, "", -1, "");
        }
    }
}
