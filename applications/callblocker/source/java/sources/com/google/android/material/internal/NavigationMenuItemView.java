package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.widget.C0321ar;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.p018a.C0449f;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.widget.C0628i;
import com.google.android.material.C4492a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends C4691d implements AbstractC0216n.AbstractC0217a {

    /* renamed from: d */
    private static final int[] f20299d = {16842912};

    /* renamed from: c */
    boolean f20300c;

    /* renamed from: e */
    private int f20301e;

    /* renamed from: f */
    private boolean f20302f;

    /* renamed from: g */
    private final CheckedTextView f20303g;

    /* renamed from: h */
    private FrameLayout f20304h;

    /* renamed from: i */
    private C0203i f20305i;

    /* renamed from: j */
    private ColorStateList f20306j;

    /* renamed from: k */
    private boolean f20307k;

    /* renamed from: l */
    private Drawable f20308l;

    /* renamed from: m */
    private final C0549a f20309m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20309m = new C0549a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view, C0553c c0553c) {
                super.mo2272a(view, c0553c);
                c0553c.m20510a(NavigationMenuItemView.this.f20300c);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(C4492a.C4500h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C4492a.C4496d.design_navigation_icon_size));
        this.f20303g = (CheckedTextView) findViewById(C4492a.C4498f.design_menu_item_text);
        this.f20303g.setDuplicateParentStateEnabled(true);
        C0595u.m20345a(this.f20303g, this.f20309m);
    }

    /* renamed from: b */
    private boolean m2908b() {
        return this.f20305i.getTitle() == null && this.f20305i.getIcon() == null && this.f20305i.getActionView() != null;
    }

    /* renamed from: c */
    private void m2907c() {
        if (m2908b()) {
            this.f20303g.setVisibility(8);
            if (this.f20304h == null) {
                return;
            }
            LinearLayoutCompat.C0250a c0250a = (LinearLayoutCompat.C0250a) this.f20304h.getLayoutParams();
            c0250a.width = -1;
            this.f20304h.setLayoutParams(c0250a);
            return;
        }
        this.f20303g.setVisibility(0);
        if (this.f20304h == null) {
            return;
        }
        LinearLayoutCompat.C0250a c0250a2 = (LinearLayoutCompat.C0250a) this.f20304h.getLayoutParams();
        c0250a2.width = -2;
        this.f20304h.setLayoutParams(c0250a2);
    }

    /* renamed from: d */
    private StateListDrawable m2906d() {
        StateListDrawable stateListDrawable;
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(C0083a.C0084a.colorControlHighlight, typedValue, true)) {
            stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(f20299d, new ColorDrawable(typedValue.data));
            stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
        } else {
            stateListDrawable = null;
        }
        return stateListDrawable;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f20304h == null) {
                this.f20304h = (FrameLayout) ((ViewStub) findViewById(C4492a.C4498f.design_menu_item_action_area_stub)).inflate();
            }
            this.f20304h.removeAllViews();
            this.f20304h.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public void mo2909a(C0203i c0203i, int i) {
        this.f20305i = c0203i;
        setVisibility(c0203i.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            C0595u.m20350a(this, m2906d());
        }
        setCheckable(c0203i.isCheckable());
        setChecked(c0203i.isChecked());
        setEnabled(c0203i.isEnabled());
        setTitle(c0203i.getTitle());
        setIcon(c0203i.getIcon());
        setActionView(c0203i.getActionView());
        setContentDescription(c0203i.getContentDescription());
        C0321ar.m21406a(this, c0203i.getTooltipText());
        m2907c();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public boolean mo2910a() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    public C0203i getItemData() {
        return this.f20305i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f20305i != null && this.f20305i.isCheckable() && this.f20305i.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f20299d);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f20300c != z) {
            this.f20300c = z;
            this.f20309m.mo18438a(this.f20303g, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f20303g.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f20307k) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C0535a.m20584g(drawable).mutate();
                C0535a.m20595a(drawable2, this.f20306j);
            }
            drawable2.setBounds(0, 0, this.f20301e, this.f20301e);
            drawable = drawable2;
        } else if (this.f20302f) {
            if (this.f20308l == null) {
                this.f20308l = C0449f.m20843a(getResources(), C4492a.C4497e.navigation_empty_icon, getContext().getTheme());
                if (this.f20308l != null) {
                    this.f20308l.setBounds(0, 0, this.f20301e, this.f20301e);
                }
            }
            drawable = this.f20308l;
        }
        C0628i.m20141a(this.f20303g, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f20303g.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f20301e = i;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.f20306j = colorStateList;
        this.f20307k = this.f20306j != null;
        if (this.f20305i != null) {
            setIcon(this.f20305i.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f20303g.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f20302f = z;
    }

    public void setTextAppearance(int i) {
        C0628i.m20144a(this.f20303g, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f20303g.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f20303g.setText(charSequence);
    }
}
