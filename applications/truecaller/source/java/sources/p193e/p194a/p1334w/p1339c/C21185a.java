package p193e.p194a.p1334w.p1339c;

import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1159q4.C19635f0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import w3.c.a.a.a.h;
/* renamed from: e.a.w.c.a */
/* loaded from: classes12-dex2jar.jar:e/a/w/c/a.class */
public class C21185a {

    /* renamed from: a */
    public final C19635f0 f59363a;

    /* renamed from: b */
    public final String f59364b;

    /* renamed from: c */
    public final AbstractC21179b f59365c;

    /* renamed from: d */
    public final C20592g f59366d;

    /* renamed from: e */
    public final List<String> f59367e;

    /* renamed from: f */
    public j f59368f;

    /* renamed from: g */
    public final AbstractC17197v0 f59369g;

    public C21185a(AbstractC21179b abstractC21179b, C19635f0 c19635f0, String str, j jVar, AbstractC17197v0 abstractC17197v0, C20592g c20592g) {
        ArrayList arrayList = new ArrayList();
        this.f59367e = arrayList;
        this.f59365c = abstractC21179b;
        this.f59363a = c19635f0;
        this.f59364b = str;
        this.f59368f = jVar;
        this.f59369g = abstractC17197v0;
        this.f59366d = c20592g;
        String string = abstractC21179b.getString("smsReferralSentTo");
        if (!h.j(string)) {
            arrayList.addAll(Arrays.asList(string.split(",")));
        }
    }

    /* renamed from: a */
    public final String m10160a(String str) {
        return String.format(Locale.ENGLISH, "+%d", Integer.valueOf(this.f59368f.o(str)));
    }

    /* renamed from: b */
    public Number m10159b(Contact contact) {
        for (Number number : contact.m35557M()) {
            if (m10155f(number.m35479e(), m10160a(number.getCountryCode()))) {
                return number;
            }
        }
        return null;
    }

    /* renamed from: c */
    public boolean m10158c(String str) {
        return !this.f59367e.isEmpty() && this.f59367e.contains(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002e, code lost:
        if (r0 == e.m.f.a.j.d.c) goto L8;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10157d(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.f59364b     // Catch: e.m.f.a.e -> L35
            java.lang.CharSequence r0 = w3.c.a.a.a.h.c(r0, r1)     // Catch: e.m.f.a.e -> L35
            java.lang.String r0 = (java.lang.String) r0     // Catch: e.m.f.a.e -> L35
            r6 = r0
            r0 = r4
            e.m.f.a.j r0 = r0.f59368f     // Catch: e.m.f.a.e -> L35
            r1 = r5
            r2 = r6
            e.m.f.a.o r0 = r0.R(r1, r2)     // Catch: e.m.f.a.e -> L35
            r5 = r0
            r0 = r4
            e.m.f.a.j r0 = r0.f59368f     // Catch: e.m.f.a.e -> L35
            r1 = r5
            e.m.f.a.j$d r0 = r0.w(r1)     // Catch: e.m.f.a.e -> L35
            r6 = r0
            r0 = r6
            e.m.f.a.j$d r1 = e.m.f.a.j.d.b     // Catch: e.m.f.a.e -> L35
            if (r0 == r1) goto L31
            e.m.f.a.j$d r0 = e.m.f.a.j.d.c     // Catch: e.m.f.a.e -> L35
            r5 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L33
        L31:
            r0 = 1
            r7 = r0
        L33:
            r0 = r7
            return r0
        L35:
            r5 = move-exception
            goto L33
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1334w.p1339c.C21185a.m10157d(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: e */
    public boolean m10156e(Contact contact) {
        C20592g c20592g = this.f59366d;
        return c20592g.f57933g6.m10941a(c20592g, C20592g.f57695p6[376]).isEnabled() && this.f59365c.getString("referralLink", null) != null && contact.m35495t0() && !contact.m35572B0() && !this.f59369g.mo16408H() && m10159b(contact) != null;
    }

    /* renamed from: f */
    public final boolean m10155f(String str, String str2) {
        boolean z;
        boolean m10157d = m10157d(str, str2);
        boolean e = h.e(str2, this.f59364b);
        if (m10157d && e) {
            C20592g c20592g = this.f59366d;
            if (c20592g.f57933g6.m10941a(c20592g, C20592g.f57695p6[376]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
