package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.AbstractC0146j;
import androidx.appcompat.view.menu.C0136e;
import androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.C0202c;
import androidx.appcompat.widget.C0212c0;
import androidx.appcompat.widget.C0220d1;
import p117h8.C3035k;
import p151l.AbstractC3422d;
import p151l.AbstractC3424f;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends C0212c0 implements AbstractC0146j.AbstractC0147a, View.OnClickListener, ActionMenuView.AbstractC0158a {

    /* renamed from: g */
    public C0140g f336g;

    /* renamed from: h */
    public CharSequence f337h;

    /* renamed from: i */
    public Drawable f338i;

    /* renamed from: j */
    public C0136e.AbstractC0138b f339j;

    /* renamed from: k */
    public AbstractView$OnTouchListenerC0246k0 f340k;

    /* renamed from: l */
    public AbstractC0125b f341l;

    /* renamed from: n */
    public boolean f343n;

    /* renamed from: o */
    public int f344o;

    /* renamed from: q */
    public int f346q;

    /* renamed from: m */
    public boolean f342m = m8724e();

    /* renamed from: p */
    public int f345p = -1;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    public class C0124a extends AbstractView$OnTouchListenerC0246k0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0124a() {
            super(r4);
            ActionMenuItemView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
        /* renamed from: b */
        public AbstractC3424f mo8419b() {
            AbstractC0125b abstractC0125b = ActionMenuItemView.this.f341l;
            AbstractC3422d abstractC3422d = null;
            if (abstractC0125b != null) {
                C0202c.C0203a c0203a = C0202c.this.f854u;
                abstractC3422d = null;
                if (c0203a != null) {
                    abstractC3422d = c0203a.m8686a();
                }
            }
            return abstractC3422d;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
        /* renamed from: c */
        public boolean mo8418c() {
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0136e.AbstractC0138b abstractC0138b = actionMenuItemView.f339j;
            boolean z = false;
            if (abstractC0138b != null) {
                z = false;
                if (abstractC0138b.mo8663a(actionMenuItemView.f336g)) {
                    AbstractC3424f mo8419b = mo8419b();
                    z = false;
                    if (mo8419b != null) {
                        z = false;
                        if (mo8419b.mo2305b()) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$b.class */
    public static abstract class AbstractC0125b {
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10216c, 0, 0);
        this.f344o = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.f346q = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setSaveEnabled(false);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0158a
    /* renamed from: a */
    public boolean mo8568a() {
        return m8725c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0158a
    /* renamed from: b */
    public boolean mo8567b() {
        return m8725c() && this.f336g.getIcon() == null;
    }

    /* renamed from: c */
    public boolean m8725c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    /* renamed from: d */
    public void mo4552d(C0140g c0140g, int i) {
        this.f336g = c0140g;
        setIcon(c0140g.getIcon());
        setTitle(c0140g.getTitleCondensed());
        setId(c0140g.f458a);
        setVisibility(c0140g.isVisible() ? 0 : 8);
        setEnabled(c0140g.isEnabled());
        if (!c0140g.hasSubMenu() || this.f340k != null) {
            return;
        }
        this.f340k = new C0124a();
    }

    /* renamed from: e */
    public final boolean m8724e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: f */
    public final void m8723f() {
        boolean isEmpty = TextUtils.isEmpty(this.f337h);
        boolean z = true;
        if (this.f338i != null) {
            if ((this.f336g.f482y & 4) == 4) {
                z = true;
                if (!this.f342m) {
                    if (this.f343n) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        setText(z2 ? this.f337h : null);
        CharSequence charSequence = this.f336g.f474q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z2 ? null : this.f336g.f462e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f336g.f475r;
        if (TextUtils.isEmpty(charSequence2)) {
            C0220d1.m8549a(this, z2 ? null : this.f336g.f462e);
        } else {
            C0220d1.m8549a(this, charSequence2);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0146j.AbstractC0147a
    public C0140g getItemData() {
        return this.f336g;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0136e.AbstractC0138b abstractC0138b = this.f339j;
        if (abstractC0138b != null) {
            abstractC0138b.mo8663a(this.f336g);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f342m = m8724e();
        m8723f();
    }

    @Override // androidx.appcompat.widget.C0212c0, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean m8725c = m8725c();
        if (m8725c && (i3 = this.f345p) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f344o) : this.f344o;
        if (mode != 1073741824 && this.f344o > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m8725c || this.f338i == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f338i.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0246k0 abstractView$OnTouchListenerC0246k0;
        if (!this.f336g.hasSubMenu() || (abstractView$OnTouchListenerC0246k0 = this.f340k) == null || !abstractView$OnTouchListenerC0246k0.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f343n != z) {
            this.f343n = z;
            C0140g c0140g = this.f336g;
            if (c0140g == null) {
                return;
            }
            C0136e c0136e = c0140g.f471n;
            c0136e.f437k = true;
            c0136e.mo696p(true);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f338i = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f346q;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (int) (intrinsicHeight * (i / intrinsicWidth));
                i2 = i;
            }
            if (i3 > i) {
                i2 = (int) (i2 * (i / i3));
            } else {
                i = i3;
            }
            drawable.setBounds(0, 0, i2, i);
        }
        setCompoundDrawables(drawable, null, null, null);
        m8723f();
    }

    public void setItemInvoker(C0136e.AbstractC0138b abstractC0138b) {
        this.f339j = abstractC0138b;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f345p = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0125b abstractC0125b) {
        this.f341l = abstractC0125b;
    }

    public void setTitle(CharSequence charSequence) {
        this.f337h = charSequence;
        m8723f();
    }
}
