package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: m */
    private static final int f10193m = C1027R.style.Widget_Design_BottomNavigationView;
    @NonNull

    /* renamed from: f */
    private final MenuBuilder f10194f;
    @NonNull
    @VisibleForTesting

    /* renamed from: g */
    final BottomNavigationMenuView f10195g;

    /* renamed from: h */
    private final BottomNavigationPresenter f10196h;
    @Nullable

    /* renamed from: i */
    private ColorStateList f10197i;

    /* renamed from: j */
    private MenuInflater f10198j;

    /* renamed from: k */
    private OnNavigationItemSelectedListener f10199k;

    /* renamed from: l */
    private OnNavigationItemReselectedListener f10200l;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener.class */
    public interface OnNavigationItemReselectedListener {
        /* renamed from: a */
        void m10449a(@NonNull MenuItem menuItem);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener.class */
    public interface OnNavigationItemSelectedListener {
        /* renamed from: a */
        boolean m10448a(@NonNull MenuItem menuItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.SavedState.1
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        @Nullable

        /* renamed from: h */
        Bundle f10202h;

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m10447b(parcel, classLoader == null ? SavedState.class.getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m10447b(@NonNull Parcel parcel, ClassLoader classLoader) {
            this.f10202h = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f10202h);
        }
    }

    public BottomNavigationView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.bottomNavigationStyle);
    }

    public BottomNavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10193m), attributeSet, i);
        this.f10196h = new BottomNavigationPresenter();
        Context context2 = getContext();
        this.f10194f = new BottomNavigationMenu(context2);
        this.f10195g = new BottomNavigationMenuView(context2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f10195g.setLayoutParams(layoutParams);
        this.f10196h.m10460a(this.f10195g);
        this.f10196h.m10459b(1);
        this.f10195g.setPresenter(this.f10196h);
        this.f10194f.m21874b(this.f10196h);
        this.f10196h.mo9518i(getContext(), this.f10194f);
        TintTypedArray i2 = ThemeEnforcement.m9444i(context2, attributeSet, C1027R.styleable.BottomNavigationView, i, C1027R.style.Widget_Design_BottomNavigationView, C1027R.styleable.BottomNavigationView_itemTextAppearanceInactive, C1027R.styleable.BottomNavigationView_itemTextAppearanceActive);
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_itemIconTint)) {
            this.f10195g.setIconTintList(i2.m21263c(C1027R.styleable.BottomNavigationView_itemIconTint));
        } else {
            BottomNavigationMenuView bottomNavigationMenuView = this.f10195g;
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.m10467e(16842808));
        }
        setItemIconSize(i2.m21260f(C1027R.styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_icon_size)));
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(i2.m21252n(C1027R.styleable.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(i2.m21252n(C1027R.styleable.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_itemTextColor)) {
            setItemTextColor(i2.m21263c(C1027R.styleable.BottomNavigationView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            ViewCompat.m19177q0(this, m10451e(context2));
        }
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_elevation)) {
            ViewCompat.m19169u0(this, i2.m21260f(C1027R.styleable.BottomNavigationView_elevation, 0));
        }
        DrawableCompat.m19498o(getBackground().mutate(), MaterialResources.m9393b(context2, i2, C1027R.styleable.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(i2.m21254l(C1027R.styleable.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(i2.m21265a(C1027R.styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int n = i2.m21252n(C1027R.styleable.BottomNavigationView_itemBackground, 0);
        if (n != 0) {
            this.f10195g.setItemBackgroundRes(n);
        } else {
            setItemRippleColor(MaterialResources.m9393b(context2, i2, C1027R.styleable.BottomNavigationView_itemRippleColor));
        }
        if (i2.m21247s(C1027R.styleable.BottomNavigationView_menu)) {
            m10450f(i2.m21252n(C1027R.styleable.BottomNavigationView_menu, 0));
        }
        i2.m21243w();
        addView(this.f10195g, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            m10453c(context2);
        }
        this.f10194f.mo21784V(new MenuBuilder.Callback() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            /* renamed from: a */
            public boolean mo9407a(MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
                boolean z = true;
                if (BottomNavigationView.this.f10200l == null || menuItem.getItemId() != BottomNavigationView.this.getSelectedItemId()) {
                    if (BottomNavigationView.this.f10199k == null || BottomNavigationView.this.f10199k.m10448a(menuItem)) {
                        z = false;
                    }
                    return z;
                }
                BottomNavigationView.this.f10200l.m10449a(menuItem);
                return true;
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            /* renamed from: b */
            public void mo9406b(MenuBuilder menuBuilder) {
            }
        });
        m10452d();
    }

    /* renamed from: c */
    private void m10453c(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.m19675d(context, C1027R.C1028color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    /* renamed from: d */
    private void m10452d() {
        ViewUtils.m9434b(this, new ViewUtils.OnApplyWindowInsetsListener(this) { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.2
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            @NonNull
            /* renamed from: a */
            public WindowInsetsCompat mo9424a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.RelativePadding relativePadding) {
                relativePadding.f10963d += windowInsetsCompat.m19096e();
                relativePadding.m9423a(view);
                return windowInsetsCompat;
            }
        });
    }

    @NonNull
    /* renamed from: e */
    private MaterialShapeDrawable m10451e(Context context) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            materialShapeDrawable.m9328W(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        materialShapeDrawable.m9338M(context);
        return materialShapeDrawable;
    }

    private MenuInflater getMenuInflater() {
        if (this.f10198j == null) {
            this.f10198j = new SupportMenuInflater(getContext());
        }
        return this.f10198j;
    }

    /* renamed from: f */
    public void m10450f(int i) {
        this.f10196h.m10458k(true);
        getMenuInflater().inflate(i, this.f10194f);
        this.f10196h.m10458k(false);
        this.f10196h.mo9523d(true);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f10195g.getItemBackground();
    }

    @DrawableRes
    @Deprecated
    public int getItemBackgroundResource() {
        return this.f10195g.getItemBackgroundRes();
    }

    @Dimension
    public int getItemIconSize() {
        return this.f10195g.getItemIconSize();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f10195g.getIconTintList();
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f10197i;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f10195g.getItemTextAppearanceActive();
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f10195g.getItemTextAppearanceInactive();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f10195g.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f10195g.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    @NonNull
    public Menu getMenu() {
        return this.f10194f;
    }

    @IdRes
    public int getSelectedItemId() {
        return this.f10195g.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9282e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        this.f10194f.m21882S(savedState.f10202h);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f10202h = bundle;
        this.f10194f.m21880U(bundle);
        return savedState;
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.m9283d(this, f);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f10195g.setItemBackground(drawable);
        this.f10197i = null;
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        this.f10195g.setItemBackgroundRes(i);
        this.f10197i = null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f10195g.m10466f() != z) {
            this.f10195g.setItemHorizontalTranslationEnabled(z);
            this.f10196h.mo9523d(false);
        }
    }

    public void setItemIconSize(@Dimension int i) {
        this.f10195g.setItemIconSize(i);
    }

    public void setItemIconSizeRes(@DimenRes int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f10195g.setIconTintList(colorStateList);
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f10197i != colorStateList) {
            this.f10197i = colorStateList;
            if (colorStateList == null) {
                this.f10195g.setItemBackground(null);
                return;
            }
            ColorStateList a = RippleUtils.m9370a(colorStateList);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f10195g.setItemBackground(new RippleDrawable(a, null, null));
                return;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(1.0E-5f);
            Drawable r = DrawableCompat.m19495r(gradientDrawable);
            DrawableCompat.m19498o(r, a);
            this.f10195g.setItemBackground(r);
        } else if (colorStateList == null && this.f10195g.getItemBackground() != null) {
            this.f10195g.setItemBackground(null);
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f10195g.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f10195g.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f10195g.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f10195g.getLabelVisibilityMode() != i) {
            this.f10195g.setLabelVisibilityMode(i);
            this.f10196h.mo9523d(false);
        }
    }

    public void setOnNavigationItemReselectedListener(@Nullable OnNavigationItemReselectedListener onNavigationItemReselectedListener) {
        this.f10200l = onNavigationItemReselectedListener;
    }

    public void setOnNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.f10199k = onNavigationItemSelectedListener;
    }

    public void setSelectedItemId(@IdRes int i) {
        MenuItem findItem = this.f10194f.findItem(i);
        if (findItem != null && !this.f10194f.m21886O(findItem, this.f10196h, 0)) {
            findItem.setChecked(true);
        }
    }
}
