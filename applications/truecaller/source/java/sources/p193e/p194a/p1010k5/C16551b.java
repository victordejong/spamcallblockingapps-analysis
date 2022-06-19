package p193e.p194a.p1010k5;

import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p291a3.AbstractC7419a;
import s1.f0.r;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k5.b */
/* loaded from: classes15-dex2jar.jar:e/a/k5/b.class */
public final class C16551b implements AbstractC16550a {

    /* renamed from: a */
    public final AbstractC7419a f46510a;

    /* renamed from: b */
    public final TelephonyManager f46511b;

    @e(c = "com.truecaller.timezone.TimezoneHelperImpl", f = "TimezoneHelper.kt", l = {51}, m = "getFilters")
    /* renamed from: e.a.k5.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k5/b$a.class */
    public static final class C16552a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46512d;

        /* renamed from: e */
        public int f46513e;

        /* renamed from: g */
        public Object f46515g;

        /* renamed from: h */
        public Object f46516h;

        /* renamed from: i */
        public Object f46517i;

        /* renamed from: j */
        public Object f46518j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16552a(d dVar) {
            super(dVar);
            C16551b.this = r4;
        }

        /* renamed from: s */
        public final Object m17253s(Object obj) {
            this.f46512d = obj;
            this.f46513e |= Integer.MIN_VALUE;
            return C16551b.this.m17255c(null, this);
        }
    }

    @e(c = "com.truecaller.timezone.TimezoneHelperImpl", f = "TimezoneHelper.kt", l = {27}, m = "shouldShowTimezone")
    /* renamed from: e.a.k5.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k5/b$b.class */
    public static final class C16553b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f46519d;

        /* renamed from: e */
        public int f46520e;

        /* renamed from: g */
        public Object f46522g;

        /* renamed from: h */
        public Object f46523h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16553b(d dVar) {
            super(dVar);
            C16551b.this = r4;
        }

        /* renamed from: s */
        public final Object m17252s(Object obj) {
            this.f46519d = obj;
            this.f46520e |= Integer.MIN_VALUE;
            return C16551b.this.mo17257a(null, this);
        }
    }

    @Inject
    public C16551b(@Named("features_registry") C20592g c20592g, AbstractC7419a abstractC7419a, TelephonyManager telephonyManager) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC7419a, "blockManager");
        l.e(telephonyManager, "telephonyManager");
        this.f46510a = abstractC7419a;
        this.f46511b = telephonyManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f6  */
    @Override // p193e.p194a.p1010k5.AbstractC16550a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17257a(com.truecaller.data.entity.Contact r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1010k5.C16551b.mo17257a(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1010k5.AbstractC16550a
    /* renamed from: b */
    public String mo17256b(Contact contact) {
        String str;
        Object obj;
        l.e(contact, AnalyticsConstants.CONTACT);
        if (m17254d(contact)) {
            str = null;
        } else {
            List<Address> m35510k = contact.m35510k();
            l.d(m35510k, "contact.addresses");
            Iterator<T> it = m35510k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                Address address = (Address) obj;
                l.d(address, "it");
                String timeZone = address.getTimeZone();
                if (!(timeZone == null || r.p(timeZone))) {
                    break;
                }
            }
            Address address2 = (Address) obj;
            str = null;
            if (address2 != null) {
                str = address2.getTimeZone();
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x013e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0121 -> B:26:0x012b). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m17255c(com.truecaller.data.entity.Contact r9, s1.w.d<? super java.util.List<com.truecaller.blocking.FilterMatch>> r10) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1010k5.C16551b.m17255c(com.truecaller.data.entity.Contact, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x006e, code lost:
        if (new java.util.HashSet(r0).size() > 1) goto L11;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m17254d(com.truecaller.data.entity.Contact r6) {
        /*
            r5 = this;
            r0 = r6
            java.util.List r0 = r0.m35557M()
            int r0 = r0.size()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 <= r1) goto L74
            r0 = r6
            java.util.List r0 = r0.m35557M()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "contact.numbers"
            s1.z.c.l.d(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r9
            r3 = 10
            int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
            r1.<init>(r2)
            r6 = r0
            r0 = r9
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L36:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L62
            r0 = r10
            java.lang.Object r0 = r0.next()
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            r9 = r0
            r0 = r9
            java.lang.String r1 = "it"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r9
            java.lang.String r1 = r1.getCountryCode()
            boolean r0 = r0.add(r1)
            goto L36
        L62:
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L74
            goto L76
        L74:
            r0 = 0
            r8 = r0
        L76:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1010k5.C16551b.m17254d(com.truecaller.data.entity.Contact):boolean");
    }
}
