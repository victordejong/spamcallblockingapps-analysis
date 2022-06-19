package p134j4;

import ba.C0758g;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import p291y.C4951d;
/* renamed from: j4.u0 */
/* loaded from: classes-dex2jar.jar:j4/u0.class */
public final /* synthetic */ class C3254u0 implements AbstractC3183a1 {

    /* renamed from: a */
    public final /* synthetic */ C3187b1 f10988a;

    /* renamed from: b */
    public final /* synthetic */ String f10989b;

    /* renamed from: c */
    public final /* synthetic */ int f10990c;

    /* renamed from: d */
    public final /* synthetic */ long f10991d;

    public /* synthetic */ C3254u0(C3187b1 c3187b1, String str, int i, long j) {
        this.f10988a = c3187b1;
        this.f10989b = str;
        this.f10990c = i;
        this.f10991d = j;
    }

    @Override // p134j4.AbstractC3183a1
    public final Object zza() {
        C3187b1 c3187b1 = this.f10988a;
        String str = this.f10989b;
        int i = this.f10990c;
        long j = this.f10991d;
        Objects.requireNonNull(c3187b1);
        C3266y0 c3266y0 = (C3266y0) ((Map) c3187b1.m2562b(new C0758g(c3187b1, Arrays.asList(str), 2))).get(str);
        if (c3266y0 == null || C4951d.m184s(c3266y0.f11065c.f11054d)) {
            C3187b1.f10729g.m1509c(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        c3187b1.f10730a.m2500c(str, i, j);
        c3266y0.f11065c.f11054d = 4;
        return null;
    }
}
