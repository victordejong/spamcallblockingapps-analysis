package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/aa.class */
public abstract class aa {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f2559a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f2560b = false;

    private static void a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T a(String str, T t) {
        Object obj;
        synchronized (this.f2559a) {
            obj = this.f2559a.get(str);
            if (obj == null) {
                this.f2559a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f2560b) {
            a(t);
        }
        return t;
    }

    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T b(String str) {
        T t;
        Map<String, Object> map = this.f2559a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f2559a.get(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        this.f2560b = true;
        Map<String, Object> map = this.f2559a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f2559a.values()) {
                    a(obj);
                }
            }
        }
        a();
    }
}
