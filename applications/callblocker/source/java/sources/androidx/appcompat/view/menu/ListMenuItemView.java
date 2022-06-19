package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.widget.C0317ap;
import androidx.core.p026h.C0595u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, AbstractC0216n.AbstractC0217a {

    /* renamed from: a */
    private C0203i f663a;

    /* renamed from: b */
    private ImageView f664b;

    /* renamed from: c */
    private RadioButton f665c;

    /* renamed from: d */
    private TextView f666d;

    /* renamed from: e */
    private CheckBox f667e;

    /* renamed from: f */
    private TextView f668f;

    /* renamed from: g */
    private ImageView f669g;

    /* renamed from: h */
    private ImageView f670h;

    /* renamed from: i */
    private LinearLayout f671i;

    /* renamed from: j */
    private Drawable f672j;

    /* renamed from: k */
    private int f673k;

    /* renamed from: l */
    private Context f674l;

    /* renamed from: m */
    private boolean f675m;

    /* renamed from: n */
    private Drawable f676n;

    /* renamed from: o */
    private boolean f677o;

    /* renamed from: p */
    private int f678p;

    /* renamed from: q */
    private LayoutInflater f679q;

    /* renamed from: r */
    private boolean f680r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0317ap m21433a = C0317ap.m21433a(getContext(), attributeSet, C0083a.C0093j.MenuView, i, 0);
        this.f672j = m21433a.m21440a(C0083a.C0093j.MenuView_android_itemBackground);
        this.f673k = m21433a.m21420g(C0083a.C0093j.MenuView_android_itemTextAppearance, -1);
        this.f675m = m21433a.m21436a(C0083a.C0093j.MenuView_preserveIconSpacing, false);
        this.f674l = context;
        this.f676n = m21433a.m21440a(C0083a.C0093j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0083a.C0084a.dropDownListViewStyle, 0);
        this.f677o = obtainStyledAttributes.hasValue(0);
        m21433a.m21441a();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m21934a(View view) {
        m21933a(view, -1);
    }

    /* renamed from: a */
    private void m21933a(View view, int i) {
        if (this.f671i != null) {
            this.f671i.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: b */
    private void m21931b() {
        this.f664b = (ImageView) getInflater().inflate(C0083a.C0090g.abc_list_menu_item_icon, (ViewGroup) this, false);
        m21933a(this.f664b, 0);
    }

    /* renamed from: c */
    private void m21930c() {
        this.f665c = (RadioButton) getInflater().inflate(C0083a.C0090g.abc_list_menu_item_radio, (ViewGroup) this, false);
        m21934a(this.f665c);
    }

    /* renamed from: d */
    private void m21929d() {
        this.f667e = (CheckBox) getInflater().inflate(C0083a.C0090g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        m21934a(this.f667e);
    }

    private LayoutInflater getInflater() {
        if (this.f679q == null) {
            this.f679q = LayoutInflater.from(getContext());
        }
        return this.f679q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        if (this.f669g != null) {
            this.f669g.setVisibility(z ? 0 : 8);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public void mo2909a(C0203i c0203i, int i) {
        this.f663a = c0203i;
        this.f678p = i;
        setVisibility(c0203i.isVisible() ? 0 : 8);
        setTitle(c0203i.m21841a((AbstractC0216n.AbstractC0217a) this));
        setCheckable(c0203i.isCheckable());
        m21932a(c0203i.m21828f(), c0203i.m21832d());
        setIcon(c0203i.getIcon());
        setEnabled(c0203i.isEnabled());
        setSubMenuArrowVisible(c0203i.hasSubMenu());
        setContentDescription(c0203i.getContentDescription());
    }

    /* renamed from: a */
    public void m21932a(boolean z, char c) {
        int i = (!z || !this.f663a.m21828f()) ? 8 : 0;
        if (i == 0) {
            this.f668f.setText(this.f663a.m21830e());
        }
        if (this.f668f.getVisibility() != i) {
            this.f668f.setVisibility(i);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public boolean mo2910a() {
        return false;
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        if (this.f670h == null || this.f670h.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f670h.getLayoutParams();
        rect.top = layoutParams.bottomMargin + this.f670h.getHeight() + layoutParams.topMargin + rect.top;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    public C0203i getItemData() {
        return this.f663a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0595u.m20350a(this, this.f672j);
        this.f666d = (TextView) findViewById(C0083a.C0089f.title);
        if (this.f673k != -1) {
            this.f666d.setTextAppearance(this.f674l, this.f673k);
        }
        this.f668f = (TextView) findViewById(C0083a.C0089f.shortcut);
        this.f669g = (ImageView) findViewById(C0083a.C0089f.submenuarrow);
        if (this.f669g != null) {
            this.f669g.setImageDrawable(this.f676n);
        }
        this.f670h = (ImageView) findViewById(C0083a.C0089f.group_divider);
        this.f671i = (LinearLayout) findViewById(C0083a.C0089f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f664b != null && this.f675m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f664b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (!z && this.f665c == null && this.f667e == null) {
            return;
        }
        if (this.f663a.m21827g()) {
            if (this.f665c == null) {
                m21930c();
            }
            compoundButton = this.f665c;
            compoundButton2 = this.f667e;
        } else {
            if (this.f667e == null) {
                m21929d();
            }
            compoundButton = this.f667e;
            compoundButton2 = this.f665c;
        }
        if (!z) {
            if (this.f667e != null) {
                this.f667e.setVisibility(8);
            }
            if (this.f665c == null) {
                return;
            }
            this.f665c.setVisibility(8);
            return;
        }
        compoundButton.setChecked(this.f663a.isChecked());
        if (compoundButton.getVisibility() != 0) {
            compoundButton.setVisibility(0);
        }
        if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
            return;
        }
        compoundButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f663a.m21827g()) {
            if (this.f665c == null) {
                m21930c();
            }
            compoundButton = this.f665c;
        } else {
            if (this.f667e == null) {
                m21929d();
            }
            compoundButton = this.f667e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f680r = z;
        this.f675m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        if (this.f670h != null) {
            this.f670h.setVisibility((this.f677o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f663a.m21825i() || this.f680r;
        if (z || this.f675m) {
            if (this.f664b == null && drawable == null && !this.f675m) {
                return;
            }
            if (this.f664b == null) {
                m21931b();
            }
            if (drawable == null && !this.f675m) {
                this.f664b.setVisibility(8);
                return;
            }
            ImageView imageView = this.f664b;
            if (!z) {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            if (this.f664b.getVisibility() == 0) {
                return;
            }
            this.f664b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f666d.getVisibility() == 8) {
                return;
            }
            this.f666d.setVisibility(8);
            return;
        }
        this.f666d.setText(charSequence);
        if (this.f666d.getVisibility() == 0) {
            return;
        }
        this.f666d.setVisibility(0);
    }
}
