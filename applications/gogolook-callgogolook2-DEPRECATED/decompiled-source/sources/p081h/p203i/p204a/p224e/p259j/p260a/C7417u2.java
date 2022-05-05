package p081h.p203i.p204a.p224e.p259j.p260a;

import java.io.PrintWriter;
import java.util.List;
/* renamed from: h.i.a.e.j.a.u2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u2.class */
public final class C7417u2 extends AbstractC7381r2 {

    /* renamed from: a */
    public final C7393s2 f17482a = new C7393s2();

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7381r2
    /* renamed from: a */
    public final void mo20641a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> a = this.f17482a.m20685a(th, false);
        if (a != null) {
            synchronized (a) {
                for (Throwable th2 : a) {
                    printWriter.print("Suppressed: ");
                    th2.printStackTrace(printWriter);
                }
            }
        }
    }
}
