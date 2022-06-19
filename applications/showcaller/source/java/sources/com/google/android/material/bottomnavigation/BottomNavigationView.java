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
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.C0286e0;
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.C8203l;
import com.google.android.material.internal.C8209q;
import com.google.android.material.theme.p275a.C8328a;
import p020b.p021a.p028o.C1462g;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1887c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p106v.C1928b;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1942i;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: d */
    private static final int f36256d = C1895k.Widget_Design_BottomNavigationView;

    /* renamed from: e */
    private final C0178g f36257e;

    /* renamed from: f */
    final BottomNavigationMenuView f36258f;

    /* renamed from: g */
    private final BottomNavigationPresenter f36259g;

    /* renamed from: h */
    private ColorStateList f36260h;

    /* renamed from: i */
    private MenuInflater f36261i;

    /* renamed from: j */
    private AbstractC8031d f36262j;

    /* renamed from: k */
    private AbstractC8030c f36263k;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8027a();

        /* renamed from: f */
        Bundle f36264f;

        /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState$a.class */
        static final class C8027a implements Parcelable.ClassLoaderCreator<SavedState> {
            C8027a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m5469b(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m5469b(Parcel parcel, ClassLoader classLoader) {
            this.f36264f = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f36264f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public class C8028a implements C0178g.AbstractC0179a {
        C8028a() {
            BottomNavigationView.this = r4;
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: a */
        public boolean mo4426a(C0178g c0178g, MenuItem menuItem) {
            boolean z = true;
            if (BottomNavigationView.this.f36263k != null && menuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()) {
                BottomNavigationView.this.f36263k.m5465a(menuItem);
                return true;
            }
            if (BottomNavigationView.this.f36262j == null || BottomNavigationView.this.f36262j.m5464a(menuItem)) {
                z = false;
            }
            return z;
        }

        @Override // androidx.appcompat.view.menu.C0178g.AbstractC0179a
        /* renamed from: b */
        public void mo4425b(C0178g c0178g) {
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public class C8029b implements C8209q.AbstractC8214e {
        C8029b() {
            BottomNavigationView.this = r4;
        }

        @Override // com.google.android.material.internal.C8209q.AbstractC8214e
        /* renamed from: a */
        public C1615e0 mo4440a(View view, C1615e0 c1615e0, C8209q.C8215f c8215f) {
            c8215f.f37046d += c1615e0.m29591i();
            boolean z = true;
            if (C1679w.m29346C(view) != 1) {
                z = false;
            }
            int m29590j = c1615e0.m29590j();
            int m29589k = c1615e0.m29589k();
            c8215f.f37043a += z ? m29589k : m29590j;
            int i = c8215f.f37045c;
            if (!z) {
                m29590j = m29589k;
            }
            c8215f.f37045c = i + m29590j;
            c8215f.m4439a(view);
            return c1615e0;
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$c.class */
    public interface AbstractC8030c {
        /* renamed from: a */
        void m5465a(MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$d.class */
    public interface AbstractC8031d {
        /* renamed from: a */
        boolean m5464a(MenuItem menuItem);
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1886b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(C8328a.m3881c(context, attributeSet, i, f36256d), attributeSet, i);
        BottomNavigationPresenter bottomNavigationPresenter = new BottomNavigationPresenter();
        this.f36259g = bottomNavigationPresenter;
        Context context2 = getContext();
        C0178g c8032a = new C8032a(context2);
        this.f36257e = c8032a;
        BottomNavigationMenuView bottomNavigationMenuView = new BottomNavigationMenuView(context2);
        this.f36258f = bottomNavigationMenuView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        bottomNavigationMenuView.setLayoutParams(layoutParams);
        bottomNavigationPresenter.m5481a(bottomNavigationMenuView);
        bottomNavigationPresenter.m5480h(1);
        bottomNavigationMenuView.setPresenter(bottomNavigationPresenter);
        c8032a.m35393b(bottomNavigationPresenter);
        bottomNavigationPresenter.mo4531i(getContext(), c8032a);
        int[] iArr = C1896l.BottomNavigationView;
        int i2 = C1895k.Widget_Design_BottomNavigationView;
        int i3 = C1896l.BottomNavigationView_itemTextAppearanceInactive;
        int i4 = C1896l.BottomNavigationView_itemTextAppearanceActive;
        C0286e0 m4461i = C8203l.m4461i(context2, attributeSet, iArr, i, i2, i3, i4);
        int i5 = C1896l.BottomNavigationView_itemIconTint;
        if (m4461i.m34949s(i5)) {
            bottomNavigationMenuView.setIconTintList(m4461i.m34965c(i5));
        } else {
            bottomNavigationMenuView.setIconTintList(bottomNavigationMenuView.m5488e(16842808));
        }
        setItemIconSize(m4461i.m34962f(C1896l.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(C1888d.design_bottom_navigation_icon_size)));
        if (m4461i.m34949s(i3)) {
            setItemTextAppearanceInactive(m4461i.m34954n(i3, 0));
        }
        if (m4461i.m34949s(i4)) {
            setItemTextAppearanceActive(m4461i.m34954n(i4, 0));
        }
        int i6 = C1896l.BottomNavigationView_itemTextColor;
        if (m4461i.m34949s(i6)) {
            setItemTextColor(m4461i.m34965c(i6));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            C1679w.m29267u0(this, m5472e(context2));
        }
        int i7 = C1896l.BottomNavigationView_elevation;
        if (m4461i.m34949s(i7)) {
            setElevation(m4461i.m34962f(i7, 0));
        }
        C0615a.m33215o(getBackground().mutate(), C1919c.m28685b(context2, m4461i, C1896l.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(m4461i.m34956l(C1896l.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(m4461i.m34967a(C1896l.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int m34954n = m4461i.m34954n(C1896l.BottomNavigationView_itemBackground, 0);
        if (m34954n != 0) {
            bottomNavigationMenuView.setItemBackgroundRes(m34954n);
        } else {
            setItemRippleColor(C1919c.m28685b(context2, m4461i, C1896l.BottomNavigationView_itemRippleColor));
        }
        int i8 = C1896l.BottomNavigationView_menu;
        if (m4461i.m34949s(i8)) {
            m5471f(m4461i.m34954n(i8, 0));
        }
        m4461i.m34945w();
        addView(bottomNavigationMenuView, layoutParams);
        if (m5470g()) {
            m5474c(context2);
        }
        c8032a.mo35302V(new C8028a());
        m5473d();
    }

    /* renamed from: c */
    private void m5474c(Context context) {
        View view = new View(context);
        view.setBackgroundColor(C0586a.m33350d(context, C1887c.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C1888d.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    /* renamed from: d */
    private void m5473d() {
        C8209q.m4451b(this, new C8029b());
    }

    /* renamed from: e */
    private C1938h m5472e(Context context) {
        C1938h c1938h = new C1938h();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            c1938h.m28625a0(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        c1938h.m28636P(context);
        return c1938h;
    }

    /* renamed from: g */
    private boolean m5470g() {
        return Build.VERSION.SDK_INT < 21 && !(getBackground() instanceof C1938h);
    }

    private MenuInflater getMenuInflater() {
        if (this.f36261i == null) {
            this.f36261i = new C1462g(getContext());
        }
        return this.f36261i;
    }

    /* renamed from: f */
    public void m5471f(int i) {
        this.f36259g.m5479k(true);
        getMenuInflater().inflate(i, this.f36257e);
        this.f36259g.m5479k(false);
        this.f36259g.mo4536c(true);
    }

    public Drawable getItemBackground() {
        return this.f36258f.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f36258f.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f36258f.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f36258f.getIconTintList();
    }

    public ColorStateList getItemRippleColor() {
        return this.f36260h;
    }

    public int getItemTextAppearanceActive() {
        return this.f36258f.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f36258f.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f36258f.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f36258f.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    public Menu getMenu() {
        return this.f36257e;
    }

    public int getSelectedItemId() {
        return this.f36258f.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1942i.m28580e(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        this.f36257e.m35401S(savedState.f36264f);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.f36264f = bundle;
        this.f36257e.m35399U(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        C1942i.m28581d(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f36258f.setItemBackground(drawable);
        this.f36260h = null;
    }

    public void setItemBackgroundResource(int i) {
        this.f36258f.setItemBackgroundRes(i);
        this.f36260h = null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f36258f.m5487f() != z) {
            this.f36258f.setItemHorizontalTranslationEnabled(z);
            this.f36259g.mo4536c(false);
        }
    }

    public void setItemIconSize(int i) {
        this.f36258f.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f36258f.setIconTintList(colorStateList);
    }

    public void setItemOnTouchListener(int i, View.OnTouchListener onTouchListener) {
        this.f36258f.setItemOnTouchListener(i, onTouchListener);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.f36260h == colorStateList) {
            if (colorStateList != null || this.f36258f.getItemBackground() == null) {
                return;
            }
            this.f36258f.setItemBackground(null);
            return;
        }
        this.f36260h = colorStateList;
        if (colorStateList == null) {
            this.f36258f.setItemBackground(null);
            return;
        }
        ColorStateList m28661a = C1928b.m28661a(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f36258f.setItemBackground(new RippleDrawable(m28661a, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable m33212r = C0615a.m33212r(gradientDrawable);
        C0615a.m33215o(m33212r, m28661a);
        this.f36258f.setItemBackground(m33212r);
    }

    public void setItemTextAppearanceActive(int i) {
        this.f36258f.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f36258f.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f36258f.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f36258f.getLabelVisibilityMode() != i) {
            this.f36258f.setLabelVisibilityMode(i);
            this.f36259g.mo4536c(false);
        }
    }

    public void setOnNavigationItemReselectedListener(AbstractC8030c abstractC8030c) {
        this.f36263k = abstractC8030c;
    }

    public void setOnNavigationItemSelectedListener(AbstractC8031d abstractC8031d) {
        this.f36262j = abstractC8031d;
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.f36257e.findItem(i);
        if (findItem == null || this.f36257e.m35405O(findItem, this.f36259g, 0)) {
            return;
        }
        findItem.setChecked(true);
    }
}
