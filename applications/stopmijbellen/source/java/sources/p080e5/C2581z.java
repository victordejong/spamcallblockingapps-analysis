package p080e5;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p157l5.AbstractC3500d;
/* renamed from: e5.z */
/* loaded from: classes-dex2jar.jar:e5/z.class */
public class C2581z implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final AbstractC2582a f9002a;

    /* renamed from: b */
    public final AbstractC3500d f9003b;

    /* renamed from: c */
    public final Thread.UncaughtExceptionHandler f9004c;

    /* renamed from: d */
    public final AtomicBoolean f9005d = new AtomicBoolean(false);

    /* renamed from: e5.z$a */
    /* loaded from: classes-dex2jar.jar:e5/z$a.class */
    public interface AbstractC2582a {
    }

    public C2581z(AbstractC2582a abstractC2582a, AbstractC3500d abstractC3500d, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f9002a = abstractC2582a;
        this.f9003b = abstractC3500d;
        this.f9004c = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.f9005d.set(true);
        if (thread != null && th != null) {
            try {
                ((C2560k) this.f9002a).m3434a(this.f9003b, thread, th);
            } catch (Exception e) {
            } catch (Throwable th2) {
                Log.isLoggable("FirebaseCrashlytics", 3);
                this.f9004c.uncaughtException(thread, th);
                this.f9005d.set(false);
                throw th2;
            }
        }
        Log.isLoggable("FirebaseCrashlytics", 3);
        this.f9004c.uncaughtException(thread, th);
        this.f9005d.set(false);
    }
}
