package com.google.android.material.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: r */
    private static final int[] f10965r = {16842912};

    /* renamed from: s */
    private static final int[] f10966s = {-16842910};

    /* renamed from: t */
    private static final int f10967t = C1027R.style.Widget_Design_NavigationView;
    @NonNull

    /* renamed from: k */
    private final NavigationMenu f10968k;

    /* renamed from: l */
    private final NavigationMenuPresenter f10969l;

    /* renamed from: m */
    OnNavigationItemSelectedListener f10970m;

    /* renamed from: n */
    private final int f10971n;

    /* renamed from: o */
    private final int[] f10972o;

    /* renamed from: p */
    private MenuInflater f10973p;

    /* renamed from: q */
    private ViewTreeObserver.OnGlobalLayoutListener f10974q;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener.class */
    public interface OnNavigationItemSelectedListener {
        /* renamed from: a */
        boolean m9405a(@NonNull MenuItem menuItem);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
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
        public Bundle f10977h;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f10977h = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f10977h);
        }
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.navigationViewStyle);
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10967t), attributeSet, i);
        boolean z;
        int i2;
        this.f10969l = new NavigationMenuPresenter();
        this.f10972o = new int[2];
        Context context2 = getContext();
        this.f10968k = new NavigationMenu(context2);
        TintTypedArray i3 = ThemeEnforcement.m9444i(context2, attributeSet, C1027R.styleable.NavigationView, i, f10967t, new int[0]);
        if (i3.m21247s(C1027R.styleable.NavigationView_android_background)) {
            ViewCompat.m19177q0(this, i3.m21259g(C1027R.styleable.NavigationView_android_background));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            Drawable background = getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            if (background instanceof ColorDrawable) {
                materialShapeDrawable.m9328W(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            materialShapeDrawable.m9338M(context2);
            ViewCompat.m19177q0(this, materialShapeDrawable);
        }
        if (i3.m21247s(C1027R.styleable.NavigationView_elevation)) {
            setElevation(i3.m21260f(C1027R.styleable.NavigationView_elevation, 0));
        }
        setFitsSystemWindows(i3.m21265a(C1027R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.f10971n = i3.m21260f(C1027R.styleable.NavigationView_android_maxWidth, 0);
        ColorStateList c = i3.m21247s(C1027R.styleable.NavigationView_itemIconTint) ? i3.m21263c(C1027R.styleable.NavigationView_itemIconTint) : m9413d(16842808);
        if (i3.m21247s(C1027R.styleable.NavigationView_itemTextAppearance)) {
            i2 = i3.m21252n(C1027R.styleable.NavigationView_itemTextAppearance, 0);
            z = true;
        } else {
            i2 = 0;
            z = false;
        }
        if (i3.m21247s(C1027R.styleable.NavigationView_itemIconSize)) {
            setItemIconSize(i3.m21260f(C1027R.styleable.NavigationView_itemIconSize, 0));
        }
        ColorStateList c2 = i3.m21247s(C1027R.styleable.NavigationView_itemTextColor) ? i3.m21263c(C1027R.styleable.NavigationView_itemTextColor) : null;
        ColorStateList colorStateList = c2;
        if (!z) {
            colorStateList = c2;
            if (c2 == null) {
                colorStateList = m9413d(16842806);
            }
        }
        Drawable g = i3.m21259g(C1027R.styleable.NavigationView_itemBackground);
        Drawable drawable = g;
        if (g == null) {
            drawable = g;
            if (m9411f(i3)) {
                drawable = m9412e(i3);
            }
        }
        if (i3.m21247s(C1027R.styleable.NavigationView_itemHorizontalPadding)) {
            this.f10969l.m9536B(i3.m21260f(C1027R.styleable.NavigationView_itemHorizontalPadding, 0));
        }
        int f = i3.m21260f(C1027R.styleable.NavigationView_itemIconPadding, 0);
        setItemMaxLines(i3.m21255k(C1027R.styleable.NavigationView_itemMaxLines, 1));
        this.f10968k.mo21784V(new MenuBuilder.Callback() { // from class: com.google.android.material.navigation.NavigationView.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            /* renamed from: a */
            public boolean mo9407a(MenuBuilder menuBuilder, MenuItem menuItem) {
                OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.f10970m;
                return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.m9405a(menuItem);
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            /* renamed from: b */
            public void mo9406b(MenuBuilder menuBuilder) {
            }
        });
        this.f10969l.m9501z(1);
        this.f10969l.mo9518i(context2, this.f10968k);
        this.f10969l.m9533E(c);
        this.f10969l.m9529I(getOverScrollMode());
        if (z) {
            this.f10969l.m9531G(i2);
        }
        this.f10969l.m9530H(colorStateList);
        this.f10969l.m9537A(drawable);
        this.f10969l.m9535C(f);
        this.f10968k.m21874b(this.f10969l);
        addView((View) this.f10969l.m9505v(this));
        if (i3.m21247s(C1027R.styleable.NavigationView_menu)) {
            m9409h(i3.m21252n(C1027R.styleable.NavigationView_menu, 0));
        }
        if (i3.m21247s(C1027R.styleable.NavigationView_headerLayout)) {
            m9410g(i3.m21252n(C1027R.styleable.NavigationView_headerLayout, 0));
        }
        i3.m21243w();
        m9408i();
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    @Nullable
    /* renamed from: d */
    private ColorStateList m9413d(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList c = AppCompatResources.m22070c(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0042R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = c.getDefaultColor();
        return new ColorStateList(new int[]{f10966s, f10965r, FrameLayout.EMPTY_STATE_SET}, new int[]{c.getColorForState(f10966s, defaultColor), i2, defaultColor});
    }

    @NonNull
    /* renamed from: e */
    private final Drawable m9412e(@NonNull TintTypedArray tintTypedArray) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.m9276b(getContext(), tintTypedArray.m21252n(C1027R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.m21252n(C1027R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).m9232m());
        materialShapeDrawable.m9328W(MaterialResources.m9393b(getContext(), tintTypedArray, C1027R.styleable.NavigationView_itemShapeFillColor));
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.m21260f(C1027R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.m21260f(C1027R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.m21260f(C1027R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.m21260f(C1027R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    /* renamed from: f */
    private boolean m9411f(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.m21247s(C1027R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.m21247s(C1027R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    private MenuInflater getMenuInflater() {
        if (this.f10973p == null) {
            this.f10973p = new SupportMenuInflater(getContext());
        }
        return this.f10973p;
    }

    /* renamed from: i */
    private void m9408i() {
        this.f10974q = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.navigation.NavigationView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                NavigationView navigationView = NavigationView.this;
                navigationView.getLocationOnScreen(navigationView.f10972o);
                boolean z = true;
                boolean z2 = NavigationView.this.f10972o[1] == 0;
                NavigationView.this.f10969l.m9503x(z2);
                NavigationView.this.setDrawTopInsetForeground(z2);
                Activity a = ContextUtils.m9555a(NavigationView.this.getContext());
                if (a != null && Build.VERSION.SDK_INT >= 21) {
                    boolean z3 = a.findViewById(16908290).getHeight() == NavigationView.this.getHeight();
                    boolean z4 = Color.alpha(a.getWindow().getNavigationBarColor()) != 0;
                    NavigationView navigationView2 = NavigationView.this;
                    if (!z3 || !z4) {
                        z = false;
                    }
                    navigationView2.setDrawBottomInsetForeground(z);
                }
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.f10974q);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo
    /* renamed from: a */
    protected void mo9416a(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f10969l.m9516k(windowInsetsCompat);
    }

    /* renamed from: g */
    public View m9410g(@LayoutRes int i) {
        return this.f10969l.m9504w(i);
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f10969l.m9513n();
    }

    public int getHeaderCount() {
        return this.f10969l.m9512o();
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f10969l.m9511p();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f10969l.m9510q();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f10969l.m9509r();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f10969l.m9506u();
    }

    public int getItemMaxLines() {
        return this.f10969l.m9508s();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f10969l.m9507t();
    }

    @NonNull
    public Menu getMenu() {
        return this.f10968k;
    }

    /* renamed from: h */
    public void m9409h(int i) {
        this.f10969l.m9528J(true);
        getMenuInflater().inflate(i, this.f10968k);
        this.f10969l.m9528J(false);
        this.f10969l.mo9523d(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9282e(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (Build.VERSION.SDK_INT < 16) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.f10974q);
        } else {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f10974q);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f10971n), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f10971n, 1073741824);
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
        super.onRestoreInstanceState(savedState.m18793a());
        this.f10968k.m21882S(savedState.f10977h);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f10977h = bundle;
        this.f10968k.m21880U(bundle);
        return savedState;
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem findItem = this.f10968k.findItem(i);
        if (findItem != null) {
            this.f10969l.m9502y((MenuItemImpl) findItem);
        }
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f10968k.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f10969l.m9502y((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        MaterialShapeUtils.m9283d(this, f);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f10969l.m9537A(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.m19673f(getContext(), i));
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.f10969l.m9536B(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        this.f10969l.m9536B(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(@Dimension int i) {
        this.f10969l.m9535C(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f10969l.m9535C(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(@Dimension int i) {
        this.f10969l.m9534D(i);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f10969l.m9533E(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.f10969l.m9532F(i);
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f10969l.m9531G(i);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f10969l.m9530H(colorStateList);
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.f10970m = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.f10969l;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.m9529I(i);
        }
    }
}
