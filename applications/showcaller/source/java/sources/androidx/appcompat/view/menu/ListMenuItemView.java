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
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.widget.C0286e0;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbstractC0195n.AbstractC0196a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: d */
    private C0182i f524d;

    /* renamed from: e */
    private ImageView f525e;

    /* renamed from: f */
    private RadioButton f526f;

    /* renamed from: g */
    private TextView f527g;

    /* renamed from: h */
    private CheckBox f528h;

    /* renamed from: i */
    private TextView f529i;

    /* renamed from: j */
    private ImageView f530j;

    /* renamed from: k */
    private ImageView f531k;

    /* renamed from: l */
    private LinearLayout f532l;

    /* renamed from: m */
    private Drawable f533m;

    /* renamed from: n */
    private int f534n;

    /* renamed from: o */
    private Context f535o;

    /* renamed from: p */
    private boolean f536p;

    /* renamed from: q */
    private Drawable f537q;

    /* renamed from: r */
    private boolean f538r;

    /* renamed from: s */
    private LayoutInflater f539s;

    /* renamed from: t */
    private boolean f540t;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0286e0 m34946v = C0286e0.m34946v(getContext(), attributeSet, C1432j.MenuView, i, 0);
        this.f533m = m34946v.m34961g(C1432j.MenuView_android_itemBackground);
        this.f534n = m34946v.m34954n(C1432j.MenuView_android_itemTextAppearance, -1);
        this.f536p = m34946v.m34967a(C1432j.MenuView_preserveIconSpacing, false);
        this.f535o = context;
        this.f537q = m34946v.m34961g(C1432j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C1423a.dropDownListViewStyle, 0);
        this.f538r = obtainStyledAttributes.hasValue(0);
        m34946v.m34945w();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m35450a(View view) {
        m35449b(view, -1);
    }

    /* renamed from: b */
    private void m35449b(View view, int i) {
        LinearLayout linearLayout = this.f532l;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: c */
    private void m35448c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C1429g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f528h = checkBox;
        m35450a(checkBox);
    }

    /* renamed from: f */
    private void m35447f() {
        ImageView imageView = (ImageView) getInflater().inflate(C1429g.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f525e = imageView;
        m35449b(imageView, 0);
    }

    /* renamed from: g */
    private void m35446g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C1429g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f526f = radioButton;
        m35450a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f539s == null) {
            this.f539s = LayoutInflater.from(getContext());
        }
        return this.f539s;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f530j;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f531k;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f531k.getLayoutParams();
        rect.top += this.f531k.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: d */
    public boolean mo4641d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: e */
    public void mo4640e(C0182i c0182i, int i) {
        this.f524d = c0182i;
        setVisibility(c0182i.isVisible() ? 0 : 8);
        setTitle(c0182i.m35355i(this));
        setCheckable(c0182i.isCheckable());
        setShortcut(c0182i.m35363A(), c0182i.m35357g());
        setIcon(c0182i.getIcon());
        setEnabled(c0182i.isEnabled());
        setSubMenuArrowVisible(c0182i.hasSubMenu());
        setContentDescription(c0182i.getContentDescription());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    public C0182i getItemData() {
        return this.f524d;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C1679w.m29267u0(this, this.f533m);
        TextView textView = (TextView) findViewById(C1428f.title);
        this.f527g = textView;
        int i = this.f534n;
        if (i != -1) {
            textView.setTextAppearance(this.f535o, i);
        }
        this.f529i = (TextView) findViewById(C1428f.shortcut);
        ImageView imageView = (ImageView) findViewById(C1428f.submenuarrow);
        this.f530j = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f537q);
        }
        this.f531k = (ImageView) findViewById(C1428f.group_divider);
        this.f532l = (LinearLayout) findViewById(C1428f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f525e != null && this.f536p) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f525e.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CheckBox checkBox;
        RadioButton radioButton;
        if (!z && this.f526f == null && this.f528h == null) {
            return;
        }
        if (this.f524d.m35351m()) {
            if (this.f526f == null) {
                m35446g();
            }
            radioButton = this.f526f;
            checkBox = this.f528h;
        } else {
            if (this.f528h == null) {
                m35448c();
            }
            radioButton = this.f528h;
            checkBox = this.f526f;
        }
        if (z) {
            radioButton.setChecked(this.f524d.isChecked());
            if (radioButton.getVisibility() != 0) {
                radioButton.setVisibility(0);
            }
            if (checkBox == null || checkBox.getVisibility() == 8) {
                return;
            }
            checkBox.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f528h;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f526f;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        RadioButton radioButton;
        if (this.f524d.m35351m()) {
            if (this.f526f == null) {
                m35446g();
            }
            radioButton = this.f526f;
        } else {
            if (this.f528h == null) {
                m35448c();
            }
            radioButton = this.f528h;
        }
        radioButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f540t = z;
        this.f536p = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f531k;
        if (imageView != null) {
            imageView.setVisibility((this.f538r || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f524d.m35338z() || this.f540t;
        if (z || this.f536p) {
            ImageView imageView = this.f525e;
            if (imageView == null && drawable == null && !this.f536p) {
                return;
            }
            if (imageView == null) {
                m35447f();
            }
            if (drawable == null && !this.f536p) {
                this.f525e.setVisibility(8);
                return;
            }
            ImageView imageView2 = this.f525e;
            if (!z) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f525e.getVisibility() == 0) {
                return;
            }
            this.f525e.setVisibility(0);
        }
    }

    public void setShortcut(boolean z, char c) {
        int i = (!z || !this.f524d.m35363A()) ? 8 : 0;
        if (i == 0) {
            this.f529i.setText(this.f524d.m35356h());
        }
        if (this.f529i.getVisibility() != i) {
            this.f529i.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f527g.getVisibility() == 8) {
                return;
            }
            this.f527g.setVisibility(8);
            return;
        }
        this.f527g.setText(charSequence);
        if (this.f527g.getVisibility() == 0) {
            return;
        }
        this.f527g.setVisibility(0);
    }
}
