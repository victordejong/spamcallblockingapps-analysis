package p193e.p1482g.p1483a;

import java.util.IllegalFormatException;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.g.a.b */
/* loaded from: classes-dex2jar.jar:e/g/a/b.class */
public class C22637b extends RuntimeException {
    public C22637b(String str, Throwable th, Object... objArr) {
        try {
            super(String.format(Locale.ROOT, str, objArr), th);
        } catch (IllegalFormatException e) {
            RuntimeException runtimeException = new RuntimeException(C22128a.m8543z2(str, " [ILLEGAL FORMAT, ARGS SUPPRESSED]"));
            if (th != null) {
                runtimeException.addSuppressed(th);
            }
            runtimeException.addSuppressed(e);
            throw runtimeException;
        }
    }
}
