package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: h.i.a.e.j.g.w2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/w2.class */
public final class C7716w2 {

    /* renamed from: c */
    public static final C7716w2 f18068c = new C7716w2();

    /* renamed from: a */
    public final AbstractC7564c3 f18069a;

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC7554b3<?>> f18070b = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [h.i.a.e.j.g.c3] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7716w2() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.f18070b = r1
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0013:
            r0 = r7
            if (r0 > 0) goto L_0x0034
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "com.google.protobuf.AndroidProto3SchemaFactory"
            r1[r2] = r3
            r1 = 0
            r0 = r0[r1]
            h.i.a.e.j.g.c3 r0 = m19698a(r0)
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0034
            int r7 = r7 + 1
            r0 = r8
            r6 = r0
            goto L_0x0013
        L_0x0034:
            r0 = r6
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0042
            h.i.a.e.j.g.a2 r0 = new h.i.a.e.j.g.a2
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.f18069a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7716w2.<init>():void");
    }

    /* renamed from: a */
    public static AbstractC7564c3 m19698a(String str) {
        try {
            return (AbstractC7564c3) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static C7716w2 m19701a() {
        return f18068c;
    }

    /* renamed from: a */
    public final <T> AbstractC7554b3<T> m19700a(Class<T> cls) {
        C7602h1.m20130a(cls, "messageType");
        AbstractC7554b3<?> b3Var = this.f18070b.get(cls);
        AbstractC7554b3<T> b3Var2 = (AbstractC7554b3<T>) b3Var;
        if (b3Var == null) {
            b3Var2 = this.f18069a.mo20294a(cls);
            C7602h1.m20130a(cls, "messageType");
            C7602h1.m20130a(b3Var2, "schema");
            AbstractC7554b3<?> putIfAbsent = this.f18070b.putIfAbsent(cls, b3Var2);
            if (putIfAbsent != null) {
                b3Var2 = (AbstractC7554b3<T>) putIfAbsent;
            }
        }
        return b3Var2;
    }

    /* renamed from: a */
    public final <T> AbstractC7554b3<T> m19699a(T t) {
        return m19700a((Class) t.getClass());
    }
}
