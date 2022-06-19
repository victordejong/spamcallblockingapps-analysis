package kotlinx.coroutines;

import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.p075c.AbstractC1641c;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ag */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ag.class */
public final class C1789ag {

    /* renamed from: a */
    public static final boolean f4470a;

    /* renamed from: b */
    public static final boolean f4471b;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        if (r0.equals("auto") != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
        if (r0.equals("on") != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r0.equals("") != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
        r6 = true;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.C1924v.m2588a(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto Ld
            goto L32
        Ld:
            r0 = r4
            int r0 = r0.hashCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L55
            r0 = r5
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L49
            r0 = r5
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 == r1) goto L3b
            r0 = r5
            r1 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r0 != r1) goto L6e
            r0 = r4
            java.lang.String r1 = "auto"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6e
        L32:
            java.lang.Class<kotlinx.coroutines.ab> r0 = kotlinx.coroutines.C1782ab.class
            boolean r0 = r0.desiredAssertionStatus()
            r6 = r0
            goto L60
        L3b:
            r0 = r4
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6e
            r0 = 0
            r6 = r0
            goto L60
        L49:
            r0 = r4
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6e
            goto L5e
        L55:
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6e
        L5e:
            r0 = 1
            r6 = r0
        L60:
            r0 = r6
            kotlinx.coroutines.C1789ag.f4470a = r0
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            r1 = 1
            boolean r0 = kotlinx.coroutines.internal.C1924v.m2583a(r0, r1)
            kotlinx.coroutines.C1789ag.f4471b = r0
            return
        L6e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C1789ag.m9281clinit():void");
    }

    /* renamed from: a */
    public static final String m2956a(Object obj) {
        C1694h.m3117b(obj, "receiver$0");
        String hexString = Integer.toHexString(System.identityHashCode(obj));
        C1694h.m3122a((Object) hexString, "Integer.toHexString(System.identityHashCode(this))");
        return hexString;
    }

    /* renamed from: a */
    public static final String m2955a(AbstractC1641c<?> abstractC1641c) {
        String str;
        String str2;
        C1694h.m3117b(abstractC1641c, "receiver$0");
        if (abstractC1641c instanceof C1806ao) {
            str2 = abstractC1641c.toString();
        } else {
            try {
                C1768j.C1769a c1769a = C1768j.f4443a;
                str = C1768j.m2981e(abstractC1641c + '@' + m2956a((Object) abstractC1641c));
            } catch (Throwable th) {
                C1768j.C1769a c1769a2 = C1768j.f4443a;
                str = C1768j.m2981e(C1771k.m2978a(th));
            }
            if (C1768j.m2983c(str) != null) {
                str = abstractC1641c.getClass().getName() + '@' + m2956a((Object) abstractC1641c);
            }
            str2 = (String) str;
        }
        return str2;
    }

    /* renamed from: b */
    public static final String m2954b(Object obj) {
        C1694h.m3117b(obj, "receiver$0");
        String simpleName = obj.getClass().getSimpleName();
        C1694h.m3122a((Object) simpleName, "this::class.java.simpleName");
        return simpleName;
    }
}
