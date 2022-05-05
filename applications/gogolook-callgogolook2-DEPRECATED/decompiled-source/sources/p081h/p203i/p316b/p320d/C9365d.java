package p081h.p203i.p316b.p320d;

import java.io.IOException;
import java.nio.CharBuffer;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/d.class */
public final class C9365d {
    /* renamed from: a */
    public static <T> T m15357a(Readable readable, AbstractC9377j<T> jVar) throws IOException {
        String a;
        C9301k.m15478a(readable);
        C9301k.m15478a(jVar);
        C9378k kVar = new C9378k(readable);
        do {
            a = kVar.m15341a();
            if (a == null) {
                break;
            }
        } while (jVar.mo15342a(a));
        return jVar.getResult();
    }

    /* renamed from: a */
    public static CharBuffer m15358a() {
        return CharBuffer.allocate(2048);
    }
}
