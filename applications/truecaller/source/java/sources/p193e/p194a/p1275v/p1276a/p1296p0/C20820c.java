package p193e.p194a.p1275v.p1276a.p1296p0;

import java.util.Locale;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19352y;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p916i5.AbstractC15317d;
import s1.z.c.l;
import w3.b.a.r;
/* renamed from: e.a.v.a.p0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/p0/c.class */
public final class C20820c extends AbstractC20576b<AbstractC20819b> implements AbstractC20818a {

    /* renamed from: b */
    public final AbstractC15317d f58488b;

    /* renamed from: c */
    public final AbstractC19352y f58489c;

    /* renamed from: d */
    public final C20879a f58490d;

    @Inject
    public C20820c(AbstractC15317d abstractC15317d, AbstractC19352y abstractC19352y, C20879a c20879a) {
        l.e(abstractC15317d, "currentTheme");
        l.e(abstractC19352y, "numberFormatter");
        l.e(c20879a, "detailsViewAnalytics");
        this.f58488b = abstractC15317d;
        this.f58489c = abstractC19352y;
        this.f58490d = c20879a;
    }

    /* renamed from: Hj */
    public final String m10663Hj(int i, int i2) {
        r f = r.f(String.valueOf(i));
        r f2 = r.f(String.valueOf(i2));
        Locale locale = Locale.getDefault();
        return C22128a.m8615h2(f.g("ha", locale), '-', f2.g("ha", locale));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00e1, code lost:
        if (r10 <= r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00f2, code lost:
        if (r10 >= r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00f9, code lost:
        r0 = r11;
        r0 = ((java.lang.Number) r0.get(r10)).intValue();
        r0 = r0.get(r10 + 1);
        s1.z.c.l.d(r0, "orderedHourlyCallsList[x + 1]");
        r0 = ((java.lang.Number) r0).intValue();
        r0 = r0.get(r10 + 2);
        s1.z.c.l.d(r0, "orderedHourlyCallsList[x + 2]");
        r0 = ((java.lang.Number) r0).intValue();
        r0 = r0.get(r10 + 3);
        s1.z.c.l.d(r0, "orderedHourlyCallsList[x + 3]");
        r0 = ((java.lang.Number) r0).intValue() + (r0 + (r0 + r0));
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0160, code lost:
        if (r0 <= r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0163, code lost:
        r8 = r10;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x016a, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0171, code lost:
        if (r10 == r0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0174, code lost:
        r10 = r10 + r0;
     */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m10662Ij(com.truecaller.data.entity.Contact r6) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.p1296p0.C20820c.m10662Ij(com.truecaller.data.entity.Contact):int");
    }
}
