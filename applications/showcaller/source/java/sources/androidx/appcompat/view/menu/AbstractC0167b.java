package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class AbstractC0167b implements AbstractC0193m {

    /* renamed from: d */
    protected Context f561d;

    /* renamed from: e */
    protected Context f562e;

    /* renamed from: f */
    protected C0178g f563f;

    /* renamed from: g */
    protected LayoutInflater f564g;

    /* renamed from: h */
    protected LayoutInflater f565h;

    /* renamed from: i */
    private AbstractC0193m.AbstractC0194a f566i;

    /* renamed from: j */
    private int f567j;

    /* renamed from: k */
    private int f568k;

    /* renamed from: l */
    protected AbstractC0195n f569l;

    /* renamed from: m */
    private int f570m;

    public AbstractC0167b(Context context, int i, int i2) {
        this.f561d = context;
        this.f564g = LayoutInflater.from(context);
        this.f567j = i;
        this.f568k = i2;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f566i;
        if (abstractC0194a != null) {
            abstractC0194a.mo35224b(c0178g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f569l;
        if (viewGroup == null) {
            return;
        }
        C0178g c0178g = this.f563f;
        int i = 0;
        if (c0178g != null) {
            c0178g.m35371t();
            ArrayList<C0182i> m35409G = this.f563f.m35409G();
            int size = m35409G.size();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                C0182i c0182i = m35409G.get(i2);
                int i4 = i;
                if (mo35252t(i, c0182i)) {
                    View childAt = viewGroup.getChildAt(i);
                    C0182i itemData = childAt instanceof AbstractC0195n.AbstractC0196a ? ((AbstractC0195n.AbstractC0196a) childAt).getItemData() : null;
                    View mo35254q = mo35254q(c0182i, childAt, viewGroup);
                    if (c0182i != itemData) {
                        mo35254q.setPressed(false);
                        mo35254q.jumpDrawablesToCurrentState();
                    }
                    if (mo35254q != childAt) {
                        m35441h(mo35254q, i);
                    }
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo35255o(viewGroup, i)) {
                i++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: e */
    public boolean mo4534e(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: f */
    public boolean mo4533f(C0178g c0178g, C0182i c0182i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: g */
    public void mo35315g(AbstractC0193m.AbstractC0194a abstractC0194a) {
        this.f566i = abstractC0194a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    public int getId() {
        return this.f570m;
    }

    /* renamed from: h */
    protected void m35441h(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f569l).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
        this.f562e = context;
        this.f565h = LayoutInflater.from(context);
        this.f563f = c0178g;
    }

    /* renamed from: k */
    public abstract void mo35256k(C0182i c0182i, AbstractC0195n.AbstractC0196a abstractC0196a);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f566i;
        if (abstractC0194a != null) {
            if (subMenuC0202r == null) {
                subMenuC0202r = this.f563f;
            }
            return abstractC0194a.mo35223c(subMenuC0202r);
        }
        return false;
    }

    /* renamed from: n */
    public AbstractC0195n.AbstractC0196a m35440n(ViewGroup viewGroup) {
        return (AbstractC0195n.AbstractC0196a) this.f564g.inflate(this.f568k, viewGroup, false);
    }

    /* renamed from: o */
    public boolean mo35255o(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: p */
    public AbstractC0193m.AbstractC0194a m35439p() {
        return this.f566i;
    }

    /* renamed from: q */
    public View mo35254q(C0182i c0182i, View view, ViewGroup viewGroup) {
        AbstractC0195n.AbstractC0196a m35440n = view instanceof AbstractC0195n.AbstractC0196a ? (AbstractC0195n.AbstractC0196a) view : m35440n(viewGroup);
        mo35256k(c0182i, m35440n);
        return (View) m35440n;
    }

    /* renamed from: r */
    public AbstractC0195n mo35253r(ViewGroup viewGroup) {
        if (this.f569l == null) {
            AbstractC0195n abstractC0195n = (AbstractC0195n) this.f564g.inflate(this.f567j, viewGroup, false);
            this.f569l = abstractC0195n;
            abstractC0195n.mo4639b(this.f563f);
            mo4536c(true);
        }
        return this.f569l;
    }

    /* renamed from: s */
    public void m35438s(int i) {
        this.f570m = i;
    }

    /* renamed from: t */
    public abstract boolean mo35252t(int i, C0182i c0182i);
}
