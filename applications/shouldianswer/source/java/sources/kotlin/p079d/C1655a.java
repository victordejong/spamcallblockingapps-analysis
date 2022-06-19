package kotlin.p079d;

import java.lang.reflect.Method;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.d.a */
/* loaded from: classes-dex2jar.jar:kotlin/d/a.class */
public class C1655a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: kotlin.d.a$a */
    /* loaded from: classes-dex2jar.jar:kotlin/d/a$a.class */
    public static final class C1656a {

        /* renamed from: a */
        public static final Method f4376a;

        /* renamed from: b */
        public static final C1656a f4377b = new C1656a();

        /* JADX WARN: Removed duplicated region for block: B:13:0x0064 A[LOOP:0: B:3:0x001b->B:13:0x0064, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006c A[EDGE_INSN: B:18:0x006c->B:15:0x006c ?: BREAK  , SYNTHETIC] */
        static {
            /*
                kotlin.d.a$a r0 = new kotlin.d.a$a
                r1 = r0
                r1.<init>()
                kotlin.p079d.C1655a.C1656a.f4377b = r0
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r0 = r0.getMethods()
                r3 = r0
                r0 = r3
                java.lang.String r1 = "throwableClass.methods"
                kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
                r0 = r3
                int r0 = r0.length
                r4 = r0
                r0 = 0
                r5 = r0
            L1b:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L6a
                r0 = r3
                r1 = r5
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.String r1 = "it"
                kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
                r0 = r6
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "addSuppressed"
                boolean r0 = kotlin.p081e.p083b.C1694h.m3123a(r0, r1)
                if (r0 == 0) goto L59
                r0 = r6
                java.lang.Class[] r0 = r0.getParameterTypes()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "it.parameterTypes"
                kotlin.p081e.p083b.C1694h.m3122a(r0, r1)
                r0 = r7
                java.lang.Object r0 = kotlin.p073a.C1594a.m3208b(r0)
                java.lang.Class r0 = (java.lang.Class) r0
                java.lang.Class<java.lang.Throwable> r1 = java.lang.Throwable.class
                boolean r0 = kotlin.p081e.p083b.C1694h.m3123a(r0, r1)
                if (r0 == 0) goto L59
                r0 = 1
                r8 = r0
                goto L5c
            L59:
                r0 = 0
                r8 = r0
            L5c:
                r0 = r8
                if (r0 == 0) goto L64
                goto L6c
            L64:
                int r5 = r5 + 1
                goto L1b
            L6a:
                r0 = 0
                r6 = r0
            L6c:
                r0 = r6
                kotlin.p079d.C1655a.C1656a.f4376a = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.p079d.C1655a.C1656a.m9260clinit():void");
        }

        private C1656a() {
        }
    }

    /* renamed from: a */
    public void mo3137a(Throwable th, Throwable th2) {
        C1694h.m3117b(th, "cause");
        C1694h.m3117b(th2, "exception");
        Method method = C1656a.f4376a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }
}
