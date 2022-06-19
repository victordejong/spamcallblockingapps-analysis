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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.menu.AbstractC0199n;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0315au;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, AbstractC0199n.AbstractC0200a, ActionMenuView.AbstractC0222a {

    /* renamed from: a */
    C0186i f596a;

    /* renamed from: b */
    C0182g.AbstractC0184b f597b;

    /* renamed from: c */
    AbstractC0169b f598c;

    /* renamed from: e */
    private CharSequence f599e;

    /* renamed from: f */
    private Drawable f600f;

    /* renamed from: g */
    private AbstractView$OnAttachStateChangeListenerC0274ad f601g;

    /* renamed from: h */
    private boolean f602h;

    /* renamed from: i */
    private boolean f603i;

    /* renamed from: j */
    private int f604j;

    /* renamed from: k */
    private int f605k;

    /* renamed from: l */
    private int f606l;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    private class C0168a extends AbstractView$OnAttachStateChangeListenerC0274ad {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0168a() {
            super(r4);
            ActionMenuItemView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad
        /* renamed from: a */
        public AbstractC0202p mo7288a() {
            if (ActionMenuItemView.this.f598c != null) {
                return ActionMenuItemView.this.f598c.mo7456a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0274ad
        /* renamed from: b */
        protected boolean mo7284b() {
            boolean z = false;
            if (ActionMenuItemView.this.f597b != null) {
                z = false;
                if (ActionMenuItemView.this.f597b.mo7448a(ActionMenuItemView.this.f596a)) {
                    AbstractC0202p mo7288a = mo7288a();
                    z = false;
                    if (mo7288a != null) {
                        z = false;
                        if (mo7288a.mo7266c()) {
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
    public static abstract class AbstractC0169b {
        /* renamed from: a */
        public abstract AbstractC0202p mo7456a();
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
        this.f602h = m7605d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.ActionMenuItemView, i, 0);
        this.f604j = obtainStyledAttributes.getDimensionPixelSize(C0051a.C0061j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f606l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f605k = -1;
        setSaveEnabled(false);
    }

    /* renamed from: d */
    private boolean m7605d() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: e */
    private void m7604e() {
        boolean isEmpty = TextUtils.isEmpty(this.f599e);
        boolean z = true;
        if (this.f600f != null) {
            if (this.f596a.m7540m()) {
                z = true;
                if (!this.f602h) {
                    if (this.f603i) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        setText(z2 ? this.f599e : null);
        CharSequence contentDescription = this.f596a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f596a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f596a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            C0315au.m7132a(this, z2 ? null : this.f596a.getTitle());
        } else {
            C0315au.m7132a(this, tooltipText);
        }
    }

    /* renamed from: a */
    public boolean m7606a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0222a
    /* renamed from: b */
    public boolean mo7438b() {
        return m7606a() && this.f596a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0222a
    /* renamed from: c */
    public boolean mo7437c() {
        return m7606a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public C0186i getItemData() {
        return this.f596a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public void initialize(C0186i c0186i, int i) {
        this.f596a = c0186i;
        setIcon(c0186i.getIcon());
        setTitle(c0186i.m7560a((AbstractC0199n.AbstractC0200a) this));
        setId(c0186i.getItemId());
        setVisibility(c0186i.isVisible() ? 0 : 8);
        setEnabled(c0186i.isEnabled());
        if (!c0186i.hasSubMenu() || this.f601g != null) {
            return;
        }
        this.f601g = new C0168a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0182g.AbstractC0184b abstractC0184b = this.f597b;
        if (abstractC0184b != null) {
            abstractC0184b.mo7448a(this.f596a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f602h = m7605d();
        m7604e();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean m7606a = m7606a();
        if (m7606a && (i3 = this.f605k) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f604j) : this.f604j;
        if (mode != 1073741824 && this.f604j > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m7606a || this.f600f == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f600f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0274ad abstractView$OnAttachStateChangeListenerC0274ad;
        if (!this.f596a.hasSubMenu() || (abstractView$OnAttachStateChangeListenerC0274ad = this.f601g) == null || !abstractView$OnAttachStateChangeListenerC0274ad.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0199n.AbstractC0200a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f603i != z) {
            this.f603i = z;
            C0186i c0186i = this.f596a;
            if (c0186i == null) {
                return;
            }
            c0186i.m7545h();
        }
    }

    public void setIcon(Drawable drawable) {
        this.f600f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f606l;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (int) (intrinsicHeight * (i / intrinsicWidth));
                i2 = i;
            }
            int i4 = this.f606l;
            int i5 = i2;
            int i6 = i3;
            if (i3 > i4) {
                i5 = (int) (i2 * (i4 / i3));
                i6 = i4;
            }
            drawable.setBounds(0, 0, i5, i6);
        }
        setCompoundDrawables(drawable, null, null, null);
        m7604e();
    }

    public void setItemInvoker(C0182g.AbstractC0184b abstractC0184b) {
        this.f597b = abstractC0184b;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f605k = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0169b abstractC0169b) {
        this.f598c = abstractC0169b;
    }

    public void setTitle(CharSequence charSequence) {
        this.f599e = charSequence;
        m7604e();
    }
}
