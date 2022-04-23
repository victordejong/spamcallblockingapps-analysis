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
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p026q.C0691f0;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbstractC0664n.AbstractC0665a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a */
    public C0651i f385a;

    /* renamed from: b */
    public ImageView f386b;

    /* renamed from: c */
    public RadioButton f387c;

    /* renamed from: d */
    public TextView f388d;

    /* renamed from: e */
    public CheckBox f389e;

    /* renamed from: f */
    public TextView f390f;

    /* renamed from: g */
    public ImageView f391g;

    /* renamed from: h */
    public ImageView f392h;

    /* renamed from: i */
    public LinearLayout f393i;

    /* renamed from: j */
    public Drawable f394j;

    /* renamed from: k */
    public int f395k;

    /* renamed from: l */
    public Context f396l;

    /* renamed from: m */
    public boolean f397m;

    /* renamed from: n */
    public Drawable f398n;

    /* renamed from: o */
    public boolean f399o;

    /* renamed from: p */
    public LayoutInflater f400p;

    /* renamed from: q */
    public boolean f401q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.listMenuViewStyle);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0691f0 a = C0691f0.m36414a(getContext(), attributeSet, C0583j.MenuView, i, 0);
        this.f394j = a.m36412b(C0583j.MenuView_android_itemBackground);
        this.f395k = a.m36401g(C0583j.MenuView_android_itemTextAppearance, -1);
        this.f397m = a.m36417a(C0583j.MenuView_preserveIconSpacing, false);
        this.f396l = context;
        this.f398n = a.m36412b(C0583j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0574a.dropDownListViewStyle, 0);
        this.f399o = obtainStyledAttributes.hasValue(0);
        a.m36413b();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f400p == null) {
            this.f400p = LayoutInflater.from(getContext());
        }
        return this.f400p;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f391g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: a */
    public final void m39091a() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(C0580g.abc_list_menu_item_checkbox, (ViewGroup) this, false);
        this.f389e = checkBox;
        m39090a(checkBox);
    }

    /* renamed from: a */
    public final void m39090a(View view) {
        m39089a(view, -1);
    }

    /* renamed from: a */
    public final void m39089a(View view, int i) {
        LinearLayout linearLayout = this.f393i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    /* renamed from: a */
    public void mo36519a(C0651i iVar, int i) {
        this.f385a = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        setTitle(iVar.m36570a(this));
        setCheckable(iVar.isCheckable());
        m39088a(iVar.m36551m(), iVar.m36562d());
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.getContentDescription());
    }

    /* renamed from: a */
    public void m39088a(boolean z, char c) {
        int i = (!z || !this.f385a.m36551m()) ? 8 : 0;
        if (i == 0) {
            this.f390f.setText(this.f385a.m36560e());
        }
        if (this.f390f.getVisibility() != i) {
            this.f390f.setVisibility(i);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f392h;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f392h.getLayoutParams();
            rect.top += this.f392h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    /* renamed from: b */
    public final void m39087b() {
        ImageView imageView = (ImageView) getInflater().inflate(C0580g.abc_list_menu_item_icon, (ViewGroup) this, false);
        this.f386b = imageView;
        m39089a(imageView, 0);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    /* renamed from: c */
    public boolean mo36518c() {
        return false;
    }

    /* renamed from: d */
    public final void m39086d() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(C0580g.abc_list_menu_item_radio, (ViewGroup) this, false);
        this.f387c = radioButton;
        m39090a(radioButton);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    public C0651i getItemData() {
        return this.f385a;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        C1002u.m35240a(this, this.f394j);
        TextView textView = (TextView) findViewById(C0579f.title);
        this.f388d = textView;
        int i = this.f395k;
        if (i != -1) {
            textView.setTextAppearance(this.f396l, i);
        }
        this.f390f = (TextView) findViewById(C0579f.shortcut);
        ImageView imageView = (ImageView) findViewById(C0579f.submenuarrow);
        this.f391g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f398n);
        }
        this.f392h = (ImageView) findViewById(C0579f.group_divider);
        this.f393i = (LinearLayout) findViewById(C0579f.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f386b != null && this.f397m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f386b.getLayoutParams();
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
        if (z || this.f387c != null || this.f389e != null) {
            if (this.f385a.m36555i()) {
                if (this.f387c == null) {
                    m39086d();
                }
                compoundButton2 = this.f387c;
                compoundButton = this.f389e;
            } else {
                if (this.f389e == null) {
                    m39091a();
                }
                compoundButton2 = this.f389e;
                compoundButton = this.f387c;
            }
            if (z) {
                compoundButton2.setChecked(this.f385a.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (compoundButton != null && compoundButton.getVisibility() != 8) {
                    compoundButton.setVisibility(8);
                    return;
                }
                return;
            }
            CheckBox checkBox = this.f389e;
            if (checkBox != null) {
                checkBox.setVisibility(8);
            }
            RadioButton radioButton = this.f387c;
            if (radioButton != null) {
                radioButton.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f385a.m36555i()) {
            if (this.f387c == null) {
                m39086d();
            }
            compoundButton = this.f387c;
        } else {
            if (this.f389e == null) {
                m39091a();
            }
            compoundButton = this.f389e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f401q = z;
        this.f397m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f392h;
        if (imageView != null) {
            imageView.setVisibility((this.f399o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f385a.m36552l() || this.f401q;
        if (!z && !this.f397m) {
            return;
        }
        if (this.f386b != null || drawable != null || this.f397m) {
            if (this.f386b == null) {
                m39087b();
            }
            if (drawable != null || this.f397m) {
                ImageView imageView = this.f386b;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.f386b.getVisibility() != 0) {
                    this.f386b.setVisibility(0);
                    return;
                }
                return;
            }
            this.f386b.setVisibility(8);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f388d.setText(charSequence);
            if (this.f388d.getVisibility() != 0) {
                this.f388d.setVisibility(0);
            }
        } else if (this.f388d.getVisibility() != 8) {
            this.f388d.setVisibility(8);
        }
    }
}
