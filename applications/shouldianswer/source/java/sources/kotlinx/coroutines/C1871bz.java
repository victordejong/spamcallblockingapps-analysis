package kotlinx.coroutines;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.bz */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bz.class */
public final class C1871bz extends Thread {

    /* renamed from: a */
    public final C1880cg f4613a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1871bz(C1880cg c1880cg, Runnable runnable, String str) {
        super(runnable, str);
        C1694h.m3117b(c1880cg, "dispatcher");
        C1694h.m3117b(runnable, "target");
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.f4613a = c1880cg;
        setDaemon(true);
    }
}
