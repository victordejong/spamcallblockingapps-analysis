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
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ab;
import androidx.core.view.ac;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.h.c;
import com.google.android.material.internal.l;
import com.google.android.material.internal.r;
import com.google.android.material.k.h;
import com.google.android.material.k.i;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: b  reason: collision with root package name */
    private static final int f30305b = a.k.Widget_Design_BottomNavigationView;

    /* renamed from: a  reason: collision with root package name */
    final BottomNavigationMenuView f30306a;

    /* renamed from: c  reason: collision with root package name */
    private final g f30307c;

    /* renamed from: d  reason: collision with root package name */
    private final BottomNavigationPresenter f30308d;
    private ColorStateList e;
    private MenuInflater f;
    private b g;
    private a h;

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

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public interface a {
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public interface b {
        boolean a();
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f30305b), attributeSet, i);
        BottomNavigationPresenter bottomNavigationPresenter = new BottomNavigationPresenter();
        this.f30308d = bottomNavigationPresenter;
        Context context2 = getContext();
        g aVar = new com.google.android.material.bottomnavigation.a(context2);
        this.f30307c = aVar;
        BottomNavigationMenuView bottomNavigationMenuView = new BottomNavigationMenuView(context2);
        this.f30306a = bottomNavigationMenuView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        bottomNavigationMenuView.setLayoutParams(layoutParams);
        bottomNavigationPresenter.f30301a = bottomNavigationMenuView;
        boolean z = true;
        bottomNavigationPresenter.f30303c = 1;
        bottomNavigationMenuView.setPresenter(bottomNavigationPresenter);
        aVar.a(bottomNavigationPresenter);
        bottomNavigationPresenter.a(getContext(), aVar);
        ab b2 = l.b(context2, attributeSet, a.l.BottomNavigationView, i, a.k.Widget_Design_BottomNavigationView, a.l.BottomNavigationView_itemTextAppearanceInactive, a.l.BottomNavigationView_itemTextAppearanceActive);
        if (b2.g(a.l.BottomNavigationView_itemIconTint)) {
            bottomNavigationMenuView.setIconTintList(b2.e(a.l.BottomNavigationView_itemIconTint));
        } else {
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.a());
        }
        setItemIconSize(b2.e(a.l.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(a.d.design_bottom_navigation_icon_size)));
        if (b2.g(a.l.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(b2.g(a.l.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (b2.g(a.l.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(b2.g(a.l.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (b2.g(a.l.BottomNavigationView_itemTextColor)) {
            setItemTextColor(b2.e(a.l.BottomNavigationView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            h hVar = new h();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                hVar.g(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            hVar.a(context2);
            v.a(this, hVar);
        }
        if (b2.g(a.l.BottomNavigationView_elevation)) {
            setElevation(b2.e(a.l.BottomNavigationView_elevation, 0));
        }
        androidx.core.graphics.drawable.a.a(getBackground().mutate(), c.a(context2, b2, a.l.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(b2.c(a.l.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(b2.a(a.l.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int g = b2.g(a.l.BottomNavigationView_itemBackground, 0);
        if (g != 0) {
            bottomNavigationMenuView.setItemBackgroundRes(g);
        } else {
            setItemRippleColor(c.a(context2, b2, a.l.BottomNavigationView_itemRippleColor));
        }
        if (b2.g(a.l.BottomNavigationView_menu)) {
            int g2 = b2.g(a.l.BottomNavigationView_menu, 0);
            bottomNavigationPresenter.f30302b = true;
            if (this.f == null) {
                this.f = new androidx.appcompat.view.g(getContext());
            }
            this.f.inflate(g2, aVar);
            bottomNavigationPresenter.f30302b = false;
            bottomNavigationPresenter.a(true);
        }
        b2.f1044a.recycle();
        addView(bottomNavigationMenuView, layoutParams);
        if (Build.VERSION.SDK_INT >= 21 || (getBackground() instanceof h)) {
            z = false;
        }
        if (z) {
            View view = new View(context2);
            view.setBackgroundColor(androidx.core.content.b.c(context2, a.c.design_bottom_navigation_shadow_color));
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(a.d.design_bottom_navigation_shadow_height)));
            addView(view);
        }
        aVar.a(new g.a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // androidx.appcompat.view.menu.g.a
            public final void a(g gVar) {
            }

            @Override // androidx.appcompat.view.menu.g.a
            public final boolean a(g gVar, MenuItem menuItem) {
                if (BottomNavigationView.this.h == null || menuItem.getItemId() != BottomNavigationView.this.f30306a.e) {
                    return BottomNavigationView.this.g != null && !BottomNavigationView.this.g.a();
                }
                a unused = BottomNavigationView.this.h;
                return true;
            }
        });
        r.a(this, new r.a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.2
            @Override // com.google.android.material.internal.r.a
            public final ac a(View view2, ac acVar, r.b bVar) {
                bVar.f30666d += acVar.d();
                boolean z2 = true;
                if (v.f(view2) != 1) {
                    z2 = false;
                }
                int a2 = acVar.a();
                int c2 = acVar.c();
                bVar.f30663a += z2 ? c2 : a2;
                int i2 = bVar.f30665c;
                if (!z2) {
                    a2 = c2;
                }
                bVar.f30665c = i2 + a2;
                bVar.a(view2);
                return acVar;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.a(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f30307c.b(savedState.menuPresenterState);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.menuPresenterState = new Bundle();
        this.f30307c.a(savedState.menuPresenterState);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        i.a(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f30306a.setItemBackground(drawable);
        this.e = null;
    }

    public void setItemBackgroundResource(int i) {
        this.f30306a.setItemBackgroundRes(i);
        this.e = null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f30306a.f30297b != z) {
            this.f30306a.setItemHorizontalTranslationEnabled(z);
            this.f30308d.a(false);
        }
    }

    public void setItemIconSize(int i) {
        this.f30306a.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f30306a.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        this.f30306a.setItemOnTouchListener(i, onTouchListener);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.e != colorStateList) {
            this.e = colorStateList;
            if (colorStateList == null) {
                this.f30306a.setItemBackground(null);
                return;
            }
            ColorStateList a2 = com.google.android.material.i.b.a(colorStateList);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f30306a.setItemBackground(new RippleDrawable(a2, null, null));
                return;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(1.0E-5f);
            Drawable f = androidx.core.graphics.drawable.a.f(gradientDrawable);
            androidx.core.graphics.drawable.a.a(f, a2);
            this.f30306a.setItemBackground(f);
        } else if (colorStateList == null) {
            BottomNavigationMenuView bottomNavigationMenuView = this.f30306a;
            if (((bottomNavigationMenuView.f30299d == null || bottomNavigationMenuView.f30299d.length <= 0) ? bottomNavigationMenuView.g : bottomNavigationMenuView.f30299d[0].getBackground()) != null) {
                this.f30306a.setItemBackground(null);
            }
        }
    }

    public void setItemTextAppearanceActive(int i) {
        this.f30306a.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f30306a.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f30306a.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f30306a.f30298c != i) {
            this.f30306a.setLabelVisibilityMode(i);
            this.f30308d.a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(a aVar) {
        this.h = aVar;
    }

    public void setOnNavigationItemSelectedListener(b bVar) {
        this.g = bVar;
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.f30307c.findItem(i);
        if (findItem != null && !this.f30307c.a(findItem, this.f30308d, 0)) {
            findItem.setChecked(true);
        }
    }
}
