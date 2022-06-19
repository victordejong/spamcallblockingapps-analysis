package p000;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: df */
/* loaded from: classes-dex2jar.jar:df.class */
public abstract class AbstractC1291df {

    /* renamed from: a */
    public final Map<String, Object> f5840a = new HashMap();

    /* renamed from: b */
    public volatile boolean f5841b = false;

    /* renamed from: c */
    public static void m2692c(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: b */
    public final void m2693b() {
        this.f5841b = true;
        Map<String, Object> map = this.f5840a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f5840a.values()) {
                    m2692c(obj);
                }
            }
        }
        m2690e();
    }

    /* renamed from: d */
    public <T> T m2691d(String str) {
        T t;
        Map<String, Object> map = this.f5840a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f5840a.get(str);
        }
        return t;
    }

    /* renamed from: e */
    public void m2690e() {
    }

    /* renamed from: f */
    public <T> T m2689f(String str, T t) {
        Object obj;
        synchronized (this.f5840a) {
            obj = this.f5840a.get(str);
            if (obj == null) {
                this.f5840a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f5841b) {
            m2692c(t);
        }
        return t;
    }
}
