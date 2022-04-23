package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.view.menu.r;
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l;
import com.google.android.material.a;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e.class */
public final class e implements m {

    /* renamed from: a  reason: collision with root package name */
    public NavigationMenuView f30616a;

    /* renamed from: b  reason: collision with root package name */
    public LinearLayout f30617b;

    /* renamed from: c  reason: collision with root package name */
    androidx.appcompat.view.menu.g f30618c;

    /* renamed from: d  reason: collision with root package name */
    public int f30619d;
    public b e;
    public LayoutInflater f;
    int g;
    boolean h;
    ColorStateList i;
    ColorStateList j;
    Drawable k;
    int l;
    int m;
    int n;
    boolean o;
    int q;
    public int r;
    int s;
    private m.a v;
    public boolean p = true;
    public int t = -1;
    final View.OnClickListener u = new View.OnClickListener() { // from class: com.google.android.material.internal.e.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z = true;
            e.this.b(true);
            androidx.appcompat.view.menu.i iVar = ((NavigationMenuItemView) view).f;
            boolean a2 = e.this.f30618c.a(iVar, e.this, 0);
            if (iVar == null || !iVar.isCheckable() || !a2) {
                z = false;
            } else {
                e.this.e.a(iVar);
            }
            e.this.b(false);
            if (z) {
                e.this.a(false);
            }
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$a.class */
    static final class a extends k {
        public a(View view) {
            super(view);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$b.class */
    public final class b extends RecyclerView.a<k> {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<d> f30621a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        boolean f30622b;

        /* renamed from: d  reason: collision with root package name */
        private androidx.appcompat.view.menu.i f30624d;

        public b() {
            b();
        }

        private void a(int i, int i2) {
            while (i < i2) {
                ((f) this.f30621a.get(i)).f30628b = true;
                i++;
            }
        }

        public final void a(androidx.appcompat.view.menu.i iVar) {
            if (this.f30624d != iVar && iVar.isCheckable()) {
                androidx.appcompat.view.menu.i iVar2 = this.f30624d;
                if (iVar2 != null) {
                    iVar2.setChecked(false);
                }
                this.f30624d = iVar;
                iVar.setChecked(true);
            }
        }

        final void b() {
            if (!this.f30622b) {
                this.f30622b = true;
                this.f30621a.clear();
                this.f30621a.add(new c());
                int i = -1;
                int size = e.this.f30618c.i().size();
                boolean z = false;
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    androidx.appcompat.view.menu.i iVar = e.this.f30618c.i().get(i3);
                    if (iVar.isChecked()) {
                        a(iVar);
                    }
                    if (iVar.isCheckable()) {
                        iVar.a(false);
                    }
                    if (iVar.hasSubMenu()) {
                        SubMenu subMenu = iVar.getSubMenu();
                        i = i;
                        z = z;
                        i2 = i2;
                        if (subMenu.hasVisibleItems()) {
                            if (i3 != 0) {
                                this.f30621a.add(new C0491e(e.this.s, 0));
                            }
                            this.f30621a.add(new f(iVar));
                            int size2 = this.f30621a.size();
                            int size3 = subMenu.size();
                            boolean z2 = false;
                            for (int i4 = 0; i4 < size3; i4++) {
                                androidx.appcompat.view.menu.i iVar2 = (androidx.appcompat.view.menu.i) subMenu.getItem(i4);
                                z2 = z2;
                                if (iVar2.isVisible()) {
                                    z2 = z2;
                                    if (!z2) {
                                        z2 = z2;
                                        if (iVar2.getIcon() != null) {
                                            z2 = true;
                                        }
                                    }
                                    if (iVar2.isCheckable()) {
                                        iVar2.a(false);
                                    }
                                    if (iVar.isChecked()) {
                                        a(iVar);
                                    }
                                    this.f30621a.add(new f(iVar2));
                                }
                            }
                            i = i;
                            z = z;
                            i2 = i2;
                            if (z2) {
                                a(size2, this.f30621a.size());
                                i = i;
                                z = z;
                                i2 = i2;
                            }
                        }
                    } else {
                        i = iVar.getGroupId();
                        if (i != i) {
                            int size4 = this.f30621a.size();
                            boolean z3 = iVar.getIcon() != null;
                            z = z3;
                            i2 = size4;
                            if (i3 != 0) {
                                i2 = size4 + 1;
                                this.f30621a.add(new C0491e(e.this.s, e.this.s));
                                z = z3;
                            }
                        } else {
                            z = z;
                            i2 = i2;
                            if (!z) {
                                z = z;
                                i2 = i2;
                                if (iVar.getIcon() != null) {
                                    a(i2, this.f30621a.size());
                                    z = true;
                                    i2 = i2;
                                }
                            }
                        }
                        f fVar = new f(iVar);
                        fVar.f30628b = z;
                        this.f30621a.add(fVar);
                    }
                }
                this.f30622b = false;
            }
        }

        public final Bundle c() {
            Bundle bundle = new Bundle();
            androidx.appcompat.view.menu.i iVar = this.f30624d;
            if (iVar != null) {
                bundle.putInt("android:menu:checked", iVar.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f30621a.size();
            for (int i = 0; i < size; i++) {
                d dVar = this.f30621a.get(i);
                if (dVar instanceof f) {
                    androidx.appcompat.view.menu.i iVar2 = ((f) dVar).f30627a;
                    View actionView = iVar2 != null ? iVar2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(iVar2.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemCount() {
            return this.f30621a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final int getItemViewType(int i) {
            d dVar = this.f30621a.get(i);
            if (dVar instanceof C0491e) {
                return 2;
            }
            if (dVar instanceof c) {
                return 3;
            }
            if (dVar instanceof f) {
                return ((f) dVar).f30627a.hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onBindViewHolder(k kVar, int i) {
            k kVar2 = kVar;
            int itemViewType = getItemViewType(i);
            boolean z = true;
            if (itemViewType == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) kVar2.itemView;
                navigationMenuItemView.g = e.this.j;
                if (navigationMenuItemView.g == null) {
                    z = false;
                }
                navigationMenuItemView.h = z;
                if (navigationMenuItemView.f != null) {
                    navigationMenuItemView.setIcon(navigationMenuItemView.f.getIcon());
                }
                if (e.this.h) {
                    navigationMenuItemView.setTextAppearance(e.this.g);
                }
                if (e.this.i != null) {
                    navigationMenuItemView.setTextColor(e.this.i);
                }
                v.a(navigationMenuItemView, e.this.k != null ? e.this.k.getConstantState().newDrawable() : null);
                f fVar = (f) this.f30621a.get(i);
                navigationMenuItemView.setNeedsEmptyIcon(fVar.f30628b);
                navigationMenuItemView.setHorizontalPadding(e.this.l);
                navigationMenuItemView.setIconPadding(e.this.m);
                if (e.this.o) {
                    navigationMenuItemView.setIconSize(e.this.n);
                }
                navigationMenuItemView.setMaxLines(e.this.q);
                navigationMenuItemView.a(fVar.f30627a);
            } else if (itemViewType == 1) {
                ((TextView) kVar2.itemView).setText(((f) this.f30621a.get(i)).f30627a.getTitle());
            } else if (itemViewType == 2) {
                C0491e eVar = (C0491e) this.f30621a.get(i);
                kVar2.itemView.setPadding(0, eVar.f30625a, 0, eVar.f30626b);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ k onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                return new h(e.this.f, viewGroup, e.this.u);
            }
            if (i == 1) {
                return new j(e.this.f, viewGroup);
            }
            if (i == 2) {
                return new i(e.this.f, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new a(e.this.f30617b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.a
        public final /* synthetic */ void onViewRecycled(k kVar) {
            k kVar2 = kVar;
            if (kVar2 instanceof h) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) kVar2.itemView;
                if (navigationMenuItemView.e != null) {
                    navigationMenuItemView.e.removeAllViews();
                }
                navigationMenuItemView.f30600d.setCompoundDrawables(null, null, null, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$c.class */
    public static final class c implements d {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$d.class */
    public interface d {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.e$e  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$e.class */
    public static final class C0491e implements d {

        /* renamed from: a  reason: collision with root package name */
        final int f30625a;

        /* renamed from: b  reason: collision with root package name */
        final int f30626b;

        public C0491e(int i, int i2) {
            this.f30625a = i;
            this.f30626b = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$f.class */
    public static final class f implements d {

        /* renamed from: a  reason: collision with root package name */
        final androidx.appcompat.view.menu.i f30627a;

        /* renamed from: b  reason: collision with root package name */
        boolean f30628b;

        f(androidx.appcompat.view.menu.i iVar) {
            this.f30627a = iVar;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$g.class */
    public final class g extends l {
        public g(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.l, androidx.core.view.a
        public final void a(View view, androidx.core.view.a.c cVar) {
            super.a(view, cVar);
            b bVar = e.this.e;
            int i = e.this.f30617b.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < e.this.e.getItemCount(); i2++) {
                i = i;
                if (e.this.e.getItemViewType(i2) == 0) {
                    i++;
                }
            }
            cVar.a(Build.VERSION.SDK_INT >= 19 ? new c.b(AccessibilityNodeInfo.CollectionInfo.obtain(i, 0, false)) : new c.b(null));
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$h.class */
    static final class h extends k {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(a.h.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$i.class */
    static final class i extends k {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.h.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$j.class */
    static final class j extends k {
        public j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(a.h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$k.class */
    static abstract class k extends RecyclerView.v {
        public k(View view) {
            super(view);
        }
    }

    public final void a(int i2) {
        this.g = i2;
        this.h = true;
        a(false);
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Context context, androidx.appcompat.view.menu.g gVar) {
        this.f = LayoutInflater.from(context);
        this.f30618c = gVar;
        this.s = context.getResources().getDimensionPixelOffset(a.d.design_navigation_separator_vertical_padding);
    }

    public final void a(ColorStateList colorStateList) {
        this.j = colorStateList;
        a(false);
    }

    public final void a(Drawable drawable) {
        this.k = drawable;
        a(false);
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(Parcelable parcelable) {
        androidx.appcompat.view.menu.i iVar;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        androidx.appcompat.view.menu.i iVar2;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f30616a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                b bVar = this.e;
                int i2 = bundle2.getInt("android:menu:checked", 0);
                if (i2 != 0) {
                    bVar.f30622b = true;
                    int size = bVar.f30621a.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= size) {
                            break;
                        }
                        d dVar = bVar.f30621a.get(i3);
                        if ((dVar instanceof f) && (iVar2 = ((f) dVar).f30627a) != null && iVar2.getItemId() == i2) {
                            bVar.a(iVar2);
                            break;
                        }
                        i3++;
                    }
                    bVar.f30622b = false;
                    bVar.b();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = bVar.f30621a.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        d dVar2 = bVar.f30621a.get(i4);
                        if (!(!(dVar2 instanceof f) || (iVar = ((f) dVar2).f30627a) == null || (actionView = iVar.getActionView()) == null || (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(iVar.getItemId())) == null)) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 != null) {
                this.f30617b.restoreHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        m.a aVar = this.v;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    public final void a(androidx.appcompat.view.menu.i iVar) {
        this.e.a(iVar);
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(m.a aVar) {
        this.v = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public final void a(boolean z) {
        b bVar = this.e;
        if (bVar != null) {
            bVar.b();
            bVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean a(r rVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public final int b() {
        return this.f30619d;
    }

    public final void b(int i2) {
        this.l = i2;
        a(false);
    }

    public final void b(ColorStateList colorStateList) {
        this.i = colorStateList;
        a(false);
    }

    public final void b(boolean z) {
        b bVar = this.e;
        if (bVar != null) {
            bVar.f30622b = z;
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean b(androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    public final void c() {
        int i2 = (this.f30617b.getChildCount() != 0 || !this.p) ? 0 : this.r;
        NavigationMenuView navigationMenuView = this.f30616a;
        navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
    }

    public final void c(int i2) {
        this.m = i2;
        a(false);
    }

    @Override // androidx.appcompat.view.menu.m
    public final boolean c(androidx.appcompat.view.menu.i iVar) {
        return false;
    }

    public final void d(int i2) {
        this.q = i2;
        a(false);
    }

    public final void e(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.o = true;
            a(false);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public final Parcelable f() {
        Bundle bundle = new Bundle();
        if (this.f30616a != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.f30616a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        b bVar = this.e;
        if (bVar != null) {
            bundle.putBundle("android:menu:adapter", bVar.c());
        }
        if (this.f30617b != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f30617b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    public final void f(int i2) {
        this.t = i2;
        NavigationMenuView navigationMenuView = this.f30616a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i2);
        }
    }
}
