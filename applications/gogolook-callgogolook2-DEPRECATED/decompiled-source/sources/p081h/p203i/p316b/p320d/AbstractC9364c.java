package p081h.p203i.p316b.p320d;

import java.io.IOException;
import java.io.Reader;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/c.class */
public abstract class AbstractC9364c {
    /* renamed from: a */
    public abstract Reader mo15361a() throws IOException;

    /* renamed from: a */
    public <T> T m15360a(AbstractC9377j<T> jVar) throws IOException {
        C9301k.m15478a(jVar);
        C9367f a = C9367f.m15356a();
        try {
            Reader a2 = mo15361a();
            a.m15355a((C9367f) a2);
            return (T) C9365d.m15357a(a2, jVar);
        } catch (Throwable th) {
            try {
                a.m15354a(th);
                throw null;
            } finally {
                a.close();
            }
        }
    }

    /* renamed from: b */
    public abstract String mo15359b() throws IOException;
}
