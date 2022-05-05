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
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.C1027R;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter.class */
public class NavigationMenuPresenter implements MenuPresenter {

    /* renamed from: f */
    private NavigationMenuView f10878f;

    /* renamed from: g */
    LinearLayout f10879g;

    /* renamed from: h */
    private MenuPresenter.Callback f10880h;

    /* renamed from: i */
    MenuBuilder f10881i;

    /* renamed from: j */
    private int f10882j;

    /* renamed from: k */
    NavigationMenuAdapter f10883k;

    /* renamed from: l */
    LayoutInflater f10884l;

    /* renamed from: m */
    int f10885m;

    /* renamed from: n */
    boolean f10886n;

    /* renamed from: o */
    ColorStateList f10887o;

    /* renamed from: p */
    ColorStateList f10888p;

    /* renamed from: q */
    Drawable f10889q;

    /* renamed from: r */
    int f10890r;

    /* renamed from: s */
    int f10891s;

    /* renamed from: t */
    int f10892t;

    /* renamed from: u */
    boolean f10893u;

    /* renamed from: w */
    private int f10895w;

    /* renamed from: x */
    private int f10896x;

    /* renamed from: y */
    int f10897y;

    /* renamed from: v */
    boolean f10894v = true;

    /* renamed from: z */
    private int f10898z = -1;

    /* renamed from: A */
    final View.OnClickListener f10877A = new View.OnClickListener() { // from class: com.google.android.material.internal.NavigationMenuPresenter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            NavigationMenuPresenter.this.m9528J(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            boolean O = navigationMenuPresenter.f10881i.m21886O(itemData, navigationMenuPresenter, 0);
            if (itemData == null || !itemData.isCheckable() || !O) {
                z = false;
            } else {
                NavigationMenuPresenter.this.f10883k.m9491l(itemData);
            }
            NavigationMenuPresenter.this.m9528J(false);
            if (z) {
                NavigationMenuPresenter.this.mo9523d(false);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder.class */
    public static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter.class */
    public class NavigationMenuAdapter extends RecyclerView.Adapter<ViewHolder> {

        /* renamed from: a */
        private final ArrayList<NavigationMenuItem> f10900a = new ArrayList<>();

        /* renamed from: b */
        private MenuItemImpl f10901b;

        /* renamed from: c */
        private boolean f10902c;

        NavigationMenuAdapter() {
            m9493j();
        }

        /* renamed from: c */
        private void m9500c(int i, int i2) {
            while (i < i2) {
                ((NavigationMenuTextItem) this.f10900a.get(i)).f10907b = true;
                i++;
            }
        }

        /* renamed from: j */
        private void m9493j() {
            if (!this.f10902c) {
                this.f10902c = true;
                this.f10900a.clear();
                this.f10900a.add(new NavigationMenuHeaderItem());
                int i = -1;
                int size = NavigationMenuPresenter.this.f10881i.m21890G().size();
                boolean z = false;
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    MenuItemImpl menuItemImpl = NavigationMenuPresenter.this.f10881i.m21890G().get(i3);
                    if (menuItemImpl.isChecked()) {
                        m9491l(menuItemImpl);
                    }
                    if (menuItemImpl.isCheckable()) {
                        menuItemImpl.m21825t(false);
                    }
                    if (menuItemImpl.hasSubMenu()) {
                        SubMenu subMenu = menuItemImpl.getSubMenu();
                        i = i;
                        z = z;
                        i2 = i2;
                        if (subMenu.hasVisibleItems()) {
                            if (i3 != 0) {
                                this.f10900a.add(new NavigationMenuSeparatorItem(NavigationMenuPresenter.this.f10897y, 0));
                            }
                            this.f10900a.add(new NavigationMenuTextItem(menuItemImpl));
                            int size2 = this.f10900a.size();
                            int size3 = subMenu.size();
                            boolean z2 = false;
                            for (int i4 = 0; i4 < size3; i4++) {
                                MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i4);
                                z2 = z2;
                                if (menuItemImpl2.isVisible()) {
                                    z2 = z2;
                                    if (!z2) {
                                        z2 = z2;
                                        if (menuItemImpl2.getIcon() != null) {
                                            z2 = true;
                                        }
                                    }
                                    if (menuItemImpl2.isCheckable()) {
                                        menuItemImpl2.m21825t(false);
                                    }
                                    if (menuItemImpl.isChecked()) {
                                        m9491l(menuItemImpl);
                                    }
                                    this.f10900a.add(new NavigationMenuTextItem(menuItemImpl2));
                                }
                            }
                            i = i;
                            z = z;
                            i2 = i2;
                            if (z2) {
                                m9500c(size2, this.f10900a.size());
                                i = i;
                                z = z;
                                i2 = i2;
                            }
                        }
                    } else {
                        i = menuItemImpl.getGroupId();
                        if (i != i) {
                            int size4 = this.f10900a.size();
                            boolean z3 = menuItemImpl.getIcon() != null;
                            z = z3;
                            i2 = size4;
                            if (i3 != 0) {
                                i2 = size4 + 1;
                                ArrayList<NavigationMenuItem> arrayList = this.f10900a;
                                int i5 = NavigationMenuPresenter.this.f10897y;
                                arrayList.add(new NavigationMenuSeparatorItem(i5, i5));
                                z = z3;
                            }
                        } else {
                            z = z;
                            i2 = i2;
                            if (!z) {
                                z = z;
                                i2 = i2;
                                if (menuItemImpl.getIcon() != null) {
                                    m9500c(i2, this.f10900a.size());
                                    z = true;
                                    i2 = i2;
                                }
                            }
                        }
                        NavigationMenuTextItem navigationMenuTextItem = new NavigationMenuTextItem(menuItemImpl);
                        navigationMenuTextItem.f10907b = z;
                        this.f10900a.add(navigationMenuTextItem);
                    }
                }
                this.f10902c = false;
            }
        }

        @NonNull
        /* renamed from: d */
        public Bundle m9499d() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f10901b;
            if (menuItemImpl != null) {
                bundle.putInt("android:menu:checked", menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f10900a.size();
            for (int i = 0; i < size; i++) {
                NavigationMenuItem navigationMenuItem = this.f10900a.get(i);
                if (navigationMenuItem instanceof NavigationMenuTextItem) {
                    MenuItemImpl a = ((NavigationMenuTextItem) navigationMenuItem).m9486a();
                    View actionView = a != null ? a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        /* renamed from: e */
        public MenuItemImpl m9498e() {
            return this.f10901b;
        }

        /* renamed from: f */
        int m9497f() {
            int i = NavigationMenuPresenter.this.f10879g.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < NavigationMenuPresenter.this.f10883k.getItemCount(); i2++) {
                i = i;
                if (NavigationMenuPresenter.this.f10883k.getItemViewType(i2) == 0) {
                    i++;
                }
            }
            return i;
        }

        /* renamed from: g */
        public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder.itemView;
                navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.f10888p);
                NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
                if (navigationMenuPresenter.f10886n) {
                    navigationMenuItemView.setTextAppearance(navigationMenuPresenter.f10885m);
                }
                ColorStateList colorStateList = NavigationMenuPresenter.this.f10887o;
                if (colorStateList != null) {
                    navigationMenuItemView.setTextColor(colorStateList);
                }
                Drawable drawable = NavigationMenuPresenter.this.f10889q;
                ViewCompat.m19177q0(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
                NavigationMenuTextItem navigationMenuTextItem = (NavigationMenuTextItem) this.f10900a.get(i);
                navigationMenuItemView.setNeedsEmptyIcon(navigationMenuTextItem.f10907b);
                navigationMenuItemView.setHorizontalPadding(NavigationMenuPresenter.this.f10890r);
                navigationMenuItemView.setIconPadding(NavigationMenuPresenter.this.f10891s);
                NavigationMenuPresenter navigationMenuPresenter2 = NavigationMenuPresenter.this;
                if (navigationMenuPresenter2.f10893u) {
                    navigationMenuItemView.setIconSize(navigationMenuPresenter2.f10892t);
                }
                navigationMenuItemView.setMaxLines(NavigationMenuPresenter.this.f10895w);
                navigationMenuItemView.mo9538e(navigationMenuTextItem.m9486a(), 0);
            } else if (itemViewType == 1) {
                ((TextView) viewHolder.itemView).setText(((NavigationMenuTextItem) this.f10900a.get(i)).m9486a().getTitle());
            } else if (itemViewType == 2) {
                NavigationMenuSeparatorItem navigationMenuSeparatorItem = (NavigationMenuSeparatorItem) this.f10900a.get(i);
                viewHolder.itemView.setPadding(0, navigationMenuSeparatorItem.m9487b(), 0, navigationMenuSeparatorItem.m9488a());
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f10900a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            NavigationMenuItem navigationMenuItem = this.f10900a.get(i);
            if (navigationMenuItem instanceof NavigationMenuSeparatorItem) {
                return 2;
            }
            if (navigationMenuItem instanceof NavigationMenuHeaderItem) {
                return 3;
            }
            if (navigationMenuItem instanceof NavigationMenuTextItem) {
                return ((NavigationMenuTextItem) navigationMenuItem).m9486a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Nullable
        /* renamed from: h */
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
                return new NormalViewHolder(navigationMenuPresenter.f10884l, viewGroup, navigationMenuPresenter.f10877A);
            } else if (i == 1) {
                return new SubheaderViewHolder(NavigationMenuPresenter.this.f10884l, viewGroup);
            } else {
                if (i == 2) {
                    return new SeparatorViewHolder(NavigationMenuPresenter.this.f10884l, viewGroup);
                }
                if (i != 3) {
                    return null;
                }
                return new HeaderViewHolder(NavigationMenuPresenter.this.f10879g);
            }
        }

        /* renamed from: i */
        public void onViewRecycled(ViewHolder viewHolder) {
            if (viewHolder instanceof NormalViewHolder) {
                ((NavigationMenuItemView) viewHolder.itemView).m9541D();
            }
        }

        /* renamed from: k */
        public void m9492k(@NonNull Bundle bundle) {
            MenuItemImpl a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.f10902c = true;
                int size = this.f10900a.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    NavigationMenuItem navigationMenuItem = this.f10900a.get(i2);
                    if ((navigationMenuItem instanceof NavigationMenuTextItem) && (a2 = ((NavigationMenuTextItem) navigationMenuItem).m9486a()) != null && a2.getItemId() == i) {
                        m9491l(a2);
                        break;
                    }
                    i2++;
                }
                this.f10902c = false;
                m9493j();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f10900a.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    NavigationMenuItem navigationMenuItem2 = this.f10900a.get(i3);
                    if (!(!(navigationMenuItem2 instanceof NavigationMenuTextItem) || (a = ((NavigationMenuTextItem) navigationMenuItem2).m9486a()) == null || (actionView = a.getActionView()) == null || (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a.getItemId())) == null)) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        /* renamed from: l */
        public void m9491l(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f10901b != menuItemImpl && menuItemImpl.isCheckable()) {
                MenuItemImpl menuItemImpl2 = this.f10901b;
                if (menuItemImpl2 != null) {
                    menuItemImpl2.setChecked(false);
                }
                this.f10901b = menuItemImpl;
                menuItemImpl.setChecked(true);
            }
        }

        /* renamed from: m */
        public void m9490m(boolean z) {
            this.f10902c = z;
        }

        /* renamed from: n */
        public void m9489n() {
            m9493j();
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem.class */
    public static class NavigationMenuHeaderItem implements NavigationMenuItem {
        NavigationMenuHeaderItem() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem.class */
    public interface NavigationMenuItem {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem.class */
    public static class NavigationMenuSeparatorItem implements NavigationMenuItem {

        /* renamed from: a */
        private final int f10904a;

        /* renamed from: b */
        private final int f10905b;

        public NavigationMenuSeparatorItem(int i, int i2) {
            this.f10904a = i;
            this.f10905b = i2;
        }

        /* renamed from: a */
        public int m9488a() {
            return this.f10905b;
        }

        /* renamed from: b */
        public int m9487b() {
            return this.f10904a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem.class */
    public static class NavigationMenuTextItem implements NavigationMenuItem {

        /* renamed from: a */
        private final MenuItemImpl f10906a;

        /* renamed from: b */
        boolean f10907b;

        NavigationMenuTextItem(MenuItemImpl menuItemImpl) {
            this.f10906a = menuItemImpl;
        }

        /* renamed from: a */
        public MenuItemImpl m9486a() {
            return this.f10906a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate.class */
    private class NavigationMenuViewAccessibilityDelegate extends RecyclerViewAccessibilityDelegate {
        NavigationMenuViewAccessibilityDelegate(@NonNull RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18975a(NavigationMenuPresenter.this.f10883k.m9497f(), 0, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder.class */
    public static class NormalViewHolder extends ViewHolder {
        public NormalViewHolder(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C1027R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder.class */
    public static class SeparatorViewHolder extends ViewHolder {
        public SeparatorViewHolder(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1027R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder.class */
    public static class SubheaderViewHolder extends ViewHolder {
        public SubheaderViewHolder(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1027R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$ViewHolder.class */
    private static abstract class ViewHolder extends RecyclerView.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }
    }

    /* renamed from: K */
    private void m9527K() {
        int i = (this.f10879g.getChildCount() != 0 || !this.f10894v) ? 0 : this.f10896x;
        NavigationMenuView navigationMenuView = this.f10878f;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: A */
    public void m9537A(@Nullable Drawable drawable) {
        this.f10889q = drawable;
        mo9523d(false);
    }

    /* renamed from: B */
    public void m9536B(int i) {
        this.f10890r = i;
        mo9523d(false);
    }

    /* renamed from: C */
    public void m9535C(int i) {
        this.f10891s = i;
        mo9523d(false);
    }

    /* renamed from: D */
    public void m9534D(@Dimension int i) {
        if (this.f10892t != i) {
            this.f10892t = i;
            this.f10893u = true;
            mo9523d(false);
        }
    }

    /* renamed from: E */
    public void m9533E(@Nullable ColorStateList colorStateList) {
        this.f10888p = colorStateList;
        mo9523d(false);
    }

    /* renamed from: F */
    public void m9532F(int i) {
        this.f10895w = i;
        mo9523d(false);
    }

    /* renamed from: G */
    public void m9531G(@StyleRes int i) {
        this.f10885m = i;
        this.f10886n = true;
        mo9523d(false);
    }

    /* renamed from: H */
    public void m9530H(@Nullable ColorStateList colorStateList) {
        this.f10887o = colorStateList;
        mo9523d(false);
    }

    /* renamed from: I */
    public void m9529I(int i) {
        this.f10898z = i;
        NavigationMenuView navigationMenuView = this.f10878f;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i);
        }
    }

    /* renamed from: J */
    public void m9528J(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.f10883k;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.m9490m(z);
        }
    }

    /* renamed from: b */
    public void m9525b(@NonNull View view) {
        this.f10879g.addView(view);
        NavigationMenuView navigationMenuView = this.f10878f;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f10880h;
        if (callback != null) {
            callback.mo21698c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.f10883k;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.m9489n();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    public boolean mo9522e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: f */
    public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: g */
    public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f10882j;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: h */
    public void mo9519h(MenuPresenter.Callback callback) {
        this.f10880h = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f10884l = LayoutInflater.from(context);
        this.f10881i = menuBuilder;
        this.f10897y = context.getResources().getDimensionPixelOffset(C1027R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f10878f.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f10883k.m9492k(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f10879g.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    /* renamed from: k */
    public void m9516k(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int h = windowInsetsCompat.m19093h();
        if (this.f10896x != h) {
            this.f10896x = h;
            m9527K();
        }
        NavigationMenuView navigationMenuView = this.f10878f;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.m19096e());
        ViewCompat.m19196h(this.f10879g, windowInsetsCompat);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    /* renamed from: m */
    public Parcelable mo9514m() {
        Bundle bundle = new Bundle();
        if (this.f10878f != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f10878f.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        NavigationMenuAdapter navigationMenuAdapter = this.f10883k;
        if (navigationMenuAdapter != null) {
            bundle.putBundle("android:menu:adapter", navigationMenuAdapter.m9499d());
        }
        if (this.f10879g != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f10879g.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Nullable
    /* renamed from: n */
    public MenuItemImpl m9513n() {
        return this.f10883k.m9498e();
    }

    /* renamed from: o */
    public int m9512o() {
        return this.f10879g.getChildCount();
    }

    @Nullable
    /* renamed from: p */
    public Drawable m9511p() {
        return this.f10889q;
    }

    /* renamed from: q */
    public int m9510q() {
        return this.f10890r;
    }

    /* renamed from: r */
    public int m9509r() {
        return this.f10891s;
    }

    /* renamed from: s */
    public int m9508s() {
        return this.f10895w;
    }

    @Nullable
    /* renamed from: t */
    public ColorStateList m9507t() {
        return this.f10887o;
    }

    @Nullable
    /* renamed from: u */
    public ColorStateList m9506u() {
        return this.f10888p;
    }

    /* renamed from: v */
    public MenuView m9505v(ViewGroup viewGroup) {
        if (this.f10878f == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f10884l.inflate(C1027R.layout.design_navigation_menu, viewGroup, false);
            this.f10878f = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new NavigationMenuViewAccessibilityDelegate(this.f10878f));
            if (this.f10883k == null) {
                this.f10883k = new NavigationMenuAdapter();
            }
            int i = this.f10898z;
            if (i != -1) {
                this.f10878f.setOverScrollMode(i);
            }
            this.f10879g = (LinearLayout) this.f10884l.inflate(C1027R.layout.design_navigation_item_header, (ViewGroup) this.f10878f, false);
            this.f10878f.setAdapter(this.f10883k);
        }
        return this.f10878f;
    }

    /* renamed from: w */
    public View m9504w(@LayoutRes int i) {
        View inflate = this.f10884l.inflate(i, (ViewGroup) this.f10879g, false);
        m9525b(inflate);
        return inflate;
    }

    /* renamed from: x */
    public void m9503x(boolean z) {
        if (this.f10894v != z) {
            this.f10894v = z;
            m9527K();
        }
    }

    /* renamed from: y */
    public void m9502y(@NonNull MenuItemImpl menuItemImpl) {
        this.f10883k.m9491l(menuItemImpl);
    }

    /* renamed from: z */
    public void m9501z(int i) {
        this.f10882j = i;
    }
}
