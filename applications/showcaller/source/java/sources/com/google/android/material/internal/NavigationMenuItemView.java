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
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0182i;
import androidx.appcompat.widget.C0293g0;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.p007d.C0605f;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0649k;
import p020b.p021a.C1423a;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1889e;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1892h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements AbstractC0195n.AbstractC0196a {

    /* renamed from: y */
    private static final int[] f36887y = {16842912};

    /* renamed from: A */
    private boolean f36888A;

    /* renamed from: B */
    boolean f36889B;

    /* renamed from: C */
    private final CheckedTextView f36890C;

    /* renamed from: D */
    private FrameLayout f36891D;

    /* renamed from: E */
    private C0182i f36892E;

    /* renamed from: F */
    private ColorStateList f36893F;

    /* renamed from: G */
    private boolean f36894G;

    /* renamed from: H */
    private Drawable f36895H;

    /* renamed from: I */
    private final C1599a f36896I;

    /* renamed from: z */
    private int f36897z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView$a.class */
    public class C8168a extends C1599a {
        C8168a() {
            NavigationMenuItemView.this = r4;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            super.mo3869g(view, c1634c);
            c1634c.m29493a0(NavigationMenuItemView.this.f36889B);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C8168a c8168a = new C8168a();
        this.f36896I = c8168a;
        setOrientation(0);
        LayoutInflater.from(context).inflate(C1892h.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C1888d.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C1890f.design_menu_item_text);
        this.f36890C = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        C1679w.m29273r0(checkedTextView, c8168a);
    }

    /* renamed from: B */
    private void m4645B() {
        if (m4642E()) {
            this.f36890C.setVisibility(8);
            FrameLayout frameLayout = this.f36891D;
            if (frameLayout == null) {
                return;
            }
            LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams).width = -1;
            this.f36891D.setLayoutParams(layoutParams);
            return;
        }
        this.f36890C.setVisibility(0);
        FrameLayout frameLayout2 = this.f36891D;
        if (frameLayout2 == null) {
            return;
        }
        LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
        ((LinearLayout.LayoutParams) layoutParams2).width = -2;
        this.f36891D.setLayoutParams(layoutParams2);
    }

    /* renamed from: C */
    private StateListDrawable m4644C() {
        TypedValue typedValue = new TypedValue();
        if (getContext().getTheme().resolveAttribute(C1423a.colorControlHighlight, typedValue, true)) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(f36887y, new ColorDrawable(typedValue.data));
            stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            return stateListDrawable;
        }
        return null;
    }

    /* renamed from: E */
    private boolean m4642E() {
        return this.f36892E.getTitle() == null && this.f36892E.getIcon() == null && this.f36892E.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f36891D == null) {
                this.f36891D = (FrameLayout) ((ViewStub) findViewById(C1890f.design_menu_item_action_area_stub)).inflate();
            }
            this.f36891D.removeAllViews();
            this.f36891D.addView(view);
        }
    }

    /* renamed from: D */
    public void m4643D() {
        FrameLayout frameLayout = this.f36891D;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f36890C.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: d */
    public boolean mo4641d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: e */
    public void mo4640e(C0182i c0182i, int i) {
        this.f36892E = c0182i;
        if (c0182i.getItemId() > 0) {
            setId(c0182i.getItemId());
        }
        setVisibility(c0182i.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            C1679w.m29267u0(this, m4644C());
        }
        setCheckable(c0182i.isCheckable());
        setChecked(c0182i.isChecked());
        setEnabled(c0182i.isEnabled());
        setTitle(c0182i.getTitle());
        setIcon(c0182i.getIcon());
        setActionView(c0182i.getActionView());
        setContentDescription(c0182i.getContentDescription());
        C0293g0.m34913a(this, c0182i.getTooltipText());
        m4645B();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    public C0182i getItemData() {
        return this.f36892E;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0182i c0182i = this.f36892E;
        if (c0182i != null && c0182i.isCheckable() && this.f36892E.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f36887y);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f36889B != z) {
            this.f36889B = z;
            this.f36896I.mo29644l(this.f36890C, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f36890C.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f36894G) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C0615a.m33212r(drawable).mutate();
                C0615a.m33215o(drawable2, this.f36893F);
            }
            int i = this.f36897z;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f36888A) {
            if (this.f36895H == null) {
                Drawable m33274d = C0605f.m33274d(getResources(), C1889e.navigation_empty_icon, getContext().getTheme());
                this.f36895H = m33274d;
                if (m33274d != null) {
                    int i2 = this.f36897z;
                    m33274d.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f36895H;
        }
        C0649k.m33079l(this.f36890C, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f36890C.setCompoundDrawablePadding(i);
    }

    public void setIconSize(int i) {
        this.f36897z = i;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f36893F = colorStateList;
        this.f36894G = colorStateList != null;
        C0182i c0182i = this.f36892E;
        if (c0182i != null) {
            setIcon(c0182i.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f36890C.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f36888A = z;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        C0649k.m33074q(this.f36890C, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f36890C.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f36890C.setText(charSequence);
    }
}
