package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzfo;
import java.lang.Thread;
/* renamed from: e.m.a.f.l.a.a0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/a0.class */
public final class C25021a0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final String f69995a;

    /* renamed from: b */
    public final /* synthetic */ zzfo f69996b;

    public C25021a0(zzfo zzfoVar, String str) {
        this.f69996b = zzfoVar;
        this.f69995a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            ((v0) this.f69996b).a.zzay().f.m38589b(this.f69995a, th);
        }
    }
}
