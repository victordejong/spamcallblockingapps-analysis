package p262v3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0144i;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.view.menu.SubMenuC0151l;
import androidx.recyclerview.widget.C0651y;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.internal.NavigationMenuView;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p196p0.C3992g;
/* renamed from: v3.h */
/* loaded from: classes-dex2jar.jar:v3/h.class */
public class C4607h implements AbstractC0144i {

    /* renamed from: a */
    public NavigationMenuView f14252a;

    /* renamed from: b */
    public LinearLayout f14253b;

    /* renamed from: c */
    public C0136e f14254c;

    /* renamed from: d */
    public int f14255d;

    /* renamed from: e */
    public C4610c f14256e;

    /* renamed from: f */
    public LayoutInflater f14257f;

    /* renamed from: h */
    public ColorStateList f14259h;

    /* renamed from: j */
    public ColorStateList f14261j;

    /* renamed from: k */
    public ColorStateList f14262k;

    /* renamed from: l */
    public Drawable f14263l;

    /* renamed from: m */
    public int f14264m;

    /* renamed from: n */
    public int f14265n;

    /* renamed from: o */
    public int f14266o;

    /* renamed from: p */
    public int f14267p;

    /* renamed from: q */
    public int f14268q;

    /* renamed from: r */
    public int f14269r;

    /* renamed from: s */
    public int f14270s;

    /* renamed from: t */
    public boolean f14271t;

    /* renamed from: v */
    public int f14273v;

    /* renamed from: w */
    public int f14274w;

    /* renamed from: x */
    public int f14275x;

    /* renamed from: g */
    public int f14258g = 0;

    /* renamed from: i */
    public int f14260i = 0;

    /* renamed from: u */
    public boolean f14272u = true;

    /* renamed from: y */
    public int f14276y = -1;

    /* renamed from: z */
    public final View.OnClickListener f14277z = new View$OnClickListenerC4608a();

    /* renamed from: v3.h$a */
    /* loaded from: classes-dex2jar.jar:v3/h$a.class */
    public class View$OnClickListenerC4608a implements View.OnClickListener {
        public View$OnClickListenerC4608a() {
            C4607h.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            C4607h.this.m712f(true);
            C0140g itemData = ((NavigationMenuItemView) view).getItemData();
            C4607h c4607h = C4607h.this;
            boolean m8706r = c4607h.f14254c.m8706r(itemData, c4607h, 0);
            if (itemData == null || !itemData.isCheckable() || !m8706r) {
                z = false;
            } else {
                C4607h.this.f14256e.m698h(itemData);
            }
            C4607h.this.m712f(false);
            if (z) {
                C4607h.this.mo711g(false);
            }
        }
    }

    /* renamed from: v3.h$b */
    /* loaded from: classes-dex2jar.jar:v3/h$b.class */
    public static class C4609b extends AbstractC4619l {
        public C4609b(View view) {
            super(view);
        }
    }

    /* renamed from: v3.h$c */
    /* loaded from: classes-dex2jar.jar:v3/h$c.class */
    public class C4610c extends RecyclerView.AbstractC0562e<AbstractC4619l> {

        /* renamed from: c */
        public final ArrayList<AbstractC4612e> f14279c = new ArrayList<>();

        /* renamed from: d */
        public C0140g f14280d;

        /* renamed from: e */
        public boolean f14281e;

        public C4610c() {
            C4607h.this = r5;
            m699g();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: a */
        public int mo705a() {
            return this.f14279c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: b */
        public long mo704b(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: c */
        public int mo703c(int i) {
            AbstractC4612e abstractC4612e = this.f14279c.get(i);
            if (abstractC4612e instanceof C4613f) {
                return 2;
            }
            if (abstractC4612e instanceof C4611d) {
                return 3;
            }
            if (!(abstractC4612e instanceof C4614g)) {
                throw new RuntimeException("Unknown item type.");
            }
            return ((C4614g) abstractC4612e).f14285a.hasSubMenu() ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: d */
        public void mo702d(AbstractC4619l abstractC4619l, int i) {
            AbstractC4619l abstractC4619l2 = abstractC4619l;
            int mo703c = mo703c(i);
            if (mo703c != 0) {
                if (mo703c != 1) {
                    if (mo703c != 2) {
                        return;
                    }
                    C4613f c4613f = (C4613f) this.f14279c.get(i);
                    View view = abstractC4619l2.f2224a;
                    C4607h c4607h = C4607h.this;
                    view.setPadding(c4607h.f14268q, c4613f.f14283a, c4607h.f14269r, c4613f.f14284b);
                    return;
                }
                TextView textView = (TextView) abstractC4619l2.f2224a;
                textView.setText(((C4614g) this.f14279c.get(i)).f14285a.f462e);
                int i2 = C4607h.this.f14258g;
                if (i2 != 0) {
                    C3992g.m1556f(textView, i2);
                }
                int i3 = C4607h.this.f14270s;
                int paddingTop = textView.getPaddingTop();
                Objects.requireNonNull(C4607h.this);
                textView.setPadding(i3, paddingTop, 0, textView.getPaddingBottom());
                ColorStateList colorStateList = C4607h.this.f14259h;
                if (colorStateList == null) {
                    return;
                }
                textView.setTextColor(colorStateList);
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC4619l2.f2224a;
            navigationMenuItemView.setIconTintList(C4607h.this.f14262k);
            int i4 = C4607h.this.f14260i;
            if (i4 != 0) {
                navigationMenuItemView.setTextAppearance(i4);
            }
            ColorStateList colorStateList2 = C4607h.this.f14261j;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = C4607h.this.f14263l;
            Drawable newDrawable = drawable != null ? drawable.getConstantState().newDrawable() : null;
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2077q(navigationMenuItemView, newDrawable);
            C4614g c4614g = (C4614g) this.f14279c.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(c4614g.f14286b);
            C4607h c4607h2 = C4607h.this;
            int i5 = c4607h2.f14264m;
            int i6 = c4607h2.f14265n;
            navigationMenuItemView.setPadding(i5, i6, i5, i6);
            navigationMenuItemView.setIconPadding(C4607h.this.f14266o);
            C4607h c4607h3 = C4607h.this;
            if (c4607h3.f14271t) {
                navigationMenuItemView.setIconSize(c4607h3.f14267p);
            }
            navigationMenuItemView.setMaxLines(C4607h.this.f14273v);
            navigationMenuItemView.mo4552d(c4614g.f14285a, 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: e */
        public AbstractC4619l mo701e(ViewGroup viewGroup, int i) {
            C4609b c4609b;
            if (i != 0) {
                c4609b = i != 1 ? i != 2 ? i != 3 ? null : new C4609b(C4607h.this.f14253b) : new C4617j(C4607h.this.f14257f, viewGroup) : new C4618k(C4607h.this.f14257f, viewGroup);
            } else {
                C4607h c4607h = C4607h.this;
                c4609b = new C4616i(c4607h.f14257f, viewGroup, c4607h.f14277z);
            }
            return c4609b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
        /* renamed from: f */
        public void mo700f(AbstractC4619l abstractC4619l) {
            AbstractC4619l abstractC4619l2 = abstractC4619l;
            if (abstractC4619l2 instanceof C4616i) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC4619l2.f2224a;
                FrameLayout frameLayout = navigationMenuItemView.f6725z;
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                navigationMenuItemView.f6724y.setCompoundDrawables(null, null, null, null);
            }
        }

        /* renamed from: g */
        public final void m699g() {
            int i;
            boolean z;
            int i2;
            int i3;
            boolean z2;
            if (this.f14281e) {
                return;
            }
            this.f14281e = true;
            this.f14279c.clear();
            this.f14279c.add(new C4611d());
            int i4 = -1;
            int size = C4607h.this.f14254c.m8708l().size();
            int i5 = 0;
            boolean z3 = false;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i5 >= size) {
                    this.f14281e = false;
                    return;
                }
                C0140g c0140g = C4607h.this.f14254c.m8708l().get(i5);
                if (c0140g.isChecked()) {
                    m698h(c0140g);
                }
                if (c0140g.isCheckable()) {
                    c0140g.m8690k(false);
                }
                if (c0140g.hasSubMenu()) {
                    SubMenuC0151l subMenuC0151l = c0140g.f472o;
                    i2 = i4;
                    z = z3;
                    i = i7;
                    if (subMenuC0151l.hasVisibleItems()) {
                        if (i5 != 0) {
                            this.f14279c.add(new C4613f(C4607h.this.f14275x, 0));
                        }
                        this.f14279c.add(new C4614g(c0140g));
                        int size2 = this.f14279c.size();
                        int size3 = subMenuC0151l.size();
                        int i8 = 0;
                        boolean z4 = false;
                        while (true) {
                            z2 = z4;
                            if (i8 >= size3) {
                                break;
                            }
                            C0140g c0140g2 = (C0140g) subMenuC0151l.getItem(i8);
                            boolean z5 = z2;
                            if (c0140g2.isVisible()) {
                                z5 = z2;
                                if (!z2) {
                                    z5 = z2;
                                    if (c0140g2.getIcon() != null) {
                                        z5 = true;
                                    }
                                }
                                if (c0140g2.isCheckable()) {
                                    c0140g2.m8690k(false);
                                }
                                if (c0140g.isChecked()) {
                                    m698h(c0140g);
                                }
                                this.f14279c.add(new C4614g(c0140g2));
                            }
                            i8++;
                            z4 = z5;
                        }
                        i2 = i4;
                        z = z3;
                        i = i7;
                        if (z2) {
                            int size4 = this.f14279c.size();
                            int i9 = size2;
                            while (true) {
                                i2 = i4;
                                z = z3;
                                i = i7;
                                if (i9 < size4) {
                                    ((C4614g) this.f14279c.get(i9)).f14286b = true;
                                    i9++;
                                }
                            }
                        }
                    }
                } else {
                    i2 = c0140g.f459b;
                    if (i2 != i4) {
                        int size5 = this.f14279c.size();
                        boolean z6 = c0140g.getIcon() != null;
                        z = z6;
                        i3 = size5;
                        if (i5 != 0) {
                            i3 = size5 + 1;
                            ArrayList<AbstractC4612e> arrayList = this.f14279c;
                            int i10 = C4607h.this.f14275x;
                            arrayList.add(new C4613f(i10, i10));
                            z = z6;
                        }
                    } else {
                        z = z3;
                        i3 = i7;
                        if (!z3) {
                            z = z3;
                            i3 = i7;
                            if (c0140g.getIcon() != null) {
                                int size6 = this.f14279c.size();
                                for (int i11 = i7; i11 < size6; i11++) {
                                    ((C4614g) this.f14279c.get(i11)).f14286b = true;
                                }
                                z = true;
                                i3 = i7;
                            }
                        }
                    }
                    C4614g c4614g = new C4614g(c0140g);
                    c4614g.f14286b = z;
                    this.f14279c.add(c4614g);
                    i = i3;
                }
                i5++;
                i4 = i2;
                z3 = z;
                i6 = i;
            }
        }

        /* renamed from: h */
        public void m698h(C0140g c0140g) {
            if (this.f14280d == c0140g || !c0140g.isCheckable()) {
                return;
            }
            C0140g c0140g2 = this.f14280d;
            if (c0140g2 != null) {
                c0140g2.setChecked(false);
            }
            this.f14280d = c0140g;
            c0140g.setChecked(true);
        }
    }

    /* renamed from: v3.h$d */
    /* loaded from: classes-dex2jar.jar:v3/h$d.class */
    public static class C4611d implements AbstractC4612e {
    }

    /* renamed from: v3.h$e */
    /* loaded from: classes-dex2jar.jar:v3/h$e.class */
    public interface AbstractC4612e {
    }

    /* renamed from: v3.h$f */
    /* loaded from: classes-dex2jar.jar:v3/h$f.class */
    public static class C4613f implements AbstractC4612e {

        /* renamed from: a */
        public final int f14283a;

        /* renamed from: b */
        public final int f14284b;

        public C4613f(int i, int i2) {
            this.f14283a = i;
            this.f14284b = i2;
        }
    }

    /* renamed from: v3.h$g */
    /* loaded from: classes-dex2jar.jar:v3/h$g.class */
    public static class C4614g implements AbstractC4612e {

        /* renamed from: a */
        public final C0140g f14285a;

        /* renamed from: b */
        public boolean f14286b;

        public C4614g(C0140g c0140g) {
            this.f14285a = c0140g;
        }
    }

    /* renamed from: v3.h$h */
    /* loaded from: classes-dex2jar.jar:v3/h$h.class */
    public class C4615h extends C0651y {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4615h(RecyclerView recyclerView) {
            super(recyclerView);
            C4607h.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0651y, p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            super.mo697d(view, c3694b);
            C4610c c4610c = C4607h.this.f14256e;
            int i = C4607h.this.f14253b.getChildCount() == 0 ? 0 : 1;
            int i2 = 0;
            while (true) {
                int i3 = i;
                if (i2 >= C4607h.this.f14256e.mo705a()) {
                    c3694b.f12070a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i3, 0, false));
                    return;
                }
                i = i3;
                if (C4607h.this.f14256e.mo703c(i2) == 0) {
                    i = i3 + 1;
                }
                i2++;
            }
        }
    }

    /* renamed from: v3.h$i */
    /* loaded from: classes-dex2jar.jar:v3/h$i.class */
    public static class C4616i extends AbstractC4619l {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C4616i(android.view.LayoutInflater r6, android.view.ViewGroup r7, android.view.View.OnClickListener r8) {
            /*
                r5 = this;
                r0 = r6
                r1 = 2131492930(0x7f0c0042, float:1.8609326E38)
                r2 = r7
                r3 = 0
                android.view.View r0 = r0.inflate(r1, r2, r3)
                r6 = r0
                r0 = r5
                r1 = r6
                r0.<init>(r1)
                r0 = r6
                r1 = r8
                r0.setOnClickListener(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p262v3.C4607h.C4616i.<init>(android.view.LayoutInflater, android.view.ViewGroup, android.view.View$OnClickListener):void");
        }
    }

    /* renamed from: v3.h$j */
    /* loaded from: classes-dex2jar.jar:v3/h$j.class */
    public static class C4617j extends AbstractC4619l {
        public C4617j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(2131492932, viewGroup, false));
        }
    }

    /* renamed from: v3.h$k */
    /* loaded from: classes-dex2jar.jar:v3/h$k.class */
    public static class C4618k extends AbstractC4619l {
        public C4618k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(2131492933, viewGroup, false));
        }
    }

    /* renamed from: v3.h$l */
    /* loaded from: classes-dex2jar.jar:v3/h$l.class */
    public static abstract class AbstractC4619l extends RecyclerView.AbstractC0558a0 {
        public AbstractC4619l(View view) {
            super(view);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: a */
    public void mo717a(C0136e c0136e, boolean z) {
    }

    /* renamed from: b */
    public void m716b(int i) {
        this.f14266o = i;
        mo711g(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: c */
    public void mo715c(Context context, C0136e c0136e) {
        this.f14257f = LayoutInflater.from(context);
        this.f14254c = c0136e;
        this.f14275x = context.getResources().getDimensionPixelOffset(2131165342);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: d */
    public void mo714d(Parcelable parcelable) {
        C0140g c0140g;
        View actionView;
        C4621j c4621j;
        C0140g c0140g2;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f14252a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                C4610c c4610c = this.f14256e;
                Objects.requireNonNull(c4610c);
                int i = bundle2.getInt("android:menu:checked", 0);
                if (i != 0) {
                    c4610c.f14281e = true;
                    int size = c4610c.f14279c.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        AbstractC4612e abstractC4612e = c4610c.f14279c.get(i2);
                        if ((abstractC4612e instanceof C4614g) && (c0140g2 = ((C4614g) abstractC4612e).f14285a) != null && c0140g2.f458a == i) {
                            c4610c.m698h(c0140g2);
                            break;
                        }
                        i2++;
                    }
                    c4610c.f14281e = false;
                    c4610c.m699g();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = c4610c.f14279c.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AbstractC4612e abstractC4612e2 = c4610c.f14279c.get(i3);
                        if ((abstractC4612e2 instanceof C4614g) && (c0140g = ((C4614g) abstractC4612e2).f14285a) != null && (actionView = c0140g.getActionView()) != null && (c4621j = (C4621j) sparseParcelableArray2.get(c0140g.f458a)) != null) {
                            actionView.restoreHierarchyState(c4621j);
                        }
                    }
                }
            }
            SparseArray sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 == null) {
                return;
            }
            this.f14253b.restoreHierarchyState(sparseParcelableArray3);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: e */
    public boolean mo713e(SubMenuC0151l subMenuC0151l) {
        return false;
    }

    /* renamed from: f */
    public void m712f(boolean z) {
        C4610c c4610c = this.f14256e;
        if (c4610c != null) {
            c4610c.f14281e = z;
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: g */
    public void mo711g(boolean z) {
        C4610c c4610c = this.f14256e;
        if (c4610c != null) {
            c4610c.m699g();
            c4610c.f2244a.m7829b();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    public int getId() {
        return this.f14255d;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: h */
    public boolean mo710h() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: i */
    public Parcelable mo709i() {
        Bundle bundle = new Bundle();
        if (this.f14252a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f14252a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C4610c c4610c = this.f14256e;
        if (c4610c != null) {
            Objects.requireNonNull(c4610c);
            Bundle bundle2 = new Bundle();
            C0140g c0140g = c4610c.f14280d;
            if (c0140g != null) {
                bundle2.putInt("android:menu:checked", c0140g.f458a);
            }
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            int size = c4610c.f14279c.size();
            for (int i = 0; i < size; i++) {
                AbstractC4612e abstractC4612e = c4610c.f14279c.get(i);
                if (abstractC4612e instanceof C4614g) {
                    C0140g c0140g2 = ((C4614g) abstractC4612e).f14285a;
                    View actionView = c0140g2 != null ? c0140g2.getActionView() : null;
                    if (actionView != null) {
                        C4621j c4621j = new C4621j();
                        actionView.saveHierarchyState(c4621j);
                        sparseArray2.put(c0140g2.f458a, c4621j);
                    }
                }
            }
            bundle2.putSparseParcelableArray("android:menu:action_views", sparseArray2);
            bundle.putBundle("android:menu:adapter", bundle2);
        }
        if (this.f14253b != null) {
            SparseArray<? extends Parcelable> sparseArray3 = new SparseArray<>();
            this.f14253b.saveHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray3);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: j */
    public boolean mo708j(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: k */
    public boolean mo707k(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    /* renamed from: m */
    public final void m706m() {
        int i = (this.f14253b.getChildCount() != 0 || !this.f14272u) ? 0 : this.f14274w;
        NavigationMenuView navigationMenuView = this.f14252a;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }
}
