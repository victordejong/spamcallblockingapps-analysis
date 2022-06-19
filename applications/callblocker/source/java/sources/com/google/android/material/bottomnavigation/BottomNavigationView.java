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
import androidx.appcompat.view.C0179g;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.C0317ap;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.C0438a;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0595u;
import androidx.p029d.p030a.AbstractC0633a;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.internal.C4703j;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p157o.C4727b;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: b */
    private static final int f19739b = C4492a.C4503k.Widget_Design_BottomNavigationView;

    /* renamed from: a */
    final C4557c f19740a;

    /* renamed from: c */
    private final C0199g f19741c;

    /* renamed from: d */
    private final C4559d f19742d;

    /* renamed from: e */
    private ColorStateList f19743e;

    /* renamed from: f */
    private MenuInflater f19744f;

    /* renamed from: g */
    private AbstractC4551b f19745g;

    /* renamed from: h */
    private AbstractC4550a f19746h;

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public interface AbstractC4550a {
        /* renamed from: a */
        void m3617a(MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public interface AbstractC4551b {
        /* renamed from: a */
        boolean mo1189a(MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$c.class */
    public static class C4552c extends AbstractC0633a {
        public static final Parcelable.Creator<C4552c> CREATOR = new Parcelable.ClassLoaderCreator<C4552c>() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.c.1
            /* renamed from: a */
            public C4552c createFromParcel(Parcel parcel) {
                return new C4552c(parcel, null);
            }

            /* renamed from: a */
            public C4552c createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C4552c(parcel, classLoader);
            }

            /* renamed from: a */
            public C4552c[] newArray(int i) {
                return new C4552c[i];
            }
        };

        /* renamed from: a */
        Bundle f19749a;

        public C4552c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m3616a(parcel, classLoader == null ? getClass().getClassLoader() : classLoader);
        }

        public C4552c(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m3616a(Parcel parcel, ClassLoader classLoader) {
            this.f19749a = parcel.readBundle(classLoader);
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f19749a);
        }
    }

    public BottomNavigationView(Context context) {
        this(context, null);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f19739b), attributeSet, i);
        this.f19742d = new C4559d();
        Context context2 = getContext();
        this.f19741c = new C4556b(context2);
        this.f19740a = new C4557c(context2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f19740a.setLayoutParams(layoutParams);
        this.f19742d.m3583a(this.f19740a);
        this.f19742d.m3590a(1);
        this.f19740a.setPresenter(this.f19742d);
        this.f19741c.m21884a(this.f19742d);
        this.f19742d.mo3589a(getContext(), this.f19741c);
        C0317ap m2820b = C4702i.m2820b(context2, attributeSet, C4492a.C4504l.BottomNavigationView, i, C4492a.C4503k.Widget_Design_BottomNavigationView, C4492a.C4504l.BottomNavigationView_itemTextAppearanceInactive, C4492a.C4504l.BottomNavigationView_itemTextAppearanceActive);
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_itemIconTint)) {
            this.f19740a.setIconTintList(m2820b.m21425e(C4492a.C4504l.BottomNavigationView_itemIconTint));
        } else {
            this.f19740a.setIconTintList(this.f19740a.m3599a(16842808));
        }
        setItemIconSize(m2820b.m21424e(C4492a.C4504l.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_icon_size)));
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_itemTextAppearanceInactive)) {
            setItemTextAppearanceInactive(m2820b.m21420g(C4492a.C4504l.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_itemTextAppearanceActive)) {
            setItemTextAppearanceActive(m2820b.m21420g(C4492a.C4504l.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_itemTextColor)) {
            setItemTextColor(m2820b.m21425e(C4492a.C4504l.BottomNavigationView_itemTextColor));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            C0595u.m20350a(this, m3623a(context2));
        }
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_elevation)) {
            C0595u.m20358a(this, m2820b.m21424e(C4492a.C4504l.BottomNavigationView_elevation, 0));
        }
        C0535a.m20595a(getBackground().mutate(), C4718c.m2782a(context2, m2820b, C4492a.C4504l.BottomNavigationView_backgroundTint));
        setLabelVisibilityMode(m2820b.m21428c(C4492a.C4504l.BottomNavigationView_labelVisibilityMode, -1));
        setItemHorizontalTranslationEnabled(m2820b.m21436a(C4492a.C4504l.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        int m21420g = m2820b.m21420g(C4492a.C4504l.BottomNavigationView_itemBackground, 0);
        if (m21420g != 0) {
            this.f19740a.setItemBackgroundRes(m21420g);
        } else {
            setItemRippleColor(C4718c.m2782a(context2, m2820b, C4492a.C4504l.BottomNavigationView_itemRippleColor));
        }
        if (m2820b.m21421g(C4492a.C4504l.BottomNavigationView_menu)) {
            m3624a(m2820b.m21420g(C4492a.C4504l.BottomNavigationView_menu, 0));
        }
        m2820b.m21441a();
        addView(this.f19740a, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            m3621b(context2);
        }
        this.f19741c.mo21788a(new C0199g.AbstractC0200a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.1
            @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
            /* renamed from: a */
            public void mo3619a(C0199g c0199g) {
            }

            @Override // androidx.appcompat.view.menu.C0199g.AbstractC0200a
            /* renamed from: a */
            public boolean mo3618a(C0199g c0199g, MenuItem menuItem) {
                boolean z = true;
                if (BottomNavigationView.this.f19746h != null && menuItem.getItemId() == BottomNavigationView.this.getSelectedItemId()) {
                    BottomNavigationView.this.f19746h.m3617a(menuItem);
                } else if (BottomNavigationView.this.f19745g == null || BottomNavigationView.this.f19745g.mo1189a(menuItem)) {
                    z = false;
                }
                return z;
            }
        });
        m3625a();
    }

    /* renamed from: a */
    private C4736g m3623a(Context context) {
        C4736g c4736g = new C4736g();
        Drawable background = getBackground();
        if (background instanceof ColorDrawable) {
            c4736g.m2697f(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
        }
        c4736g.m2722a(context);
        return c4736g;
    }

    /* renamed from: a */
    private void m3625a() {
        C4703j.m2813a(this, new C4703j.AbstractC4706a() { // from class: com.google.android.material.bottomnavigation.BottomNavigationView.2
            @Override // com.google.android.material.internal.C4703j.AbstractC4706a
            /* renamed from: a */
            public C0572ac mo2811a(View view, C0572ac c0572ac, C4703j.C4707b c4707b) {
                c4707b.f20397d += c0572ac.m20436d();
                c4707b.m2810a(view);
                return c0572ac;
            }
        });
    }

    /* renamed from: b */
    private void m3621b(Context context) {
        View view = new View(context);
        view.setBackgroundColor(C0438a.m20892c(context, C4492a.C4495c.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    private MenuInflater getMenuInflater() {
        if (this.f19744f == null) {
            this.f19744f = new C0179g(getContext());
        }
        return this.f19744f;
    }

    /* renamed from: a */
    public void m3624a(int i) {
        this.f19742d.m3579b(true);
        getMenuInflater().inflate(i, this.f19741c);
        this.f19742d.m3579b(false);
        this.f19742d.mo3582a(true);
    }

    public Drawable getItemBackground() {
        return this.f19740a.getItemBackground();
    }

    @Deprecated
    public int getItemBackgroundResource() {
        return this.f19740a.getItemBackgroundRes();
    }

    public int getItemIconSize() {
        return this.f19740a.getItemIconSize();
    }

    public ColorStateList getItemIconTintList() {
        return this.f19740a.getIconTintList();
    }

    public ColorStateList getItemRippleColor() {
        return this.f19743e;
    }

    public int getItemTextAppearanceActive() {
        return this.f19740a.getItemTextAppearanceActive();
    }

    public int getItemTextAppearanceInactive() {
        return this.f19740a.getItemTextAppearanceInactive();
    }

    public ColorStateList getItemTextColor() {
        return this.f19740a.getItemTextColor();
    }

    public int getLabelVisibilityMode() {
        return this.f19740a.getLabelVisibilityMode();
    }

    public int getMaxItemCount() {
        return 5;
    }

    public Menu getMenu() {
        return this.f19741c;
    }

    public int getSelectedItemId() {
        return this.f19740a.getSelectedItemId();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2684a(this);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C4552c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C4552c c4552c = (C4552c) parcelable;
        super.onRestoreInstanceState(c4552c.m20121a());
        this.f19741c.m21876b(c4552c.f19749a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C4552c c4552c = new C4552c(super.onSaveInstanceState());
        c4552c.f19749a = new Bundle();
        this.f19741c.m21890a(c4552c.f19749a);
        return c4552c;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C4740h.m2683a(this, f);
    }

    public void setItemBackground(Drawable drawable) {
        this.f19740a.setItemBackground(drawable);
        this.f19743e = null;
    }

    public void setItemBackgroundResource(int i) {
        this.f19740a.setItemBackgroundRes(i);
        this.f19743e = null;
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        if (this.f19740a.m3600a() != z) {
            this.f19740a.setItemHorizontalTranslationEnabled(z);
            this.f19742d.mo3582a(false);
        }
    }

    public void setItemIconSize(int i) {
        this.f19740a.setItemIconSize(i);
    }

    public void setItemIconSizeRes(int i) {
        setItemIconSize(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f19740a.setIconTintList(colorStateList);
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        if (this.f19743e == colorStateList) {
            if (colorStateList != null || this.f19740a.getItemBackground() == null) {
                return;
            }
            this.f19740a.setItemBackground(null);
            return;
        }
        this.f19743e = colorStateList;
        if (colorStateList == null) {
            this.f19740a.setItemBackground(null);
            return;
        }
        ColorStateList m2759a = C4727b.m2759a(colorStateList);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f19740a.setItemBackground(new RippleDrawable(m2759a, null, null));
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(1.0E-5f);
        Drawable m20584g = C0535a.m20584g(gradientDrawable);
        C0535a.m20595a(m20584g, m2759a);
        this.f19740a.setItemBackground(m20584g);
    }

    public void setItemTextAppearanceActive(int i) {
        this.f19740a.setItemTextAppearanceActive(i);
    }

    public void setItemTextAppearanceInactive(int i) {
        this.f19740a.setItemTextAppearanceInactive(i);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f19740a.setItemTextColor(colorStateList);
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f19740a.getLabelVisibilityMode() != i) {
            this.f19740a.setLabelVisibilityMode(i);
            this.f19742d.mo3582a(false);
        }
    }

    public void setOnNavigationItemReselectedListener(AbstractC4550a abstractC4550a) {
        this.f19746h = abstractC4550a;
    }

    public void setOnNavigationItemSelectedListener(AbstractC4551b abstractC4551b) {
        this.f19745g = abstractC4551b;
    }

    public void setSelectedItemId(int i) {
        MenuItem findItem = this.f19741c.findItem(i);
        if (findItem == null || this.f19741c.m21887a(findItem, this.f19742d, 0)) {
            return;
        }
        findItem.setChecked(true);
    }
}
