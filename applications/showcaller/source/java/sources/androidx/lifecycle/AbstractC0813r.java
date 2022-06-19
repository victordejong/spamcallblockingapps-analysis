package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public abstract class AbstractC0813r {

    /* renamed from: a */
    private final Map<String, Object> f3733a = new HashMap();

    /* renamed from: b */
    private volatile boolean f3734b = false;

    /* renamed from: b */
    private static void m32354b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public final void m32355a() {
        this.f3734b = true;
        Map<String, Object> map = this.f3733a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f3733a.values()) {
                    m32354b(obj);
                }
            }
        }
        mo28950d();
    }

    /* renamed from: c */
    public <T> T m32353c(String str) {
        T t;
        Map<String, Object> map = this.f3733a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f3733a.get(str);
        }
        return t;
    }

    /* renamed from: d */
    public void mo28950d() {
    }
}
