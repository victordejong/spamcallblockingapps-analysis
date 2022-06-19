package p250u2;

import android.content.Context;
import androidx.appcompat.widget.C0249l;
import androidx.fragment.app.C0436h0;
import java.util.Objects;
import java.util.concurrent.Executor;
import p018b3.C0722b;
import p018b3.C0724c;
import p161l9.AbstractC3541a;
import p250u2.C4465g;
import p272w2.C4733a;
import p272w2.C4734b;
import p283x2.C4852d;
import p283x2.C4854f;
import p283x2.C4855g;
import p293y2.C4998o;
import p293y2.C5002s;
import p303z2.C5041e;
import p303z2.C5043f;
import p303z2.C5045g;
import p303z2.C5057r;
import p303z2.C5067x;
/* renamed from: u2.c */
/* loaded from: classes-dex2jar.jar:u2/c.class */
public final class C4459c extends AbstractC4475n {

    /* renamed from: a */
    public AbstractC3541a<Executor> f13837a;

    /* renamed from: b */
    public AbstractC3541a<Context> f13838b;

    /* renamed from: c */
    public AbstractC3541a f13839c;

    /* renamed from: d */
    public AbstractC3541a<C5057r> f13840d;

    /* renamed from: e */
    public AbstractC3541a<C4474m> f13841e;

    public C4459c(Context context, C4460a c4460a) {
        AbstractC3541a abstractC3541a = C4465g.C4466a.f13844a;
        Object obj = C4733a.f14597c;
        this.f13837a = !(abstractC3541a instanceof C4733a) ? new C4733a(abstractC3541a) : abstractC3541a;
        Objects.requireNonNull(context, "instance cannot be null");
        C4734b c4734b = new C4734b(context);
        this.f13838b = c4734b;
        C0722b c0722b = C0722b.C0723a.f2774a;
        C0724c c0724c = C0724c.C0725a.f2775a;
        AbstractC3541a c0249l = new C0249l(c4734b, new C0436h0(c4734b, c0722b, c0724c), 3);
        this.f13839c = !(c0249l instanceof C4733a) ? new C4733a(c0249l) : c0249l;
        AbstractC3541a c5002s = new C5002s(c0722b, c0724c, C5045g.C5046a.f15318a, new C5067x(this.f13838b, C5041e.C5042a.f15316a, C5043f.C5044a.f15317a), 1);
        c5002s = !(c5002s instanceof C4733a) ? new C4733a(c5002s) : c5002s;
        this.f13840d = c5002s;
        C4854f c4854f = new C4854f(c0722b, 0);
        AbstractC3541a<Context> abstractC3541a2 = this.f13838b;
        C4855g c4855g = new C4855g(abstractC3541a2, c5002s, c4854f, c0724c);
        AbstractC3541a<Executor> abstractC3541a3 = this.f13837a;
        AbstractC3541a abstractC3541a4 = this.f13839c;
        AbstractC3541a c4476o = new C4476o(c0722b, c0724c, new C4852d(abstractC3541a3, abstractC3541a4, c4855g, c5002s, c5002s), new C4998o(abstractC3541a2, abstractC3541a4, c5002s, c4855g, abstractC3541a3, c5002s, c0722b, 0), new C5002s(abstractC3541a3, c5002s, c4855g, c5002s, 0));
        this.f13841e = !(c4476o instanceof C4733a) ? new C4733a(c4476o) : c4476o;
    }
}
