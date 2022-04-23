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
import androidx.appcompat.a;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.ad;
import androidx.core.content.res.f;
import androidx.core.view.a;
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.core.widget.h;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements n.a {
    private static final int[] i = {16842912};

    /* renamed from: c  reason: collision with root package name */
    boolean f30599c;

    /* renamed from: d  reason: collision with root package name */
    final CheckedTextView f30600d;
    FrameLayout e;
    i f;
    ColorStateList g;
    boolean h;
    private int j;
    private boolean k;
    private Drawable l;
    private final a m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a aVar = new a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.view.a
            public final void a(View view, c cVar) {
                super.a(view, cVar);
                cVar.a(NavigationMenuItemView.this.f30599c);
            }
        };
        this.m = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(a.h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(a.d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(a.f.design_menu_item_text);
        this.f30600d = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        v.a(checkedTextView, aVar);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final i a() {
        return this.f;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final void a(i iVar) {
        StateListDrawable stateListDrawable;
        this.f = iVar;
        if (iVar.getItemId() > 0) {
            setId(iVar.getItemId());
        }
        setVisibility(iVar.isVisible() ? 0 : 8);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(a.C0018a.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(i, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            v.a(this, stateListDrawable);
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.getTitle());
        setIcon(iVar.getIcon());
        View actionView = iVar.getActionView();
        if (actionView != null) {
            if (this.e == null) {
                this.e = (FrameLayout) ((ViewStub) findViewById(a.f.design_menu_item_action_area_stub)).inflate();
            }
            this.e.removeAllViews();
            this.e.addView(actionView);
        }
        setContentDescription(iVar.getContentDescription());
        ad.a(this, iVar.getTooltipText());
        if (!(this.f.getTitle() == null && this.f.getIcon() == null && this.f.getActionView() != null)) {
            z = false;
        }
        if (z) {
            this.f30600d.setVisibility(8);
            FrameLayout frameLayout = this.e;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                layoutParams.width = -1;
                this.e.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f30600d.setVisibility(0);
        FrameLayout frameLayout2 = this.e;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            layoutParams2.width = -2;
            this.e.setLayoutParams(layoutParams2);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final boolean b() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        i iVar = this.f;
        if (iVar != null && iVar.isCheckable() && this.f.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, i);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f30599c != z) {
            this.f30599c = z;
            this.m.a(this.f30600d, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f30600d.setChecked(z);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, 0, i2, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.h) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = androidx.core.graphics.drawable.a.f(drawable).mutate();
                androidx.core.graphics.drawable.a.a(drawable2, this.g);
            }
            int i2 = this.j;
            drawable2.setBounds(0, 0, i2, i2);
            drawable = drawable2;
        } else if (this.k) {
            if (this.l == null) {
                Drawable a2 = f.a(getResources(), a.e.navigation_empty_icon, getContext().getTheme());
                this.l = a2;
                if (a2 != null) {
                    int i3 = this.j;
                    a2.setBounds(0, 0, i3, i3);
                }
            }
            drawable = this.l;
        }
        h.a(this.f30600d, drawable, null, null, null);
    }

    public void setIconPadding(int i2) {
        this.f30600d.setCompoundDrawablePadding(i2);
    }

    public void setIconSize(int i2) {
        this.j = i2;
    }

    public void setMaxLines(int i2) {
        this.f30600d.setMaxLines(i2);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.k = z;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearance(int i2) {
        h.a(this.f30600d, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f30600d.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f30600d.setText(charSequence);
    }
}
