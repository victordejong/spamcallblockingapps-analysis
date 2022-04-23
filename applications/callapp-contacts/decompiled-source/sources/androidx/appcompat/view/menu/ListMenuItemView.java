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
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ab;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, n.a {

    /* renamed from: a  reason: collision with root package name */
    public i f769a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f770b;

    /* renamed from: c  reason: collision with root package name */
    private RadioButton f771c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f772d;
    private CheckBox e;
    private TextView f;
    private ImageView g;
    private ImageView h;
    private LinearLayout i;
    private Drawable j;
    private int k;
    private Context l;
    private boolean m;
    private Drawable n;
    private boolean o;
    private LayoutInflater p;
    private boolean q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        ab a2 = ab.a(getContext(), attributeSet, a.j.MenuView, i, 0);
        this.j = a2.a(a.j.MenuView_android_itemBackground);
        this.k = a2.g(a.j.MenuView_android_itemTextAppearance, -1);
        this.m = a2.a(a.j.MenuView_preserveIconSpacing, false);
        this.l = context;
        this.n = a2.a(a.j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, a.C0018a.dropDownListViewStyle, 0);
        this.o = obtainStyledAttributes.hasValue(0);
        a2.f1044a.recycle();
        obtainStyledAttributes.recycle();
    }

    private void a(View view, int i) {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    private void c() {
        RadioButton radioButton = (RadioButton) e().inflate(a.g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f771c = radioButton;
        a(radioButton, -1);
    }

    private void d() {
        CheckBox checkBox = (CheckBox) e().inflate(a.g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.e = checkBox;
        a(checkBox, -1);
    }

    private LayoutInflater e() {
        if (this.p == null) {
            this.p = LayoutInflater.from(getContext());
        }
        return this.p;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final i a() {
        return this.f769a;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final void a(i iVar) {
        this.f769a = iVar;
        int i = 0;
        setVisibility(iVar.isVisible() ? 0 : 8);
        setTitle(iVar.a((n.a) this));
        setCheckable(iVar.isCheckable());
        setShortcut(iVar.d(), iVar.c());
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        boolean hasSubMenu = iVar.hasSubMenu();
        ImageView imageView = this.g;
        if (imageView != null) {
            if (!hasSubMenu) {
                i = 8;
            }
            imageView.setVisibility(i);
        }
        setContentDescription(iVar.getContentDescription());
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.h;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.h.getLayoutParams();
            rect.top += this.h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        v.a(this, this.j);
        TextView textView = (TextView) findViewById(a.f.title);
        this.f772d = textView;
        int i = this.k;
        if (i != -1) {
            textView.setTextAppearance(this.l, i);
        }
        this.f = (TextView) findViewById(a.f.shortcut);
        ImageView imageView = (ImageView) findViewById(a.f.submenuarrow);
        this.g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.h = (ImageView) findViewById(a.f.group_divider);
        this.i = (LinearLayout) findViewById(a.f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f770b != null && this.m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f770b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.f771c != null || this.e != null) {
            if (this.f769a.e()) {
                if (this.f771c == null) {
                    c();
                }
                compoundButton2 = this.f771c;
                compoundButton = this.e;
            } else {
                if (this.e == null) {
                    d();
                }
                compoundButton2 = this.e;
                compoundButton = this.f771c;
            }
            if (z) {
                compoundButton2.setChecked(this.f769a.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (compoundButton != null && compoundButton.getVisibility() != 8) {
                    compoundButton.setVisibility(8);
                    return;
                }
                return;
            }
            CheckBox checkBox = this.e;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.f771c;
            if (radioButton != null) {
                radioButton.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f769a.e()) {
            if (this.f771c == null) {
                c();
            }
            compoundButton = this.f771c;
        } else {
            if (this.e == null) {
                d();
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.q = z;
        this.m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility((this.o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f769a.f819d.i || this.q;
        if (z || this.m) {
            ImageView imageView = this.f770b;
            if (imageView != null || drawable != null || this.m) {
                if (imageView == null) {
                    ImageView imageView2 = (ImageView) e().inflate(a.g.abc_list_menu_item_icon, (ViewGroup) this, false);
                    this.f770b = imageView2;
                    a(imageView2, 0);
                }
                if (drawable != null || this.m) {
                    ImageView imageView3 = this.f770b;
                    if (!z) {
                        drawable = null;
                    }
                    imageView3.setImageDrawable(drawable);
                    if (this.f770b.getVisibility() != 0) {
                        this.f770b.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.f770b.setVisibility(8);
            }
        }
    }

    public void setShortcut(boolean z, char c2) {
        String str;
        int i = (!z || !this.f769a.d()) ? 8 : 0;
        if (i == 0) {
            TextView textView = this.f;
            i iVar = this.f769a;
            char c3 = iVar.c();
            if (c3 == 0) {
                str = "";
            } else {
                Resources resources = iVar.f819d.f808a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(iVar.f819d.f808a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(a.h.abc_prepend_shortcut_label));
                }
                int i2 = iVar.f819d.c() ? iVar.f818c : iVar.f817b;
                i.a(sb, i2, 65536, resources.getString(a.h.abc_menu_meta_shortcut_label));
                i.a(sb, i2, 4096, resources.getString(a.h.abc_menu_ctrl_shortcut_label));
                i.a(sb, i2, 2, resources.getString(a.h.abc_menu_alt_shortcut_label));
                i.a(sb, i2, 1, resources.getString(a.h.abc_menu_shift_shortcut_label));
                i.a(sb, i2, 4, resources.getString(a.h.abc_menu_sym_shortcut_label));
                i.a(sb, i2, 8, resources.getString(a.h.abc_menu_function_shortcut_label));
                if (c3 == '\b') {
                    sb.append(resources.getString(a.h.abc_menu_delete_shortcut_label));
                } else if (c3 == '\n') {
                    sb.append(resources.getString(a.h.abc_menu_enter_shortcut_label));
                } else if (c3 != ' ') {
                    sb.append(c3);
                } else {
                    sb.append(resources.getString(a.h.abc_menu_space_shortcut_label));
                }
                str = sb.toString();
            }
            textView.setText(str);
        }
        if (this.f.getVisibility() != i) {
            this.f.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f772d.setText(charSequence);
            if (this.f772d.getVisibility() != 0) {
                this.f772d.setVisibility(0);
            }
        } else if (this.f772d.getVisibility() != 8) {
            this.f772d.setVisibility(8);
        }
    }
}
