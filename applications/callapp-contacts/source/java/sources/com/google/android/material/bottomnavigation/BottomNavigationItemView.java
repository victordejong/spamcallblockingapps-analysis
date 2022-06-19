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
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.C0272i;
import androidx.appcompat.widget.C0374ad;
import androidx.core.content.C0790b;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.C0924t;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import androidx.core.widget.C0959h;
import com.google.android.material.C14376a;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C14419a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements AbstractC0285n.AbstractC0286a {

    /* renamed from: d */
    private static final int[] f52583d = {16842912};

    /* renamed from: a */
    ImageView f52584a;

    /* renamed from: b */
    C0272i f52585b;

    /* renamed from: c */
    BadgeDrawable f52586c;

    /* renamed from: e */
    private final int f52587e;

    /* renamed from: f */
    private float f52588f;

    /* renamed from: g */
    private float f52589g;

    /* renamed from: h */
    private float f52590h;

    /* renamed from: i */
    private int f52591i;

    /* renamed from: j */
    private boolean f52592j;

    /* renamed from: k */
    private final ViewGroup f52593k;

    /* renamed from: l */
    private final TextView f52594l;

    /* renamed from: m */
    private final TextView f52595m;

    /* renamed from: n */
    private int f52596n;

    /* renamed from: o */
    private ColorStateList f52597o;

    /* renamed from: p */
    private Drawable f52598p;

    /* renamed from: q */
    private Drawable f52599q;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f52596n = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C14376a.C14384h.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(C14376a.C14381e.design_bottom_navigation_item_background);
        this.f52587e = resources.getDimensionPixelSize(C14376a.C14380d.design_bottom_navigation_margin);
        this.f52584a = (ImageView) findViewById(C14376a.C14382f.icon);
        ViewGroup viewGroup = (ViewGroup) findViewById(C14376a.C14382f.labelGroup);
        this.f52593k = viewGroup;
        TextView textView = (TextView) findViewById(C14376a.C14382f.smallLabel);
        this.f52594l = textView;
        TextView textView2 = (TextView) findViewById(C14376a.C14382f.largeLabel);
        this.f52595m = textView2;
        viewGroup.setTag(C14376a.C14382f.mtrl_view_tag_bottom_padding, Integer.valueOf(viewGroup.getPaddingBottom()));
        C0926v.m44102c((View) textView, 2);
        C0926v.m44102c((View) textView2, 2);
        setFocusable(true);
        m11156a(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.f52584a;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationItemView.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (BottomNavigationItemView.this.f52584a.getVisibility() == 0) {
                        BottomNavigationItemView bottomNavigationItemView = BottomNavigationItemView.this;
                        BottomNavigationItemView.m11149a(bottomNavigationItemView, bottomNavigationItemView.f52584a);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private FrameLayout m11155a(View view) {
        if (view != this.f52584a || !C14419a.f52510a) {
            return null;
        }
        return (FrameLayout) this.f52584a.getParent();
    }

    /* renamed from: a */
    private void m11156a(float f, float f2) {
        this.f52588f = f - f2;
        this.f52589g = (f2 * 1.0f) / f;
        this.f52590h = (f * 1.0f) / f2;
    }

    /* renamed from: a */
    private static void m11154a(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: a */
    private static void m11153a(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    /* renamed from: a */
    private static void m11152a(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    static /* synthetic */ void m11149a(BottomNavigationItemView bottomNavigationItemView, View view) {
        if (bottomNavigationItemView.m11148c()) {
            C14419a.m11223b(bottomNavigationItemView.f52586c, view, bottomNavigationItemView.m11155a(view));
        }
    }

    /* renamed from: d */
    private int m11147d() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < indexOfChild) {
                View childAt = viewGroup.getChildAt(i);
                int i4 = i3;
                if (childAt instanceof BottomNavigationItemView) {
                    i4 = i3;
                    if (childAt.getVisibility() == 0) {
                        i4 = i3 + 1;
                    }
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final C0272i mo10613a() {
        return this.f52585b;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final void mo10612a(C0272i c0272i) {
        this.f52585b = c0272i;
        setCheckable(c0272i.isCheckable());
        setChecked(c0272i.isChecked());
        setEnabled(c0272i.isEnabled());
        setIcon(c0272i.getIcon());
        setTitle(c0272i.getTitle());
        setId(c0272i.getItemId());
        if (!TextUtils.isEmpty(c0272i.getContentDescription())) {
            setContentDescription(c0272i.getContentDescription());
        }
        C0374ad.m45785a(this, !TextUtils.isEmpty(c0272i.getTooltipText()) ? c0272i.getTooltipText() : c0272i.getTitle());
        setVisibility(c0272i.isVisible() ? 0 : 8);
    }

    /* renamed from: a */
    public final void m11151a(BadgeDrawable badgeDrawable) {
        this.f52586c = badgeDrawable;
        ImageView imageView = this.f52584a;
        if (imageView == null || !m11148c() || imageView == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        C14419a.m11224a(this.f52586c, imageView, m11155a(imageView));
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: b */
    public final boolean mo10611b() {
        return false;
    }

    /* renamed from: c */
    public final boolean m11148c() {
        return this.f52586c != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0272i c0272i = this.f52585b;
        if (c0272i != null && c0272i.isCheckable() && this.f52585b.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f52583d);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f52586c;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f52585b.getTitle();
            if (!TextUtils.isEmpty(this.f52585b.getContentDescription())) {
                title = this.f52585b.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f52586c.m11233c()));
        }
        C0869c m44278a = C0869c.m44278a(accessibilityNodeInfo);
        m44278a.m44264b(C0869c.C0872c.m44234a(0, 1, m11147d(), 1, isSelected()));
        if (isSelected()) {
            m44278a.m44243g(false);
            m44278a.m44266b(C0869c.C0870a.f3662e);
        }
        m44278a.m44244g(getResources().getString(C14376a.C14386j.item_view_role_description));
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.f52595m;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f52595m;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f52594l;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f52594l;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.f52591i;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m11152a(this.f52584a, this.f52587e, 49);
                    ViewGroup viewGroup = this.f52593k;
                    m11153a(viewGroup, ((Integer) viewGroup.getTag(C14376a.C14382f.mtrl_view_tag_bottom_padding)).intValue());
                    this.f52595m.setVisibility(0);
                } else {
                    m11152a(this.f52584a, this.f52587e, 17);
                    m11153a(this.f52593k, 0);
                    this.f52595m.setVisibility(4);
                }
                this.f52594l.setVisibility(4);
            } else if (i == 1) {
                ViewGroup viewGroup2 = this.f52593k;
                m11153a(viewGroup2, ((Integer) viewGroup2.getTag(C14376a.C14382f.mtrl_view_tag_bottom_padding)).intValue());
                if (z) {
                    m11152a(this.f52584a, (int) (this.f52587e + this.f52588f), 49);
                    m11154a(this.f52595m, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f52594l;
                    float f = this.f52589g;
                    m11154a(textView5, f, f, 4);
                } else {
                    m11152a(this.f52584a, this.f52587e, 49);
                    TextView textView6 = this.f52595m;
                    float f2 = this.f52590h;
                    m11154a(textView6, f2, f2, 4);
                    m11154a(this.f52594l, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                m11152a(this.f52584a, this.f52587e, 17);
                this.f52595m.setVisibility(8);
                this.f52594l.setVisibility(8);
            }
        } else if (this.f52592j) {
            if (z) {
                m11152a(this.f52584a, this.f52587e, 49);
                ViewGroup viewGroup3 = this.f52593k;
                m11153a(viewGroup3, ((Integer) viewGroup3.getTag(C14376a.C14382f.mtrl_view_tag_bottom_padding)).intValue());
                this.f52595m.setVisibility(0);
            } else {
                m11152a(this.f52584a, this.f52587e, 17);
                m11153a(this.f52593k, 0);
                this.f52595m.setVisibility(4);
            }
            this.f52594l.setVisibility(4);
        } else {
            ViewGroup viewGroup4 = this.f52593k;
            m11153a(viewGroup4, ((Integer) viewGroup4.getTag(C14376a.C14382f.mtrl_view_tag_bottom_padding)).intValue());
            if (z) {
                m11152a(this.f52584a, (int) (this.f52587e + this.f52588f), 49);
                m11154a(this.f52595m, 1.0f, 1.0f, 0);
                TextView textView7 = this.f52594l;
                float f3 = this.f52589g;
                m11154a(textView7, f3, f3, 4);
            } else {
                m11152a(this.f52584a, this.f52587e, 49);
                TextView textView8 = this.f52595m;
                float f4 = this.f52590h;
                m11154a(textView8, f4, f4, 4);
                m11154a(this.f52594l, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f52594l.setEnabled(z);
        this.f52595m.setEnabled(z);
        this.f52584a.setEnabled(z);
        if (z) {
            C0926v.m44119a(this, C0924t.m44159a(getContext()));
        } else {
            C0926v.m44119a(this, (C0924t) null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f52598p) {
            return;
        }
        this.f52598p = drawable;
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            Drawable mutate = C0840a.m44345f(drawable).mutate();
            this.f52599q = mutate;
            ColorStateList colorStateList = this.f52597o;
            drawable2 = mutate;
            if (colorStateList != null) {
                C0840a.m44355a(mutate, colorStateList);
                drawable2 = mutate;
            }
        }
        this.f52584a.setImageDrawable(drawable2);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f52584a.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f52584a.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f52597o = colorStateList;
        if (this.f52585b == null || (drawable = this.f52599q) == null) {
            return;
        }
        C0840a.m44355a(drawable, colorStateList);
        this.f52599q.invalidateSelf();
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : C0790b.m44502a(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
        }
        C0926v.m44128a(this, drawable2);
    }

    public void setItemPosition(int i) {
        this.f52596n = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f52591i != i) {
            this.f52591i = i;
            C0272i c0272i = this.f52585b;
            if (!(c0272i != null)) {
                return;
            }
            setChecked(c0272i.isChecked());
        }
    }

    public void setShifting(boolean z) {
        if (this.f52592j != z) {
            this.f52592j = z;
            C0272i c0272i = this.f52585b;
            if (!(c0272i != null)) {
                return;
            }
            setChecked(c0272i.isChecked());
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(int i) {
        C0959h.m43965a(this.f52595m, i);
        m11156a(this.f52594l.getTextSize(), this.f52595m.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        C0959h.m43965a(this.f52594l, i);
        m11156a(this.f52594l.getTextSize(), this.f52595m.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f52594l.setTextColor(colorStateList);
            this.f52595m.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f52594l.setText(charSequence);
        this.f52595m.setText(charSequence);
        C0272i c0272i = this.f52585b;
        if (c0272i == null || TextUtils.isEmpty(c0272i.getContentDescription())) {
            setContentDescription(charSequence);
        }
        C0272i c0272i2 = this.f52585b;
        CharSequence charSequence2 = charSequence;
        if (c0272i2 != null) {
            charSequence2 = TextUtils.isEmpty(c0272i2.getTooltipText()) ? charSequence : this.f52585b.getTooltipText();
        }
        C0374ad.m45785a(this, charSequence2);
    }
}
