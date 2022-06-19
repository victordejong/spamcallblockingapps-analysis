package p283x2;

import android.content.Context;
import p018b3.AbstractC0721a;
import p161l9.AbstractC3541a;
import p293y2.AbstractC4985e;
import p293y2.C4983c;
import p303z2.AbstractC5039c;
/* renamed from: x2.g */
/* loaded from: classes-dex2jar.jar:x2/g.class */
public final class C4855g implements AbstractC3541a {

    /* renamed from: a */
    public final AbstractC3541a<Context> f14884a;

    /* renamed from: b */
    public final AbstractC3541a<AbstractC5039c> f14885b;

    /* renamed from: c */
    public final AbstractC3541a<AbstractC4985e> f14886c;

    /* renamed from: d */
    public final AbstractC3541a<AbstractC0721a> f14887d;

    public C4855g(AbstractC3541a<Context> abstractC3541a, AbstractC3541a<AbstractC5039c> abstractC3541a2, AbstractC3541a<AbstractC4985e> abstractC3541a3, AbstractC3541a<AbstractC0721a> abstractC3541a4) {
        this.f14884a = abstractC3541a;
        this.f14885b = abstractC3541a2;
        this.f14886c = abstractC3541a3;
        this.f14887d = abstractC3541a4;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        Context context = this.f14884a.get();
        AbstractC5039c abstractC5039c = this.f14885b.get();
        AbstractC4985e abstractC4985e = this.f14886c.get();
        this.f14887d.get();
        return new C4983c(context, abstractC5039c, abstractC4985e);
    }
}
