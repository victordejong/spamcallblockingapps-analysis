package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.n;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/b.class */
public abstract class b implements m {

    /* renamed from: a  reason: collision with root package name */
    protected Context f777a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f778b;

    /* renamed from: c  reason: collision with root package name */
    public g f779c;

    /* renamed from: d  reason: collision with root package name */
    protected LayoutInflater f780d;
    protected LayoutInflater e;
    public m.a f;
    public n g;
    public int h;
    private int i;
    private int j;

    public b(Context context, int i, int i2) {
        this.f777a = context;
        this.f780d = LayoutInflater.from(context);
        this.i = i;
        this.j = i2;
    }

    public View a(i iVar, View view, ViewGroup viewGroup) {
        n.a aVar = view instanceof n.a ? (n.a) view : (n.a) this.f780d.inflate(this.j, viewGroup, false);
        a(iVar, aVar);
        return (View) aVar;
    }

    public n a(ViewGroup viewGroup) {
        if (this.g == null) {
            n nVar = (n) this.f780d.inflate(this.i, viewGroup, false);
            this.g = nVar;
            nVar.a(this.f779c);
            a(true);
        }
        return this.g;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(Context context, g gVar) {
        this.f778b = context;
        this.e = LayoutInflater.from(context);
        this.f779c = gVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(g gVar, boolean z) {
        m.a aVar = this.f;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public abstract void a(i iVar, n.a aVar);

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
        this.f = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.g;
        if (viewGroup != null) {
            g gVar = this.f779c;
            int i = 0;
            if (gVar != null) {
                gVar.j();
                ArrayList<i> i2 = this.f779c.i();
                int size = i2.size();
                i = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    i iVar = i2.get(i3);
                    i = i;
                    if (a(iVar)) {
                        View childAt = viewGroup.getChildAt(i);
                        i a2 = childAt instanceof n.a ? ((n.a) childAt).a() : null;
                        View a3 = a(iVar, childAt, viewGroup);
                        if (iVar != a2) {
                            a3.setPressed(false);
                            a3.jumpDrawablesToCurrentState();
                        }
                        if (a3 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) a3.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a3);
                            }
                            ((ViewGroup) this.g).addView(a3, i);
                        }
                        i++;
                    }
                }
            }
            while (i < viewGroup.getChildCount()) {
                if (!a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean a() {
        return false;
    }

    public boolean a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    public boolean a(i iVar) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.appcompat.view.menu.g] */
    @Override // androidx.appcompat.view.menu.m
    public boolean a(r rVar) {
        m.a aVar = this.f;
        if (aVar == null) {
            return false;
        }
        r rVar2 = rVar;
        if (rVar == null) {
            rVar2 = this.f779c;
        }
        return aVar.a(rVar2);
    }

    @Override // androidx.appcompat.view.menu.m
    public final int b() {
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean b(i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean c(i iVar) {
        return false;
    }
}
