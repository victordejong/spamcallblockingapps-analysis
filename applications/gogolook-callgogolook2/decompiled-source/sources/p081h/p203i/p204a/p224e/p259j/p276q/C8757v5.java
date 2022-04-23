package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: h.i.a.e.j.q.v5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v5.class */
public final class C8757v5 {

    /* renamed from: c */
    public static final C8757v5 f20021c = new C8757v5();

    /* renamed from: a */
    public final AbstractC8552a6 f20022a;

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC8797z5<?>> f20023b = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [h.i.a.e.j.q.a6] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8757v5() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.f20023b = r1
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
            h.i.a.e.j.q.a6 r0 = m17096a(r0)
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
            h.i.a.e.j.q.z4 r0 = new h.i.a.e.j.q.z4
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.f20022a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p276q.C8757v5.<init>():void");
    }

    /* renamed from: a */
    public static AbstractC8552a6 m17096a(String str) {
        try {
            return (AbstractC8552a6) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static C8757v5 m17099a() {
        return f20021c;
    }

    /* renamed from: a */
    public final <T> AbstractC8797z5<T> m17098a(Class<T> cls) {
        C8591e4.m17686a(cls, "messageType");
        AbstractC8797z5<?> z5Var = this.f20023b.get(cls);
        AbstractC8797z5<T> z5Var2 = (AbstractC8797z5<T>) z5Var;
        if (z5Var == null) {
            z5Var2 = this.f20022a.mo16944a(cls);
            C8591e4.m17686a(cls, "messageType");
            C8591e4.m17686a(z5Var2, "schema");
            AbstractC8797z5<?> putIfAbsent = this.f20023b.putIfAbsent(cls, z5Var2);
            if (putIfAbsent != null) {
                z5Var2 = (AbstractC8797z5<T>) putIfAbsent;
            }
        }
        return z5Var2;
    }

    /* renamed from: a */
    public final <T> AbstractC8797z5<T> m17097a(T t) {
        return m17098a((Class) t.getClass());
    }
}
