package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.AbstractC0285n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class AbstractC0257b implements AbstractC0283m {

    /* renamed from: a */
    protected Context f813a;

    /* renamed from: b */
    protected Context f814b;

    /* renamed from: c */
    public C0268g f815c;

    /* renamed from: d */
    protected LayoutInflater f816d;

    /* renamed from: e */
    protected LayoutInflater f817e;

    /* renamed from: f */
    public AbstractC0283m.AbstractC0284a f818f;

    /* renamed from: g */
    public AbstractC0285n f819g;

    /* renamed from: h */
    public int f820h;

    /* renamed from: i */
    private int f821i;

    /* renamed from: j */
    private int f822j;

    public AbstractC0257b(Context context, int i, int i2) {
        this.f813a = context;
        this.f816d = LayoutInflater.from(context);
        this.f821i = i;
        this.f822j = i2;
    }

    /* renamed from: a */
    public View mo46014a(C0272i c0272i, View view, ViewGroup viewGroup) {
        AbstractC0285n.AbstractC0286a abstractC0286a = view instanceof AbstractC0285n.AbstractC0286a ? (AbstractC0285n.AbstractC0286a) view : (AbstractC0285n.AbstractC0286a) this.f816d.inflate(this.f822j, viewGroup, false);
        mo46013a(c0272i, abstractC0286a);
        return (View) abstractC0286a;
    }

    /* renamed from: a */
    public AbstractC0285n mo46017a(ViewGroup viewGroup) {
        if (this.f819g == null) {
            AbstractC0285n abstractC0285n = (AbstractC0285n) this.f816d.inflate(this.f821i, viewGroup, false);
            this.f819g = abstractC0285n;
            abstractC0285n.mo10610a(this.f815c);
            mo10541a(true);
        }
        return this.f819g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public void mo10549a(Context context, C0268g c0268g) {
        this.f814b = context;
        this.f817e = LayoutInflater.from(context);
        this.f815c = c0268g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public void mo10545a(C0268g c0268g, boolean z) {
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f818f;
        if (abstractC0284a != null) {
            abstractC0284a.mo45990a(c0268g, z);
        }
    }

    /* renamed from: a */
    public abstract void mo46013a(C0272i c0272i, AbstractC0285n.AbstractC0286a abstractC0286a);

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f818f = abstractC0284a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public void mo10541a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f819g;
        if (viewGroup == null) {
            return;
        }
        C0268g c0268g = this.f815c;
        int i = 0;
        if (c0268g != null) {
            c0268g.m46083j();
            ArrayList<C0272i> m46084i = this.f815c.m46084i();
            int size = m46084i.size();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                C0272i c0272i = m46084i.get(i2);
                int i4 = i;
                if (mo46015a(c0272i)) {
                    View childAt = viewGroup.getChildAt(i);
                    C0272i mo10613a = childAt instanceof AbstractC0285n.AbstractC0286a ? ((AbstractC0285n.AbstractC0286a) childAt).mo10613a() : null;
                    View mo46014a = mo46014a(c0272i, childAt, viewGroup);
                    if (c0272i != mo10613a) {
                        mo46014a.setPressed(false);
                        mo46014a.jumpDrawablesToCurrentState();
                    }
                    if (mo46014a != childAt) {
                        ViewGroup viewGroup2 = (ViewGroup) mo46014a.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(mo46014a);
                        }
                        ((ViewGroup) this.f819g).addView(mo46014a, i);
                    }
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo46016a(viewGroup, i)) {
                i++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public boolean mo10551a() {
        return false;
    }

    /* renamed from: a */
    public boolean mo46016a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: a */
    public boolean mo46015a(C0272i c0272i) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f818f;
        if (abstractC0284a != null) {
            if (subMenuC0292r == null) {
                subMenuC0292r = this.f815c;
            }
            return abstractC0284a.mo45991a(subMenuC0292r);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final int mo10540b() {
        return this.f820h;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final boolean mo10537b(C0272i c0272i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: c */
    public final boolean mo10533c(C0272i c0272i) {
        return false;
    }
}
