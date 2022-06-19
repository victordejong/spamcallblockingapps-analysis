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
import androidx.appcompat.view.menu.AbstractC0283m;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.view.menu.SubMenuC0292r;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.recyclerview.widget.C2699l;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C14376a;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e.class */
public final class C14622e implements AbstractC0283m {

    /* renamed from: a */
    public NavigationMenuView f53374a;

    /* renamed from: b */
    public LinearLayout f53375b;

    /* renamed from: c */
    C0268g f53376c;

    /* renamed from: d */
    public int f53377d;

    /* renamed from: e */
    public C14625b f53378e;

    /* renamed from: f */
    public LayoutInflater f53379f;

    /* renamed from: g */
    int f53380g;

    /* renamed from: h */
    boolean f53381h;

    /* renamed from: i */
    ColorStateList f53382i;

    /* renamed from: j */
    ColorStateList f53383j;

    /* renamed from: k */
    Drawable f53384k;

    /* renamed from: l */
    int f53385l;

    /* renamed from: m */
    int f53386m;

    /* renamed from: n */
    int f53387n;

    /* renamed from: o */
    boolean f53388o;

    /* renamed from: q */
    int f53390q;

    /* renamed from: r */
    public int f53391r;

    /* renamed from: s */
    int f53392s;

    /* renamed from: v */
    private AbstractC0283m.AbstractC0284a f53395v;

    /* renamed from: p */
    public boolean f53389p = true;

    /* renamed from: t */
    public int f53393t = -1;

    /* renamed from: u */
    final View.OnClickListener f53394u = new View.OnClickListener() { // from class: com.google.android.material.internal.e.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z = true;
            C14622e.this.m10536b(true);
            C0272i c0272i = ((NavigationMenuItemView) view).f53300f;
            boolean m46102a = C14622e.this.f53376c.m46102a(c0272i, C14622e.this, 0);
            if (c0272i == null || !c0272i.isCheckable() || !m46102a) {
                z = false;
            } else {
                C14622e.this.f53378e.m10527a(c0272i);
            }
            C14622e.this.m10536b(false);
            if (z) {
                C14622e.this.mo10541a(false);
            }
        }
    };

    /* renamed from: com.google.android.material.internal.e$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$a.class */
    static final class C14624a extends AbstractC14634k {
        public C14624a(View view) {
            super(view);
        }
    }

    /* renamed from: com.google.android.material.internal.e$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$b.class */
    public final class C14625b extends RecyclerView.AbstractC2626a<AbstractC14634k> {

        /* renamed from: a */
        final ArrayList<AbstractC14627d> f53397a = new ArrayList<>();

        /* renamed from: b */
        boolean f53398b;

        /* renamed from: d */
        private C0272i f53400d;

        public C14625b() {
            C14622e.this = r5;
            m10526b();
        }

        /* renamed from: a */
        private void m10528a(int i, int i2) {
            while (i < i2) {
                ((C14629f) this.f53397a.get(i)).f53404b = true;
                i++;
            }
        }

        /* renamed from: a */
        public final void m10527a(C0272i c0272i) {
            if (this.f53400d == c0272i || !c0272i.isCheckable()) {
                return;
            }
            C0272i c0272i2 = this.f53400d;
            if (c0272i2 != null) {
                c0272i2.setChecked(false);
            }
            this.f53400d = c0272i;
            c0272i.setChecked(true);
        }

        /* renamed from: b */
        final void m10526b() {
            int i;
            boolean z;
            int i2;
            int i3;
            boolean z2;
            if (this.f53398b) {
                return;
            }
            this.f53398b = true;
            this.f53397a.clear();
            this.f53397a.add(new C14626c());
            int i4 = -1;
            int size = C14622e.this.f53376c.m46084i().size();
            int i5 = 0;
            boolean z3 = false;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i5 >= size) {
                    this.f53398b = false;
                    return;
                }
                C0272i c0272i = C14622e.this.f53376c.m46084i().get(i5);
                if (c0272i.isChecked()) {
                    m10527a(c0272i);
                }
                if (c0272i.isCheckable()) {
                    c0272i.m46076a(false);
                }
                if (c0272i.hasSubMenu()) {
                    SubMenu subMenu = c0272i.getSubMenu();
                    i2 = i4;
                    z = z3;
                    i = i7;
                    if (subMenu.hasVisibleItems()) {
                        if (i5 != 0) {
                            this.f53397a.add(new C14628e(C14622e.this.f53392s, 0));
                        }
                        this.f53397a.add(new C14629f(c0272i));
                        int size2 = this.f53397a.size();
                        int size3 = subMenu.size();
                        int i8 = 0;
                        boolean z4 = false;
                        while (true) {
                            z2 = z4;
                            if (i8 >= size3) {
                                break;
                            }
                            C0272i c0272i2 = (C0272i) subMenu.getItem(i8);
                            boolean z5 = z2;
                            if (c0272i2.isVisible()) {
                                z5 = z2;
                                if (!z2) {
                                    z5 = z2;
                                    if (c0272i2.getIcon() != null) {
                                        z5 = true;
                                    }
                                }
                                if (c0272i2.isCheckable()) {
                                    c0272i2.m46076a(false);
                                }
                                if (c0272i.isChecked()) {
                                    m10527a(c0272i);
                                }
                                this.f53397a.add(new C14629f(c0272i2));
                            }
                            i8++;
                            z4 = z5;
                        }
                        i2 = i4;
                        z = z3;
                        i = i7;
                        if (z2) {
                            m10528a(size2, this.f53397a.size());
                            i2 = i4;
                            z = z3;
                            i = i7;
                        }
                    }
                } else {
                    i2 = c0272i.getGroupId();
                    if (i2 != i4) {
                        int size4 = this.f53397a.size();
                        boolean z6 = c0272i.getIcon() != null;
                        z = z6;
                        i3 = size4;
                        if (i5 != 0) {
                            i3 = size4 + 1;
                            this.f53397a.add(new C14628e(C14622e.this.f53392s, C14622e.this.f53392s));
                            z = z6;
                        }
                    } else {
                        z = z3;
                        i3 = i7;
                        if (!z3) {
                            z = z3;
                            i3 = i7;
                            if (c0272i.getIcon() != null) {
                                m10528a(i7, this.f53397a.size());
                                z = true;
                                i3 = i7;
                            }
                        }
                    }
                    C14629f c14629f = new C14629f(c0272i);
                    c14629f.f53404b = z;
                    this.f53397a.add(c14629f);
                    i = i3;
                }
                i5++;
                i4 = i2;
                z3 = z;
                i6 = i;
            }
        }

        /* renamed from: c */
        public final Bundle m10525c() {
            Bundle bundle = new Bundle();
            C0272i c0272i = this.f53400d;
            if (c0272i != null) {
                bundle.putInt("android:menu:checked", c0272i.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f53397a.size();
            for (int i = 0; i < size; i++) {
                AbstractC14627d abstractC14627d = this.f53397a.get(i);
                if (abstractC14627d instanceof C14629f) {
                    C0272i c0272i2 = ((C14629f) abstractC14627d).f53403a;
                    View actionView = c0272i2 != null ? c0272i2.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(c0272i2.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemCount() {
            return this.f53397a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final int getItemViewType(int i) {
            AbstractC14627d abstractC14627d = this.f53397a.get(i);
            if (abstractC14627d instanceof C14628e) {
                return 2;
            }
            if (abstractC14627d instanceof C14626c) {
                return 3;
            }
            if (!(abstractC14627d instanceof C14629f)) {
                throw new RuntimeException("Unknown item type.");
            }
            return ((C14629f) abstractC14627d).f53403a.hasSubMenu() ? 1 : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onBindViewHolder(AbstractC14634k abstractC14634k, int i) {
            AbstractC14634k abstractC14634k2 = abstractC14634k;
            int itemViewType = getItemViewType(i);
            boolean z = true;
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) abstractC14634k2.itemView).setText(((C14629f) this.f53397a.get(i)).f53403a.getTitle());
                    return;
                } else if (itemViewType != 2) {
                    return;
                } else {
                    C14628e c14628e = (C14628e) this.f53397a.get(i);
                    abstractC14634k2.itemView.setPadding(0, c14628e.f53401a, 0, c14628e.f53402b);
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC14634k2.itemView;
            navigationMenuItemView.f53301g = C14622e.this.f53383j;
            if (navigationMenuItemView.f53301g == null) {
                z = false;
            }
            navigationMenuItemView.f53302h = z;
            if (navigationMenuItemView.f53300f != null) {
                navigationMenuItemView.setIcon(navigationMenuItemView.f53300f.getIcon());
            }
            if (C14622e.this.f53381h) {
                navigationMenuItemView.setTextAppearance(C14622e.this.f53380g);
            }
            if (C14622e.this.f53382i != null) {
                navigationMenuItemView.setTextColor(C14622e.this.f53382i);
            }
            C0926v.m44128a(navigationMenuItemView, C14622e.this.f53384k != null ? C14622e.this.f53384k.getConstantState().newDrawable() : null);
            C14629f c14629f = (C14629f) this.f53397a.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(c14629f.f53404b);
            navigationMenuItemView.setHorizontalPadding(C14622e.this.f53385l);
            navigationMenuItemView.setIconPadding(C14622e.this.f53386m);
            if (C14622e.this.f53388o) {
                navigationMenuItemView.setIconSize(C14622e.this.f53387n);
            }
            navigationMenuItemView.setMaxLines(C14622e.this.f53390q);
            navigationMenuItemView.mo10612a(c14629f.f53403a);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ AbstractC14634k onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i != 0) {
                if (i == 1) {
                    return new C14633j(C14622e.this.f53379f, viewGroup);
                }
                if (i == 2) {
                    return new C14632i(C14622e.this.f53379f, viewGroup);
                }
                if (i == 3) {
                    return new C14624a(C14622e.this.f53375b);
                }
                return null;
            }
            return new C14631h(C14622e.this.f53379f, viewGroup, C14622e.this.f53394u);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
        public final /* synthetic */ void onViewRecycled(AbstractC14634k abstractC14634k) {
            AbstractC14634k abstractC14634k2 = abstractC14634k;
            if (abstractC14634k2 instanceof C14631h) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC14634k2.itemView;
                if (navigationMenuItemView.f53299e != null) {
                    navigationMenuItemView.f53299e.removeAllViews();
                }
                navigationMenuItemView.f53298d.setCompoundDrawables(null, null, null, null);
            }
        }
    }

    /* renamed from: com.google.android.material.internal.e$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$c.class */
    public static final class C14626c implements AbstractC14627d {
        C14626c() {
        }
    }

    /* renamed from: com.google.android.material.internal.e$d */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$d.class */
    public interface AbstractC14627d {
    }

    /* renamed from: com.google.android.material.internal.e$e */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$e.class */
    public static final class C14628e implements AbstractC14627d {

        /* renamed from: a */
        final int f53401a;

        /* renamed from: b */
        final int f53402b;

        public C14628e(int i, int i2) {
            this.f53401a = i;
            this.f53402b = i2;
        }
    }

    /* renamed from: com.google.android.material.internal.e$f */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$f.class */
    public static final class C14629f implements AbstractC14627d {

        /* renamed from: a */
        final C0272i f53403a;

        /* renamed from: b */
        boolean f53404b;

        C14629f(C0272i c0272i) {
            this.f53403a = c0272i;
        }
    }

    /* renamed from: com.google.android.material.internal.e$g */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$g.class */
    public final class C14630g extends C2699l {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14630g(RecyclerView recyclerView) {
            super(recyclerView);
            C14622e.this = r4;
        }

        @Override // androidx.recyclerview.widget.C2699l, androidx.core.view.C0865a
        /* renamed from: a */
        public final void mo9886a(View view, C0869c c0869c) {
            super.mo9886a(view, c0869c);
            C14625b c14625b = C14622e.this.f53378e;
            int i = C14622e.this.f53375b.getChildCount() == 0 ? 0 : 1;
            int i2 = 0;
            while (i2 < C14622e.this.f53378e.getItemCount()) {
                int i3 = i;
                if (C14622e.this.f53378e.getItemViewType(i2) == 0) {
                    i3 = i + 1;
                }
                i2++;
                i = i3;
            }
            c0869c.m44274a(Build.VERSION.SDK_INT >= 19 ? new C0869c.C0871b(AccessibilityNodeInfo.CollectionInfo.obtain(i, 0, false)) : new C0869c.C0871b(null));
        }
    }

    /* renamed from: com.google.android.material.internal.e$h */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$h.class */
    static final class C14631h extends AbstractC14634k {
        public C14631h(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C14376a.C14384h.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.internal.e$i */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$i.class */
    static final class C14632i extends AbstractC14634k {
        public C14632i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C14376a.C14384h.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.e$j */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$j.class */
    static final class C14633j extends AbstractC14634k {
        public C14633j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C14376a.C14384h.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.e$k */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/e$k.class */
    public static abstract class AbstractC14634k extends RecyclerView.AbstractC2657v {
        public AbstractC14634k(View view) {
            super(view);
        }
    }

    /* renamed from: a */
    public final void m10550a(int i) {
        this.f53380g = i;
        this.f53381h = true;
        mo10541a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10549a(Context context, C0268g c0268g) {
        this.f53379f = LayoutInflater.from(context);
        this.f53376c = c0268g;
        this.f53392s = context.getResources().getDimensionPixelOffset(C14376a.C14380d.design_navigation_separator_vertical_padding);
    }

    /* renamed from: a */
    public final void m10548a(ColorStateList colorStateList) {
        this.f53383j = colorStateList;
        mo10541a(false);
    }

    /* renamed from: a */
    public final void m10547a(Drawable drawable) {
        this.f53384k = drawable;
        mo10541a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10546a(Parcelable parcelable) {
        C0272i c0272i;
        View actionView;
        ParcelableSparseArray parcelableSparseArray;
        C0272i c0272i2;
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f53374a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                C14625b c14625b = this.f53378e;
                int i = bundle2.getInt("android:menu:checked", 0);
                if (i != 0) {
                    c14625b.f53398b = true;
                    int size = c14625b.f53397a.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        AbstractC14627d abstractC14627d = c14625b.f53397a.get(i2);
                        if ((abstractC14627d instanceof C14629f) && (c0272i2 = ((C14629f) abstractC14627d).f53403a) != null && c0272i2.getItemId() == i) {
                            c14625b.m10527a(c0272i2);
                            break;
                        }
                        i2++;
                    }
                    c14625b.f53398b = false;
                    c14625b.m10526b();
                }
                SparseArray sparseParcelableArray2 = bundle2.getSparseParcelableArray("android:menu:action_views");
                if (sparseParcelableArray2 != null) {
                    int size2 = c14625b.f53397a.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        AbstractC14627d abstractC14627d2 = c14625b.f53397a.get(i3);
                        if ((abstractC14627d2 instanceof C14629f) && (c0272i = ((C14629f) abstractC14627d2).f53403a) != null && (actionView = c0272i.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray2.get(c0272i.getItemId())) != null) {
                            actionView.restoreHierarchyState(parcelableSparseArray);
                        }
                    }
                }
            }
            SparseArray sparseParcelableArray3 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray3 == null) {
                return;
            }
            this.f53375b.restoreHierarchyState(sparseParcelableArray3);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10545a(C0268g c0268g, boolean z) {
        AbstractC0283m.AbstractC0284a abstractC0284a = this.f53395v;
        if (abstractC0284a != null) {
            abstractC0284a.mo45990a(c0268g, z);
        }
    }

    /* renamed from: a */
    public final void m10544a(C0272i c0272i) {
        this.f53378e.m10527a(c0272i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10543a(AbstractC0283m.AbstractC0284a abstractC0284a) {
        this.f53395v = abstractC0284a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final void mo10541a(boolean z) {
        C14625b c14625b = this.f53378e;
        if (c14625b != null) {
            c14625b.m10526b();
            c14625b.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10551a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: a */
    public final boolean mo10542a(SubMenuC0292r subMenuC0292r) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final int mo10540b() {
        return this.f53377d;
    }

    /* renamed from: b */
    public final void m10539b(int i) {
        this.f53385l = i;
        mo10541a(false);
    }

    /* renamed from: b */
    public final void m10538b(ColorStateList colorStateList) {
        this.f53382i = colorStateList;
        mo10541a(false);
    }

    /* renamed from: b */
    public final void m10536b(boolean z) {
        C14625b c14625b = this.f53378e;
        if (c14625b != null) {
            c14625b.f53398b = z;
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: b */
    public final boolean mo10537b(C0272i c0272i) {
        return false;
    }

    /* renamed from: c */
    public final void m10535c() {
        int i = (this.f53375b.getChildCount() != 0 || !this.f53389p) ? 0 : this.f53391r;
        NavigationMenuView navigationMenuView = this.f53374a;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: c */
    public final void m10534c(int i) {
        this.f53386m = i;
        mo10541a(false);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: c */
    public final boolean mo10533c(C0272i c0272i) {
        return false;
    }

    /* renamed from: d */
    public final void m10532d(int i) {
        this.f53390q = i;
        mo10541a(false);
    }

    /* renamed from: e */
    public final void m10531e(int i) {
        if (this.f53387n != i) {
            this.f53387n = i;
            this.f53388o = true;
            mo10541a(false);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0283m
    /* renamed from: f */
    public final Parcelable mo10530f() {
        Bundle bundle = new Bundle();
        if (this.f53374a != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.f53374a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C14625b c14625b = this.f53378e;
        if (c14625b != null) {
            bundle.putBundle("android:menu:adapter", c14625b.m10525c());
        }
        if (this.f53375b != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f53375b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    /* renamed from: f */
    public final void m10529f(int i) {
        this.f53393t = i;
        NavigationMenuView navigationMenuView = this.f53374a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i);
        }
    }
}
