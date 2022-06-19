package kotlinx.coroutines;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ch */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ch.class */
public final class C1882ch {
    /* renamed from: a */
    public static final AbstractC1841bb m2705a(int i, String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        boolean z = true;
        if (i < 1) {
            z = false;
        }
        if (z) {
            return new C1880cg(i, str);
        }
        throw new IllegalArgumentException(("Expected at least one thread, but " + i + " specified").toString());
    }

    /* renamed from: a */
    public static final AbstractC1841bb m2704a(String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        return m2705a(1, str);
    }
}
