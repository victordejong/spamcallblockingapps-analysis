package p130j0;

import android.graphics.Typeface;
import p029c4.C0821e;
import p076e0.C2511f;
import p087f0.C2699e;
/* renamed from: j0.a */
/* loaded from: classes-dex2jar.jar:j0/a.class */
public class RunnableC3145a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C0821e f10591a;

    /* renamed from: b */
    public final /* synthetic */ Typeface f10592b;

    public RunnableC3145a(C3147c c3147c, C0821e c0821e, Typeface typeface) {
        this.f10591a = c0821e;
        this.f10592b = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0821e c0821e = this.f10591a;
        Typeface typeface = this.f10592b;
        C2511f.AbstractC2514c abstractC2514c = ((C2699e.C2700a) c0821e).f9281i;
        if (abstractC2514c != null) {
            abstractC2514c.mo59e(typeface);
        }
    }
}
