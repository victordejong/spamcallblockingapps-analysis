package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0193m;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.view.menu.SubMenuC0202r;
import androidx.recyclerview.widget.C0980k;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1892h;
/* renamed from: com.google.android.material.internal.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f.class */
public class C8180f implements AbstractC0193m {

    /* renamed from: d */
    private NavigationMenuView f36978d;

    /* renamed from: e */
    LinearLayout f36979e;

    /* renamed from: f */
    private AbstractC0193m.AbstractC0194a f36980f;

    /* renamed from: g */
    C0178g f36981g;

    /* renamed from: h */
    private int f36982h;

    /* renamed from: i */
    C8183c f36983i;

    /* renamed from: j */
    LayoutInflater f36984j;

    /* renamed from: k */
    int f36985k;

    /* renamed from: l */
    boolean f36986l;

    /* renamed from: m */
    ColorStateList f36987m;

    /* renamed from: n */
    ColorStateList f36988n;

    /* renamed from: o */
    Drawable f36989o;

    /* renamed from: p */
    int f36990p;

    /* renamed from: q */
    int f36991q;

    /* renamed from: r */
    int f36992r;

    /* renamed from: s */
    boolean f36993s;

    /* renamed from: u */
    private int f36995u;

    /* renamed from: v */
    private int f36996v;

    /* renamed from: w */
    int f36997w;

    /* renamed from: t */
    boolean f36994t = true;

    /* renamed from: x */
    private int f36998x = -1;

    /* renamed from: y */
    final View.OnClickListener f36999y = new View$OnClickListenerC8181a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.f$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$a.class */
    public class View$OnClickListenerC8181a implements View.OnClickListener {
        View$OnClickListenerC8181a() {
            C8180f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            C8180f.this.m4540J(true);
            C0182i itemData = ((NavigationMenuItemView) view).getItemData();
            C8180f c8180f = C8180f.this;
            boolean m35405O = c8180f.f36981g.m35405O(itemData, c8180f, 0);
            if (itemData == null || !itemData.isCheckable() || !m35405O) {
                z = false;
            } else {
                C8180f.this.f36983i.m4504J(itemData);
            }
            C8180f.this.m4540J(false);
            if (z) {
                C8180f.this.mo4536c(false);
            }
        }
    }

    /* renamed from: com.google.android.material.internal.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$b.class */
    public static class C8182b extends AbstractC8192l {
        public C8182b(View view) {
            super(view);
        }
    }

    /* renamed from: com.google.android.material.internal.f$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$c.class */
    public class C8183c extends RecyclerView.Adapter<AbstractC8192l> {

        /* renamed from: d */
        private final ArrayList<AbstractC8185e> f37001d = new ArrayList<>();

        /* renamed from: e */
        private C0182i f37002e;

        /* renamed from: f */
        private boolean f37003f;

        C8183c() {
            C8180f.this = r5;
            m4506H();
        }

        /* renamed from: A */
        private void m4513A(int i, int i2) {
            while (i < i2) {
                ((C8187g) this.f37001d.get(i)).f37008b = true;
                i++;
            }
        }

        /* renamed from: H */
        private void m4506H() {
            int i;
            boolean z;
            int i2;
            int i3;
            boolean z2;
            if (this.f37003f) {
                return;
            }
            this.f37003f = true;
            this.f37001d.clear();
            this.f37001d.add(new C8184d());
            int i4 = -1;
            int size = C8180f.this.f36981g.m35409G().size();
            int i5 = 0;
            boolean z3 = false;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i5 >= size) {
                    this.f37003f = false;
                    return;
                }
                C0182i c0182i = C8180f.this.f36981g.m35409G().get(i5);
                if (c0182i.isChecked()) {
                    m4504J(c0182i);
                }
                if (c0182i.isCheckable()) {
                    c0182i.m35344t(false);
                }
                if (c0182i.hasSubMenu()) {
                    SubMenu subMenu = c0182i.getSubMenu();
                    i2 = i4;
                    z = z3;
                    i = i7;
                    if (subMenu.hasVisibleItems()) {
                        if (i5 != 0) {
                            this.f37001d.add(new C8186f(C8180f.this.f36997w, 0));
                        }
                        this.f37001d.add(new C8187g(c0182i));
                        int size2 = this.f37001d.size();
                        int size3 = subMenu.size();
                        int i8 = 0;
                        boolean z4 = false;
                        while (true) {
                            z2 = z4;
                            if (i8 >= size3) {
                                break;
                            }
                            C0182i c0182i2 = (C0182i) subMenu.getItem(i8);
                            boolean z5 = z2;
                            if (c0182i2.isVisible()) {
                                z5 = z2;
                                if (!z2) {
                                    z5 = z2;
                                    if (c0182i2.getIcon() != null) {
                                        z5 = true;
                                    }
                                }
                                if (c0182i2.isCheckable()) {
                                    c0182i2.m35344t(false);
                                }
                                if (c0182i.isChecked()) {
                                    m4504J(c0182i);
                                }
                                this.f37001d.add(new C8187g(c0182i2));
                            }
                            i8++;
                            z4 = z5;
                        }
                        i2 = i4;
                        z = z3;
                        i = i7;
                        if (z2) {
                            m4513A(size2, this.f37001d.size());
                            i2 = i4;
                            z = z3;
                            i = i7;
                        }
                    }
                } else {
                    i2 = c0182i.getGroupId();
                    if (i2 != i4) {
                        int size4 = this.f37001d.size();
                        boolean z6 = c0182i.getIcon() != null;
                        z = z6;
                        i3 = size4;
                        if (i5 != 0) {
                            i3 = size4 + 1;
                            ArrayList<AbstractC8185e> arrayList = this.f37001d;
                            int i9 = C8180f.this.f36997w;
                            arrayList.add(new C8186f(i9, i9));
                            z = z6;
                        }
                    } else {
                        z = z3;
                        i3 = i7;
                        if (!z3) {
                            z = z3;
                            i3 = i7;
                            if (c0182i.getIcon() != null) {
                                m4513A(i7, this.f37001d.size());
                                z = true;
                                i3 = i7;
                            }
                        }
                    }
                    C8187g c8187g = new C8187g(c0182i);
                    c8187g.f37008b = z;
                    this.f37001d.add(c8187g);
                    i = i3;
                }
                i5++;
                i4 = i2;
                z3 = z;
                i6 = i;
            }
        }

        /* renamed from: B */
        public Bundle m4512B() {
            Bundle bundle = new Bundle();
            C0182i c0182i = this.f37002e;
            if (c0182i != null) {
                bundle.putInt("android:menu:checked", c0182i.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f37001d.size();
            for (int i = 0; i < size; i++) {
                AbstractC8185e abstractC8185e = this.f37001d.get(i);
                if (abstractC8185e instanceof C8187g) {
                    C0182i m4493a = ((C8187g) abstractC8185e).m4493a();
                    View actionView = m4493a != null ? m4493a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(m4493a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        /* renamed from: C */
        public C0182i m4511C() {
            return this.f37002e;
        }

        /* renamed from: D */
        int m4510D() {
            int i = 0;
            int i2 = C8180f.this.f36979e.getChildCount() == 0 ? 0 : 1;
            while (true) {
                int i3 = i2;
                if (i < C8180f.this.f36983i.mo4501d()) {
                    int i4 = i3;
                    if (C8180f.this.f36983i.mo4499f(i) == 0) {
                        i4 = i3 + 1;
                    }
                    i++;
                    i2 = i4;
                } else {
                    return i3;
                }
            }
        }

        /* renamed from: E */
        public void mo4498p(AbstractC8192l abstractC8192l, int i) {
            int mo4499f = mo4499f(i);
            if (mo4499f != 0) {
                if (mo4499f == 1) {
                    ((TextView) abstractC8192l.f4070b).setText(((C8187g) this.f37001d.get(i)).m4493a().getTitle());
                    return;
                } else if (mo4499f != 2) {
                    return;
                } else {
                    C8186f c8186f = (C8186f) this.f37001d.get(i);
                    abstractC8192l.f4070b.setPadding(0, c8186f.m4494b(), 0, c8186f.m4495a());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC8192l.f4070b;
            navigationMenuItemView.setIconTintList(C8180f.this.f36988n);
            C8180f c8180f = C8180f.this;
            if (c8180f.f36986l) {
                navigationMenuItemView.setTextAppearance(c8180f.f36985k);
            }
            ColorStateList colorStateList = C8180f.this.f36987m;
            if (colorStateList != null) {
                navigationMenuItemView.setTextColor(colorStateList);
            }
            Drawable drawable = C8180f.this.f36989o;
            C1679w.m29267u0(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            C8187g c8187g = (C8187g) this.f37001d.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(c8187g.f37008b);
            navigationMenuItemView.setHorizontalPadding(C8180f.this.f36990p);
            navigationMenuItemView.setIconPadding(C8180f.this.f36991q);
            C8180f c8180f2 = C8180f.this;
            if (c8180f2.f36993s) {
                navigationMenuItemView.setIconSize(c8180f2.f36992r);
            }
            navigationMenuItemView.setMaxLines(C8180f.this.f36995u);
            navigationMenuItemView.mo4640e(c8187g.m4493a(), 0);
        }

        /* renamed from: F */
        public AbstractC8192l mo4497r(ViewGroup viewGroup, int i) {
            if (i == 0) {
                C8180f c8180f = C8180f.this;
                return new C8189i(c8180f.f36984j, viewGroup, c8180f.f36999y);
            } else if (i == 1) {
                return new C8191k(C8180f.this.f36984j, viewGroup);
            } else {
                if (i == 2) {
                    return new C8190j(C8180f.this.f36984j, viewGroup);
                }
                if (i == 3) {
                    return new C8182b(C8180f.this.f36979e);
                }
                return null;
            }
        }

        /* renamed from: G */
        public void mo4496w(AbstractC8192l abstractC8192l) {
            if (abstractC8192l instanceof C8189i) {
                ((NavigationMenuItemView) abstractC8192l.f4070b).m4643D();
            }
        }

        /* renamed from: I */
        public void m4505I(Bundle bundle) {
            C0182i m4493a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            C0182i m4493a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.f37003f = true;
                int size = this.f37001d.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    AbstractC8185e abstractC8185e = this.f37001d.get(i2);
                    if ((abstractC8185e instanceof C8187g) && (m4493a2 = ((C8187g) abstractC8185e).m4493a()) != null && m4493a2.getItemId() == i) {
                        m4504J(m4493a2);
                        break;
                    }
                    i2++;
                }
                this.f37003f = false;
                m4506H();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f37001d.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC8185e abstractC8185e2 = this.f37001d.get(i3);
                    if ((abstractC8185e2 instanceof C8187g) && (m4493a = ((C8187g) abstractC8185e2).m4493a()) != null && (actionView = m4493a.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(m4493a.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        /* renamed from: J */
        public void m4504J(C0182i c0182i) {
            if (this.f37002e == c0182i || !c0182i.isCheckable()) {
                return;
            }
            C0182i c0182i2 = this.f37002e;
            if (c0182i2 != null) {
                c0182i2.setChecked(false);
            }
            this.f37002e = c0182i;
            c0182i.setChecked(true);
        }

        /* renamed from: K */
        public void m4503K(boolean z) {
            this.f37003f = z;
        }

        /* renamed from: L */
        public void m4502L() {
            m4506H();
            m31967i();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: d */
        public int mo4501d() {
            return this.f37001d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: e */
        public long mo4500e(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: f */
        public int mo4499f(int i) {
            AbstractC8185e abstractC8185e = this.f37001d.get(i);
            if (abstractC8185e instanceof C8186f) {
                return 2;
            }
            if (abstractC8185e instanceof C8184d) {
                return 3;
            }
            if (!(abstractC8185e instanceof C8187g)) {
                throw new RuntimeException("Unknown item type.");
            }
            return ((C8187g) abstractC8185e).m4493a().hasSubMenu() ? 1 : 0;
        }
    }

    /* renamed from: com.google.android.material.internal.f$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$d.class */
    public static class C8184d implements AbstractC8185e {
        C8184d() {
        }
    }

    /* renamed from: com.google.android.material.internal.f$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$e.class */
    public interface AbstractC8185e {
    }

    /* renamed from: com.google.android.material.internal.f$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$f.class */
    public static class C8186f implements AbstractC8185e {

        /* renamed from: a */
        private final int f37005a;

        /* renamed from: b */
        private final int f37006b;

        public C8186f(int i, int i2) {
            this.f37005a = i;
            this.f37006b = i2;
        }

        /* renamed from: a */
        public int m4495a() {
            return this.f37006b;
        }

        /* renamed from: b */
        public int m4494b() {
            return this.f37005a;
        }
    }

    /* renamed from: com.google.android.material.internal.f$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$g.class */
    public static class C8187g implements AbstractC8185e {

        /* renamed from: a */
        private final C0182i f37007a;

        /* renamed from: b */
        boolean f37008b;

        C8187g(C0182i c0182i) {
            this.f37007a = c0182i;
        }

        /* renamed from: a */
        public C0182i m4493a() {
            return this.f37007a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.f$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$h.class */
    public class C8188h extends C0980k {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C8188h(RecyclerView recyclerView) {
            super(recyclerView);
            C8180f.this = r4;
        }

        @Override // androidx.recyclerview.widget.C0980k, p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29485e0(C1634c.C1636b.m29438a(C8180f.this.f36983i.m4510D(), 0, false));
        }
    }

    /* renamed from: com.google.android.material.internal.f$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$i.class */
    public static class C8189i extends AbstractC8192l {
        public C8189i(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C1892h.design_navigation_item, viewGroup, false));
            this.f4070b.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.internal.f$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$j.class */
    public static class C8190j extends AbstractC8192l {
        public C8190j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1892h.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.f$k */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$k.class */
    public static class C8191k extends AbstractC8192l {
        public C8191k(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1892h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.internal.f$l */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/f$l.class */
    public static abstract class AbstractC8192l extends RecyclerView.AbstractC0905b0 {
        public AbstractC8192l(View view) {
            super(view);
        }
    }

    /* renamed from: K */
    private void m4539K() {
        int i = (this.f36979e.getChildCount() != 0 || !this.f36994t) ? 0 : this.f36996v;
        NavigationMenuView navigationMenuView = this.f36978d;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: A */
    public void m4549A(Drawable drawable) {
        this.f36989o = drawable;
        mo4536c(false);
    }

    /* renamed from: B */
    public void m4548B(int i) {
        this.f36990p = i;
        mo4536c(false);
    }

    /* renamed from: C */
    public void m4547C(int i) {
        this.f36991q = i;
        mo4536c(false);
    }

    /* renamed from: D */
    public void m4546D(int i) {
        if (this.f36992r != i) {
            this.f36992r = i;
            this.f36993s = true;
            mo4536c(false);
        }
    }

    /* renamed from: E */
    public void m4545E(ColorStateList colorStateList) {
        this.f36988n = colorStateList;
        mo4536c(false);
    }

    /* renamed from: F */
    public void m4544F(int i) {
        this.f36995u = i;
        mo4536c(false);
    }

    /* renamed from: G */
    public void m4543G(int i) {
        this.f36985k = i;
        this.f36986l = true;
        mo4536c(false);
    }

    /* renamed from: H */
    public void m4542H(ColorStateList colorStateList) {
        this.f36987m = colorStateList;
        mo4536c(false);
    }

    /* renamed from: I */
    public void m4541I(int i) {
        this.f36998x = i;
        NavigationMenuView navigationMenuView = this.f36978d;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i);
        }
    }

    /* renamed from: J */
    public void m4540J(boolean z) {
        C8183c c8183c = this.f36983i;
        if (c8183c != null) {
            c8183c.m4503K(z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: b */
    public void mo4537b(C0178g c0178g, boolean z) {
        AbstractC0193m.AbstractC0194a abstractC0194a = this.f36980f;
        if (abstractC0194a != null) {
            abstractC0194a.mo35224b(c0178g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: c */
    public void mo4536c(boolean z) {
        C8183c c8183c = this.f36983i;
        if (c8183c != null) {
            c8183c.m4502L();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: d */
    public boolean mo4535d() {
        return false;
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
    public int getId() {
        return this.f36982h;
    }

    /* renamed from: h */
    public void m4532h(View view) {
        this.f36979e.addView(view);
        NavigationMenuView navigationMenuView = this.f36978d;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: i */
    public void mo4531i(Context context, C0178g c0178g) {
        this.f36984j = LayoutInflater.from(context);
        this.f36981g = c0178g;
        this.f36997w = context.getResources().getDimensionPixelOffset(C1888d.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: j */
    public void mo4530j(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f36978d.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f36983i.m4505I(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 == null) {
                return;
            }
            this.f36979e.restoreHierarchyState(sparseParcelableArray2);
        }
    }

    /* renamed from: k */
    public void m4529k(C1615e0 c1615e0) {
        int m29588l = c1615e0.m29588l();
        if (this.f36996v != m29588l) {
            this.f36996v = m29588l;
            m4539K();
        }
        NavigationMenuView navigationMenuView = this.f36978d;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, c1615e0.m29591i());
        C1679w.m29294h(this.f36979e, c1615e0);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: l */
    public boolean mo4528l(SubMenuC0202r subMenuC0202r) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0193m
    /* renamed from: m */
    public Parcelable mo4527m() {
        Bundle bundle = new Bundle();
        if (this.f36978d != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f36978d.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C8183c c8183c = this.f36983i;
        if (c8183c != null) {
            bundle.putBundle("android:menu:adapter", c8183c.m4512B());
        }
        if (this.f36979e != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f36979e.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    /* renamed from: n */
    public C0182i m4526n() {
        return this.f36983i.m4511C();
    }

    /* renamed from: o */
    public int m4525o() {
        return this.f36979e.getChildCount();
    }

    /* renamed from: p */
    public Drawable m4524p() {
        return this.f36989o;
    }

    /* renamed from: q */
    public int m4523q() {
        return this.f36990p;
    }

    /* renamed from: r */
    public int m4522r() {
        return this.f36991q;
    }

    /* renamed from: s */
    public int m4521s() {
        return this.f36995u;
    }

    /* renamed from: t */
    public ColorStateList m4520t() {
        return this.f36987m;
    }

    /* renamed from: u */
    public ColorStateList m4519u() {
        return this.f36988n;
    }

    /* renamed from: v */
    public AbstractC0195n m4518v(ViewGroup viewGroup) {
        if (this.f36978d == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f36984j.inflate(C1892h.design_navigation_menu, viewGroup, false);
            this.f36978d = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new C8188h(this.f36978d));
            if (this.f36983i == null) {
                this.f36983i = new C8183c();
            }
            int i = this.f36998x;
            if (i != -1) {
                this.f36978d.setOverScrollMode(i);
            }
            this.f36979e = (LinearLayout) this.f36984j.inflate(C1892h.design_navigation_item_header, (ViewGroup) this.f36978d, false);
            this.f36978d.setAdapter(this.f36983i);
        }
        return this.f36978d;
    }

    /* renamed from: w */
    public View m4517w(int i) {
        View inflate = this.f36984j.inflate(i, (ViewGroup) this.f36979e, false);
        m4532h(inflate);
        return inflate;
    }

    /* renamed from: x */
    public void m4516x(boolean z) {
        if (this.f36994t != z) {
            this.f36994t = z;
            m4539K();
        }
    }

    /* renamed from: y */
    public void m4515y(C0182i c0182i) {
        this.f36983i.m4504J(c0182i);
    }

    /* renamed from: z */
    public void m4514z(int i) {
        this.f36982h = i;
    }
}
