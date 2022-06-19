package ba;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;
/* renamed from: ba.m */
/* loaded from: classes2-dex2jar.jar:ba/m.class */
public class C0764m {

    /* renamed from: a */
    public final Method f2865a;

    /* renamed from: b */
    public final ThreadMode f2866b;

    /* renamed from: c */
    public final Class<?> f2867c;

    /* renamed from: d */
    public final int f2868d;

    /* renamed from: e */
    public final boolean f2869e;

    /* renamed from: f */
    public String f2870f;

    public C0764m(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.f2865a = method;
        this.f2866b = threadMode;
        this.f2867c = cls;
        this.f2868d = i;
        this.f2869e = z;
    }

    /* renamed from: a */
    public final void m7392a() {
        synchronized (this) {
            if (this.f2870f == null) {
                StringBuilder sb = new StringBuilder(64);
                sb.append(this.f2865a.getDeclaringClass().getName());
                sb.append('#');
                sb.append(this.f2865a.getName());
                sb.append('(');
                sb.append(this.f2867c.getName());
                this.f2870f = sb.toString();
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0764m)) {
            return false;
        }
        m7392a();
        C0764m c0764m = (C0764m) obj;
        c0764m.m7392a();
        return this.f2870f.equals(c0764m.f2870f);
    }

    public int hashCode() {
        return this.f2865a.hashCode();
    }
}
