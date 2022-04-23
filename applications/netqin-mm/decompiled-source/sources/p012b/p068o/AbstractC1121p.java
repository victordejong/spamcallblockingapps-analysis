package p012b.p068o;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: b.o.p */
/* loaded from: classes-dex2jar.jar:b/o/p.class */
public abstract class AbstractC1121p {

    /* renamed from: a */
    public final Map<String, Object> f4623a = new HashMap();

    /* renamed from: a */
    public static void m34629a(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: a */
    public final void m34630a() {
        Map<String, Object> map = this.f4623a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f4623a.values()) {
                    m34629a(obj);
                }
            }
        }
        mo34609b();
    }

    /* renamed from: b */
    public void mo34609b() {
    }
}
