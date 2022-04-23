package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public abstract class AbstractC0368s {

    /* renamed from: a */
    private final Map<String, Object> f2071a = new HashMap();

    /* renamed from: b */
    private static void m12965b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m12966a() {
        Map<String, Object> map = this.f2071a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f2071a.values()) {
                    m12965b(obj);
                }
            }
        }
        m12963d();
    }

    /* renamed from: c */
    <T> T m12964c(String str) {
        T t;
        Map<String, Object> map = this.f2071a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f2071a.get(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void m12963d() {
    }
}
