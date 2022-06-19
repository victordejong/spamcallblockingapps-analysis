package p250u2;

import android.content.Context;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import p018b3.AbstractC0721a;
import p218r2.AbstractC4189g;
import p218r2.C4184b;
import p229s2.C4279a;
import p250u2.AbstractC4469i;
import p250u2.C4456b;
import p283x2.AbstractC4853e;
import p293y2.C4997n;
import p293y2.C5001r;
import p293y2.RunnableC5000q;
/* renamed from: u2.m */
/* loaded from: classes-dex2jar.jar:u2/m.class */
public class C4474m implements AbstractC4473l {

    /* renamed from: e */
    public static volatile AbstractC4475n f13855e;

    /* renamed from: a */
    public final AbstractC0721a f13856a;

    /* renamed from: b */
    public final AbstractC0721a f13857b;

    /* renamed from: c */
    public final AbstractC4853e f13858c;

    /* renamed from: d */
    public final C4997n f13859d;

    public C4474m(AbstractC0721a abstractC0721a, AbstractC0721a abstractC0721a2, AbstractC4853e abstractC4853e, C4997n c4997n, C5001r c5001r) {
        this.f13856a = abstractC0721a;
        this.f13857b = abstractC0721a2;
        this.f13858c = abstractC4853e;
        this.f13859d = c4997n;
        c5001r.f15238a.execute(new RunnableC5000q(c5001r, 0));
    }

    /* renamed from: a */
    public static C4474m m884a() {
        AbstractC4475n abstractC4475n = f13855e;
        if (abstractC4475n != null) {
            return ((C4459c) abstractC4475n).f13841e.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: b */
    public static void m883b(Context context) {
        if (f13855e == null) {
            synchronized (C4474m.class) {
                try {
                    if (f13855e == null) {
                        Objects.requireNonNull(context);
                        f13855e = new C4459c(context, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* renamed from: c */
    public AbstractC4189g m882c(AbstractC4461d abstractC4461d) {
        Set set;
        if (abstractC4461d instanceof AbstractC4461d) {
            Objects.requireNonNull((C4279a) abstractC4461d);
            set = Collections.unmodifiableSet(C4279a.f13421d);
        } else {
            set = Collections.singleton(new C4184b("proto"));
        }
        AbstractC4469i.AbstractC4470a m893a = AbstractC4469i.m893a();
        Objects.requireNonNull(abstractC4461d);
        m893a.mo888b("cct");
        C4456b.C4458b c4458b = (C4456b.C4458b) m893a;
        c4458b.f13835b = ((C4279a) abstractC4461d).m1118b();
        return new C4471j(set, c4458b.mo889a(), this);
    }
}
