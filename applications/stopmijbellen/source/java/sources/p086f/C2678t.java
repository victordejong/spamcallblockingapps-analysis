package p086f;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayDeque;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import p008a7.C0042i;
import p030c5.AbstractC0842a;
import p093f6.C2763a;
import p124i4.C3102d;
import p134j4.C3220j2;
import p134j4.C3224k2;
import p161l9.AbstractC3541a;
import p189o4.AbstractC3882s;
import p204p9.C4099e0;
import p285x4.AbstractC4857a;
import p291y.C4951d;
/* renamed from: f.t */
/* loaded from: classes-dex2jar.jar:f/t.class */
public class C2678t implements AbstractC0842a, AbstractC3541a, AbstractC3882s {

    /* renamed from: a */
    public Object f9203a;

    public /* synthetic */ C2678t() {
        Throwable e;
        Handler handler;
        Looper mainLooper = Looper.getMainLooper();
        if (Build.VERSION.SDK_INT >= 28) {
            handler = Handler.createAsync(mainLooper);
        } else {
            try {
                handler = (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(mainLooper, null, Boolean.TRUE);
            } catch (IllegalAccessException e2) {
                e = e2;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                handler = new Handler(mainLooper);
                this.f9203a = handler;
            } catch (InstantiationException e3) {
                e = e3;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                handler = new Handler(mainLooper);
                this.f9203a = handler;
            } catch (NoSuchMethodException e4) {
                e = e4;
                Log.w("HandlerCompat", "Unable to invoke Handler(Looper, Callback, boolean) constructor", e);
                handler = new Handler(mainLooper);
                this.f9203a = handler;
            } catch (InvocationTargetException e5) {
                Throwable cause = e5.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(cause);
                }
                throw ((Error) cause);
            }
        }
        this.f9203a = handler;
    }

    public /* synthetic */ C2678t(int i) {
        if (i != 1) {
            if (i != 5) {
                this.f9203a = new ArrayDeque();
            } else {
                this.f9203a = new LinkedHashSet();
            }
        }
    }

    public /* synthetic */ C2678t(Object obj) {
        this.f9203a = obj;
    }

    @Override // p030c5.AbstractC0842a
    /* renamed from: a */
    public void mo107a(String str, Bundle bundle) {
        ((AbstractC4857a) this.f9203a).mo343e("clx", str, bundle);
    }

    /* renamed from: b */
    public void m3288b(C4099e0 c4099e0) {
        synchronized (this) {
            ((Set) this.f9203a).remove(c4099e0);
        }
    }

    /* renamed from: c */
    public void m3287c() {
        C3102d.m2635d((C0042i) this.f9203a);
        C3102d.m2621r((C0042i) this.f9203a);
        if (!((C0042i) this.f9203a).m8874O()) {
            try {
                ((C0042i) this.f9203a).mo8767L();
            } catch (Exception e) {
            }
        }
        if (((C0042i) this.f9203a).m8874O()) {
            C0042i c0042i = (C0042i) this.f9203a;
            if (c0042i.f96i) {
                throw new IllegalStateException("Impression event can only be sent once");
            }
            C4951d.f15103a.m201b(c0042i.f92e.m2859f(), "publishImpressionEvent", new Object[0]);
            c0042i.f96i = true;
        }
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        Objects.requireNonNull((C2763a) this.f9203a);
        GaugeManager gaugeManager = GaugeManager.getInstance();
        Objects.requireNonNull(gaugeManager, "Cannot return null from a non-@Nullable @Provides method");
        return gaugeManager;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        return C3220j2.m2538a(((C3224k2) ((AbstractC3882s) this.f9203a)).m2534a());
    }
}
