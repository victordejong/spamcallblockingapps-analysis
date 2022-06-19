package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public abstract class AbstractC0884s {

    /* renamed from: a */
    private final Map<String, Object> f3003a = new HashMap();

    /* renamed from: b */
    private volatile boolean f3004b = false;

    /* renamed from: a */
    private static void m19176a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public void mo19177a() {
    }

    /* renamed from: d */
    public final void m19175d() {
        this.f3004b = true;
        if (this.f3003a != null) {
            synchronized (this.f3003a) {
                for (Object obj : this.f3003a.values()) {
                    m19176a(obj);
                }
            }
        }
        mo19177a();
    }
}
