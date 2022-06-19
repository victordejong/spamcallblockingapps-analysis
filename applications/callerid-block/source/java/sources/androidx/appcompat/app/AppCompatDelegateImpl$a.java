package androidx.appcompat.app;

import android.content.res.Resources;
import java.lang.Thread;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$a.class */
class AppCompatDelegateImpl$a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    final /* synthetic */ Thread.UncaughtExceptionHandler f262a;

    AppCompatDelegateImpl$a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f262a = uncaughtExceptionHandler;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (r0.contains("Drawable") != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m14947a(java.lang.Throwable r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof android.content.res.Resources.NotFoundException
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L32
            r0 = r4
            java.lang.String r0 = r0.getMessage()
            r4 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L32
            r0 = r4
            java.lang.String r1 = "drawable"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L2f
            r0 = r6
            r7 = r0
            r0 = r4
            java.lang.String r1 = "Drawable"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L32
        L2f:
            r0 = 1
            r7 = r0
        L32:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl$a.m14947a(java.lang.Throwable):boolean");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (!m14947a(th)) {
            this.f262a.uncaughtException(thread, th);
            return;
        }
        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
        notFoundException.initCause(th.getCause());
        notFoundException.setStackTrace(th.getStackTrace());
        this.f262a.uncaughtException(thread, notFoundException);
    }
}
