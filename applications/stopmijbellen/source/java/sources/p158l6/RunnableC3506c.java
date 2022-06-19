package p158l6;

import com.google.android.gms.common.util.BiConsumer;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.Objects;
import java.util.regex.Pattern;
import p104g6.C2905a;
import p169m6.C3652e;
import p191o6.C3920i;
import p191o6.C3929m;
import p191o6.EnumC3901d;
import p222r6.C4221e;
import p222r6.C4224h;
/* renamed from: l6.c */
/* loaded from: classes2-dex2jar.jar:l6/c.class */
public final /* synthetic */ class RunnableC3506c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f11633a;

    /* renamed from: b */
    public final /* synthetic */ Object f11634b;

    /* renamed from: c */
    public final /* synthetic */ Object f11635c;

    /* renamed from: d */
    public final /* synthetic */ Object f11636d;

    public /* synthetic */ RunnableC3506c(Object obj, Object obj2, Object obj3, int i) {
        this.f11633a = i;
        this.f11635c = obj;
        this.f11636d = obj2;
        this.f11634b = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11633a) {
            case 0:
                ((GaugeManager) this.f11635c).lambda$startCollectingGauges$0((String) this.f11636d, (EnumC3901d) this.f11634b);
                return;
            case 1:
                C3652e c3652e = (C3652e) this.f11635c;
                C3929m c3929m = (C3929m) this.f11636d;
                EnumC3901d enumC3901d = (EnumC3901d) this.f11634b;
                C2905a c2905a = C3652e.f11966r;
                Objects.requireNonNull(c3652e);
                C3920i.C3922b m1638F = C3920i.m1638F();
                m1638F.m4282n();
                C3920i.m1642B((C3920i) m1638F.f7078b, c3929m);
                c3652e.m1929e(m1638F, enumC3901d);
                return;
            default:
                BiConsumer biConsumer = (BiConsumer) this.f11635c;
                String str = (String) this.f11636d;
                C4221e c4221e = (C4221e) this.f11634b;
                Pattern pattern = C4224h.f13229e;
                biConsumer.accept(str, c4221e);
                return;
        }
    }
}
