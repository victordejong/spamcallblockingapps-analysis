package p626l.p638x;

import java.lang.reflect.Method;
import kotlin.Metadata;
import p626l.p627a0.AbstractC14878c;
import p626l.p627a0.C14876b;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018��2\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016¨\u0006\u0011"}, m815d2 = {"Lkotlin/internal/PlatformImplementations;", "", "()V", "addSuppressed", "", "cause", "", "exception", "defaultPlatformRandom", "Lkotlin/random/Random;", "getMatchResultNamedGroup", "Lkotlin/text/MatchGroup;", "matchResult", "Ljava/util/regex/MatchResult;", "name", "", "ReflectAddSuppressedMethod", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.x.a */
/* loaded from: classes3-dex2jar.jar:l/x/a.class */
public class C15079a {

    /* renamed from: l.x.a$a */
    /* loaded from: classes3-dex2jar.jar:l/x/a$a.class */
    public static final class C15080a {

        /* renamed from: a */
        public static final Method f33104a;

        /* JADX WARN: Removed duplicated region for block: B:13:0x0062 A[LOOP:0: B:3:0x0019->B:13:0x0062, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[EDGE_INSN: B:18:0x006a->B:15:0x006a ?: BREAK  , SYNTHETIC] */
        static {
            /*
                l.x.a$a r0 = new l.x.a$a
                r1 = r0
                r1.<init>()
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r0 = r0.getMethods()
                r3 = r0
                r0 = r3
                java.lang.String r1 = "throwableClass.methods"
                p626l.p641z.p643d.C15149k.m383a(r0, r1)
                r0 = r3
                int r0 = r0.length
                r4 = r0
                r0 = 0
                r5 = r0
            L_0x0019:
                r0 = r5
                r1 = r4
                if (r0 >= r1) goto L_0x0068
                r0 = r3
                r1 = r5
                r0 = r0[r1]
                r6 = r0
                r0 = r6
                java.lang.String r1 = "it"
                p626l.p641z.p643d.C15149k.m383a(r0, r1)
                r0 = r6
                java.lang.String r0 = r0.getName()
                java.lang.String r1 = "addSuppressed"
                boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
                if (r0 == 0) goto L_0x0057
                r0 = r6
                java.lang.Class[] r0 = r0.getParameterTypes()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "it.parameterTypes"
                p626l.p641z.p643d.C15149k.m383a(r0, r1)
                r0 = r7
                java.lang.Object r0 = p626l.p632u.C15013i.m574e(r0)
                java.lang.Class r0 = (java.lang.Class) r0
                java.lang.Class<java.lang.Throwable> r1 = java.lang.Throwable.class
                boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
                if (r0 == 0) goto L_0x0057
                r0 = 1
                r8 = r0
                goto L_0x005a
            L_0x0057:
                r0 = 0
                r8 = r0
            L_0x005a:
                r0 = r8
                if (r0 == 0) goto L_0x0062
                goto L_0x006a
            L_0x0062:
                int r5 = r5 + 1
                goto L_0x0019
            L_0x0068:
                r0 = 0
                r6 = r0
            L_0x006a:
                r0 = r6
                p626l.p638x.C15079a.C15080a.f33104a = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p626l.p638x.C15079a.C15080a.m41957clinit():void");
        }
    }

    /* renamed from: a */
    public AbstractC14878c m459a() {
        return new C14876b();
    }

    /* renamed from: a */
    public void mo451a(Throwable th, Throwable th2) {
        C15149k.m377b(th, "cause");
        C15149k.m377b(th2, "exception");
        Method method = C15080a.f33104a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }
}
