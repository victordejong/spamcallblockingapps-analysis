package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.aa */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/aa.class */
public abstract class AbstractC1231aa {

    /* renamed from: a */
    private final Map<String, Object> f4812a = new HashMap();

    /* renamed from: b */
    private volatile boolean f4813b = false;

    /* renamed from: a */
    private static void m43316a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public final <T> T m43315a(String str, T t) {
        Object obj;
        synchronized (this.f4812a) {
            obj = this.f4812a.get(str);
            if (obj == null) {
                this.f4812a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f4813b) {
            m43316a(t);
        }
        return t;
    }

    /* renamed from: a */
    public void mo43317a() {
    }

    /* renamed from: b */
    public final <T> T m43314b(String str) {
        T t;
        Map<String, Object> map = this.f4812a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f4812a.get(str);
        }
        return t;
    }

    /* renamed from: c */
    public final void m43313c() {
        this.f4813b = true;
        Map<String, Object> map = this.f4812a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f4812a.values()) {
                    m43316a(obj);
                }
            }
        }
        mo43317a();
    }
}
