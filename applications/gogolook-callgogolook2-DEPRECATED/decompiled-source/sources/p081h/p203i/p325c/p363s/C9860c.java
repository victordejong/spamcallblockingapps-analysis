package p081h.p203i.p325c.p363s;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p336m.C9503s;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p366u.AbstractC9929a;
/* renamed from: h.i.c.s.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/s/c.class */
public class C9860c implements AbstractC9861d {

    /* renamed from: a */
    public AbstractC9929a<C9863e> f22333a;

    public C9860c(Context context) {
        this(new C9503s(C9858a.m14075a(context)));
    }

    @VisibleForTesting
    public C9860c(AbstractC9929a<C9863e> aVar) {
        this.f22333a = aVar;
    }

    @NonNull
    /* renamed from: a */
    public static C9480d<AbstractC9861d> m14073a() {
        C9480d.C9482b a = C9480d.m15099a(AbstractC9861d.class);
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15083a(C9859b.m14074a());
        return a.m15080b();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9861d m14071a(AbstractC9483e eVar) {
        return new C9860c((Context) eVar.mo15033a(Context.class));
    }

    @Override // p081h.p203i.p325c.p363s.AbstractC9861d
    @NonNull
    /* renamed from: a */
    public AbstractC9861d.EnumC9862a mo14070a(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean a = this.f22333a.get().m14066a(str, currentTimeMillis);
        boolean a2 = this.f22333a.get().m14068a(currentTimeMillis);
        return (!a || !a2) ? a2 ? AbstractC9861d.EnumC9862a.GLOBAL : a ? AbstractC9861d.EnumC9862a.SDK : AbstractC9861d.EnumC9862a.NONE : AbstractC9861d.EnumC9862a.COMBINED;
    }
}
