package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.AbstractC0214m;
import androidx.appcompat.view.menu.AbstractC0216n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class AbstractC0188b implements AbstractC0214m {

    /* renamed from: a */
    protected Context f703a;

    /* renamed from: b */
    protected Context f704b;

    /* renamed from: c */
    protected C0199g f705c;

    /* renamed from: d */
    protected LayoutInflater f706d;

    /* renamed from: e */
    protected LayoutInflater f707e;

    /* renamed from: f */
    protected AbstractC0216n f708f;

    /* renamed from: g */
    private AbstractC0214m.AbstractC0215a f709g;

    /* renamed from: h */
    private int f710h;

    /* renamed from: i */
    private int f711i;

    /* renamed from: j */
    private int f712j;

    public AbstractC0188b(Context context, int i, int i2) {
        this.f703a = context;
        this.f706d = LayoutInflater.from(context);
        this.f710h = i;
        this.f711i = i2;
    }

    /* renamed from: a */
    public View mo21379a(C0203i c0203i, View view, ViewGroup viewGroup) {
        AbstractC0216n.AbstractC0217a m21921b = view instanceof AbstractC0216n.AbstractC0217a ? (AbstractC0216n.AbstractC0217a) view : m21921b(viewGroup);
        mo21378a(c0203i, m21921b);
        return (View) m21921b;
    }

    /* renamed from: a */
    public AbstractC0214m.AbstractC0215a m21924a() {
        return this.f709g;
    }

    /* renamed from: a */
    public AbstractC0216n mo21381a(ViewGroup viewGroup) {
        if (this.f708f == null) {
            this.f708f = (AbstractC0216n) this.f706d.inflate(this.f710h, viewGroup, false);
            this.f708f.mo2905a(this.f705c);
            mo3582a(true);
        }
        return this.f708f;
    }

    /* renamed from: a */
    public void m21923a(int i) {
        this.f712j = i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3589a(Context context, C0199g c0199g) {
        this.f704b = context;
        this.f707e = LayoutInflater.from(this.f704b);
        this.f705c = c0199g;
    }

    /* renamed from: a */
    protected void m21922a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f708f).addView(view, i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3586a(C0199g c0199g, boolean z) {
        if (this.f709g != null) {
            this.f709g.mo21353a(c0199g, z);
        }
    }

    /* renamed from: a */
    public abstract void mo21378a(C0203i c0203i, AbstractC0216n.AbstractC0217a abstractC0217a);

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3585a(AbstractC0214m.AbstractC0215a abstractC0215a) {
        this.f709g = abstractC0215a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public void mo3582a(boolean z) {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.f708f;
        if (viewGroup == null) {
            return;
        }
        if (this.f705c != null) {
            this.f705c.m21855k();
            ArrayList<C0203i> m21856j = this.f705c.m21856j();
            int size = m21856j.size();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= size) {
                    break;
                }
                C0203i c0203i = m21856j.get(i2);
                if (mo21385a(i3, c0203i)) {
                    View childAt = viewGroup.getChildAt(i3);
                    C0203i itemData = childAt instanceof AbstractC0216n.AbstractC0217a ? ((AbstractC0216n.AbstractC0217a) childAt).getItemData() : null;
                    View mo21379a = mo21379a(c0203i, childAt, viewGroup);
                    if (c0203i != itemData) {
                        mo21379a.setPressed(false);
                        mo21379a.jumpDrawablesToCurrentState();
                    }
                    if (mo21379a != childAt) {
                        m21922a(mo21379a, i3);
                    }
                    i3++;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        while (i < viewGroup.getChildCount()) {
            if (!mo21380a(viewGroup, i)) {
                i++;
            }
        }
    }

    /* renamed from: a */
    public boolean mo21385a(int i, C0203i c0203i) {
        return true;
    }

    /* renamed from: a */
    public boolean mo21380a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3587a(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: a */
    public boolean mo3584a(SubMenuC0223r subMenuC0223r) {
        return this.f709g != null ? this.f709g.mo21354a(subMenuC0223r) : false;
    }

    /* renamed from: b */
    public AbstractC0216n.AbstractC0217a m21921b(ViewGroup viewGroup) {
        return (AbstractC0216n.AbstractC0217a) this.f706d.inflate(this.f711i, viewGroup, false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3581b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: b */
    public boolean mo3580b(C0199g c0199g, C0203i c0203i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0214m
    /* renamed from: c */
    public int mo3578c() {
        return this.f712j;
    }
}
