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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.widget.C0311as;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, AbstractC0199n.AbstractC0200a {

    /* renamed from: a */
    private C0186i f611a;

    /* renamed from: b */
    private ImageView f612b;

    /* renamed from: c */
    private RadioButton f613c;

    /* renamed from: d */
    private TextView f614d;

    /* renamed from: e */
    private CheckBox f615e;

    /* renamed from: f */
    private TextView f616f;

    /* renamed from: g */
    private ImageView f617g;

    /* renamed from: h */
    private ImageView f618h;

    /* renamed from: i */
    private LinearLayout f619i;

    /* renamed from: j */
    private Drawable f620j;

    /* renamed from: k */
    private int f621k;

    /* renamed from: l */
    private Context f622l;

    /* renamed from: m */
    private boolean f623m;

    /* renamed from: n */
    private Drawable f624n;

    /* renamed from: o */
    private boolean f625o;

    /* renamed from: p */
    private int f626p;

    /* renamed from: q */
    private LayoutInflater f627q;

    /* renamed from: r */
    private boolean f628r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0311as m7156a = C0311as.m7156a(getContext(), attributeSet, C0051a.C0061j.MenuView, i, 0);
        this.f620j = m7156a.m7163a(C0051a.C0061j.MenuView_android_itemBackground);
        this.f621k = m7156a.m7143g(C0051a.C0061j.MenuView_android_itemTextAppearance, -1);
        this.f623m = m7156a.m7159a(C0051a.C0061j.MenuView_preserveIconSpacing, false);
        this.f622l = context;
        this.f624n = m7156a.m7163a(C0051a.C0061j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0051a.C0052a.dropDownListViewStyle, 0);
        this.f625o = obtainStyledAttributes.hasValue(0);
        m7156a.m7164a();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m7603a() {
        this.f612b = (ImageView) getInflater().inflate(C0051a.C0058g.abc_list_menu_item_icon, (ViewGroup) this, false);
        m7601a(this.f612b, 0);
    }

    /* renamed from: a */
    private void m7602a(View view) {
        m7601a(view, -1);
    }

    /* renamed from: a */
    private void m7601a(View view, int i) {
        LinearLayout linearLayout = this.f619i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: b */
    private void m7599b() {
        this.f613c = (RadioButton) getInflater().inflate(C0051a.C0058g.abc_list_menu_item_radio, (ViewGroup) this, false);
        m7602a(this.f613c);
    }

    /* renamed from: c */
    private void m7598c() {
        this.f615e = (CheckBox) getInflater().inflate(C0051a.C0058g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        m7602a(this.f615e);
    }

    private LayoutInflater getInflater() {
        if (this.f627q == null) {
            this.f627q = LayoutInflater.from(getContext());
        }
        return this.f627q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f617g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public void m7600a(boolean z, char c) {
        int i = (!z || !this.f611a.m7547f()) ? 8 : 0;
        if (i == 0) {
            this.f616f.setText(this.f611a.m7549e());
        }
        if (this.f616f.getVisibility() != i) {
            this.f616f.setVisibility(i);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f618h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f618h.getLayoutParams();
        rect.top += this.f618h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public C0186i getItemData() {
        return this.f611a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public void initialize(C0186i c0186i, int i) {
        this.f611a = c0186i;
        this.f626p = i;
        setVisibility(c0186i.isVisible() ? 0 : 8);
        setTitle(c0186i.m7560a((AbstractC0199n.AbstractC0200a) this));
        setCheckable(c0186i.isCheckable());
        m7600a(c0186i.m7547f(), c0186i.m7551d());
        setIcon(c0186i.getIcon());
        setEnabled(c0186i.isEnabled());
        setSubMenuArrowVisible(c0186i.hasSubMenu());
        setContentDescription(c0186i.getContentDescription());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0552u.m6272a(this, this.f620j);
        this.f614d = (TextView) findViewById(C0051a.C0057f.title);
        int i = this.f621k;
        if (i != -1) {
            this.f614d.setTextAppearance(this.f622l, i);
        }
        this.f616f = (TextView) findViewById(C0051a.C0057f.shortcut);
        this.f617g = (ImageView) findViewById(C0051a.C0057f.submenuarrow);
        ImageView imageView = this.f617g;
        if (imageView != null) {
            imageView.setImageDrawable(this.f624n);
        }
        this.f618h = (ImageView) findViewById(C0051a.C0057f.group_divider);
        this.f619i = (LinearLayout) findViewById(C0051a.C0057f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f612b != null && this.f623m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f612b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        CheckBox checkBox;
        RadioButton radioButton;
        if (!z && this.f613c == null && this.f615e == null) {
            return;
        }
        if (this.f611a.m7546g()) {
            if (this.f613c == null) {
                m7599b();
            }
            radioButton = this.f613c;
            checkBox = this.f615e;
        } else {
            if (this.f615e == null) {
                m7598c();
            }
            radioButton = this.f615e;
            checkBox = this.f613c;
        }
        if (z) {
            radioButton.setChecked(this.f611a.isChecked());
            if (radioButton.getVisibility() != 0) {
                radioButton.setVisibility(0);
            }
            if (checkBox == null || checkBox.getVisibility() == 8) {
                return;
            }
            checkBox.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f615e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f613c;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        RadioButton radioButton;
        if (this.f611a.m7546g()) {
            if (this.f613c == null) {
                m7599b();
            }
            radioButton = this.f613c;
        } else {
            if (this.f615e == null) {
                m7598c();
            }
            radioButton = this.f615e;
        }
        radioButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f628r = z;
        this.f623m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f618h;
        if (imageView != null) {
            imageView.setVisibility((this.f625o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f611a.m7544i() || this.f628r;
        if (z || this.f623m) {
            if (this.f612b == null && drawable == null && !this.f623m) {
                return;
            }
            if (this.f612b == null) {
                m7603a();
            }
            if (drawable == null && !this.f623m) {
                this.f612b.setVisibility(8);
                return;
            }
            ImageView imageView = this.f612b;
            if (!z) {
                drawable = null;
            }
            imageView.setImageDrawable(drawable);
            if (this.f612b.getVisibility() == 0) {
                return;
            }
            this.f612b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f614d.getVisibility() == 8) {
                return;
            }
            this.f614d.setVisibility(8);
            return;
        }
        this.f614d.setText(charSequence);
        if (this.f614d.getVisibility() == 0) {
            return;
        }
        this.f614d.setVisibility(0);
    }
}
