package p131c.p161d.p282e.p351v;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: c.d.e.v.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/v/d.class */
public class C6057d {

    /* renamed from: b */
    public static volatile C6057d f19499b;

    /* renamed from: a */
    public final Set<AbstractC6059f> f19500a = new HashSet();

    /* renamed from: b */
    public static C6057d m22171b() {
        C6057d dVar = f19499b;
        C6057d dVar2 = dVar;
        if (dVar == null) {
            synchronized (C6057d.class) {
                try {
                    C6057d dVar3 = f19499b;
                    dVar2 = dVar3;
                    if (dVar3 == null) {
                        dVar2 = new C6057d();
                        f19499b = dVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return dVar2;
    }

    /* renamed from: a */
    public Set<AbstractC6059f> m22172a() {
        Set<AbstractC6059f> unmodifiableSet;
        synchronized (this.f19500a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f19500a);
        }
        return unmodifiableSet;
    }
}
