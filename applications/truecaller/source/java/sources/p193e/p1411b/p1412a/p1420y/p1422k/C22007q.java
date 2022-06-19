package p193e.p1411b.p1412a.p1420y.p1422k;

import e.b.a.y.j.b;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.p1416w.p1417b.AbstractC21953c;
import p193e.p1411b.p1412a.p1416w.p1417b.C21958s;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.k.q */
/* loaded from: classes-dex2jar.jar:e/b/a/y/k/q.class */
public class C22007q implements AbstractC21987b {

    /* renamed from: a */
    public final String f61156a;

    /* renamed from: b */
    public final EnumC22008a f61157b;

    /* renamed from: c */
    public final b f61158c;

    /* renamed from: d */
    public final b f61159d;

    /* renamed from: e */
    public final b f61160e;

    /* renamed from: f */
    public final boolean f61161f;

    /* renamed from: e.b.a.y.k.q$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/y/k/q$a.class */
    public enum EnumC22008a {
        SIMULTANEOUSLY,
        INDIVIDUALLY
    }

    public C22007q(String str, EnumC22008a enumC22008a, b bVar, b bVar2, b bVar3, boolean z) {
        this.f61156a = str;
        this.f61157b = enumC22008a;
        this.f61158c = bVar;
        this.f61159d = bVar2;
        this.f61160e = bVar3;
        this.f61161f = z;
    }

    @Override // p193e.p1411b.p1412a.p1420y.p1422k.AbstractC21987b
    /* renamed from: a */
    public AbstractC21953c mo8835a(C21922k c21922k, e.b.a.y.l.b bVar) {
        return new C21958s(bVar, this);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Trim Path: {start: ");
        m8728C.append(this.f61158c);
        m8728C.append(", end: ");
        m8728C.append(this.f61159d);
        m8728C.append(", offset: ");
        m8728C.append(this.f61160e);
        m8728C.append("}");
        return m8728C.toString();
    }
}
