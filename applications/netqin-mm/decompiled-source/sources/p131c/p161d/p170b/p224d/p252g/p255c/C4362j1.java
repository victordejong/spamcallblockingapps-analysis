package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzci;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: c.d.b.d.g.c.j1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/j1.class */
public final class C4362j1 {

    /* renamed from: c */
    public static final C4362j1 f16534c = new C4362j1();

    /* renamed from: a */
    public final AbstractC4396p1 f16535a;

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, AbstractC4391o1<?>> f16536b = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [c.d.b.d.g.c.p1] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4362j1() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.f16536b = r1
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
            c.d.b.d.g.c.p1 r0 = m25891a(r0)
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
            c.d.b.d.g.c.t0 r0 = new c.d.b.d.g.c.t0
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.f16535a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p255c.C4362j1.<init>():void");
    }

    /* renamed from: a */
    public static C4362j1 m25894a() {
        return f16534c;
    }

    /* renamed from: a */
    public static AbstractC4396p1 m25891a(String str) {
        try {
            return (AbstractC4396p1) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC4391o1<T> m25893a(Class<T> cls) {
        zzci.m10699a(cls, "messageType");
        AbstractC4391o1<?> o1Var = this.f16536b.get(cls);
        AbstractC4391o1<T> o1Var2 = (AbstractC4391o1<T>) o1Var;
        if (o1Var == null) {
            o1Var2 = this.f16535a.mo25636a(cls);
            zzci.m10699a(cls, "messageType");
            zzci.m10699a(o1Var2, "schema");
            AbstractC4391o1<?> putIfAbsent = this.f16536b.putIfAbsent(cls, o1Var2);
            if (putIfAbsent != null) {
                o1Var2 = (AbstractC4391o1<T>) putIfAbsent;
            }
        }
        return o1Var2;
    }

    /* renamed from: a */
    public final <T> AbstractC4391o1<T> m25892a(T t) {
        return m25893a((Class) t.getClass());
    }
}
