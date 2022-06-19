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
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.widget.C0303z0;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p117h8.C3035k;
import p163m0.C3589v;
import p163m0.C3611y;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbstractC0146j.AbstractC0147a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a */
    public C0140g f350a;

    /* renamed from: b */
    public ImageView f351b;

    /* renamed from: c */
    public RadioButton f352c;

    /* renamed from: d */
    public TextView f353d;

    /* renamed from: e */
    public CheckBox f354e;

    /* renamed from: f */
    public TextView f355f;

    /* renamed from: g */
    public ImageView f356g;

    /* renamed from: h */
    public ImageView f357h;

    /* renamed from: i */
    public LinearLayout f358i;

    /* renamed from: j */
    public Drawable f359j;

    /* renamed from: k */
    public int f360k;

    /* renamed from: l */
    public Context f361l;

    /* renamed from: m */
    public boolean f362m;

    /* renamed from: n */
    public Drawable f363n;

    /* renamed from: o */
    public boolean f364o;

    /* renamed from: p */
    public LayoutInflater f365p;

    /* renamed from: q */
    public boolean f366q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0303z0 m8383q = C0303z0.m8383q(getContext(), attributeSet, C3035k.f10232s, C3681R.attr.listMenuViewStyle, 0);
        this.f359j = m8383q.m8393g(5);
        this.f360k = m8383q.m8388l(1, -1);
        this.f362m = m8383q.m8399a(7, false);
        this.f361l = context;
        this.f363n = m8383q.m8393g(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C3681R.attr.dropDownListViewStyle, 0);
        this.f364o = obtainStyledAttributes.hasValue(0);
        m8383q.f1164b.recycle();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f365p == null) {
            this.f365p = LayoutInflater.from(getContext());
        }
        return this.f365p;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f356g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public final void m8722a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C3681R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f354e = checkBox;
        LinearLayout linearLayout = this.f358i;
        if (linearLayout != null) {
            linearLayout.addView(checkBox, -1);
        } else {
            addView(checkBox, -1);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f357h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f357h.getLayoutParams();
        rect.top = this.f357h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* renamed from: b */
    public final void m8721b() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C3681R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f352c = radioButton;
        LinearLayout linearLayout = this.f358i;
        if (linearLayout != null) {
            linearLayout.addView(radioButton, -1);
        } else {
            addView(radioButton, -1);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    /* renamed from: d */
    public void mo4552d(C0140g c0140g, int i) {
        String str;
        this.f350a = c0140g;
        setVisibility(c0140g.isVisible() ? 0 : 8);
        setTitle(c0140g.f462e);
        setCheckable(c0140g.isCheckable());
        boolean m8687n = c0140g.m8687n();
        c0140g.m8696e();
        int i2 = (!m8687n || !this.f350a.m8687n()) ? 8 : 0;
        if (i2 == 0) {
            TextView textView = this.f355f;
            C0140g c0140g2 = this.f350a;
            char m8696e = c0140g2.m8696e();
            if (m8696e == 0) {
                str = "";
            } else {
                Resources resources = c0140g2.f471n.f427a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(c0140g2.f471n.f427a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(2131820561));
                }
                int i3 = c0140g2.f471n.mo8674n() ? c0140g2.f468k : c0140g2.f466i;
                C0140g.m8698c(sb, i3, 65536, resources.getString(2131820557));
                C0140g.m8698c(sb, i3, 4096, resources.getString(2131820553));
                C0140g.m8698c(sb, i3, 2, resources.getString(2131820552));
                C0140g.m8698c(sb, i3, 1, resources.getString(2131820558));
                C0140g.m8698c(sb, i3, 4, resources.getString(2131820560));
                C0140g.m8698c(sb, i3, 8, resources.getString(2131820556));
                if (m8696e == '\b') {
                    sb.append(resources.getString(2131820554));
                } else if (m8696e == '\n') {
                    sb.append(resources.getString(2131820555));
                } else if (m8696e != ' ') {
                    sb.append(m8696e);
                } else {
                    sb.append(resources.getString(2131820559));
                }
                str = sb.toString();
            }
            textView.setText(str);
        }
        if (this.f355f.getVisibility() != i2) {
            this.f355f.setVisibility(i2);
        }
        setIcon(c0140g.getIcon());
        setEnabled(c0140g.isEnabled());
        setSubMenuArrowVisible(c0140g.hasSubMenu());
        setContentDescription(c0140g.f474q);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    public C0140g getItemData() {
        return this.f350a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.f359j;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(this, drawable);
        TextView textView = (TextView) findViewById(2131297155);
        this.f353d = textView;
        int i = this.f360k;
        if (i != -1) {
            textView.setTextAppearance(this.f361l, i);
        }
        this.f355f = (TextView) findViewById(C3681R.C3684id.shortcut);
        ImageView imageView = (ImageView) findViewById(C3681R.C3684id.submenuarrow);
        this.f356g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f363n);
        }
        this.f357h = (ImageView) findViewById(2131296645);
        this.f358i = (LinearLayout) findViewById(2131296494);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f351b != null && this.f362m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f351b.getLayoutParams();
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
        if (!z && this.f352c == null && this.f354e == null) {
            return;
        }
        if (this.f350a.m8693h()) {
            if (this.f352c == null) {
                m8721b();
            }
            radioButton = this.f352c;
            checkBox = this.f354e;
        } else {
            if (this.f354e == null) {
                m8722a();
            }
            radioButton = this.f354e;
            checkBox = this.f352c;
        }
        if (z) {
            radioButton.setChecked(this.f350a.isChecked());
            if (radioButton.getVisibility() != 0) {
                radioButton.setVisibility(0);
            }
            if (checkBox == null || checkBox.getVisibility() == 8) {
                return;
            }
            checkBox.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f354e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f352c;
        if (radioButton2 == null) {
            return;
        }
        radioButton2.setVisibility(8);
    }

    public void setChecked(boolean z) {
        RadioButton radioButton;
        if (this.f350a.m8693h()) {
            if (this.f352c == null) {
                m8721b();
            }
            radioButton = this.f352c;
        } else {
            if (this.f354e == null) {
                m8722a();
            }
            radioButton = this.f354e;
        }
        radioButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f366q = z;
        this.f362m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f357h;
        if (imageView != null) {
            imageView.setVisibility((this.f364o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        Objects.requireNonNull(this.f350a.f471n);
        boolean z = this.f366q;
        if (z || this.f362m) {
            ImageView imageView = this.f351b;
            if (imageView == null && drawable == null && !this.f362m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(C3681R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f351b = imageView2;
                LinearLayout linearLayout = this.f358i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f362m) {
                this.f351b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f351b;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f351b.getVisibility() == 0) {
                return;
            }
            this.f351b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f353d.getVisibility() == 8) {
                return;
            }
            this.f353d.setVisibility(8);
            return;
        }
        this.f353d.setText(charSequence);
        if (this.f353d.getVisibility() == 0) {
            return;
        }
        this.f353d.setVisibility(0);
    }
}
