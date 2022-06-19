package p193e.p1512i.p1516b.p1528q2;

import java.util.List;
import p193e.p1512i.p1516b.p1517a2.C22911a;
/* renamed from: e.i.b.q2.h */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/h.class */
public class C23021h {

    /* renamed from: c */
    public static final String f63790c = C23020g.m7587a("Logger");

    /* renamed from: d */
    public static final ThreadLocal<Integer> f63791d = new C23022a();

    /* renamed from: a */
    public final String f63792a;

    /* renamed from: b */
    public final List<C22911a<AbstractC23018e>> f63793b;

    /* renamed from: e.i.b.q2.h$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/q2/h$a.class */
    public class C23022a extends ThreadLocal<Integer> {
        @Override // java.lang.ThreadLocal
        public Integer initialValue() {
            return 0;
        }
    }

    public C23021h(Class<?> cls, List<C22911a<AbstractC23018e>> list) {
        this.f63792a = cls.getSimpleName();
        this.f63793b = list;
    }

    /* renamed from: a */
    public void m7586a(C23019f c23019f) {
        int intValue = f63791d.get().intValue();
        if (intValue > 1) {
            return;
        }
        for (C22911a<AbstractC23018e> c22911a : this.f63793b) {
            f63791d.set(Integer.valueOf(intValue + 1));
            try {
                try {
                    ((AbstractC23018e) c22911a.f63578a.getValue()).mo7579a(this.f63792a, c23019f);
                } catch (Exception e) {
                    String str = "Impossible to log with handler: " + c22911a;
                    if (intValue == 0) {
                    }
                }
                if (intValue == 0) {
                    f63791d.remove();
                } else {
                    f63791d.set(Integer.valueOf(intValue));
                }
            } catch (Throwable th) {
                if (intValue == 0) {
                    f63791d.remove();
                } else {
                    f63791d.set(Integer.valueOf(intValue));
                }
                throw th;
            }
        }
    }

    /* renamed from: b */
    public void m7585b(String str, Throwable th) {
        m7586a(new C23019f(3, str, th, null));
    }

    /* renamed from: c */
    public void m7584c(String str, Object... objArr) {
        m7586a(new C23019f(3, String.format(str, objArr), null, null));
    }
}
