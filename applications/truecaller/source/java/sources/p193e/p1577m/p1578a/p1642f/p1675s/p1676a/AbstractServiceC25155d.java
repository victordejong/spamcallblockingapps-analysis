package p193e.p1577m.p1578a.p1642f.p1675s.p1676a;

import android.app.Service;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.wallet.zzg;
import com.google.android.gms.wallet.callback.CallbackInput;
import com.google.android.gms.wallet.callback.CallbackOutput;
import com.google.android.gms.wallet.callback.OnCompleteListener;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: e.m.a.f.s.a.d */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/s/a/d.class */
public abstract class AbstractServiceC25155d extends Service {

    /* renamed from: a */
    public Messenger f70395a = new Messenger((Handler) new a(this, Looper.getMainLooper()));
    @VisibleForTesting

    /* renamed from: b */
    public ExecutorService f70396b;

    /* renamed from: a */
    public abstract void m4154a(String str, CallbackInput callbackInput, OnCompleteListener<CallbackOutput> onCompleteListener);

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f70395a = new Messenger((Handler) new a(this, Looper.getMainLooper()));
        zzg.zza();
        this.f70396b = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    }
}
