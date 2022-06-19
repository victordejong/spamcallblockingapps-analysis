package p1911s1.p1912a.p1913a.p1914a;

import com.razorpay.AnalyticsConstants;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import s1.a.a.a.a;
import s1.f0.v;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: s1.a.a.a.a$a$c */
/* loaded from: classes5-dex2jar.jar:s1/a/a/a/a$a$c.class */
public final class a$a$c extends m implements a<String> {

    /* renamed from: b */
    public final /* synthetic */ int f77855b;

    /* renamed from: c */
    public final /* synthetic */ Object f77856c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a$a$c(int i, Object obj) {
        super(0);
        this.f77855b = i;
        this.f77856c = obj;
    }

    public final Object invoke() {
        String str;
        Method enclosingMethod;
        Constructor<?> enclosingConstructor;
        int i = this.f77855b;
        String str2 = null;
        if (i == 0) {
            if (!((a.a) this.f77856c).m.d.isAnonymousClass()) {
                s1.a.a.a.v0.f.a s = ((a.a) this.f77856c).m.s();
                if (!s.c) {
                    str2 = s.b().b();
                }
            }
            return str2;
        } else if (i != 1) {
            throw null;
        } else {
            if (((a.a) this.f77856c).m.d.isAnonymousClass()) {
                str = null;
            } else {
                s1.a.a.a.v0.f.a s2 = ((a.a) this.f77856c).m.s();
                if (s2.c) {
                    Class cls = ((a.a) this.f77856c).m.d;
                    String simpleName = cls.getSimpleName();
                    if (cls.getEnclosingMethod() != null) {
                        l.d(simpleName, AnalyticsConstants.NAME);
                        str = v.a0(simpleName, enclosingMethod.getName() + "$", (String) null, 2);
                    } else {
                        if (cls.getEnclosingConstructor() != null) {
                            l.d(simpleName, AnalyticsConstants.NAME);
                            str = v.a0(simpleName, enclosingConstructor.getName() + "$", (String) null, 2);
                        } else {
                            l.d(simpleName, AnalyticsConstants.NAME);
                            str = v.Z(simpleName, '$', (String) null, 2);
                        }
                    }
                } else {
                    str = s2.j().c();
                    l.d(str, "classId.shortClassName.asString()");
                }
            }
            return str;
        }
    }
}
