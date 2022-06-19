package p006a5;

import java.util.ArrayList;
import java.util.List;
import p015b0.C0713a;
import p030c5.AbstractC0842a;
import p070d5.AbstractC2475a;
import p070d5.AbstractC2476b;
import p070d5.C2477c;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
import p285x4.AbstractC4857a;
import p293y2.C4989f;
import p303z2.C5056q;
import p305z4.C5098r;
import p305z4.C5099s;
/* renamed from: a5.a */
/* loaded from: classes-dex2jar.jar:a5/a.class */
public class C0017a {

    /* renamed from: a */
    public final AbstractC4737a<AbstractC4857a> f17a;

    /* renamed from: b */
    public volatile AbstractC0842a f18b;

    /* renamed from: c */
    public volatile AbstractC2476b f19c;

    /* renamed from: d */
    public final List<AbstractC2475a> f20d = new ArrayList();

    public C0017a(AbstractC4737a<AbstractC4857a> abstractC4737a) {
        AbstractC4739b abstractC4739b;
        C2477c c2477c = new C2477c();
        C0713a c0713a = new C0713a();
        this.f17a = abstractC4737a;
        this.f19c = c2477c;
        this.f18b = c0713a;
        C5056q c5056q = new C5056q(this, 1);
        C5099s c5099s = (C5099s) abstractC4737a;
        AbstractC4739b abstractC4739b2 = c5099s.f15450b;
        C5098r c5098r = C5098r.f15447a;
        if (abstractC4739b2 != c5098r) {
            c5056q.mo97d(abstractC4739b2);
            return;
        }
        AbstractC4739b abstractC4739b3 = null;
        synchronized (c5099s) {
            abstractC4739b = c5099s.f15450b;
            if (abstractC4739b != c5098r) {
                abstractC4739b3 = abstractC4739b;
            } else {
                c5099s.f15449a = new C4989f(c5099s.f15449a, c5056q);
            }
        }
        if (abstractC4739b3 == null) {
            return;
        }
        c5056q.mo97d(abstractC4739b);
    }
}
