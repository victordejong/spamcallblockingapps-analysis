package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1734b.p1741e.p1742i.AbstractC25485n;
import p1727n3.p1734b.p1741e.p1742i.C25473i;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1807k.p1821i.C26614s;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbstractC25485n.AbstractC25486a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a */
    public C25473i f181a;

    /* renamed from: b */
    public ImageView f182b;

    /* renamed from: c */
    public RadioButton f183c;

    /* renamed from: d */
    public TextView f184d;

    /* renamed from: e */
    public CheckBox f185e;

    /* renamed from: f */
    public TextView f186f;

    /* renamed from: g */
    public ImageView f187g;

    /* renamed from: h */
    public ImageView f188h;

    /* renamed from: i */
    public LinearLayout f189i;

    /* renamed from: j */
    public Drawable f190j;

    /* renamed from: k */
    public int f191k;

    /* renamed from: l */
    public Context f192l;

    /* renamed from: m */
    public boolean f193m;

    /* renamed from: n */
    public Drawable f194n;

    /* renamed from: o */
    public boolean f195o;

    /* renamed from: p */
    public LayoutInflater f196p;

    /* renamed from: q */
    public boolean f197q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i = C0032R.attr.listMenuViewStyle;
        C25540r0 m3306q = C25540r0.m3306q(getContext(), attributeSet, C0032R.styleable.MenuView, i, 0);
        this.f190j = m3306q.m3316g(C0032R.styleable.MenuView_android_itemBackground);
        this.f191k = m3306q.m3311l(C0032R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f193m = m3306q.m3322a(C0032R.styleable.MenuView_preserveIconSpacing, false);
        this.f192l = context;
        this.f194n = m3306q.m3316g(C0032R.styleable.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0032R.attr.dropDownListViewStyle, 0);
        this.f195o = obtainStyledAttributes.hasValue(0);
        m3306q.f71466b.recycle();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f196p == null) {
            this.f196p = LayoutInflater.from(getContext());
        }
        return this.f196p;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f187g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public final void m43163a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C0032R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f185e = checkBox;
        LinearLayout linearLayout = this.f189i;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f188h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f188h.getLayoutParams();
        rect.top = this.f188h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* renamed from: b */
    public final void m43162b() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C0032R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f183c = radioButton;
        LinearLayout linearLayout = this.f189i;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    /* renamed from: c */
    public void m43161c(boolean z) {
        String str;
        int i = (!z || !this.f181a.m3445n()) ? 8 : 0;
        if (i == 0) {
            TextView textView = this.f186f;
            C25473i c25473i = this.f181a;
            char m3454e = c25473i.m3454e();
            if (m3454e == 0) {
                str = "";
            } else {
                Resources resources = c25473i.f71260n.f71216a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(c25473i.f71260n.f71216a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(C0032R.string.abc_prepend_shortcut_label));
                }
                int i2 = c25473i.f71260n.m3470n() ? c25473i.f71257k : c25473i.f71255i;
                C25473i.m3456c(sb, i2, 65536, resources.getString(C0032R.string.abc_menu_meta_shortcut_label));
                C25473i.m3456c(sb, i2, 4096, resources.getString(C0032R.string.abc_menu_ctrl_shortcut_label));
                C25473i.m3456c(sb, i2, 2, resources.getString(C0032R.string.abc_menu_alt_shortcut_label));
                C25473i.m3456c(sb, i2, 1, resources.getString(C0032R.string.abc_menu_shift_shortcut_label));
                C25473i.m3456c(sb, i2, 4, resources.getString(C0032R.string.abc_menu_sym_shortcut_label));
                C25473i.m3456c(sb, i2, 8, resources.getString(C0032R.string.abc_menu_function_shortcut_label));
                if (m3454e == '\b') {
                    sb.append(resources.getString(C0032R.string.abc_menu_delete_shortcut_label));
                } else if (m3454e == '\n') {
                    sb.append(resources.getString(C0032R.string.abc_menu_enter_shortcut_label));
                } else if (m3454e != ' ') {
                    sb.append(m3454e);
                } else {
                    sb.append(resources.getString(C0032R.string.abc_menu_space_shortcut_label));
                }
                str = sb.toString();
            }
            textView.setText(str);
        }
        if (this.f186f.getVisibility() != i) {
            this.f186f.setVisibility(i);
        }
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25485n.AbstractC25486a
    /* renamed from: d */
    public void mo3410d(C25473i c25473i, int i) {
        this.f181a = c25473i;
        setVisibility(c25473i.isVisible() ? 0 : 8);
        setTitle(c25473i.f71251e);
        setCheckable(c25473i.isCheckable());
        boolean m3445n = c25473i.m3445n();
        c25473i.m3454e();
        m43161c(m3445n);
        setIcon(c25473i.getIcon());
        setEnabled(c25473i.isEnabled());
        setSubMenuArrowVisible(c25473i.hasSubMenu());
        setContentDescription(c25473i.f71263q);
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.AbstractC25485n.AbstractC25486a
    public C25473i getItemData() {
        return this.f181a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.f190j;
        AtomicInteger atomicInteger = C26614s.f74505a;
        setBackground(drawable);
        TextView textView = (TextView) findViewById(C0032R.C0034id.title);
        this.f184d = textView;
        int i = this.f191k;
        if (i != -1) {
            textView.setTextAppearance(this.f192l, i);
        }
        this.f186f = (TextView) findViewById(C0032R.C0034id.shortcut);
        ImageView imageView = (ImageView) findViewById(C0032R.C0034id.submenuarrow);
        this.f187g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f194n);
        }
        this.f188h = (ImageView) findViewById(C0032R.C0034id.group_divider);
        this.f189i = (LinearLayout) findViewById(C0032R.C0034id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f182b != null && this.f193m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f182b.getLayoutParams();
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
        if (!z && this.f183c == null && this.f185e == null) {
            return;
        }
        if (this.f181a.m3451h()) {
            if (this.f183c == null) {
                m43162b();
            }
            radioButton = this.f183c;
            checkBox = this.f185e;
        } else {
            if (this.f185e == null) {
                m43163a();
            }
            radioButton = this.f185e;
            checkBox = this.f183c;
        }
        if (z) {
            radioButton.setChecked(this.f181a.isChecked());
            if (radioButton.getVisibility() != 0) {
                radioButton.setVisibility(0);
            }
            if (checkBox == null || checkBox.getVisibility() == 8) {
                return;
            }
            checkBox.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f185e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f183c;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        RadioButton radioButton;
        if (this.f181a.m3451h()) {
            if (this.f183c == null) {
                m43162b();
            }
            radioButton = this.f183c;
        } else {
            if (this.f185e == null) {
                m43163a();
            }
            radioButton = this.f185e;
        }
        radioButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f197q = z;
        this.f193m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f188h;
        if (imageView != null) {
            imageView.setVisibility((this.f195o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        Objects.requireNonNull(this.f181a.f71260n);
        boolean z = this.f197q;
        if (z || this.f193m) {
            ImageView imageView = this.f182b;
            if (imageView == null && drawable == null && !this.f193m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(C0032R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f182b = imageView2;
                LinearLayout linearLayout = this.f189i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f193m) {
                this.f182b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f182b;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f182b.getVisibility() == 0) {
                return;
            }
            this.f182b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f184d.getVisibility() == 8) {
                return;
            }
            this.f184d.setVisibility(8);
            return;
        }
        this.f184d.setText(charSequence);
        if (this.f184d.getVisibility() == 0) {
            return;
        }
        this.f184d.setVisibility(0);
    }
}
