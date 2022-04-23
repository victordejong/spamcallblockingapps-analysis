package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: h.i.a.e.j.j.g3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g3.class */
public final class C7811g3 {

    /* renamed from: c */
    public static final C7811g3 f18263c = new C7811g3();

    /* renamed from: a */
    public final AbstractC7857l3 f18264a;

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC7849k3<?>> f18265b = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [h.i.a.e.j.j.l3] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7811g3() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.f18265b = r1
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
            h.i.a.e.j.j.l3 r0 = m19379a(r0)
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
            h.i.a.e.j.j.j2 r0 = new h.i.a.e.j.j.j2
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.f18264a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7811g3.<init>():void");
    }

    /* renamed from: a */
    public static C7811g3 m19382a() {
        return f18263c;
    }

    /* renamed from: a */
    public static AbstractC7857l3 m19379a(String str) {
        try {
            return (AbstractC7857l3) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC7849k3<T> m19381a(Class<T> cls) {
        C7891p1.m19103a(cls, "messageType");
        AbstractC7849k3<?> k3Var = this.f18265b.get(cls);
        AbstractC7849k3<T> k3Var2 = (AbstractC7849k3<T>) k3Var;
        if (k3Var == null) {
            k3Var2 = this.f18264a.mo19260a(cls);
            C7891p1.m19103a(cls, "messageType");
            C7891p1.m19103a(k3Var2, "schema");
            AbstractC7849k3<?> putIfAbsent = this.f18265b.putIfAbsent(cls, k3Var2);
            if (putIfAbsent != null) {
                k3Var2 = (AbstractC7849k3<T>) putIfAbsent;
            }
        }
        return k3Var2;
    }

    /* renamed from: a */
    public final <T> AbstractC7849k3<T> m19380a(T t) {
        return m19381a((Class) t.getClass());
    }
}
