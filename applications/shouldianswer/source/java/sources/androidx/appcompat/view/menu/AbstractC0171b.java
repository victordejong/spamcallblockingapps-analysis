package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class AbstractC0171b implements AbstractC0197m {

    /* renamed from: a */
    protected Context f651a;

    /* renamed from: b */
    protected Context f652b;

    /* renamed from: c */
    protected C0182g f653c;

    /* renamed from: d */
    protected LayoutInflater f654d;

    /* renamed from: e */
    protected LayoutInflater f655e;

    /* renamed from: f */
    protected AbstractC0199n f656f;

    /* renamed from: g */
    private AbstractC0197m.AbstractC0198a f657g;

    /* renamed from: h */
    private int f658h;

    /* renamed from: i */
    private int f659i;

    /* renamed from: j */
    private int f660j;

    public AbstractC0171b(Context context, int i, int i2) {
        this.f651a = context;
        this.f654d = LayoutInflater.from(context);
        this.f658h = i;
        this.f659i = i2;
    }

    /* renamed from: a */
    public View mo7476a(C0186i c0186i, View view, ViewGroup viewGroup) {
        AbstractC0199n.AbstractC0200a m7590b = view instanceof AbstractC0199n.AbstractC0200a ? (AbstractC0199n.AbstractC0200a) view : m7590b(viewGroup);
        mo7475a(c0186i, m7590b);
        return (View) m7590b;
    }

    /* renamed from: a */
    public AbstractC0197m.AbstractC0198a m7593a() {
        return this.f657g;
    }

    /* renamed from: a */
    public AbstractC0199n mo7478a(ViewGroup viewGroup) {
        if (this.f656f == null) {
            this.f656f = (AbstractC0199n) this.f654d.inflate(this.f658h, viewGroup, false);
            this.f656f.initialize(this.f653c);
            updateMenuView(true);
        }
        return this.f656f;
    }

    /* renamed from: a */
    public void m7592a(int i) {
        this.f660j = i;
    }

    /* renamed from: a */
    protected void m7591a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f656f).addView(view, i);
    }

    /* renamed from: a */
    public abstract void mo7475a(C0186i c0186i, AbstractC0199n.AbstractC0200a abstractC0200a);

    /* renamed from: a */
    public boolean mo7482a(int i, C0186i c0186i) {
        return true;
    }

    /* renamed from: a */
    public boolean mo7477a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    /* renamed from: b */
    public AbstractC0199n.AbstractC0200a m7590b(ViewGroup viewGroup) {
        return (AbstractC0199n.AbstractC0200a) this.f654d.inflate(this.f659i, viewGroup, false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public int getId() {
        return this.f660j;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
        this.f652b = context;
        this.f655e = LayoutInflater.from(this.f652b);
        this.f653c = c0182g;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f657g;
        if (abstractC0198a != null) {
            abstractC0198a.mo7435a(c0182g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        AbstractC0197m.AbstractC0198a abstractC0198a = this.f657g;
        if (abstractC0198a != null) {
            return abstractC0198a.mo7436a(subMenuC0206r);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
        this.f657g = abstractC0198a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f656f;
        if (viewGroup == null) {
            return;
        }
        C0182g c0182g = this.f653c;
        int i = 0;
        if (c0182g != null) {
            c0182g.flagActionItems();
            ArrayList<C0186i> visibleItems = this.f653c.getVisibleItems();
            int size = visibleItems.size();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                C0186i c0186i = visibleItems.get(i2);
                int i4 = i;
                if (mo7482a(i, c0186i)) {
                    View childAt = viewGroup.getChildAt(i);
                    C0186i itemData = childAt instanceof AbstractC0199n.AbstractC0200a ? ((AbstractC0199n.AbstractC0200a) childAt).getItemData() : null;
                    View mo7476a = mo7476a(c0186i, childAt, viewGroup);
                    if (c0186i != itemData) {
                        mo7476a.setPressed(false);
                        mo7476a.jumpDrawablesToCurrentState();
                    }
                    if (mo7476a != childAt) {
                        m7591a(mo7476a, i);
                    }
                    i4 = i + 1;
                }
                i2++;
                i3 = i4;
            }
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo7477a(viewGroup, i)) {
                i++;
            }
        }
    }
}
