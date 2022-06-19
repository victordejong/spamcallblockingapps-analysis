package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.C0140g;
import androidx.appcompat.widget.C0220d1;
import androidx.appcompat.widget.LinearLayoutCompat;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p076e0.C2511f;
import p098g0.C2789a;
import p163m0.C3546a;
import p163m0.C3589v;
import p163m0.C3611y;
import p174n0.C3694b;
import p196p0.C3992g;
import p262v3.C4605f;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends C4605f implements AbstractC0146j.AbstractC0147a {

    /* renamed from: F */
    public static final int[] f6715F = {16842912};

    /* renamed from: A */
    public C0140g f6716A;

    /* renamed from: B */
    public ColorStateList f6717B;

    /* renamed from: C */
    public boolean f6718C;

    /* renamed from: D */
    public Drawable f6719D;

    /* renamed from: E */
    public final C3546a f6720E;

    /* renamed from: v */
    public int f6721v;

    /* renamed from: w */
    public boolean f6722w;

    /* renamed from: x */
    public boolean f6723x;

    /* renamed from: y */
    public final CheckedTextView f6724y;

    /* renamed from: z */
    public FrameLayout f6725z;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView$a.class */
    public class C1794a extends C3546a {
        public C1794a() {
            NavigationMenuItemView.this = r4;
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            c3694b.f12070a.setCheckable(NavigationMenuItemView.this.f6723x);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        C1794a c1794a = new C1794a();
        this.f6720E = c1794a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(2131492935, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(2131165336));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(2131296539);
        this.f6724y = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C3589v.m2103u(checkedTextView, c1794a);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f6725z == null) {
                this.f6725z = (FrameLayout) ((ViewStub) findViewById(2131296538)).inflate();
            }
            this.f6725z.removeAllViews();
            this.f6725z.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    /* renamed from: d */
    public void mo4552d(C0140g c0140g, int i) {
        StateListDrawable stateListDrawable;
        this.f6716A = c0140g;
        int i2 = c0140g.f458a;
        if (i2 > 0) {
            setId(i2);
        }
        setVisibility(c0140g.isVisible() ? 0 : 8);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(C3681R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f6715F, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2077q(this, stateListDrawable);
        }
        setCheckable(c0140g.isCheckable());
        setChecked(c0140g.isChecked());
        setEnabled(c0140g.isEnabled());
        setTitle(c0140g.f462e);
        setIcon(c0140g.getIcon());
        setActionView(c0140g.getActionView());
        setContentDescription(c0140g.f474q);
        C0220d1.m8549a(this, c0140g.f475r);
        C0140g c0140g2 = this.f6716A;
        if (c0140g2.f462e != null || c0140g2.getIcon() != null || this.f6716A.getActionView() == null) {
            z = false;
        }
        if (z) {
            this.f6724y.setVisibility(8);
            FrameLayout frameLayout = this.f6725z;
            if (frameLayout == null) {
                return;
            }
            LinearLayoutCompat.C0164a c0164a = (LinearLayoutCompat.C0164a) frameLayout.getLayoutParams();
            ((LinearLayout.LayoutParams) c0164a).width = -1;
            this.f6725z.setLayoutParams(c0164a);
            return;
        }
        this.f6724y.setVisibility(0);
        FrameLayout frameLayout2 = this.f6725z;
        if (frameLayout2 == null) {
            return;
        }
        LinearLayoutCompat.C0164a c0164a2 = (LinearLayoutCompat.C0164a) frameLayout2.getLayoutParams();
        ((LinearLayout.LayoutParams) c0164a2).width = -2;
        this.f6725z.setLayoutParams(c0164a2);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    public C0140g getItemData() {
        return this.f6716A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0140g c0140g = this.f6716A;
        if (c0140g != null && c0140g.isCheckable() && this.f6716A.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f6715F);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f6723x != z) {
            this.f6723x = z;
            this.f6720E.mo2192h(this.f6724y, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f6724y.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f6718C) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C2789a.m3007h(drawable).mutate();
                drawable2.setTintList(this.f6717B);
            }
            int i = this.f6721v;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f6722w) {
            if (this.f6719D == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
                Drawable drawable3 = resources.getDrawable(2131231063, theme);
                this.f6719D = drawable3;
                if (drawable3 != null) {
                    int i2 = this.f6721v;
                    drawable3.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f6719D;
        }
        this.f6724y.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f6724y.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f6721v = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f6717B = colorStateList;
        this.f6718C = colorStateList != null;
        C0140g c0140g = this.f6716A;
        if (c0140g != null) {
            setIcon(c0140g.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f6724y.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f6722w = z;
    }

    public void setTextAppearance(int i) {
        C3992g.m1556f(this.f6724y, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f6724y.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f6724y.setText(charSequence);
    }
}
