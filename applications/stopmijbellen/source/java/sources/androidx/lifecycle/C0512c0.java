package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.c0 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/c0.class */
public class C0512c0 {

    /* renamed from: a */
    public final HashMap<String, AbstractC0546x> f2027a = new HashMap<>();

    /* renamed from: a */
    public final void m8002a() {
        for (AbstractC0546x abstractC0546x : this.f2027a.values()) {
            abstractC0546x.f2083b = true;
            Map<String, Object> map = abstractC0546x.f2082a;
            if (map != null) {
                synchronized (map) {
                    for (Object obj : abstractC0546x.f2082a.values()) {
                        if (obj instanceof Closeable) {
                            try {
                                ((Closeable) obj).close();
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        }
                    }
                }
            }
            abstractC0546x.mo7431a();
        }
        this.f2027a.clear();
    }
}
