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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements MenuView.ItemView {

    /* renamed from: l */
    public static final int[] f7338l = {16842912};

    /* renamed from: a */
    public final int f7339a;

    /* renamed from: b */
    public float f7340b;

    /* renamed from: c */
    public float f7341c;

    /* renamed from: d */
    public float f7342d;

    /* renamed from: e */
    public int f7343e;

    /* renamed from: f */
    public boolean f7344f;

    /* renamed from: g */
    public ImageView f7345g;

    /* renamed from: h */
    public final TextView f7346h;

    /* renamed from: i */
    public final TextView f7347i;

    /* renamed from: j */
    public MenuItemImpl f7348j;

    /* renamed from: k */
    public ColorStateList f7349k;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(R$layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(R$drawable.design_bottom_navigation_item_background);
        this.f7339a = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_margin);
        this.f7345g = (ImageView) findViewById(R$id.icon);
        this.f7346h = (TextView) findViewById(R$id.smallLabel);
        this.f7347i = (TextView) findViewById(R$id.largeLabel);
        ViewCompat.setImportantForAccessibility(this.f7346h, 2);
        ViewCompat.setImportantForAccessibility(this.f7347i, 2);
        setFocusable(true);
        m31496a(this.f7346h.getTextSize(), this.f7347i.getTextSize());
    }

    /* renamed from: a */
    public final void m31496a(float f, float f2) {
        this.f7340b = f - f2;
        this.f7341c = (f2 * 1.0f) / f;
        this.f7342d = (f * 1.0f) / f2;
    }

    /* renamed from: a */
    public void m31495a(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f7345g.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f7345g.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m31494a(ColorStateList colorStateList) {
        this.f7349k = colorStateList;
        MenuItemImpl menuItemImpl = this.f7348j;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    /* renamed from: a */
    public void m31493a(@Nullable Drawable drawable) {
        ViewCompat.setBackground(this, drawable);
    }

    /* renamed from: a */
    public final void m31492a(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: a */
    public final void m31491a(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m31490a(boolean z) {
        if (this.f7344f != z) {
            this.f7344f = z;
            if (this.f7348j != null) {
                setChecked(this.f7348j.isChecked());
            }
        }
    }

    /* renamed from: b */
    public void m31489b(int i) {
        m31493a(i == 0 ? null : ContextCompat.getDrawable(getContext(), i));
    }

    /* renamed from: b */
    public void m31488b(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f7346h.setTextColor(colorStateList);
            this.f7347i.setTextColor(colorStateList);
        }
    }

    /* renamed from: c */
    public void m31487c(int i) {
    }

    /* renamed from: d */
    public void m31486d(int i) {
        if (this.f7343e != i) {
            this.f7343e = i;
            if (this.f7348j != null) {
                setChecked(this.f7348j.isChecked());
            }
        }
    }

    /* renamed from: e */
    public void m31485e(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f7347i, i);
        m31496a(this.f7346h.getTextSize(), this.f7347i.getTextSize());
    }

    /* renamed from: f */
    public void m31484f(@StyleRes int i) {
        TextViewCompat.setTextAppearance(this.f7346h, i);
        m31496a(this.f7346h.getTextSize(), this.f7347i.getTextSize());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f7348j;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.f7348j = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f7348j;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f7348j.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f7338l);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        TextView textView = this.f7347i;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f7347i;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f7346h;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f7346h;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.f7343e;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m31491a(this.f7345g, this.f7339a, 49);
                    m31492a(this.f7347i, 1.0f, 1.0f, 0);
                } else {
                    m31491a(this.f7345g, this.f7339a, 17);
                    m31492a(this.f7347i, 0.5f, 0.5f, 4);
                }
                this.f7346h.setVisibility(4);
            } else if (i != 1) {
                if (i == 2) {
                    m31491a(this.f7345g, this.f7339a, 17);
                    this.f7347i.setVisibility(8);
                    this.f7346h.setVisibility(8);
                }
            } else if (z) {
                m31491a(this.f7345g, (int) (this.f7339a + this.f7340b), 49);
                m31492a(this.f7347i, 1.0f, 1.0f, 0);
                TextView textView5 = this.f7346h;
                float f = this.f7341c;
                m31492a(textView5, f, f, 4);
            } else {
                m31491a(this.f7345g, this.f7339a, 49);
                TextView textView6 = this.f7347i;
                float f2 = this.f7342d;
                m31492a(textView6, f2, f2, 4);
                m31492a(this.f7346h, 1.0f, 1.0f, 0);
            }
        } else if (this.f7344f) {
            if (z) {
                m31491a(this.f7345g, this.f7339a, 49);
                m31492a(this.f7347i, 1.0f, 1.0f, 0);
            } else {
                m31491a(this.f7345g, this.f7339a, 17);
                m31492a(this.f7347i, 0.5f, 0.5f, 4);
            }
            this.f7346h.setVisibility(4);
        } else if (z) {
            m31491a(this.f7345g, (int) (this.f7339a + this.f7340b), 49);
            m31492a(this.f7347i, 1.0f, 1.0f, 0);
            TextView textView7 = this.f7346h;
            float f3 = this.f7341c;
            m31492a(textView7, f3, f3, 4);
        } else {
            m31491a(this.f7345g, this.f7339a, 49);
            TextView textView8 = this.f7347i;
            float f4 = this.f7342d;
            m31492a(textView8, f4, f4, 4);
            m31492a(this.f7346h, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View, androidx.appcompat.view.menu.MenuView.ItemView
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f7346h.setEnabled(z);
        this.f7347i.setEnabled(z);
        this.f7345g.setEnabled(z);
        if (z) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable2 = DrawableCompat.wrap(drawable).mutate();
            DrawableCompat.setTintList(drawable2, this.f7349k);
        }
        this.f7345g.setImageDrawable(drawable2);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f7346h.setText(charSequence);
        this.f7347i.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f7348j;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
