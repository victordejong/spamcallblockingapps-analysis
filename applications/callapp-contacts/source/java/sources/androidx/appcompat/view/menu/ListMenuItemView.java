package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.widget.C0370ab;
import androidx.core.view.C0926v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, AbstractC0285n.AbstractC0286a {

    /* renamed from: a */
    public C0272i f776a;

    /* renamed from: b */
    private ImageView f777b;

    /* renamed from: c */
    private RadioButton f778c;

    /* renamed from: d */
    private TextView f779d;

    /* renamed from: e */
    private CheckBox f780e;

    /* renamed from: f */
    private TextView f781f;

    /* renamed from: g */
    private ImageView f782g;

    /* renamed from: h */
    private ImageView f783h;

    /* renamed from: i */
    private LinearLayout f784i;

    /* renamed from: j */
    private Drawable f785j;

    /* renamed from: k */
    private int f786k;

    /* renamed from: l */
    private Context f787l;

    /* renamed from: m */
    private boolean f788m;

    /* renamed from: n */
    private Drawable f789n;

    /* renamed from: o */
    private boolean f790o;

    /* renamed from: p */
    private LayoutInflater f791p;

    /* renamed from: q */
    private boolean f792q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0370ab m45804a = C0370ab.m45804a(getContext(), attributeSet, C0142a.C0152j.MenuView, i, 0);
        this.f785j = m45804a.m45810a(C0142a.C0152j.MenuView_android_itemBackground);
        this.f786k = m45804a.m45792g(C0142a.C0152j.MenuView_android_itemTextAppearance, -1);
        this.f788m = m45804a.m45807a(C0142a.C0152j.MenuView_preserveIconSpacing, false);
        this.f787l = context;
        this.f789n = m45804a.m45810a(C0142a.C0152j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0142a.C0143a.dropDownListViewStyle, 0);
        this.f790o = obtainStyledAttributes.hasValue(0);
        m45804a.f1491a.recycle();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m46130a(View view, int i) {
        LinearLayout linearLayout = this.f784i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: c */
    private void m46129c() {
        RadioButton radioButton = (RadioButton) m46127e().inflate(C0142a.C0149g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f778c = radioButton;
        m46130a(radioButton, -1);
    }

    /* renamed from: d */
    private void m46128d() {
        CheckBox checkBox = (CheckBox) m46127e().inflate(C0142a.C0149g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f780e = checkBox;
        m46130a(checkBox, -1);
    }

    /* renamed from: e */
    private LayoutInflater m46127e() {
        if (this.f791p == null) {
            this.f791p = LayoutInflater.from(getContext());
        }
        return this.f791p;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final C0272i mo10613a() {
        return this.f776a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final void mo10612a(C0272i c0272i) {
        this.f776a = c0272i;
        setVisibility(c0272i.isVisible() ? 0 : 8);
        setTitle(c0272i.m46079a((AbstractC0285n.AbstractC0286a) this));
        setCheckable(c0272i.isCheckable());
        setShortcut(c0272i.m46071d(), c0272i.m46073c());
        setIcon(c0272i.getIcon());
        setEnabled(c0272i.isEnabled());
        boolean hasSubMenu = c0272i.hasSubMenu();
        ImageView imageView = this.f782g;
        if (imageView != null) {
            imageView.setVisibility(hasSubMenu ? 0 : 8);
        }
        setContentDescription(c0272i.getContentDescription());
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f783h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f783h.getLayoutParams();
        rect.top += this.f783h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: b */
    public final boolean mo10611b() {
        return false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0926v.m44128a(this, this.f785j);
        TextView textView = (TextView) findViewById(C0142a.C0148f.title);
        this.f779d = textView;
        int i = this.f786k;
        if (i != -1) {
            textView.setTextAppearance(this.f787l, i);
        }
        this.f781f = (TextView) findViewById(C0142a.C0148f.shortcut);
        ImageView imageView = (ImageView) findViewById(C0142a.C0148f.submenuarrow);
        this.f782g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f789n);
        }
        this.f783h = (ImageView) findViewById(C0142a.C0148f.group_divider);
        this.f784i = (LinearLayout) findViewById(C0142a.C0148f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f777b != null && this.f788m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f777b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CheckBox checkBox;
        RadioButton radioButton;
        if (!z && this.f778c == null && this.f780e == null) {
            return;
        }
        if (this.f776a.m46069e()) {
            if (this.f778c == null) {
                m46129c();
            }
            radioButton = this.f778c;
            checkBox = this.f780e;
        } else {
            if (this.f780e == null) {
                m46128d();
            }
            radioButton = this.f780e;
            checkBox = this.f778c;
        }
        if (z) {
            radioButton.setChecked(this.f776a.isChecked());
            if (radioButton.getVisibility() != 0) {
                radioButton.setVisibility(0);
            }
            if (checkBox == null || checkBox.getVisibility() == 8) {
                return;
            }
            checkBox.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f780e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f778c;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        RadioButton radioButton;
        if (this.f776a.m46069e()) {
            if (this.f778c == null) {
                m46129c();
            }
            radioButton = this.f778c;
        } else {
            if (this.f780e == null) {
                m46128d();
            }
            radioButton = this.f780e;
        }
        radioButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f792q = z;
        this.f788m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f783h;
        if (imageView != null) {
            imageView.setVisibility((this.f790o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f776a.f920d.f891i || this.f792q;
        if (z || this.f788m) {
            ImageView imageView = this.f777b;
            if (imageView == null && drawable == null && !this.f788m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) m46127e().inflate(C0142a.C0149g.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f777b = imageView2;
                m46130a(imageView2, 0);
            }
            if (drawable == null && !this.f788m) {
                this.f777b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f777b;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f777b.getVisibility() == 0) {
                return;
            }
            this.f777b.setVisibility(0);
        }
    }

    public void setShortcut(boolean z, char c) {
        String str;
        int i = (!z || !this.f776a.m46071d()) ? 8 : 0;
        if (i == 0) {
            TextView textView = this.f781f;
            C0272i c0272i = this.f776a;
            char m46073c = c0272i.m46073c();
            if (m46073c == 0) {
                str = "";
            } else {
                Resources resources = c0272i.f920d.f883a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(c0272i.f920d.f883a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(C0142a.C0150h.abc_prepend_shortcut_label));
                }
                int i2 = c0272i.f920d.mo46036c() ? c0272i.f919c : c0272i.f918b;
                C0272i.m46077a(sb, i2, 65536, resources.getString(C0142a.C0150h.abc_menu_meta_shortcut_label));
                C0272i.m46077a(sb, i2, 4096, resources.getString(C0142a.C0150h.abc_menu_ctrl_shortcut_label));
                C0272i.m46077a(sb, i2, 2, resources.getString(C0142a.C0150h.abc_menu_alt_shortcut_label));
                C0272i.m46077a(sb, i2, 1, resources.getString(C0142a.C0150h.abc_menu_shift_shortcut_label));
                C0272i.m46077a(sb, i2, 4, resources.getString(C0142a.C0150h.abc_menu_sym_shortcut_label));
                C0272i.m46077a(sb, i2, 8, resources.getString(C0142a.C0150h.abc_menu_function_shortcut_label));
                if (m46073c == '\b') {
                    sb.append(resources.getString(C0142a.C0150h.abc_menu_delete_shortcut_label));
                } else if (m46073c == '\n') {
                    sb.append(resources.getString(C0142a.C0150h.abc_menu_enter_shortcut_label));
                } else if (m46073c != ' ') {
                    sb.append(m46073c);
                } else {
                    sb.append(resources.getString(C0142a.C0150h.abc_menu_space_shortcut_label));
                }
                str = sb.toString();
            }
            textView.setText(str);
        }
        if (this.f781f.getVisibility() != i) {
            this.f781f.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f779d.getVisibility() == 8) {
                return;
            }
            this.f779d.setVisibility(8);
            return;
        }
        this.f779d.setText(charSequence);
        if (this.f779d.getVisibility() == 0) {
            return;
        }
        this.f779d.setVisibility(0);
    }
}
