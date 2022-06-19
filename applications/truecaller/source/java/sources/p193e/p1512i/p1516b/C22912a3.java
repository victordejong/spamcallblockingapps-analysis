package p193e.p1512i.p1516b;

import java.lang.reflect.Method;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1528q2.C23014a;
import p193e.p1512i.p1516b.p1528q2.C23016c;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.a.a.a.v0.f.d;
import s1.e0.x;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.i.b.a3 */
/* loaded from: classes-dex2jar.jar:e/i/b/a3.class */
public final class C22912a3 {
    @C23014a.AbstractC23015a
    /* renamed from: a */
    public static final C23019f m7631a(Throwable th) {
        String str;
        l.f(th, "throwable");
        StringBuilder sb = new StringBuilder();
        sb.append("Internal error in ");
        Method enclosingMethod = C23016c.class.getEnclosingMethod();
        if (enclosingMethod != null) {
            if (enclosingMethod.isAnnotationPresent(C23014a.AbstractC23015a.class)) {
                StackTraceElement stackTraceElement = (StackTraceElement) x.e(d.A(C25225a.m4002J1(new Exception().getStackTrace())), 1);
                if (stackTraceElement != null) {
                    String className = stackTraceElement.getClassName();
                    l.b(className, "stackTraceElement.className");
                    StringBuilder m8724D = C22128a.m8724D(v.P(className, "com.criteo.publisher."), '#');
                    m8724D.append(stackTraceElement.getMethodName());
                    m8724D.append(':');
                    m8724D.append(stackTraceElement.getLineNumber());
                    str = m8724D.toString();
                }
            } else {
                str = C23014a.m7588a(C23014a.f63783a, enclosingMethod);
            }
            sb.append(str);
            return new C23019f(6, sb.toString(), th, "onUncaughtErrorAtPublicApi");
        }
        str = null;
        sb.append(str);
        return new C23019f(6, sb.toString(), th, "onUncaughtErrorAtPublicApi");
    }
}
