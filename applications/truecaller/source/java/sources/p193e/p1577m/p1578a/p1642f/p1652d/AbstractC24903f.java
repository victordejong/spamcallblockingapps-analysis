package p193e.p1577m.p1578a.p1642f.p1652d;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.zzq;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.f.d.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/d/f.class */
public abstract class AbstractC24903f<T> {

    /* renamed from: a */
    public final int f69800a;

    /* renamed from: b */
    public final TaskCompletionSource<T> f69801b = new TaskCompletionSource<>();

    /* renamed from: c */
    public final int f69802c;

    /* renamed from: d */
    public final Bundle f69803d;

    public AbstractC24903f(int i, int i2, Bundle bundle) {
        this.f69800a = i;
        this.f69802c = i2;
        this.f69803d = bundle;
    }

    /* renamed from: a */
    public abstract void mo4294a(Bundle bundle);

    /* renamed from: b */
    public abstract boolean mo4293b();

    /* renamed from: c */
    public final void m4296c(zzq zzqVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzqVar);
            valueOf.length();
            valueOf2.length();
        }
        this.f69801b.f6493a.v(zzqVar);
    }

    /* renamed from: d */
    public final void m4295d(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t);
            valueOf.length();
            valueOf2.length();
        }
        this.f69801b.f6493a.w(t);
    }

    public final String toString() {
        StringBuilder m8546z = C22128a.m8546z(55, "Request { what=", this.f69802c, " id=", this.f69800a);
        m8546z.append(" oneWay=");
        m8546z.append(mo4293b());
        m8546z.append("}");
        return m8546z.toString();
    }
}
