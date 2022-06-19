package p250u2;

import java.util.HashMap;
import java.util.Objects;
import p218r2.AbstractC4185c;
import p218r2.AbstractC4187e;
import p218r2.AbstractC4188f;
import p218r2.AbstractC4190h;
import p218r2.C4184b;
import p218r2.EnumC4186d;
import p250u2.AbstractC4469i;
import p250u2.C4453a;
import p250u2.C4456b;
import p283x2.AbstractC4853e;
/* renamed from: u2.k */
/* loaded from: classes-dex2jar.jar:u2/k.class */
public final class C4472k<T> implements AbstractC4188f<T> {

    /* renamed from: a */
    public final AbstractC4469i f13850a;

    /* renamed from: b */
    public final String f13851b;

    /* renamed from: c */
    public final C4184b f13852c;

    /* renamed from: d */
    public final AbstractC4187e<T, byte[]> f13853d;

    /* renamed from: e */
    public final AbstractC4473l f13854e;

    public C4472k(AbstractC4469i abstractC4469i, String str, C4184b c4184b, AbstractC4187e<T, byte[]> abstractC4187e, AbstractC4473l abstractC4473l) {
        this.f13850a = abstractC4469i;
        this.f13851b = str;
        this.f13852c = c4184b;
        this.f13853d = abstractC4187e;
        this.f13854e = abstractC4473l;
    }

    /* renamed from: a */
    public void m885a(AbstractC4185c<T> abstractC4185c, AbstractC4190h abstractC4190h) {
        AbstractC4473l abstractC4473l = this.f13854e;
        AbstractC4469i abstractC4469i = this.f13850a;
        Objects.requireNonNull(abstractC4469i, "Null transportContext");
        Objects.requireNonNull(abstractC4185c, "Null event");
        String str = this.f13851b;
        Objects.requireNonNull(str, "Null transportName");
        AbstractC4187e<T, byte[]> abstractC4187e = this.f13853d;
        Objects.requireNonNull(abstractC4187e, "Null transformer");
        C4184b c4184b = this.f13852c;
        Objects.requireNonNull(c4184b, "Null encoding");
        C4474m c4474m = (C4474m) abstractC4473l;
        AbstractC4853e abstractC4853e = c4474m.f13858c;
        EnumC4186d mo1301c = abstractC4185c.mo1301c();
        AbstractC4469i.AbstractC4470a m893a = AbstractC4469i.m893a();
        m893a.mo888b(abstractC4469i.mo892b());
        m893a.mo887c(mo1301c);
        byte[] mo891c = abstractC4469i.mo891c();
        C4456b.C4458b c4458b = (C4456b.C4458b) m893a;
        c4458b.f13835b = mo891c;
        AbstractC4469i mo889a = c4458b.mo889a();
        C4453a.C4455b c4455b = new C4453a.C4455b();
        c4455b.f13830f = new HashMap();
        c4455b.m908e(c4474m.f13856a.mo7430a());
        c4455b.m906g(c4474m.f13857b.mo7430a());
        c4455b.m907f(str);
        c4455b.m909d(new C4462e(c4184b, abstractC4187e.apply(abstractC4185c.mo1302b())));
        c4455b.f13826b = abstractC4185c.mo1303a();
        abstractC4853e.mo363a(mo889a, c4455b.mo895b(), abstractC4190h);
    }
}
