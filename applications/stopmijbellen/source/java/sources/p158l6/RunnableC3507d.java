package p158l6;

import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.Objects;
import p104g6.C2905a;
import p169m6.C3652e;
import p191o6.C3912h;
import p191o6.C3920i;
import p191o6.EnumC3901d;
/* renamed from: l6.d */
/* loaded from: classes2-dex2jar.jar:l6/d.class */
public final /* synthetic */ class RunnableC3507d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f11637a;

    /* renamed from: b */
    public final /* synthetic */ EnumC3901d f11638b;

    /* renamed from: c */
    public final /* synthetic */ Object f11639c;

    /* renamed from: d */
    public final /* synthetic */ Object f11640d;

    public /* synthetic */ RunnableC3507d(Object obj, Object obj2, EnumC3901d enumC3901d, int i) {
        this.f11637a = i;
        this.f11639c = obj;
        this.f11640d = obj2;
        this.f11638b = enumC3901d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11637a) {
            case 0:
                ((GaugeManager) this.f11639c).lambda$stopCollectingGauges$1((String) this.f11640d, this.f11638b);
                return;
            default:
                C3652e c3652e = (C3652e) this.f11639c;
                C3912h c3912h = (C3912h) this.f11640d;
                EnumC3901d enumC3901d = this.f11638b;
                C2905a c2905a = C3652e.f11966r;
                Objects.requireNonNull(c3652e);
                C3920i.C3922b m1638F = C3920i.m1638F();
                m1638F.m4282n();
                C3920i.m1641C((C3920i) m1638F.f7078b, c3912h);
                c3652e.m1929e(m1638F, enumC3901d);
                return;
        }
    }
}
