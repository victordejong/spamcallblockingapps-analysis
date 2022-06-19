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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.widget.C0277ae;
import androidx.appcompat.widget.C0315au;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.p016a.C0420f;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.p024a.C0510d;
import androidx.core.widget.C0605i;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements AbstractC0199n.AbstractC0200a {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private final C0503a accessibilityDelegate;
    private FrameLayout actionArea;
    boolean checkable;
    private Drawable emptyDrawable;
    private boolean hasIconTintList;
    private final int iconSize;
    private ColorStateList iconTintList;
    private C0186i itemData;
    private boolean needsEmptyIcon;
    private final CheckedTextView textView;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.accessibilityDelegate = new C0503a() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.p023g.C0503a
            public void onInitializeAccessibilityNodeInfo(View view, C0510d c0510d) {
                super.onInitializeAccessibilityNodeInfo(view, c0510d);
                c0510d.m6440a(NavigationMenuItemView.this.checkable);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(C1284R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.iconSize = context.getResources().getDimensionPixelSize(C1284R.dimen.design_navigation_icon_size);
        this.textView = (CheckedTextView) findViewById(C1284R.C1286id.design_menu_item_text);
        this.textView.setDuplicateParentStateEnabled(true);
        C0552u.m6269a(this.textView, this.accessibilityDelegate);
    }

    private void adjustAppearance() {
        if (shouldExpandActionArea()) {
            this.textView.setVisibility(8);
            FrameLayout frameLayout = this.actionArea;
            if (frameLayout == null) {
                return;
            }
            C0277ae.C0278a c0278a = (C0277ae.C0278a) frameLayout.getLayoutParams();
            c0278a.width = -1;
            this.actionArea.setLayoutParams(c0278a);
            return;
        }
        this.textView.setVisibility(0);
        FrameLayout frameLayout2 = this.actionArea;
        if (frameLayout2 == null) {
            return;
        }
        C0277ae.C0278a c0278a2 = (C0277ae.C0278a) frameLayout2.getLayoutParams();
        c0278a2.width = -2;
        this.actionArea.setLayoutParams(c0278a2);
    }

    private StateListDrawable createDefaultBackground() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(C0051a.C0052a.colorControlHighlight, typedValue, true)) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(CHECKED_STATE_SET, new ColorDrawable(typedValue.data));
            stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            return stateListDrawable;
        }
        return null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.actionArea == null) {
                this.actionArea = (FrameLayout) ((ViewStub) findViewById(C1284R.C1286id.design_menu_item_action_area_stub)).inflate();
            }
            this.actionArea.removeAllViews();
            this.actionArea.addView(view);
        }
    }

    private boolean shouldExpandActionArea() {
        return this.itemData.getTitle() == null && this.itemData.getIcon() == null && this.itemData.getActionView() != null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public C0186i getItemData() {
        return this.itemData;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public void initialize(C0186i c0186i, int i) {
        this.itemData = c0186i;
        setVisibility(c0186i.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            C0552u.m6272a(this, createDefaultBackground());
        }
        setCheckable(c0186i.isCheckable());
        setChecked(c0186i.isChecked());
        setEnabled(c0186i.isEnabled());
        setTitle(c0186i.getTitle());
        setIcon(c0186i.getIcon());
        setActionView(c0186i.getActionView());
        setContentDescription(c0186i.getContentDescription());
        C0315au.m7132a(this, c0186i.getTooltipText());
        adjustAppearance();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0186i c0186i = this.itemData;
        if (c0186i != null && c0186i.isCheckable() && this.itemData.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void recycle() {
        FrameLayout frameLayout = this.actionArea;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.textView.setCompoundDrawables(null, null, null, null);
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.checkable != z) {
            this.checkable = z;
            this.accessibilityDelegate.sendAccessibilityEvent(this.textView, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.textView.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.hasIconTintList) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C0575a.m6122g(drawable).mutate();
                C0575a.m6133a(drawable2, this.iconTintList);
            }
            int i = this.iconSize;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.needsEmptyIcon) {
            if (this.emptyDrawable == null) {
                this.emptyDrawable = C0420f.m6697a(getResources(), C1284R.C1285drawable.navigation_empty_icon, getContext().getTheme());
                Drawable drawable3 = this.emptyDrawable;
                if (drawable3 != null) {
                    int i2 = this.iconSize;
                    drawable3.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.emptyDrawable;
        }
        C0605i.m5976a(this.textView, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.textView.setCompoundDrawablePadding(i);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        this.hasIconTintList = this.iconTintList != null;
        C0186i c0186i = this.itemData;
        if (c0186i != null) {
            setIcon(c0186i.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.needsEmptyIcon = z;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        C0605i.m5979a(this.textView, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textView.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public boolean showsIcon() {
        return true;
    }
}
