package p193e.p194a.p292a4;

import o3.a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import s1.z.c.l;
/* renamed from: e.a.a4.f */
/* loaded from: classes10-dex2jar.jar:e/a/a4/f.class */
public class C7438f implements AbstractC7460m {

    /* renamed from: a */
    public final String f23614a = "Authorized";

    /* renamed from: b */
    public final a<AbstractC8432l> f23615b;

    /* renamed from: c */
    public final boolean f23616c;

    public C7438f(a<AbstractC8432l> aVar, boolean z) {
        l.e(aVar, "accountManager");
        this.f23615b = aVar;
        this.f23616c = z;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: a */
    public boolean mo29587a() {
        return this.f23616c;
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    /* renamed from: b */
    public boolean mo29586b() {
        return ((AbstractC8432l) this.f23615b.get()).mo28580d();
    }

    @Override // p193e.p194a.p292a4.AbstractC7460m
    public String getName() {
        return this.f23614a;
    }
}
