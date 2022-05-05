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
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.ViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: f */
    private MenuItemImpl f595f;

    /* renamed from: g */
    private ImageView f596g;

    /* renamed from: h */
    private RadioButton f597h;

    /* renamed from: i */
    private TextView f598i;

    /* renamed from: j */
    private CheckBox f599j;

    /* renamed from: k */
    private TextView f600k;

    /* renamed from: l */
    private ImageView f601l;

    /* renamed from: m */
    private ImageView f602m;

    /* renamed from: n */
    private LinearLayout f603n;

    /* renamed from: o */
    private Drawable f604o;

    /* renamed from: p */
    private int f605p;

    /* renamed from: q */
    private Context f606q;

    /* renamed from: r */
    private boolean f607r;

    /* renamed from: s */
    private Drawable f608s;

    /* renamed from: t */
    private boolean f609t;

    /* renamed from: u */
    private LayoutInflater f610u;

    /* renamed from: v */
    private boolean f611v;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TintTypedArray v = TintTypedArray.m21244v(getContext(), attributeSet, C0042R.styleable.MenuView, i, 0);
        this.f604o = v.m21259g(C0042R.styleable.MenuView_android_itemBackground);
        this.f605p = v.m21252n(C0042R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f607r = v.m21265a(C0042R.styleable.MenuView_preserveIconSpacing, false);
        this.f606q = context;
        this.f608s = v.m21259g(C0042R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0042R.attr.dropDownListViewStyle, 0);
        this.f609t = obtainStyledAttributes.hasValue(0);
        v.m21243w();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m21910a(View view) {
        m21909b(view, -1);
    }

    /* renamed from: b */
    private void m21909b(View view, int i) {
        LinearLayout linearLayout = this.f603n;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: c */
    private void m21908c() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C0042R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f599j = checkBox;
        m21910a(checkBox);
    }

    /* renamed from: f */
    private void m21907f() {
        ImageView imageView = (ImageView) getInflater().inflate(C0042R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f596g = imageView;
        m21909b(imageView, 0);
    }

    /* renamed from: g */
    private void m21906g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C0042R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f597h = radioButton;
        m21910a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f610u == null) {
            this.f610u = LayoutInflater.from(getContext());
        }
        return this.f610u;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f601l;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f602m;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f602m.getLayoutParams();
            rect.top += this.f602m.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: d */
    public boolean mo9539d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: e */
    public void mo9538e(MenuItemImpl menuItemImpl, int i) {
        this.f595f = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        setTitle(menuItemImpl.m21836i(this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.m21844A(), menuItemImpl.m21838g());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.getContentDescription());
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f595f;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewCompat.m19177q0(this, this.f604o);
        TextView textView = (TextView) findViewById(C0042R.C0045id.title);
        this.f598i = textView;
        int i = this.f605p;
        if (i != -1) {
            textView.setTextAppearance(this.f606q, i);
        }
        this.f600k = (TextView) findViewById(C0042R.C0045id.shortcut);
        ImageView imageView = (ImageView) findViewById(C0042R.C0045id.submenuarrow);
        this.f601l = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f608s);
        }
        this.f602m = (ImageView) findViewById(C0042R.C0045id.group_divider);
        this.f603n = (LinearLayout) findViewById(C0042R.C0045id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f596g != null && this.f607r) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f596g.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.f597h != null || this.f599j != null) {
            if (this.f595f.m21832m()) {
                if (this.f597h == null) {
                    m21906g();
                }
                compoundButton2 = this.f597h;
                compoundButton = this.f599j;
            } else {
                if (this.f599j == null) {
                    m21908c();
                }
                compoundButton2 = this.f599j;
                compoundButton = this.f597h;
            }
            if (z) {
                compoundButton2.setChecked(this.f595f.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (compoundButton != null && compoundButton.getVisibility() != 8) {
                    compoundButton.setVisibility(8);
                    return;
                }
                return;
            }
            CheckBox checkBox = this.f599j;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.f597h;
            if (radioButton != null) {
                radioButton.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f595f.m21832m()) {
            if (this.f597h == null) {
                m21906g();
            }
            compoundButton = this.f597h;
        } else {
            if (this.f599j == null) {
                m21908c();
            }
            compoundButton = this.f599j;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f611v = z;
        this.f607r = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f602m;
        if (imageView != null) {
            imageView.setVisibility((this.f609t || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f595f.m21819z() || this.f611v;
        if (!z && !this.f607r) {
            return;
        }
        if (this.f596g != null || drawable != null || this.f607r) {
            if (this.f596g == null) {
                m21907f();
            }
            if (drawable != null || this.f607r) {
                ImageView imageView = this.f596g;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.f596g.getVisibility() != 0) {
                    this.f596g.setVisibility(0);
                    return;
                }
                return;
            }
            this.f596g.setVisibility(8);
        }
    }

    public void setShortcut(boolean z, char c) {
        int i = (!z || !this.f595f.m21844A()) ? 8 : 0;
        if (i == 0) {
            this.f600k.setText(this.f595f.m21837h());
        }
        if (this.f600k.getVisibility() != i) {
            this.f600k.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f598i.setText(charSequence);
            if (this.f598i.getVisibility() != 0) {
                this.f598i.setVisibility(0);
            }
        } else if (this.f598i.getVisibility() != 8) {
            this.f598i.setVisibility(8);
        }
    }
}
