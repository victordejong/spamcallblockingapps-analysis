package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.C0051a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.view.C0162g;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.widget.C0311as;
import androidx.core.p015a.C0409a;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0552u;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1284R;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    OnNavigationItemSelectedListener listener;
    private final int maxWidth;
    private final NavigationMenu menu;
    private MenuInflater menuInflater;
    private final NavigationMenuPresenter presenter;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener.class */
    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(MenuItem menuItem);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Bundle menuState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }
    }

    public NavigationView(Context context) {
        this(context, null);
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1284R.attr.navigationViewStyle);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        this.presenter = new NavigationMenuPresenter();
        this.menu = new NavigationMenu(context);
        C0311as obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context, attributeSet, C1284R.styleable.NavigationView, i, C1284R.style.Widget_Design_NavigationView, new int[0]);
        C0552u.m6272a(this, obtainTintedStyledAttributes.m7163a(C1284R.styleable.NavigationView_android_background));
        if (obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_elevation)) {
            C0552u.m6280a(this, obtainTintedStyledAttributes.m7147e(C1284R.styleable.NavigationView_elevation, 0));
        }
        C0552u.m6255b(this, obtainTintedStyledAttributes.m7159a(C1284R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = obtainTintedStyledAttributes.m7147e(C1284R.styleable.NavigationView_android_maxWidth, 0);
        ColorStateList m7148e = obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_itemIconTint) ? obtainTintedStyledAttributes.m7148e(C1284R.styleable.NavigationView_itemIconTint) : createDefaultColorStateList(16842808);
        if (obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_itemTextAppearance)) {
            i2 = obtainTintedStyledAttributes.m7143g(C1284R.styleable.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            z = false;
            i2 = 0;
        }
        ColorStateList m7148e2 = obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_itemTextColor) ? obtainTintedStyledAttributes.m7148e(C1284R.styleable.NavigationView_itemTextColor) : null;
        ColorStateList colorStateList = m7148e2;
        if (!z) {
            colorStateList = m7148e2;
            if (m7148e2 == null) {
                colorStateList = createDefaultColorStateList(16842806);
            }
        }
        Drawable m7163a = obtainTintedStyledAttributes.m7163a(C1284R.styleable.NavigationView_itemBackground);
        if (obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_itemHorizontalPadding)) {
            this.presenter.setItemHorizontalPadding(obtainTintedStyledAttributes.m7147e(C1284R.styleable.NavigationView_itemHorizontalPadding, 0));
        }
        int m7147e = obtainTintedStyledAttributes.m7147e(C1284R.styleable.NavigationView_itemIconPadding, 0);
        this.menu.setCallback(new C0182g.AbstractC0183a() { // from class: com.google.android.material.navigation.NavigationView.1
            @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
            public boolean onMenuItemSelected(C0182g c0182g, MenuItem menuItem) {
                return NavigationView.this.listener != null && NavigationView.this.listener.onNavigationItemSelected(menuItem);
            }

            @Override // androidx.appcompat.view.menu.C0182g.AbstractC0183a
            public void onMenuModeChange(C0182g c0182g) {
            }
        });
        this.presenter.setId(1);
        this.presenter.initForMenu(context, this.menu);
        this.presenter.setItemIconTintList(m7148e);
        if (z) {
            this.presenter.setItemTextAppearance(i2);
        }
        this.presenter.setItemTextColor(colorStateList);
        this.presenter.setItemBackground(m7163a);
        this.presenter.setItemIconPadding(m7147e);
        this.menu.addMenuPresenter(this.presenter);
        addView((View) this.presenter.getMenuView(this));
        if (obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_menu)) {
            inflateMenu(obtainTintedStyledAttributes.m7143g(C1284R.styleable.NavigationView_menu, 0));
        }
        if (obtainTintedStyledAttributes.m7144g(C1284R.styleable.NavigationView_headerLayout)) {
            inflateHeaderView(obtainTintedStyledAttributes.m7143g(C1284R.styleable.NavigationView_headerLayout, 0));
        }
        obtainTintedStyledAttributes.m7164a();
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    private ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList m7985a = C0062a.m7985a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0051a.C0052a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = m7985a.getDefaultColor();
        return new ColorStateList(new int[]{DISABLED_STATE_SET, CHECKED_STATE_SET, EMPTY_STATE_SET}, new int[]{m7985a.getColorForState(DISABLED_STATE_SET, defaultColor), i2, defaultColor});
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new C0162g(getContext());
        }
        return this.menuInflater;
    }

    public void addHeaderView(View view) {
        this.presenter.addHeaderView(view);
    }

    public MenuItem getCheckedItem() {
        return this.presenter.getCheckedItem();
    }

    public int getHeaderCount() {
        return this.presenter.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.presenter.getHeaderView(i);
    }

    public Drawable getItemBackground() {
        return this.presenter.getItemBackground();
    }

    public int getItemHorizontalPadding() {
        return this.presenter.getItemHorizontalPadding();
    }

    public int getItemIconPadding() {
        return this.presenter.getItemIconPadding();
    }

    public ColorStateList getItemIconTintList() {
        return this.presenter.getItemTintList();
    }

    public ColorStateList getItemTextColor() {
        return this.presenter.getItemTextColor();
    }

    public Menu getMenu() {
        return this.menu;
    }

    public View inflateHeaderView(int i) {
        return this.presenter.inflateHeaderView(i);
    }

    public void inflateMenu(int i) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(false);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    protected void onInsetsChanged(C0529ac c0529ac) {
        this.presenter.dispatchApplyWindowInsets(c0529ac);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.maxWidth), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuState = new Bundle();
        this.menu.savePresenterStates(savedState.menuState);
        return savedState;
    }

    public void removeHeaderView(View view) {
        this.presenter.removeHeaderView(view);
    }

    public void setCheckedItem(int i) {
        MenuItem findItem = this.menu.findItem(i);
        if (findItem != null) {
            this.presenter.setCheckedItem((C0186i) findItem);
        }
    }

    public void setCheckedItem(MenuItem menuItem) {
        MenuItem findItem = this.menu.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.presenter.setCheckedItem((C0186i) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    public void setItemBackground(Drawable drawable) {
        this.presenter.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(int i) {
        setItemBackground(C0409a.m6753a(getContext(), i));
    }

    public void setItemHorizontalPadding(int i) {
        this.presenter.setItemHorizontalPadding(i);
    }

    public void setItemHorizontalPaddingResource(int i) {
        this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(int i) {
        this.presenter.setItemIconPadding(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.presenter.setItemIconTintList(colorStateList);
    }

    public void setItemTextAppearance(int i) {
        this.presenter.setItemTextAppearance(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.presenter.setItemTextColor(colorStateList);
    }

    public void setNavigationItemSelectedListener(OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }
}
