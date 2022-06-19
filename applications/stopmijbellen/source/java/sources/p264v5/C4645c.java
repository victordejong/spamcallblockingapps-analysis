package p264v5;

import android.content.Context;
import com.google.firebase.perf.FirebasePerfRegistrar;
import java.util.Set;
import p031c6.C0846a;
import p201p6.AbstractC4019d;
import p201p6.C4017b;
import p201p6.C4018c;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
import p305z4.C5100t;
/* renamed from: v5.c */
/* loaded from: classes2-dex2jar.jar:v5/c.class */
public final /* synthetic */ class C4645c implements AbstractC5082f {

    /* renamed from: b */
    public static final /* synthetic */ C4645c f14338b = new C4645c(0);

    /* renamed from: c */
    public static final /* synthetic */ C4645c f14339c = new C4645c(1);

    /* renamed from: d */
    public static final /* synthetic */ C4645c f14340d = new C4645c(2);

    /* renamed from: a */
    public final /* synthetic */ int f14341a;

    public /* synthetic */ C4645c(int i) {
        this.f14341a = i;
    }

    @Override // p305z4.AbstractC5082f
    /* renamed from: b */
    public final Object mo49b(AbstractC5080d abstractC5080d) {
        C0846a providesFirebasePerformance;
        switch (this.f14341a) {
            case 0:
                C5100t c5100t = (C5100t) abstractC5080d;
                return new C4646d((Context) c5100t.mo40a(Context.class), c5100t.mo39b(AbstractC4647e.class));
            case 1:
                providesFirebasePerformance = FirebasePerfRegistrar.providesFirebasePerformance(abstractC5080d);
                return providesFirebasePerformance;
            default:
                Set mo39b = ((C5100t) abstractC5080d).mo39b(AbstractC4019d.class);
                C4018c c4018c = C4018c.f12636b;
                C4018c c4018c2 = c4018c;
                if (c4018c == null) {
                    synchronized (C4018c.class) {
                        try {
                            C4018c c4018c3 = C4018c.f12636b;
                            c4018c2 = c4018c3;
                            if (c4018c3 == null) {
                                c4018c2 = new C4018c(0);
                                C4018c.f12636b = c4018c2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return new C4017b(mo39b, c4018c2);
        }
    }
}
