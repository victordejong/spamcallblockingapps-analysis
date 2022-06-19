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
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.C0248g;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.C0370ab;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14647l;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.p372i.C14607b;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14674i;
import com.google.android.material.theme.p376a.C14828a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: b */
    private static final int f52634b = C14376a.C14387k.Widget_Design_BottomNavigationView;

    /* renamed from: a */
    final BottomNavigationMenuView f52635a;

    /* renamed from: c */
    private final C0268g f52636c;

    /* renamed from: d */
    private final BottomNavigationPresenter f52637d;

    /* renamed from: e */
    private ColorStateList f52638e;

    /* renamed from: f */
    private MenuInflater f52639f;

    /* renamed from: g */
    private AbstractC14445b f52640g;

    /* renamed from: h */
    private AbstractC14444a f52641h;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Bundle menuPresenterState;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readFromParcel(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readFromParcel(Parcel parcel, ClassLoader classLoader) {
            this.menuPresenterState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuPresenterState);
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public interface AbstractC14444a {
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public interface AbstractC14445b {
        /* renamed from: a */
        boolean m11139a();
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C14376a.C14378b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(C14828a.m9923a(context, attributeSet, i, f52634b), attributeSet, i);
        BottomNavigationPresenter bottomNavigationPresenter = new BottomNavigationPresenter();
        this.f52637d = bottomNavigationPresenter;
        Context context2 = getContext();
        C0268g c14446a = new C14446a(context2);
        this.f52636c = c14446a;
        BottomNavigationMenuView bottomNavigationMenuView = new BottomNavigationMenuView(context2);
        this.f52635a = bottomNavigationMenuView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        bottomNavigationMenuView.setLayoutParams(layoutParams);
        bottomNavigationPresenter.f52630a = bottomNavigationMenuView;
        bottomNavigationPresenter.f52632c = 1;
        bottomNavigationMenuView.setPresenter(bottomNavigationPresenter);
        c14446a.m46100a(bottomNavigationPresenter);
        bottomNavigationPresenter.mo10549a(getContext(), c14446a);
        C0370ab m10504b = C14647l.m10504b(context2, attributeSet, C14376a.C14388l.BottomNavigationView, i, C14376a.C14387k.Widget_Design_BottomNavigationView, C14376a.C14388l.BottomNavigationView_itemTextAppearanceInactive, C14376a.C14388l.BottomNavigationView_itemTextAppearanceActive);
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_itemIconTint)) {
            bottomNavigationMenuView.setIconTintList(m10504b.m45797e(C14376a.C14388l.BottomNavigationView_itemIconTint));
        } else {
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.m11146a());
        }
        setItemIconSize(m10504b.m45796e(C14376a.C14388l.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_icon_size)));
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(m10504b.m45792g(C14376a.C14388l.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(m10504b.m45792g(C14376a.C14388l.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_itemTextColor)) {
            setItemTextColor(m10504b.m45797e(C14376a.C14388l.BottomNavigationView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            C14670h c14670h = new C14670h();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                c14670h.m10456g(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            c14670h.m10479a(context2);
            C0926v.m44128a(this, c14670h);
        }
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_elevation)) {
            setElevation(m10504b.m45796e(C14376a.C14388l.BottomNavigationView_elevation, 0));
        }
        C0840a.m44355a(getBackground().mutate(), C14598c.m10651a(context2, m10504b, C14376a.C14388l.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(m10504b.m45800c(C14376a.C14388l.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(m10504b.m45807a(C14376a.C14388l.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int m45792g = m10504b.m45792g(C14376a.C14388l.BottomNavigationView_itemBackground, 0);
        if (m45792g != 0) {
            bottomNavigationMenuView.setItemBackgroundRes(m45792g);
        } else {
            setItemRippleColor(C14598c.m10651a(context2, m10504b, C14376a.C14388l.BottomNavigationView_itemRippleColor));
        }
        if (m10504b.m45793g(C14376a.C14388l.BottomNavigationView_menu)) {
            int m45792g2 = m10504b.m45792g(C14376a.C14388l.BottomNavigationView_menu, 0);
            bottomNavigationPresenter.f52631b = true;
            if (this.f52639f == null) {
                this.f52639f = new C0248g(getContext());
            }
            this.f52639f.inflate(m45792g2, c14446a);
            bottomNavigationPresenter.f52631b = false;
            bottomNavigationPresenter.mo10541a(true);
        }
        m10504b.f1491a.recycle();
        addView(bottomNavigationMenuView, layoutParams);
        if (Build.VERSION.SDK_INT < 21 && !(getBackground() instanceof C14670h)) {
            View view = new View(context2);
            view.setBackgroundColor(C0790b.m44492c(context2, C14376a.C14379c.design_bottom_navigation_shadow_color));
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_shadow_height)));
            addView(view);
        }
        c14446a.mo46041a(new C0268g.AbstractC0269a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
            /* renamed from: a */
            public final void mo10362a(C0268g c0268g) {
            }

            @Override // androidx.appcompat.view.menu.C0268g.AbstractC0269a
            /* renamed from: a */
            public final boolean mo10361a(C0268g c0268g, MenuItem menuItem) {
                if (BottomNavigationView.this.f52641h == null || menuItem.getItemId() != BottomNavigationView.this.f52635a.f52609e) {
                    return BottomNavigationView.this.f52640g != null && !BottomNavigationView.this.f52640g.m11139a();
                }
                AbstractC14444a unused = BottomNavigationView.this.f52641h;
                return true;
            }
        });
        C14654r.m10496a(this, new C14654r.AbstractC14659a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.2
            @Override // com.google.android.material.internal.C14654r.AbstractC14659a
            /* renamed from: a */
            public final C0889ac mo10490a(View view2, C0889ac c0889ac, C14654r.C14660b c14660b) {
                c14660b.f53455d += c0889ac.m44224d();
                boolean z = true;
                if (C0926v.m44097f(view2) != 1) {
                    z = false;
                }
                int m44231a = c0889ac.m44231a();
                int m44225c = c0889ac.m44225c();
                c14660b.f53452a += z ? m44225c : m44231a;
                int i2 = c14660b.f53454c;
                if (!z) {
                    m44231a = m44225c;
                }
                c14660b.f53454c = i2 + m44231a;
                c14660b.m10489a(view2);
                return c0889ac;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14674i.m10437a(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f52636c.m46092b(savedState.menuPresenterState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuPresenterState = new Bundle();
        this.f52636c.m46103a(savedState.menuPresenterState);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        C14674i.m10436a(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f52635a.setItemBackground(drawable);
        this.f52638e = null;
    }

    public void setItemBackgroundResource(int i) {
        this.f52635a.setItemBackgroundRes(i);
        this.f52638e = null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f52635a.f52606b != z) {
            this.f52635a.setItemHorizontalTranslationEnabled(z);
            this.f52637d.mo10541a(false);
        }
    }

    public void setItemIconSize(int i) {
        this.f52635a.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f52635a.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        this.f52635a.setItemOnTouchListener(i, onTouchListener);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.f52638e == colorStateList) {
            if (colorStateList != null) {
                return;
            }
            BottomNavigationMenuView bottomNavigationMenuView = this.f52635a;
            if (((bottomNavigationMenuView.f52608d == null || bottomNavigationMenuView.f52608d.length <= 0) ? bottomNavigationMenuView.f52611g : bottomNavigationMenuView.f52608d[0].getBackground()) == null) {
                return;
            }
            this.f52635a.setItemBackground(null);
            return;
        }
        this.f52638e = colorStateList;
        if (colorStateList == null) {
            this.f52635a.setItemBackground(null);
            return;
        }
        ColorStateList m10636a = C14607b.m10636a(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f52635a.setItemBackground(new RippleDrawable(m10636a, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable m44345f = C0840a.m44345f(gradientDrawable);
        C0840a.m44355a(m44345f, m10636a);
        this.f52635a.setItemBackground(m44345f);
    }

    public void setItemTextAppearanceActive(int i) {
        this.f52635a.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f52635a.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f52635a.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f52635a.f52607c != i) {
            this.f52635a.setLabelVisibilityMode(i);
            this.f52637d.mo10541a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(AbstractC14444a abstractC14444a) {
        this.f52641h = abstractC14444a;
    }

    public void setOnNavigationItemSelectedListener(AbstractC14445b abstractC14445b) {
        this.f52640g = abstractC14445b;
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.f52636c.findItem(i);
        if (findItem == null || this.f52636c.m46102a(findItem, this.f52637d, 0)) {
            return;
        }
        findItem.setChecked(true);
    }
}
