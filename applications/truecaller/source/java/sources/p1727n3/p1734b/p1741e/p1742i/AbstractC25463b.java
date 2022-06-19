package p1727n3.p1734b.p1741e.p1742i;

import android.content.Context;
import android.view.LayoutInflater;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25483m;
/* renamed from: n3.b.e.i.b */
/* loaded from: classes-dex2jar.jar:n3/b/e/i/b.class */
public abstract class AbstractC25463b implements AbstractC25483m {

    /* renamed from: a */
    public Context f71178a;

    /* renamed from: b */
    public Context f71179b;

    /* renamed from: c */
    public C25469g f71180c;

    /* renamed from: d */
    public LayoutInflater f71181d;

    /* renamed from: e */
    public AbstractC25483m.AbstractC25484a f71182e;

    /* renamed from: f */
    public int f71183f;

    /* renamed from: g */
    public int f71184g;

    /* renamed from: h */
    public AbstractC25485n f71185h;

    /* renamed from: i */
    public int f71186i;

    public AbstractC25463b(Context context, int i, int i2) {
        this.f71178a = context;
        this.f71181d = LayoutInflater.from(context);
        this.f71183f = i;
        this.f71184g = i2;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: b */
    public boolean mo3422b(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: f */
    public boolean mo3418f(C25469g c25469g, C25473i c25473i) {
        return false;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    public int getId() {
        return this.f71186i;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25483m
    /* renamed from: i */
    public void mo3416i(AbstractC25483m.AbstractC25484a abstractC25484a) {
        this.f71182e = abstractC25484a;
    }
}
