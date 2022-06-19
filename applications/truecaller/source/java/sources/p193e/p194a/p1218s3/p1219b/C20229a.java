package p193e.p194a.p1218s3.p1219b;

import com.truecaller.exception.filters.RemoteFilterRule;
import java.util.Locale;
import java.util.Objects;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.s3.b.a */
/* loaded from: classes9-dex2jar.jar:e/a/s3/b/a.class */
public final class C20229a extends AbstractC20234e {

    /* renamed from: a */
    public static final C20229a f56979a = new C20229a();

    public C20229a() {
        super(null);
    }

    @Override // p193e.p194a.p1218s3.p1219b.AbstractC20234e
    /* renamed from: a */
    public boolean mo11314a(RemoteFilterRule remoteFilterRule, Throwable th) {
        boolean z;
        String message;
        l.e(remoteFilterRule, "rule");
        l.e(th, "e");
        String value = remoteFilterRule.getValue();
        if (!(value == null || r.p(value))) {
            String target = remoteFilterRule.getTarget();
            if (target == null || r.p(target)) {
                return false;
            }
            String target2 = remoteFilterRule.getTarget();
            Locale locale = Locale.US;
            l.d(locale, "Locale.US");
            Objects.requireNonNull(target2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = target2.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            int hashCode = lowerCase.hashCode();
            if (hashCode == -8935421) {
                if (lowerCase.equals("classname")) {
                    String name = th.getClass().getName();
                    l.d(name, "e.javaClass.name");
                    z = v.z(name, remoteFilterRule.getValue(), true);
                    return z;
                }
                z = false;
                return z;
            } else if (hashCode == 954925063) {
                if (lowerCase.equals("message") && (message = th.getMessage()) != null) {
                    z = v.z(message, remoteFilterRule.getValue(), true);
                    return z;
                }
                z = false;
                return z;
            } else {
                if (hashCode == 2055832509 && lowerCase.equals("stacktrace")) {
                    StackTraceElement[] stackTrace = th.getStackTrace();
                    l.d(stackTrace, "e.stackTrace");
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        l.d(stackTraceElement, "it");
                        String className = stackTraceElement.getClassName();
                        if (className != null ? v.z(className, remoteFilterRule.getValue(), true) : false) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                return z;
            }
        }
        return false;
    }
}
