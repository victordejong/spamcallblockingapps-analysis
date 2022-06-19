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
import androidx.appcompat.view.menu.AbstractC0195n;
import androidx.appcompat.view.menu.C0178g;
import androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0293g0;
import p020b.p021a.C1432j;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements AbstractC0195n.AbstractC0196a, View.OnClickListener, ActionMenuView.AbstractC0217a {

    /* renamed from: i */
    C0182i f509i;

    /* renamed from: j */
    private CharSequence f510j;

    /* renamed from: k */
    private Drawable f511k;

    /* renamed from: l */
    C0178g.AbstractC0180b f512l;

    /* renamed from: m */
    private AbstractView$OnTouchListenerC0323t f513m;

    /* renamed from: n */
    AbstractC0165b f514n;

    /* renamed from: o */
    private boolean f515o;

    /* renamed from: p */
    private boolean f516p;

    /* renamed from: q */
    private int f517q;

    /* renamed from: r */
    private int f518r;

    /* renamed from: s */
    private int f519s;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    private class C0164a extends AbstractView$OnTouchListenerC0323t {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0164a() {
            super(r4);
            ActionMenuItemView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: b */
        public AbstractC0198p mo34756b() {
            AbstractC0165b abstractC0165b = ActionMenuItemView.this.f514n;
            if (abstractC0165b != null) {
                return abstractC0165b.mo35243a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0323t
        /* renamed from: c */
        protected boolean mo34755c() {
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0178g.AbstractC0180b abstractC0180b = actionMenuItemView.f512l;
            boolean z = false;
            if (abstractC0180b != null) {
                z = false;
                if (abstractC0180b.mo35227a(actionMenuItemView.f509i)) {
                    AbstractC0198p mo34756b = mo34756b();
                    z = false;
                    if (mo34756b != null) {
                        z = false;
                        if (mo34756b.mo35138a()) {
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
    public static abstract class AbstractC0165b {
        /* renamed from: a */
        public abstract AbstractC0198p mo35243a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.f515o = m35452o();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.ActionMenuItemView, i, 0);
        this.f517q = obtainStyledAttributes.getDimensionPixelSize(C1432j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f519s = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f518r = -1;
        setSaveEnabled(false);
    }

    /* renamed from: o */
    private boolean m35452o() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: p */
    private void m35451p() {
        boolean isEmpty = TextUtils.isEmpty(this.f510j);
        boolean z = true;
        if (this.f511k != null) {
            if (this.f509i.m35362B()) {
                z = true;
                if (!this.f515o) {
                    if (this.f516p) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        setText(z2 ? this.f510j : null);
        CharSequence contentDescription = this.f509i.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f509i.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f509i.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            C0293g0.m34913a(this, z2 ? null : this.f509i.getTitle());
        } else {
            C0293g0.m34913a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0217a
    /* renamed from: a */
    public boolean mo35226a() {
        return m35453j();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0217a
    /* renamed from: b */
    public boolean mo35225b() {
        return m35453j() && this.f509i.getIcon() == null;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: d */
    public boolean mo4641d() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    /* renamed from: e */
    public void mo4640e(C0182i c0182i, int i) {
        this.f509i = c0182i;
        setIcon(c0182i.getIcon());
        setTitle(c0182i.m35355i(this));
        setId(c0182i.getItemId());
        setVisibility(c0182i.isVisible() ? 0 : 8);
        setEnabled(c0182i.isEnabled());
        if (!c0182i.hasSubMenu() || this.f513m != null) {
            return;
        }
        this.f513m = new C0164a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0195n.AbstractC0196a
    public C0182i getItemData() {
        return this.f509i;
    }

    /* renamed from: j */
    public boolean m35453j() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0178g.AbstractC0180b abstractC0180b = this.f512l;
        if (abstractC0180b != null) {
            abstractC0180b.mo35227a(this.f509i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f515o = m35452o();
        m35451p();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean m35453j = m35453j();
        if (m35453j && (i3 = this.f518r) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f517q) : this.f517q;
        if (mode != 1073741824 && this.f517q > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m35453j || this.f511k == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f511k.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0323t abstractView$OnTouchListenerC0323t;
        if (!this.f509i.hasSubMenu() || (abstractView$OnTouchListenerC0323t = this.f513m) == null || !abstractView$OnTouchListenerC0323t.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f516p != z) {
            this.f516p = z;
            C0182i c0182i = this.f509i;
            if (c0182i == null) {
                return;
            }
            c0182i.m35361c();
        }
    }

    public void setIcon(Drawable drawable) {
        this.f511k = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f519s;
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
        m35451p();
    }

    public void setItemInvoker(C0178g.AbstractC0180b abstractC0180b) {
        this.f512l = abstractC0180b;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f518r = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0165b abstractC0165b) {
        this.f514n = abstractC0165b;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        this.f510j = charSequence;
        m35451p();
    }
}
