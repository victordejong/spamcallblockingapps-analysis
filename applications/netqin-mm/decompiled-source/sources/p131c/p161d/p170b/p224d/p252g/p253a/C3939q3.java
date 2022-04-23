package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzasf;
import com.google.android.gms.internal.ads.zzbbq;
import java.lang.Thread;
/* renamed from: c.d.b.d.g.a.q3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q3.class */
public final class C3939q3 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f14584a;

    /* renamed from: b */
    public final /* synthetic */ zzasf f14585b;

    public C3939q3(zzasf zzasfVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f14585b = zzasfVar;
        this.f14584a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            this.f14585b.m16386a(thread, th);
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f14584a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                zzbbq.m15856b("AdMob exception reporter failed reporting the exception.");
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f14584a;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
            } catch (Throwable th3) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f14584a;
                if (uncaughtExceptionHandler3 != null) {
                    uncaughtExceptionHandler3.uncaughtException(thread, th);
                }
                throw th3;
            }
        }
    }
}
