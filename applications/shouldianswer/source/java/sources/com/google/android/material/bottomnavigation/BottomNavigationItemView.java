package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.widget.C0315au;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.p015a.C0409a;
import androidx.core.p023g.C0550s;
import androidx.core.p023g.C0552u;
import androidx.core.widget.C0605i;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements AbstractC0199n.AbstractC0200a {
    private static final int[] CHECKED_STATE_SET = {16842912};
    public static final int INVALID_ITEM_POSITION = -1;
    private final int defaultMargin;
    private ImageView icon;
    private ColorStateList iconTint;
    private boolean isShifting;
    private C0186i itemData;
    private int itemPosition;
    private int labelVisibilityMode;
    private final TextView largeLabel;
    private float scaleDownFactor;
    private float scaleUpFactor;
    private float shiftAmount;
    private final TextView smallLabel;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.itemPosition = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C1284R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(C1284R.C1285drawable.design_bottom_navigation_item_background);
        this.defaultMargin = resources.getDimensionPixelSize(C1284R.dimen.design_bottom_navigation_margin);
        this.icon = (ImageView) findViewById(C1284R.C1286id.icon);
        this.smallLabel = (TextView) findViewById(C1284R.C1286id.smallLabel);
        this.largeLabel = (TextView) findViewById(C1284R.C1286id.largeLabel);
        C0552u.m6258b((View) this.smallLabel, 2);
        C0552u.m6258b((View) this.largeLabel, 2);
        setFocusable(true);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    private void calculateTextScaleFactors(float f, float f2) {
        this.shiftAmount = f - f2;
        this.scaleUpFactor = (f2 * 1.0f) / f;
        this.scaleDownFactor = (f * 1.0f) / f2;
    }

    private void setViewLayoutParams(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    private void setViewValues(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public C0186i getItemData() {
        return this.itemData;
    }

    public int getItemPosition() {
        return this.itemPosition;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public void initialize(C0186i c0186i, int i) {
        this.itemData = c0186i;
        setCheckable(c0186i.isCheckable());
        setChecked(c0186i.isChecked());
        setEnabled(c0186i.isEnabled());
        setIcon(c0186i.getIcon());
        setTitle(c0186i.getTitle());
        setId(c0186i.getItemId());
        if (!TextUtils.isEmpty(c0186i.getContentDescription())) {
            setContentDescription(c0186i.getContentDescription());
        }
        C0315au.m7132a(this, c0186i.getTooltipText());
        setVisibility(c0186i.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
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

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.largeLabel;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.largeLabel;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.smallLabel;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.smallLabel;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.labelVisibilityMode;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    setViewLayoutParams(this.icon, this.defaultMargin, 49);
                    setViewValues(this.largeLabel, 1.0f, 1.0f, 0);
                } else {
                    setViewLayoutParams(this.icon, this.defaultMargin, 17);
                    setViewValues(this.largeLabel, 0.5f, 0.5f, 4);
                }
                this.smallLabel.setVisibility(4);
            } else if (i != 1) {
                if (i == 2) {
                    setViewLayoutParams(this.icon, this.defaultMargin, 17);
                    this.largeLabel.setVisibility(8);
                    this.smallLabel.setVisibility(8);
                }
            } else if (z) {
                setViewLayoutParams(this.icon, (int) (this.defaultMargin + this.shiftAmount), 49);
                setViewValues(this.largeLabel, 1.0f, 1.0f, 0);
                TextView textView5 = this.smallLabel;
                float f = this.scaleUpFactor;
                setViewValues(textView5, f, f, 4);
            } else {
                setViewLayoutParams(this.icon, this.defaultMargin, 49);
                TextView textView6 = this.largeLabel;
                float f2 = this.scaleDownFactor;
                setViewValues(textView6, f2, f2, 4);
                setViewValues(this.smallLabel, 1.0f, 1.0f, 0);
            }
        } else if (this.isShifting) {
            if (z) {
                setViewLayoutParams(this.icon, this.defaultMargin, 49);
                setViewValues(this.largeLabel, 1.0f, 1.0f, 0);
            } else {
                setViewLayoutParams(this.icon, this.defaultMargin, 17);
                setViewValues(this.largeLabel, 0.5f, 0.5f, 4);
            }
            this.smallLabel.setVisibility(4);
        } else if (z) {
            setViewLayoutParams(this.icon, (int) (this.defaultMargin + this.shiftAmount), 49);
            setViewValues(this.largeLabel, 1.0f, 1.0f, 0);
            TextView textView7 = this.smallLabel;
            float f3 = this.scaleUpFactor;
            setViewValues(textView7, f3, f3, 4);
        } else {
            setViewLayoutParams(this.icon, this.defaultMargin, 49);
            TextView textView8 = this.largeLabel;
            float f4 = this.scaleDownFactor;
            setViewValues(textView8, f4, f4, 4);
            setViewValues(this.smallLabel, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.smallLabel.setEnabled(z);
        this.largeLabel.setEnabled(z);
        this.icon.setEnabled(z);
        if (z) {
            C0552u.m6266a(this, C0550s.m6296a(getContext(), 1002));
        } else {
            C0552u.m6266a(this, (C0550s) null);
        }
    }

    public void setIcon(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable2 = C0575a.m6122g(drawable).mutate();
            C0575a.m6133a(drawable2, this.iconTint);
        }
        this.icon.setImageDrawable(drawable2);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.icon.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.icon.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.iconTint = colorStateList;
        C0186i c0186i = this.itemData;
        if (c0186i != null) {
            setIcon(c0186i.getIcon());
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : C0409a.m6753a(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        C0552u.m6272a(this, drawable);
    }

    public void setItemPosition(int i) {
        this.itemPosition = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.labelVisibilityMode != i) {
            this.labelVisibilityMode = i;
            if (!(this.itemData != null)) {
                return;
            }
            setChecked(this.itemData.isChecked());
        }
    }

    public void setShifting(boolean z) {
        if (this.isShifting != z) {
            this.isShifting = z;
            if (!(this.itemData != null)) {
                return;
            }
            setChecked(this.itemData.isChecked());
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(int i) {
        C0605i.m5979a(this.largeLabel, i);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        C0605i.m5979a(this.smallLabel, i);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.smallLabel.setText(charSequence);
        this.largeLabel.setText(charSequence);
        C0186i c0186i = this.itemData;
        if (c0186i == null || TextUtils.isEmpty(c0186i.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public boolean showsIcon() {
        return true;
    }
}
