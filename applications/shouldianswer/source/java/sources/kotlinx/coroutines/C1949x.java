package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.p075c.AbstractC1642d;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.p090b.C1827c;
/* renamed from: kotlinx.coroutines.x */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/x.class */
public final class C1949x {

    /* renamed from: a */
    private static final AtomicLong f4699a = new AtomicLong();

    /* renamed from: b */
    private static final boolean f4700b;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0041, code lost:
        if (r0.equals("on") != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        if (r0.equals("") != false) goto L17;
     */
    static {
        /*
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = r0
            r1.<init>()
            kotlinx.coroutines.C1949x.f4699a = r0
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.C1924v.m2588a(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L17
            goto L50
        L17:
            r0 = r4
            int r0 = r0.hashCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L47
            r0 = r5
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L3b
            r0 = r5
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 != r1) goto L57
            r0 = r4
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L57
            r0 = 0
            r6 = r0
            goto L52
        L3b:
            r0 = r4
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L57
            goto L50
        L47:
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L57
        L50:
            r0 = 1
            r6 = r0
        L52:
            r0 = r6
            kotlinx.coroutines.C1949x.f4700b = r0
            return
        L57:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1949x.m9334clinit():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
        if (r4 != null) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m2516a(kotlin.p075c.AbstractC1646f r4) {
        /*
            r0 = r4
            java.lang.String r1 = "receiver$0"
            kotlin.p081e.p083b.C1694h.m3117b(r0, r1)
            boolean r0 = kotlinx.coroutines.C1789ag.f4470a
            if (r0 != 0) goto Le
            r0 = 0
            return r0
        Le:
            r0 = r4
            kotlinx.coroutines.ab$a r1 = kotlinx.coroutines.C1782ab.f4459a
            kotlin.c.f$c r1 = (kotlin.p075c.AbstractC1646f.AbstractC1651c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.ab r0 = (kotlinx.coroutines.C1782ab) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L68
            r0 = r4
            kotlinx.coroutines.ac$a r1 = kotlinx.coroutines.C1784ac.f4461a
            kotlin.c.f$c r1 = (kotlin.p075c.AbstractC1646f.AbstractC1651c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.ac r0 = (kotlinx.coroutines.C1784ac) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L42
            r0 = r4
            java.lang.String r0 = r0.m2959a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L42
            goto L45
        L42:
            java.lang.String r0 = "coroutine"
            r4 = r0
        L45:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            long r1 = r1.m2962a()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            return r0
        L68:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1949x.m2516a(kotlin.c.f):java.lang.String");
    }

    /* renamed from: a */
    public static final AbstractC1646f m2515a(AbstractC1786ad abstractC1786ad, AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1786ad, "receiver$0");
        C1694h.m3117b(abstractC1646f, "context");
        AbstractC1646f plus = abstractC1786ad.mo2809b().plus(abstractC1646f);
        AbstractC1646f plus2 = C1789ag.f4470a ? plus.plus(new C1782ab(f4699a.incrementAndGet())) : plus;
        AbstractC1646f abstractC1646f2 = plus2;
        if (plus != C1810as.m2927a()) {
            abstractC1646f2 = plus2;
            if (plus.get(AbstractC1642d.f4366a) == null) {
                abstractC1646f2 = plus2.plus(C1810as.m2927a());
            }
        }
        return abstractC1646f2;
    }

    /* renamed from: a */
    public static final AbstractC1950y m2517a() {
        return f4700b ? C1827c.f4552b : C1942s.f4692b;
    }
}
