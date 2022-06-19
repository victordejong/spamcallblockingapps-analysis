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
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.widget.C0293g0;
import androidx.core.content.C0586a;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0649k;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.C8004a;
import p020b.p041h.p050l.C1677u;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
import p078c.p084c.p085a.p096b.C1894j;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements AbstractC0195n.AbstractC0196a {

    /* renamed from: d */
    private static final int[] f36203d = {16842912};

    /* renamed from: e */
    private final int f36204e;

    /* renamed from: f */
    private float f36205f;

    /* renamed from: g */
    private float f36206g;

    /* renamed from: h */
    private float f36207h;

    /* renamed from: i */
    private int f36208i;

    /* renamed from: j */
    private boolean f36209j;

    /* renamed from: k */
    private ImageView f36210k;

    /* renamed from: l */
    private final ViewGroup f36211l;

    /* renamed from: m */
    private final TextView f36212m;

    /* renamed from: n */
    private final TextView f36213n;

    /* renamed from: o */
    private int f36214o;

    /* renamed from: p */
    private C0182i f36215p;

    /* renamed from: q */
    private ColorStateList f36216q;

    /* renamed from: r */
    private Drawable f36217r;

    /* renamed from: s */
    private Drawable f36218s;

    /* renamed from: t */
    private BadgeDrawable f36219t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationItemView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView$a.class */
    public class View$OnLayoutChangeListenerC8024a implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC8024a() {
            BottomNavigationItemView.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (BottomNavigationItemView.this.f36210k.getVisibility() == 0) {
                BottomNavigationItemView bottomNavigationItemView = BottomNavigationItemView.this;
                bottomNavigationItemView.m5493m(bottomNavigationItemView.f36210k);
            }
        }
    }

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36214o = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C1892h.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(C1889e.design_bottom_navigation_item_background);
        this.f36204e = resources.getDimensionPixelSize(C1888d.design_bottom_navigation_margin);
        this.f36210k = (ImageView) findViewById(C1890f.icon);
        ViewGroup viewGroup = (ViewGroup) findViewById(C1890f.labelGroup);
        this.f36211l = viewGroup;
        TextView textView = (TextView) findViewById(C1890f.smallLabel);
        this.f36212m = textView;
        TextView textView2 = (TextView) findViewById(C1890f.largeLabel);
        this.f36213n = textView2;
        viewGroup.setTag(C1890f.mtrl_view_tag_bottom_padding, Integer.valueOf(viewGroup.getPaddingBottom()));
        C1679w.m29347B0(textView, 2);
        C1679w.m29347B0(textView2, 2);
        setFocusable(true);
        m5501c(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.f36210k;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC8024a());
        }
    }

    /* renamed from: c */
    private void m5501c(float f, float f2) {
        this.f36205f = f - f2;
        this.f36206g = (f2 * 1.0f) / f;
        this.f36207h = (f * 1.0f) / f2;
    }

    /* renamed from: f */
    private FrameLayout m5500f(View view) {
        ImageView imageView = this.f36210k;
        FrameLayout frameLayout = null;
        if (view == imageView) {
            frameLayout = null;
            if (C8004a.f36128a) {
                frameLayout = (FrameLayout) imageView.getParent();
            }
        }
        return frameLayout;
    }

    /* renamed from: g */
    private boolean m5499g() {
        return this.f36219t != null;
    }

    private int getItemVisiblePosition() {
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

    /* renamed from: i */
    private static void m5497i(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: j */
    private static void m5496j(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: k */
    private void m5495k(View view) {
        if (m5499g() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            C8004a.m5605a(this.f36219t, view, m5500f(view));
        }
    }

    /* renamed from: l */
    private void m5494l(View view) {
        if (!m5499g()) {
            return;
        }
        if (view != null) {
            setClipChildren(true);
            setClipToPadding(true);
            C8004a.m5602d(this.f36219t, view);
        }
        this.f36219t = null;
    }

    /* renamed from: m */
    public void m5493m(View view) {
        if (!m5499g()) {
            return;
        }
        C8004a.m5601e(this.f36219t, view, m5500f(view));
    }

    /* renamed from: n */
    private static void m5492n(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: d */
    public boolean mo4641d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: e */
    public void mo4640e(C0182i c0182i, int i) {
        this.f36215p = c0182i;
        setCheckable(c0182i.isCheckable());
        setChecked(c0182i.isChecked());
        setEnabled(c0182i.isEnabled());
        setIcon(c0182i.getIcon());
        setTitle(c0182i.getTitle());
        setId(c0182i.getItemId());
        if (!TextUtils.isEmpty(c0182i.getContentDescription())) {
            setContentDescription(c0182i.getContentDescription());
        }
        C0293g0.m34913a(this, !TextUtils.isEmpty(c0182i.getTooltipText()) ? c0182i.getTooltipText() : c0182i.getTitle());
        setVisibility(c0182i.isVisible() ? 0 : 8);
    }

    BadgeDrawable getBadge() {
        return this.f36219t;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    public C0182i getItemData() {
        return this.f36215p;
    }

    public int getItemPosition() {
        return this.f36214o;
    }

    /* renamed from: h */
    public void m5498h() {
        m5494l(this.f36210k);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0182i c0182i = this.f36215p;
        if (c0182i != null && c0182i.isCheckable() && this.f36215p.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f36203d);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f36219t;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f36215p.getTitle();
            if (!TextUtils.isEmpty(this.f36215p.getContentDescription())) {
                title = this.f36215p.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f36219t.m5647h()));
        }
        C1634c m29513H0 = C1634c.m29513H0(accessibilityNodeInfo);
        m29513H0.m29483f0(C1634c.C1637c.m29436a(0, 1, getItemVisiblePosition(), 1, false, isSelected()));
        if (isSelected()) {
            m29513H0.m29487d0(false);
            m29513H0.m29501T(C1634c.C1635a.f6286e);
        }
        m29513H0.m29451v0(getResources().getString(C1894j.item_view_role_description));
    }

    public void setBadge(BadgeDrawable badgeDrawable) {
        this.f36219t = badgeDrawable;
        ImageView imageView = this.f36210k;
        if (imageView != null) {
            m5495k(imageView);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.f36213n;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f36213n;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f36212m;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f36212m;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.f36208i;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m5497i(this.f36210k, this.f36204e, 49);
                    ViewGroup viewGroup = this.f36211l;
                    m5492n(viewGroup, ((Integer) viewGroup.getTag(C1890f.mtrl_view_tag_bottom_padding)).intValue());
                    this.f36213n.setVisibility(0);
                } else {
                    m5497i(this.f36210k, this.f36204e, 17);
                    m5492n(this.f36211l, 0);
                    this.f36213n.setVisibility(4);
                }
                this.f36212m.setVisibility(4);
            } else if (i == 1) {
                ViewGroup viewGroup2 = this.f36211l;
                m5492n(viewGroup2, ((Integer) viewGroup2.getTag(C1890f.mtrl_view_tag_bottom_padding)).intValue());
                if (z) {
                    m5497i(this.f36210k, (int) (this.f36204e + this.f36205f), 49);
                    m5496j(this.f36213n, 1.0f, 1.0f, 0);
                    TextView textView5 = this.f36212m;
                    float f = this.f36206g;
                    m5496j(textView5, f, f, 4);
                } else {
                    m5497i(this.f36210k, this.f36204e, 49);
                    TextView textView6 = this.f36213n;
                    float f2 = this.f36207h;
                    m5496j(textView6, f2, f2, 4);
                    m5496j(this.f36212m, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                m5497i(this.f36210k, this.f36204e, 17);
                this.f36213n.setVisibility(8);
                this.f36212m.setVisibility(8);
            }
        } else if (this.f36209j) {
            if (z) {
                m5497i(this.f36210k, this.f36204e, 49);
                ViewGroup viewGroup3 = this.f36211l;
                m5492n(viewGroup3, ((Integer) viewGroup3.getTag(C1890f.mtrl_view_tag_bottom_padding)).intValue());
                this.f36213n.setVisibility(0);
            } else {
                m5497i(this.f36210k, this.f36204e, 17);
                m5492n(this.f36211l, 0);
                this.f36213n.setVisibility(4);
            }
            this.f36212m.setVisibility(4);
        } else {
            ViewGroup viewGroup4 = this.f36211l;
            m5492n(viewGroup4, ((Integer) viewGroup4.getTag(C1890f.mtrl_view_tag_bottom_padding)).intValue());
            if (z) {
                m5497i(this.f36210k, (int) (this.f36204e + this.f36205f), 49);
                m5496j(this.f36213n, 1.0f, 1.0f, 0);
                TextView textView7 = this.f36212m;
                float f3 = this.f36206g;
                m5496j(textView7, f3, f3, 4);
            } else {
                m5497i(this.f36210k, this.f36204e, 49);
                TextView textView8 = this.f36213n;
                float f4 = this.f36207h;
                m5496j(textView8, f4, f4, 4);
                m5496j(this.f36212m, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f36212m.setEnabled(z);
        this.f36213n.setEnabled(z);
        this.f36210k.setEnabled(z);
        if (z) {
            C1679w.m29337G0(this, C1677u.m29351b(getContext(), 1002));
        } else {
            C1679w.m29337G0(this, null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.f36217r) {
            return;
        }
        this.f36217r = drawable;
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            Drawable mutate = C0615a.m33212r(drawable).mutate();
            this.f36218s = mutate;
            ColorStateList colorStateList = this.f36216q;
            drawable2 = mutate;
            if (colorStateList != null) {
                C0615a.m33215o(mutate, colorStateList);
                drawable2 = mutate;
            }
        }
        this.f36210k.setImageDrawable(drawable2);
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f36210k.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f36210k.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f36216q = colorStateList;
        if (this.f36215p == null || (drawable = this.f36218s) == null) {
            return;
        }
        C0615a.m33215o(drawable, colorStateList);
        this.f36218s.invalidateSelf();
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : C0586a.m33348f(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
        }
        C1679w.m29267u0(this, drawable2);
    }

    public void setItemPosition(int i) {
        this.f36214o = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f36208i != i) {
            this.f36208i = i;
            C0182i c0182i = this.f36215p;
            if (!(c0182i != null)) {
                return;
            }
            setChecked(c0182i.isChecked());
        }
    }

    public void setShifting(boolean z) {
        if (this.f36209j != z) {
            this.f36209j = z;
            C0182i c0182i = this.f36215p;
            if (!(c0182i != null)) {
                return;
            }
            setChecked(c0182i.isChecked());
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(int i) {
        C0649k.m33074q(this.f36213n, i);
        m5501c(this.f36212m.getTextSize(), this.f36213n.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        C0649k.m33074q(this.f36212m, i);
        m5501c(this.f36212m.getTextSize(), this.f36213n.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f36212m.setTextColor(colorStateList);
            this.f36213n.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f36212m.setText(charSequence);
        this.f36213n.setText(charSequence);
        C0182i c0182i = this.f36215p;
        if (c0182i == null || TextUtils.isEmpty(c0182i.getContentDescription())) {
            setContentDescription(charSequence);
        }
        C0182i c0182i2 = this.f36215p;
        CharSequence charSequence2 = charSequence;
        if (c0182i2 != null) {
            charSequence2 = TextUtils.isEmpty(c0182i2.getTooltipText()) ? charSequence : this.f36215p.getTooltipText();
        }
        C0293g0.m34913a(this, charSequence2);
    }
}
