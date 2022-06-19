package p193e.p1485h.p1486a.p1493c;

import android.content.Context;
import com.clevertap.android.sdk.CleverTapInstanceConfig;
import java.util.concurrent.Callable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.p1499o0.C22770b;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22897a;
/* renamed from: e.h.a.c.s */
/* loaded from: classes-dex2jar.jar:e/h/a/c/s.class */
public class CallableC22827s implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ Context f63348a;

    /* renamed from: b */
    public final /* synthetic */ C22844v f63349b;

    /* renamed from: c */
    public final /* synthetic */ CleverTapInstanceConfig f63350c;

    /* renamed from: d */
    public final /* synthetic */ C22718b0 f63351d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC22742k f63352e;

    /* renamed from: f */
    public final /* synthetic */ C22727f f63353f;

    public CallableC22827s(Context context, C22844v c22844v, CleverTapInstanceConfig cleverTapInstanceConfig, C22718b0 c22718b0, AbstractC22742k abstractC22742k, C22727f c22727f) {
        this.f63348a = context;
        this.f63349b = c22844v;
        this.f63350c = cleverTapInstanceConfig;
        this.f63351d = c22718b0;
        this.f63352e = abstractC22742k;
        this.f63353f = c22727f;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        Context context = this.f63348a;
        C22844v c22844v = this.f63349b;
        CleverTapInstanceConfig cleverTapInstanceConfig = this.f63350c;
        C22718b0 c22718b0 = this.f63351d;
        AbstractC22742k abstractC22742k = this.f63352e;
        C22727f c22727f = this.f63353f;
        C22735g0 m42081b = cleverTapInstanceConfig.m42081b();
        String m8618h = C22128a.m8618h(new StringBuilder(), cleverTapInstanceConfig.f2240a, ":async_deviceID");
        StringBuilder m8728C = C22128a.m8728C("Initializing Feature Flags with device Id = ");
        m8728C.append(c22718b0.m7910j());
        m42081b.m7855b(m8618h, m8728C.toString());
        if (cleverTapInstanceConfig.f2244e) {
            cleverTapInstanceConfig.m42081b().m7856a(cleverTapInstanceConfig.f2240a, "Feature Flag is not enabled for this instance");
            return null;
        }
        c22844v.f63409d = new C22770b(c22718b0.m7910j(), cleverTapInstanceConfig, abstractC22742k, c22727f, new C22897a(context, cleverTapInstanceConfig));
        C22128a.m8672R0(new StringBuilder(), cleverTapInstanceConfig.f2240a, ":async_deviceID", cleverTapInstanceConfig.m42081b(), "Feature Flags initialized");
        return null;
    }
}
