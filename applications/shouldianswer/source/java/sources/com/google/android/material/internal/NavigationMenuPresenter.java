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
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.SubMenuC0206r;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C1284R;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter.class */
public class NavigationMenuPresenter implements AbstractC0197m {
    private static final String STATE_ADAPTER = "android:menu:adapter";
    private static final String STATE_HEADER = "android:menu:header";
    private static final String STATE_HIERARCHY = "android:menu:list";
    NavigationMenuAdapter adapter;
    private AbstractC0197m.AbstractC0198a callback;
    LinearLayout headerLayout;
    ColorStateList iconTintList;

    /* renamed from: id */
    private int f3843id;
    Drawable itemBackground;
    int itemHorizontalPadding;
    int itemIconPadding;
    LayoutInflater layoutInflater;
    C0182g menu;
    private NavigationMenuView menuView;
    final View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.internal.NavigationMenuPresenter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NavigationMenuPresenter.this.setUpdateSuspended(true);
            C0186i itemData = ((NavigationMenuItemView) view).getItemData();
            boolean performItemAction = NavigationMenuPresenter.this.menu.performItemAction(itemData, NavigationMenuPresenter.this, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                NavigationMenuPresenter.this.adapter.setCheckedItem(itemData);
            }
            NavigationMenuPresenter.this.setUpdateSuspended(false);
            NavigationMenuPresenter.this.updateMenuView(false);
        }
    };
    int paddingSeparator;
    private int paddingTopDefault;
    int textAppearance;
    boolean textAppearanceSet;
    ColorStateList textColor;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder.class */
    public static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(View view) {
            super(view);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter.class */
    public class NavigationMenuAdapter extends RecyclerView.AbstractC0945a<ViewHolder> {
        private static final String STATE_ACTION_VIEWS = "android:menu:action_views";
        private static final String STATE_CHECKED_ITEM = "android:menu:checked";
        private static final int VIEW_TYPE_HEADER = 3;
        private static final int VIEW_TYPE_NORMAL = 0;
        private static final int VIEW_TYPE_SEPARATOR = 2;
        private static final int VIEW_TYPE_SUBHEADER = 1;
        private C0186i checkedItem;
        private final ArrayList<NavigationMenuItem> items = new ArrayList<>();
        private boolean updateSuspended;

        NavigationMenuAdapter() {
            NavigationMenuPresenter.this = r5;
            prepareMenuItems();
        }

        private void appendTransparentIconIfMissing(int i, int i2) {
            while (i < i2) {
                ((NavigationMenuTextItem) this.items.get(i)).needsEmptyIcon = true;
                i++;
            }
        }

        private void prepareMenuItems() {
            int i;
            boolean z;
            int i2;
            boolean z2;
            boolean z3;
            if (this.updateSuspended) {
                return;
            }
            this.updateSuspended = true;
            this.items.clear();
            this.items.add(new NavigationMenuHeaderItem());
            int size = NavigationMenuPresenter.this.menu.getVisibleItems().size();
            int i3 = -1;
            int i4 = 0;
            boolean z4 = false;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i4 >= size) {
                    this.updateSuspended = false;
                    return;
                }
                C0186i c0186i = NavigationMenuPresenter.this.menu.getVisibleItems().get(i4);
                if (c0186i.isChecked()) {
                    setCheckedItem(c0186i);
                }
                if (c0186i.isCheckable()) {
                    c0186i.m7557a(false);
                }
                if (c0186i.hasSubMenu()) {
                    SubMenu subMenu = c0186i.getSubMenu();
                    i2 = i3;
                    z = z4;
                    i = i6;
                    if (subMenu.hasVisibleItems()) {
                        if (i4 != 0) {
                            this.items.add(new NavigationMenuSeparatorItem(NavigationMenuPresenter.this.paddingSeparator, 0));
                        }
                        this.items.add(new NavigationMenuTextItem(c0186i));
                        int size2 = this.items.size();
                        int size3 = subMenu.size();
                        int i7 = 0;
                        boolean z5 = false;
                        while (true) {
                            z3 = z5;
                            if (i7 >= size3) {
                                break;
                            }
                            C0186i c0186i2 = (C0186i) subMenu.getItem(i7);
                            boolean z6 = z3;
                            if (c0186i2.isVisible()) {
                                z6 = z3;
                                if (!z3) {
                                    z6 = z3;
                                    if (c0186i2.getIcon() != null) {
                                        z6 = true;
                                    }
                                }
                                if (c0186i2.isCheckable()) {
                                    c0186i2.m7557a(false);
                                }
                                if (c0186i.isChecked()) {
                                    setCheckedItem(c0186i);
                                }
                                this.items.add(new NavigationMenuTextItem(c0186i2));
                            }
                            i7++;
                            z5 = z6;
                        }
                        i2 = i3;
                        z = z4;
                        i = i6;
                        if (z3) {
                            appendTransparentIconIfMissing(size2, this.items.size());
                            i2 = i3;
                            z = z4;
                            i = i6;
                        }
                    }
                } else {
                    i2 = c0186i.getGroupId();
                    if (i2 != i3) {
                        int size4 = this.items.size();
                        z2 = c0186i.getIcon() != null;
                        i = size4;
                        if (i4 != 0) {
                            i = size4 + 1;
                            this.items.add(new NavigationMenuSeparatorItem(NavigationMenuPresenter.this.paddingSeparator, NavigationMenuPresenter.this.paddingSeparator));
                        }
                    } else {
                        z2 = z4;
                        i = i6;
                        if (!z4) {
                            z2 = z4;
                            i = i6;
                            if (c0186i.getIcon() != null) {
                                appendTransparentIconIfMissing(i6, this.items.size());
                                z2 = true;
                                i = i6;
                            }
                        }
                    }
                    NavigationMenuTextItem navigationMenuTextItem = new NavigationMenuTextItem(c0186i);
                    navigationMenuTextItem.needsEmptyIcon = z2;
                    this.items.add(navigationMenuTextItem);
                    z = z2;
                }
                i4++;
                i3 = i2;
                z4 = z;
                i5 = i;
            }
        }

        public Bundle createInstanceState() {
            Bundle bundle = new Bundle();
            C0186i c0186i = this.checkedItem;
            if (c0186i != null) {
                bundle.putInt(STATE_CHECKED_ITEM, c0186i.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.items.size();
            for (int i = 0; i < size; i++) {
                NavigationMenuItem navigationMenuItem = this.items.get(i);
                if (navigationMenuItem instanceof NavigationMenuTextItem) {
                    C0186i menuItem = ((NavigationMenuTextItem) navigationMenuItem).getMenuItem();
                    View actionView = menuItem != null ? menuItem.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItem.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(STATE_ACTION_VIEWS, sparseArray);
            return bundle;
        }

        public C0186i getCheckedItem() {
            return this.checkedItem;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
        public int getItemCount() {
            return this.items.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
        public int getItemViewType(int i) {
            NavigationMenuItem navigationMenuItem = this.items.get(i);
            if (navigationMenuItem instanceof NavigationMenuSeparatorItem) {
                return 2;
            }
            if (navigationMenuItem instanceof NavigationMenuHeaderItem) {
                return 3;
            }
            if (!(navigationMenuItem instanceof NavigationMenuTextItem)) {
                throw new RuntimeException("Unknown item type.");
            }
            return ((NavigationMenuTextItem) navigationMenuItem).getMenuItem().hasSubMenu() ? 1 : 0;
        }

        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    ((TextView) viewHolder.itemView).setText(((NavigationMenuTextItem) this.items.get(i)).getMenuItem().getTitle());
                    return;
                } else if (itemViewType != 2) {
                    return;
                } else {
                    NavigationMenuSeparatorItem navigationMenuSeparatorItem = (NavigationMenuSeparatorItem) this.items.get(i);
                    viewHolder.itemView.setPadding(0, navigationMenuSeparatorItem.getPaddingTop(), 0, navigationMenuSeparatorItem.getPaddingBottom());
                    return;
                }
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) viewHolder.itemView;
            navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.iconTintList);
            if (NavigationMenuPresenter.this.textAppearanceSet) {
                navigationMenuItemView.setTextAppearance(NavigationMenuPresenter.this.textAppearance);
            }
            if (NavigationMenuPresenter.this.textColor != null) {
                navigationMenuItemView.setTextColor(NavigationMenuPresenter.this.textColor);
            }
            C0552u.m6272a(navigationMenuItemView, NavigationMenuPresenter.this.itemBackground != null ? NavigationMenuPresenter.this.itemBackground.getConstantState().newDrawable() : null);
            NavigationMenuTextItem navigationMenuTextItem = (NavigationMenuTextItem) this.items.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(navigationMenuTextItem.needsEmptyIcon);
            navigationMenuItemView.setHorizontalPadding(NavigationMenuPresenter.this.itemHorizontalPadding);
            navigationMenuItemView.setIconPadding(NavigationMenuPresenter.this.itemIconPadding);
            navigationMenuItemView.initialize(navigationMenuTextItem.getMenuItem(), 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i != 0) {
                if (i == 1) {
                    return new SubheaderViewHolder(NavigationMenuPresenter.this.layoutInflater, viewGroup);
                }
                if (i == 2) {
                    return new SeparatorViewHolder(NavigationMenuPresenter.this.layoutInflater, viewGroup);
                }
                if (i == 3) {
                    return new HeaderViewHolder(NavigationMenuPresenter.this.headerLayout);
                }
                return null;
            }
            return new NormalViewHolder(NavigationMenuPresenter.this.layoutInflater, viewGroup, NavigationMenuPresenter.this.onClickListener);
        }

        public void onViewRecycled(ViewHolder viewHolder) {
            if (viewHolder instanceof NormalViewHolder) {
                ((NavigationMenuItemView) viewHolder.itemView).recycle();
            }
        }

        public void restoreInstanceState(Bundle bundle) {
            C0186i menuItem;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            C0186i menuItem2;
            int i = bundle.getInt(STATE_CHECKED_ITEM, 0);
            if (i != 0) {
                this.updateSuspended = true;
                int size = this.items.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    NavigationMenuItem navigationMenuItem = this.items.get(i2);
                    if ((navigationMenuItem instanceof NavigationMenuTextItem) && (menuItem2 = ((NavigationMenuTextItem) navigationMenuItem).getMenuItem()) != null && menuItem2.getItemId() == i) {
                        setCheckedItem(menuItem2);
                        break;
                    }
                    i2++;
                }
                this.updateSuspended = false;
                prepareMenuItems();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(STATE_ACTION_VIEWS);
            if (sparseParcelableArray != null) {
                int size2 = this.items.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    NavigationMenuItem navigationMenuItem2 = this.items.get(i3);
                    if ((navigationMenuItem2 instanceof NavigationMenuTextItem) && (menuItem = ((NavigationMenuTextItem) navigationMenuItem2).getMenuItem()) != null && (actionView = menuItem.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItem.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void setCheckedItem(C0186i c0186i) {
            if (this.checkedItem == c0186i || !c0186i.isCheckable()) {
                return;
            }
            C0186i c0186i2 = this.checkedItem;
            if (c0186i2 != null) {
                c0186i2.setChecked(false);
            }
            this.checkedItem = c0186i;
            c0186i.setChecked(true);
        }

        public void setUpdateSuspended(boolean z) {
            this.updateSuspended = z;
        }

        public void update() {
            prepareMenuItems();
            notifyDataSetChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem.class */
    public static class NavigationMenuHeaderItem implements NavigationMenuItem {
        NavigationMenuHeaderItem() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem.class */
    public interface NavigationMenuItem {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem.class */
    public static class NavigationMenuSeparatorItem implements NavigationMenuItem {
        private final int paddingBottom;
        private final int paddingTop;

        public NavigationMenuSeparatorItem(int i, int i2) {
            this.paddingTop = i;
            this.paddingBottom = i2;
        }

        public int getPaddingBottom() {
            return this.paddingBottom;
        }

        public int getPaddingTop() {
            return this.paddingTop;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem.class */
    public static class NavigationMenuTextItem implements NavigationMenuItem {
        private final C0186i menuItem;
        boolean needsEmptyIcon;

        NavigationMenuTextItem(C0186i c0186i) {
            this.menuItem = c0186i;
        }

        public C0186i getMenuItem() {
            return this.menuItem;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder.class */
    public static class NormalViewHolder extends ViewHolder {
        public NormalViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C1284R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder.class */
    public static class SeparatorViewHolder extends ViewHolder {
        public SeparatorViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1284R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder.class */
    public static class SubheaderViewHolder extends ViewHolder {
        public SubheaderViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C1284R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuPresenter$ViewHolder.class */
    public static abstract class ViewHolder extends RecyclerView.AbstractC0977w {
        public ViewHolder(View view) {
            super(view);
        }
    }

    public void addHeaderView(View view) {
        this.headerLayout.addView(view);
        NavigationMenuView navigationMenuView = this.menuView;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    public void dispatchApplyWindowInsets(C0529ac c0529ac) {
        int m6363b = c0529ac.m6363b();
        if (this.paddingTopDefault != m6363b) {
            this.paddingTopDefault = m6363b;
            if (this.headerLayout.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.menuView;
                navigationMenuView.setPadding(0, this.paddingTopDefault, 0, navigationMenuView.getPaddingBottom());
            }
        }
        C0552u.m6256b(this.headerLayout, c0529ac);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean flagActionItems() {
        return false;
    }

    public C0186i getCheckedItem() {
        return this.adapter.getCheckedItem();
    }

    public int getHeaderCount() {
        return this.headerLayout.getChildCount();
    }

    public View getHeaderView(int i) {
        return this.headerLayout.getChildAt(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public int getId() {
        return this.f3843id;
    }

    public Drawable getItemBackground() {
        return this.itemBackground;
    }

    public int getItemHorizontalPadding() {
        return this.itemHorizontalPadding;
    }

    public int getItemIconPadding() {
        return this.itemIconPadding;
    }

    public ColorStateList getItemTextColor() {
        return this.textColor;
    }

    public ColorStateList getItemTintList() {
        return this.iconTintList;
    }

    public AbstractC0199n getMenuView(ViewGroup viewGroup) {
        if (this.menuView == null) {
            this.menuView = (NavigationMenuView) this.layoutInflater.inflate(C1284R.layout.design_navigation_menu, viewGroup, false);
            if (this.adapter == null) {
                this.adapter = new NavigationMenuAdapter();
            }
            this.headerLayout = (LinearLayout) this.layoutInflater.inflate(C1284R.layout.design_navigation_item_header, (ViewGroup) this.menuView, false);
            this.menuView.setAdapter(this.adapter);
        }
        return this.menuView;
    }

    public View inflateHeaderView(int i) {
        View inflate = this.layoutInflater.inflate(i, (ViewGroup) this.headerLayout, false);
        addHeaderView(inflate);
        return inflate;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void initForMenu(Context context, C0182g c0182g) {
        this.layoutInflater = LayoutInflater.from(context);
        this.menu = c0182g;
        this.paddingSeparator = context.getResources().getDimensionPixelOffset(C1284R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onCloseMenu(C0182g c0182g, boolean z) {
        AbstractC0197m.AbstractC0198a abstractC0198a = this.callback;
        if (abstractC0198a != null) {
            abstractC0198a.mo7435a(c0182g, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(STATE_HIERARCHY);
            if (sparseParcelableArray != null) {
                this.menuView.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(STATE_ADAPTER);
            if (bundle2 != null) {
                this.adapter.restoreInstanceState(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray(STATE_HEADER);
            if (sparseParcelableArray2 == null) {
                return;
            }
            this.headerLayout.restoreHierarchyState(sparseParcelableArray2);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.menuView != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            this.menuView.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(STATE_HIERARCHY, sparseArray);
        }
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            bundle.putBundle(STATE_ADAPTER, navigationMenuAdapter.createInstanceState());
        }
        if (this.headerLayout != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.headerLayout.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(STATE_HEADER, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
        return false;
    }

    public void removeHeaderView(View view) {
        this.headerLayout.removeView(view);
        if (this.headerLayout.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.menuView;
            navigationMenuView.setPadding(0, this.paddingTopDefault, 0, navigationMenuView.getPaddingBottom());
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
        this.callback = abstractC0198a;
    }

    public void setCheckedItem(C0186i c0186i) {
        this.adapter.setCheckedItem(c0186i);
    }

    public void setId(int i) {
        this.f3843id = i;
    }

    public void setItemBackground(Drawable drawable) {
        this.itemBackground = drawable;
        updateMenuView(false);
    }

    public void setItemHorizontalPadding(int i) {
        this.itemHorizontalPadding = i;
        updateMenuView(false);
    }

    public void setItemIconPadding(int i) {
        this.itemIconPadding = i;
        updateMenuView(false);
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        updateMenuView(false);
    }

    public void setItemTextAppearance(int i) {
        this.textAppearance = i;
        this.textAppearanceSet = true;
        updateMenuView(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
        updateMenuView(false);
    }

    public void setUpdateSuspended(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.setUpdateSuspended(z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0197m
    public void updateMenuView(boolean z) {
        NavigationMenuAdapter navigationMenuAdapter = this.adapter;
        if (navigationMenuAdapter != null) {
            navigationMenuAdapter.update();
        }
    }
}
