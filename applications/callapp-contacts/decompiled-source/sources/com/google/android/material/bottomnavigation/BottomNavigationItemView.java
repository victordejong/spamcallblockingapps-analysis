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
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ad;
import androidx.core.content.b;
import androidx.core.view.a.c;
import androidx.core.view.t;
import androidx.core.view.v;
import androidx.core.widget.h;
import com.google.android.material.a;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements n.a {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f30291d = {16842912};

    /* renamed from: a  reason: collision with root package name */
    ImageView f30292a;

    /* renamed from: b  reason: collision with root package name */
    i f30293b;

    /* renamed from: c  reason: collision with root package name */
    BadgeDrawable f30294c;
    private final int e;
    private float f;
    private float g;
    private float h;
    private int i;
    private boolean j;
    private final ViewGroup k;
    private final TextView l;
    private final TextView m;
    private int n;
    private ColorStateList o;
    private Drawable p;
    private Drawable q;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(a.h.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(a.e.design_bottom_navigation_item_background);
        this.e = resources.getDimensionPixelSize(a.d.design_bottom_navigation_margin);
        this.f30292a = (ImageView) findViewById(a.f.icon);
        ViewGroup viewGroup = (ViewGroup) findViewById(a.f.labelGroup);
        this.k = viewGroup;
        TextView textView = (TextView) findViewById(a.f.smallLabel);
        this.l = textView;
        TextView textView2 = (TextView) findViewById(a.f.largeLabel);
        this.m = textView2;
        viewGroup.setTag(a.f.mtrl_view_tag_bottom_padding, Integer.valueOf(viewGroup.getPaddingBottom()));
        v.c((View) textView, 2);
        v.c((View) textView2, 2);
        setFocusable(true);
        a(textView.getTextSize(), textView2.getTextSize());
        ImageView imageView = this.f30292a;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationItemView.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (BottomNavigationItemView.this.f30292a.getVisibility() == 0) {
                        BottomNavigationItemView bottomNavigationItemView = BottomNavigationItemView.this;
                        BottomNavigationItemView.a(bottomNavigationItemView, bottomNavigationItemView.f30292a);
                    }
                }
            });
        }
    }

    private FrameLayout a(View view) {
        if (view != this.f30292a || !com.google.android.material.badge.a.f30251a) {
            return null;
        }
        return (FrameLayout) this.f30292a.getParent();
    }

    private void a(float f, float f2) {
        this.f = f - f2;
        this.g = (f2 * 1.0f) / f;
        this.h = (f * 1.0f) / f2;
    }

    private static void a(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    private static void a(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    private static void a(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    static /* synthetic */ void a(BottomNavigationItemView bottomNavigationItemView, View view) {
        if (bottomNavigationItemView.c()) {
            com.google.android.material.badge.a.b(bottomNavigationItemView.f30294c, view, bottomNavigationItemView.a(view));
        }
    }

    private int d() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < indexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            i = i;
            if (childAt instanceof BottomNavigationItemView) {
                i = i;
                if (childAt.getVisibility() == 0) {
                    i++;
                }
            }
        }
        return i;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final i a() {
        return this.f30293b;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final void a(i iVar) {
        this.f30293b = iVar;
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setIcon(iVar.getIcon());
        setTitle(iVar.getTitle());
        setId(iVar.getItemId());
        if (!TextUtils.isEmpty(iVar.getContentDescription())) {
            setContentDescription(iVar.getContentDescription());
        }
        ad.a(this, !TextUtils.isEmpty(iVar.getTooltipText()) ? iVar.getTooltipText() : iVar.getTitle());
        setVisibility(iVar.isVisible() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(BadgeDrawable badgeDrawable) {
        this.f30294c = badgeDrawable;
        ImageView imageView = this.f30292a;
        if (imageView != null && c() && imageView != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.a.a(this.f30294c, imageView, a(imageView));
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.f30294c != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        i iVar = this.f30293b;
        if (iVar != null && iVar.isCheckable() && this.f30293b.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f30291d);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f30294c;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f30293b.getTitle();
            if (!TextUtils.isEmpty(this.f30293b.getContentDescription())) {
                title = this.f30293b.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f30294c.c()));
        }
        c a2 = c.a(accessibilityNodeInfo);
        a2.b(c.C0052c.a(0, 1, d(), 1, isSelected()));
        if (isSelected()) {
            a2.g(false);
            a2.b(c.a.e);
        }
        a2.g(getResources().getString(a.j.item_view_role_description));
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.m;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.m;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.l;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.l;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.i;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    a(this.f30292a, this.e, 49);
                    ViewGroup viewGroup = this.k;
                    a(viewGroup, ((Integer) viewGroup.getTag(a.f.mtrl_view_tag_bottom_padding)).intValue());
                    this.m.setVisibility(0);
                } else {
                    a(this.f30292a, this.e, 17);
                    a(this.k, 0);
                    this.m.setVisibility(4);
                }
                this.l.setVisibility(4);
            } else if (i == 1) {
                ViewGroup viewGroup2 = this.k;
                a(viewGroup2, ((Integer) viewGroup2.getTag(a.f.mtrl_view_tag_bottom_padding)).intValue());
                if (z) {
                    a(this.f30292a, (int) (this.e + this.f), 49);
                    a(this.m, 1.0f, 1.0f, 0);
                    TextView textView5 = this.l;
                    float f = this.g;
                    a(textView5, f, f, 4);
                } else {
                    a(this.f30292a, this.e, 49);
                    TextView textView6 = this.m;
                    float f2 = this.h;
                    a(textView6, f2, f2, 4);
                    a(this.l, 1.0f, 1.0f, 0);
                }
            } else if (i == 2) {
                a(this.f30292a, this.e, 17);
                this.m.setVisibility(8);
                this.l.setVisibility(8);
            }
        } else if (this.j) {
            if (z) {
                a(this.f30292a, this.e, 49);
                ViewGroup viewGroup3 = this.k;
                a(viewGroup3, ((Integer) viewGroup3.getTag(a.f.mtrl_view_tag_bottom_padding)).intValue());
                this.m.setVisibility(0);
            } else {
                a(this.f30292a, this.e, 17);
                a(this.k, 0);
                this.m.setVisibility(4);
            }
            this.l.setVisibility(4);
        } else {
            ViewGroup viewGroup4 = this.k;
            a(viewGroup4, ((Integer) viewGroup4.getTag(a.f.mtrl_view_tag_bottom_padding)).intValue());
            if (z) {
                a(this.f30292a, (int) (this.e + this.f), 49);
                a(this.m, 1.0f, 1.0f, 0);
                TextView textView7 = this.l;
                float f3 = this.g;
                a(textView7, f3, f3, 4);
            } else {
                a(this.f30292a, this.e, 49);
                TextView textView8 = this.m;
                float f4 = this.h;
                a(textView8, f4, f4, 4);
                a(this.l, 1.0f, 1.0f, 0);
            }
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.l.setEnabled(z);
        this.m.setEnabled(z);
        this.f30292a.setEnabled(z);
        if (z) {
            v.a(this, t.a(getContext()));
        } else {
            v.a(this, (t) null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable != this.p) {
            this.p = drawable;
            Drawable drawable2 = drawable;
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                Drawable mutate = androidx.core.graphics.drawable.a.f(drawable).mutate();
                this.q = mutate;
                ColorStateList colorStateList = this.o;
                drawable2 = mutate;
                if (colorStateList != null) {
                    androidx.core.graphics.drawable.a.a(mutate, colorStateList);
                    drawable2 = mutate;
                }
            }
            this.f30292a.setImageDrawable(drawable2);
        }
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f30292a.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f30292a.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.o = colorStateList;
        if (this.f30293b != null && (drawable = this.q) != null) {
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            this.q.invalidateSelf();
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : b.a(getContext(), i));
    }

    public void setItemBackground(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
        }
        v.a(this, drawable2);
    }

    public void setItemPosition(int i) {
        this.n = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.i != i) {
            this.i = i;
            i iVar = this.f30293b;
            if (iVar != null) {
                setChecked(iVar.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.j != z) {
            this.j = z;
            i iVar = this.f30293b;
            if (iVar != null) {
                setChecked(iVar.isChecked());
            }
        }
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearanceActive(int i) {
        h.a(this.m, i);
        a(this.l.getTextSize(), this.m.getTextSize());
    }

    public void setTextAppearanceInactive(int i) {
        h.a(this.l, i);
        a(this.l.getTextSize(), this.m.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.l.setTextColor(colorStateList);
            this.m.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.l.setText(charSequence);
        this.m.setText(charSequence);
        i iVar = this.f30293b;
        if (iVar == null || TextUtils.isEmpty(iVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
        i iVar2 = this.f30293b;
        CharSequence charSequence2 = charSequence;
        if (iVar2 != null) {
            charSequence2 = TextUtils.isEmpty(iVar2.getTooltipText()) ? charSequence : this.f30293b.getTooltipText();
        }
        ad.a(this, charSequence2);
    }
}
