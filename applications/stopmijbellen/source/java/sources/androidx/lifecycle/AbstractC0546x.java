package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.x */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/x.class */
public abstract class AbstractC0546x {

    /* renamed from: a */
    public final Map<String, Object> f2082a = new HashMap();

    /* renamed from: b */
    public volatile boolean f2083b = false;

    /* renamed from: a */
    public void mo7431a() {
    }

    /* renamed from: b */
    public <T> T m7970b(String str, T t) {
        Object obj;
        synchronized (this.f2082a) {
            obj = this.f2082a.get(str);
            if (obj == null) {
                this.f2082a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f2083b && (t instanceof Closeable)) {
            try {
                ((Closeable) t).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return t;
    }
}
