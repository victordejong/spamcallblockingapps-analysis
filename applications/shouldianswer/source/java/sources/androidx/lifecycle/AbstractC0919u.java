package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.u */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/u.class */
public abstract class AbstractC0919u {

    /* renamed from: a */
    private final Map<String, Object> f2876a = new HashMap();

    /* renamed from: b */
    private volatile boolean f2877b = false;

    /* renamed from: a */
    private static void m5063a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public void mo5064a() {
    }

    /* renamed from: d */
    public final void m5062d() {
        this.f2877b = true;
        Map<String, Object> map = this.f2876a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f2876a.values()) {
                    m5063a(obj);
                }
            }
        }
        mo5064a();
    }
}
