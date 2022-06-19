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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.widget.C0374ad;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.res.C0804f;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0865a;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.core.widget.C0959h;
import com.google.android.material.C14376a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements AbstractC0285n.AbstractC0286a {

    /* renamed from: i */
    private static final int[] f53296i = {16842912};

    /* renamed from: c */
    boolean f53297c;

    /* renamed from: d */
    final CheckedTextView f53298d;

    /* renamed from: e */
    FrameLayout f53299e;

    /* renamed from: f */
    C0272i f53300f;

    /* renamed from: g */
    ColorStateList f53301g;

    /* renamed from: h */
    boolean f53302h;

    /* renamed from: j */
    private int f53303j;

    /* renamed from: k */
    private boolean f53304k;

    /* renamed from: l */
    private Drawable f53305l;

    /* renamed from: m */
    private final C0865a f53306m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0865a c0865a = new C0865a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.view.C0865a
            /* renamed from: a */
            public final void mo9886a(View view, C0869c c0869c) {
                super.mo9886a(view, c0869c);
                c0869c.m44272a(NavigationMenuItemView.this.f53297c);
            }
        };
        this.f53306m = c0865a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(C14376a.C14384h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C14376a.C14380d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C14376a.C14382f.design_menu_item_text);
        this.f53298d = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C0926v.m44123a(checkedTextView, c0865a);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final C0272i mo10613a() {
        return this.f53300f;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final void mo10612a(C0272i c0272i) {
        StateListDrawable stateListDrawable;
        this.f53300f = c0272i;
        if (c0272i.getItemId() > 0) {
            setId(c0272i.getItemId());
        }
        setVisibility(c0272i.isVisible() ? 0 : 8);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(C0142a.C0143a.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f53296i, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            C0926v.m44128a(this, stateListDrawable);
        }
        setCheckable(c0272i.isCheckable());
        setChecked(c0272i.isChecked());
        setEnabled(c0272i.isEnabled());
        setTitle(c0272i.getTitle());
        setIcon(c0272i.getIcon());
        View actionView = c0272i.getActionView();
        if (actionView != null) {
            if (this.f53299e == null) {
                this.f53299e = (FrameLayout) ((ViewStub) findViewById(C14376a.C14382f.design_menu_item_action_area_stub)).inflate();
            }
            this.f53299e.removeAllViews();
            this.f53299e.addView(actionView);
        }
        setContentDescription(c0272i.getContentDescription());
        C0374ad.m45785a(this, c0272i.getTooltipText());
        if (this.f53300f.getTitle() != null || this.f53300f.getIcon() != null || this.f53300f.getActionView() == null) {
            z = false;
        }
        if (z) {
            this.f53298d.setVisibility(8);
            FrameLayout frameLayout = this.f53299e;
            if (frameLayout == null) {
                return;
            }
            LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
            layoutParams.width = -1;
            this.f53299e.setLayoutParams(layoutParams);
            return;
        }
        this.f53298d.setVisibility(0);
        FrameLayout frameLayout2 = this.f53299e;
        if (frameLayout2 == null) {
            return;
        }
        LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
        layoutParams2.width = -2;
        this.f53299e.setLayoutParams(layoutParams2);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: b */
    public final boolean mo10611b() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0272i c0272i = this.f53300f;
        if (c0272i != null && c0272i.isCheckable() && this.f53300f.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f53296i);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f53297c != z) {
            this.f53297c = z;
            this.f53306m.mo40052a(this.f53298d, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f53298d.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f53302h) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C0840a.m44345f(drawable).mutate();
                C0840a.m44355a(drawable2, this.f53301g);
            }
            int i = this.f53303j;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f53304k) {
            if (this.f53305l == null) {
                Drawable m44463a = C0804f.m44463a(getResources(), C14376a.C14381e.navigation_empty_icon, getContext().getTheme());
                this.f53305l = m44463a;
                if (m44463a != null) {
                    int i2 = this.f53303j;
                    m44463a.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f53305l;
        }
        C0959h.m43962a(this.f53298d, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f53298d.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f53303j = i;
    }

    public void setMaxLines(int i) {
        this.f53298d.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f53304k = z;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        C0959h.m43965a(this.f53298d, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f53298d.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f53298d.setText(charSequence);
    }
}
