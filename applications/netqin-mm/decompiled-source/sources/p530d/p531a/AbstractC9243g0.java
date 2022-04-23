package p530d.p531a;

import java.util.Map;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.AbstractC9271l0;
/* renamed from: d.a.g0 */
/* loaded from: classes2-dex2jar.jar:d/a/g0.class */
public abstract class AbstractC9243g0 extends AbstractC9229f0.AbstractC9233c {

    /* renamed from: a */
    public static final AbstractC9271l0.C9275c f35800a = AbstractC9271l0.C9275c.m3016a(new C9244a());

    /* renamed from: d.a.g0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/g0$a.class */
    public static final class C9244a {
        public String toString() {
            return "service config is unused";
        }
    }

    /* renamed from: a */
    public AbstractC9271l0.C9275c mo2138a(Map<String, ?> map) {
        return f35800a;
    }

    /* renamed from: a */
    public abstract String mo2140a();

    /* renamed from: b */
    public abstract int mo2137b();

    /* renamed from: c */
    public abstract boolean mo2136c();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("policy", mo2140a());
        a.m24815a("priority", mo2137b());
        a.m24812a("available", mo2136c());
        return a.toString();
    }
}
