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
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.C0203i;
import androidx.appcompat.widget.C0321ar;
import androidx.core.graphics.drawable.C0535a;
import androidx.core.p017a.C0438a;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0593s;
import androidx.core.p026h.C0595u;
import androidx.core.widget.C0628i;
import com.google.android.material.C4492a;
import com.google.android.material.p143b.C4529a;
import com.google.android.material.p143b.C4532b;
/* renamed from: com.google.android.material.bottomnavigation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/a.class */
public class C4554a extends FrameLayout implements AbstractC0216n.AbstractC0217a {

    /* renamed from: a */
    private static final int[] f19750a = {16842912};

    /* renamed from: b */
    private final int f19751b;

    /* renamed from: c */
    private float f19752c;

    /* renamed from: d */
    private float f19753d;

    /* renamed from: e */
    private float f19754e;

    /* renamed from: f */
    private int f19755f;

    /* renamed from: g */
    private boolean f19756g;

    /* renamed from: h */
    private ImageView f19757h;

    /* renamed from: i */
    private final TextView f19758i;

    /* renamed from: j */
    private final TextView f19759j;

    /* renamed from: k */
    private int f19760k;

    /* renamed from: l */
    private C0203i f19761l;

    /* renamed from: m */
    private ColorStateList f19762m;

    /* renamed from: n */
    private Drawable f19763n;

    /* renamed from: o */
    private Drawable f19764o;

    /* renamed from: p */
    private C4529a f19765p;

    public C4554a(Context context) {
        this(context, null);
    }

    public C4554a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4554a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19760k = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C4492a.C4500h.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(C4492a.C4497e.design_bottom_navigation_item_background);
        this.f19751b = resources.getDimensionPixelSize(C4492a.C4496d.design_bottom_navigation_margin);
        this.f19757h = (ImageView) findViewById(C4492a.C4498f.icon);
        this.f19758i = (TextView) findViewById(C4492a.C4498f.smallLabel);
        this.f19759j = (TextView) findViewById(C4492a.C4498f.largeLabel);
        C0595u.m20335b(this.f19758i, 2);
        C0595u.m20335b(this.f19759j, 2);
        setFocusable(true);
        m3612a(this.f19758i.getTextSize(), this.f19759j.getTextSize());
        if (this.f19757h != null) {
            this.f19757h.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomnavigation.a.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (C4554a.this.f19757h.getVisibility() == 0) {
                        C4554a.this.m3611a(C4554a.this.f19757h);
                    }
                }
            });
        }
        C0595u.m20345a(this, (C0549a) null);
    }

    /* renamed from: a */
    private void m3612a(float f, float f2) {
        this.f19752c = f - f2;
        this.f19753d = (1.0f * f2) / f;
        this.f19754e = (1.0f * f) / f2;
    }

    /* renamed from: a */
    public void m3611a(View view) {
        if (!m3604c()) {
            return;
        }
        C4532b.m3692c(this.f19765p, view, m3602d(view));
    }

    /* renamed from: a */
    private void m3610a(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: a */
    private void m3609a(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: b */
    private void m3605b(View view) {
        if (m3604c() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            C4532b.m3694a(this.f19765p, view, m3602d(view));
        }
    }

    /* renamed from: c */
    private void m3603c(View view) {
        if (!m3604c()) {
            return;
        }
        if (view != null) {
            setClipChildren(true);
            setClipToPadding(true);
            C4532b.m3693b(this.f19765p, view, m3602d(view));
        }
        this.f19765p = null;
    }

    /* renamed from: c */
    private boolean m3604c() {
        return this.f19765p != null;
    }

    /* renamed from: d */
    private FrameLayout m3602d(View view) {
        FrameLayout frameLayout = null;
        if (view == this.f19757h) {
            frameLayout = null;
            if (C4532b.f19679a) {
                frameLayout = (FrameLayout) this.f19757h.getParent();
            }
        }
        return frameLayout;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public void mo2909a(C0203i c0203i, int i) {
        this.f19761l = c0203i;
        setCheckable(c0203i.isCheckable());
        setChecked(c0203i.isChecked());
        setEnabled(c0203i.isEnabled());
        setIcon(c0203i.getIcon());
        setTitle(c0203i.getTitle());
        setId(c0203i.getItemId());
        if (!TextUtils.isEmpty(c0203i.getContentDescription())) {
            setContentDescription(c0203i.getContentDescription());
        }
        C0321ar.m21406a(this, !TextUtils.isEmpty(c0203i.getTooltipText()) ? c0203i.getTooltipText() : c0203i.getTitle());
        setVisibility(c0203i.isVisible() ? 0 : 8);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public boolean mo2910a() {
        return false;
    }

    /* renamed from: b */
    public void m3606b() {
        m3603c(this.f19757h);
    }

    C4529a getBadge() {
        return this.f19765p;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    public C0203i getItemData() {
        return this.f19761l;
    }

    public int getItemPosition() {
        return this.f19760k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f19761l != null && this.f19761l.isCheckable() && this.f19761l.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f19750a);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.f19765p == null || !this.f19765p.isVisible()) {
            return;
        }
        CharSequence title = this.f19761l.getTitle();
        if (!TextUtils.isEmpty(this.f19761l.getContentDescription())) {
            title = this.f19761l.getContentDescription();
        }
        accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f19765p.m3718f()));
    }

    public void setBadge(C4529a c4529a) {
        this.f19765p = c4529a;
        if (this.f19757h != null) {
            m3605b(this.f19757h);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        this.f19759j.setPivotX(this.f19759j.getWidth() / 2);
        this.f19759j.setPivotY(this.f19759j.getBaseline());
        this.f19758i.setPivotX(this.f19758i.getWidth() / 2);
        this.f19758i.setPivotY(this.f19758i.getBaseline());
        switch (this.f19755f) {
            case -1:
                if (!this.f19756g) {
                    if (!z) {
                        m3609a(this.f19757h, this.f19751b, 49);
                        m3610a(this.f19759j, this.f19754e, this.f19754e, 4);
                        m3610a(this.f19758i, 1.0f, 1.0f, 0);
                        break;
                    } else {
                        m3609a(this.f19757h, (int) (this.f19751b + this.f19752c), 49);
                        m3610a(this.f19759j, 1.0f, 1.0f, 0);
                        m3610a(this.f19758i, this.f19753d, this.f19753d, 4);
                        break;
                    }
                } else {
                    if (z) {
                        m3609a(this.f19757h, this.f19751b, 49);
                        m3610a(this.f19759j, 1.0f, 1.0f, 0);
                    } else {
                        m3609a(this.f19757h, this.f19751b, 17);
                        m3610a(this.f19759j, 0.5f, 0.5f, 4);
                    }
                    this.f19758i.setVisibility(4);
                    break;
                }
            case 0:
                if (z) {
                    m3609a(this.f19757h, this.f19751b, 49);
                    m3610a(this.f19759j, 1.0f, 1.0f, 0);
                } else {
                    m3609a(this.f19757h, this.f19751b, 17);
                    m3610a(this.f19759j, 0.5f, 0.5f, 4);
                }
                this.f19758i.setVisibility(4);
                break;
            case 1:
                if (!z) {
                    m3609a(this.f19757h, this.f19751b, 49);
                    m3610a(this.f19759j, this.f19754e, this.f19754e, 4);
                    m3610a(this.f19758i, 1.0f, 1.0f, 0);
                    break;
                } else {
                    m3609a(this.f19757h, (int) (this.f19751b + this.f19752c), 49);
                    m3610a(this.f19759j, 1.0f, 1.0f, 0);
                    m3610a(this.f19758i, this.f19753d, this.f19753d, 4);
                    break;
                }
            case 2:
                m3609a(this.f19757h, this.f19751b, 17);
                this.f19759j.setVisibility(8);
                this.f19758i.setVisibility(8);
                break;
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f19758i.setEnabled(z);
        this.f19759j.setEnabled(z);
        this.f19757h.setEnabled(z);
        if (z) {
            C0595u.m20342a(this, C0593s.m20372a(getContext(), 1002));
        } else {
            C0595u.m20342a(this, (C0593s) null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f19763n) {
            return;
        }
        this.f19763n = drawable;
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            Drawable mutate = C0535a.m20584g(drawable).mutate();
            this.f19764o = mutate;
            drawable2 = mutate;
            if (this.f19762m != null) {
                C0535a.m20595a(this.f19764o, this.f19762m);
                drawable2 = mutate;
            }
        }
        this.f19757h.setImageDrawable(drawable2);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f19757h.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f19757h.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f19762m = colorStateList;
        if (this.f19761l == null || this.f19764o == null) {
            return;
        }
        C0535a.m20595a(this.f19764o, this.f19762m);
        this.f19764o.invalidateSelf();
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : C0438a.m20900a(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
        }
        C0595u.m20350a(this, drawable2);
    }

    public void setItemPosition(int i) {
        this.f19760k = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f19755f != i) {
            this.f19755f = i;
            if (!(this.f19761l != null)) {
                return;
            }
            setChecked(this.f19761l.isChecked());
        }
    }

    public void setShifting(boolean z) {
        if (this.f19756g != z) {
            this.f19756g = z;
            if (!(this.f19761l != null)) {
                return;
            }
            setChecked(this.f19761l.isChecked());
        }
    }

    public void setTextAppearanceActive(int i) {
        C0628i.m20144a(this.f19759j, i);
        m3612a(this.f19758i.getTextSize(), this.f19759j.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        C0628i.m20144a(this.f19758i, i);
        m3612a(this.f19758i.getTextSize(), this.f19759j.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f19758i.setTextColor(colorStateList);
            this.f19759j.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f19758i.setText(charSequence);
        this.f19759j.setText(charSequence);
        if (this.f19761l == null || TextUtils.isEmpty(this.f19761l.getContentDescription())) {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = charSequence;
        if (this.f19761l != null) {
            charSequence2 = TextUtils.isEmpty(this.f19761l.getTooltipText()) ? charSequence : this.f19761l.getTooltipText();
        }
        C0321ar.m21406a(this, charSequence2);
    }
}
