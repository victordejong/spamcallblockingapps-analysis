package p293y2;

import java.util.concurrent.Executor;
import p004a3.AbstractC0011a;
import p018b3.AbstractC0721a;
import p161l9.AbstractC3541a;
import p303z2.AbstractC5039c;
import p303z2.AbstractC5040d;
import p303z2.C5057r;
import p303z2.C5065w;
/* renamed from: y2.s */
/* loaded from: classes-dex2jar.jar:y2/s.class */
public final class C5002s implements AbstractC3541a {

    /* renamed from: a */
    public final /* synthetic */ int f15242a;

    /* renamed from: b */
    public final AbstractC3541a f15243b;

    /* renamed from: c */
    public final AbstractC3541a f15244c;

    /* renamed from: d */
    public final AbstractC3541a f15245d;

    /* renamed from: e */
    public final AbstractC3541a f15246e;

    public /* synthetic */ C5002s(AbstractC3541a abstractC3541a, AbstractC3541a abstractC3541a2, AbstractC3541a abstractC3541a3, AbstractC3541a abstractC3541a4, int i) {
        this.f15242a = i;
        this.f15243b = abstractC3541a;
        this.f15244c = abstractC3541a2;
        this.f15245d = abstractC3541a3;
        this.f15246e = abstractC3541a4;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        switch (this.f15242a) {
            case 0:
                return new C5001r((Executor) this.f15243b.get(), (AbstractC5039c) this.f15244c.get(), (AbstractC5003t) this.f15245d.get(), (AbstractC0011a) this.f15246e.get());
            default:
                return new C5057r((AbstractC0721a) this.f15243b.get(), (AbstractC0721a) this.f15244c.get(), (AbstractC5040d) this.f15245d.get(), (C5065w) this.f15246e.get());
        }
    }
}
