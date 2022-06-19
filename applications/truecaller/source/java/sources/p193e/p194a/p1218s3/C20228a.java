package p193e.p194a.p1218s3;

import java.lang.Thread;
import p193e.p194a.p615c4.AbstractC10936d;
import p193e.p194a.p615c4.C10937e;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.s3.a */
/* loaded from: classes9-dex2jar.jar:e/a/s3/a.class */
public final class C20228a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final Thread.UncaughtExceptionHandler f56976a;

    /* renamed from: b */
    public final AbstractC10936d f56977b;

    /* renamed from: c */
    public final a<Boolean> f56978c;

    public C20228a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, AbstractC10936d abstractC10936d, a<Boolean> aVar) {
        l.e(abstractC10936d, "exceptionsUnmutingUtil");
        l.e(aVar, "disableLogging");
        this.f56976a = uncaughtExceptionHandler;
        this.f56977b = abstractC10936d;
        this.f56978c = aVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        l.e(thread, "thread");
        if (((Boolean) this.f56978c.invoke()).booleanValue()) {
            return;
        }
        Throwable m25488a = th == null ? null : ((C10937e) this.f56977b).m25488a(th);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f56976a;
        if (uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, m25488a);
    }
}
