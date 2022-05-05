package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModel.class */
public abstract class ViewModel {
    @Nullable

    /* renamed from: a */
    private final Map<String, Object> f4108a = new HashMap();

    /* renamed from: b */
    private volatile boolean f4109b = false;

    /* renamed from: b */
    private static void m18148b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    /* renamed from: a */
    public final void m18149a() {
        this.f4109b = true;
        Map<String, Object> map = this.f4108a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f4108a.values()) {
                    m18148b(obj);
                }
            }
        }
        mo18118d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public <T> T m18147c(String str) {
        T t;
        Map<String, Object> map = this.f4108a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.f4108a.get(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public void mo18118d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public <T> T m18146e(String str, T t) {
        Object obj;
        synchronized (this.f4108a) {
            obj = this.f4108a.get(str);
            if (obj == null) {
                this.f4108a.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.f4109b) {
            m18148b(t);
        }
        return t;
    }
}
