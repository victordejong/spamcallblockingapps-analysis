package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.concurrent.Callable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.r */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r.class */
public class CallableC22810r implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C22877x f63255a;

    /* renamed from: b */
    public final /* synthetic */ C22844v f63256b;

    /* renamed from: c */
    public final /* synthetic */ CleverTapInstanceConfig f63257c;

    /* renamed from: d */
    public final /* synthetic */ Context f63258d;

    public CallableC22810r(C22877x c22877x, C22844v c22844v, CleverTapInstanceConfig cleverTapInstanceConfig, Context context) {
        this.f63255a = c22877x;
        this.f63256b = c22844v;
        this.f63257c = cleverTapInstanceConfig;
        this.f63258d = context;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22718b0 c22718b0 = this.f63255a.f63516b;
        if (c22718b0 == null || c22718b0.m7910j() == null || this.f63256b.f63406a != null) {
            return null;
        }
        C22735g0 m42081b = this.f63255a.f63515a.m42081b();
        String m8618h = C22128a.m8618h(new StringBuilder(), this.f63257c.f2240a, ":async_deviceID");
        StringBuilder m8728C = C22128a.m8728C("Initializing InAppFC with device Id = ");
        m8728C.append(this.f63255a.f63516b.m7910j());
        m42081b.m7855b(m8618h, m8728C.toString());
        this.f63256b.f63406a = new C22723d0(this.f63258d, this.f63257c, this.f63255a.f63516b.m7910j());
        return null;
    }
}
