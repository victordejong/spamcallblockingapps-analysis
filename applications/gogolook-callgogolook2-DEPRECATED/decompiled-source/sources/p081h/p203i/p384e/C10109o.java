package p081h.p203i.p384e;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import p081h.p203i.p384e.p386w.C10157k;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10178d;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* renamed from: h.i.e.o */
/* loaded from: classes2-dex2jar.jar:h/i/e/o.class */
public final class C10109o {
    /* renamed from: a */
    public static AbstractC10104j m13370a(C10174a aVar) throws C10105k, C10113s {
        boolean i = aVar.m13248i();
        aVar.m13256b(true);
        try {
            try {
                AbstractC10104j a = C10157k.m13302a(aVar);
                aVar.m13256b(i);
                return a;
            } catch (OutOfMemoryError e) {
                throw new C10108n("Failed parsing JSON source: " + aVar + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new C10108n("Failed parsing JSON source: " + aVar + " to Json", e2);
            }
        } catch (Throwable th) {
            aVar.m13256b(i);
            throw th;
        }
    }

    /* renamed from: a */
    public static AbstractC10104j m13369a(Reader reader) throws C10105k, C10113s {
        try {
            C10174a aVar = new C10174a(reader);
            AbstractC10104j a = m13370a(aVar);
            if (!a.m13376t() && aVar.mo13272F() != EnumC10176b.END_DOCUMENT) {
                throw new C10113s("Did not consume the entire document.");
            }
            return a;
        } catch (C10178d e) {
            throw new C10113s(e);
        } catch (IOException e2) {
            throw new C10105k(e2);
        } catch (NumberFormatException e3) {
            throw new C10113s(e3);
        }
    }

    /* renamed from: b */
    public static AbstractC10104j m13367b(String str) throws C10113s {
        return m13369a(new StringReader(str));
    }

    @Deprecated
    /* renamed from: a */
    public AbstractC10104j m13368a(String str) throws C10113s {
        return m13367b(str);
    }
}
