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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.menu.AbstractC0285n;
import androidx.appcompat.view.menu.C0268g;
import androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0374ad;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, AbstractC0285n.AbstractC0286a, ActionMenuView.AbstractC0307a {

    /* renamed from: a */
    C0272i f762a;

    /* renamed from: b */
    C0268g.AbstractC0270b f763b;

    /* renamed from: c */
    AbstractC0255b f764c;

    /* renamed from: e */
    private CharSequence f765e;

    /* renamed from: f */
    private Drawable f766f;

    /* renamed from: g */
    private AbstractView$OnAttachStateChangeListenerC0410r f767g;

    /* renamed from: h */
    private boolean f768h;

    /* renamed from: i */
    private boolean f769i;

    /* renamed from: j */
    private int f770j;

    /* renamed from: k */
    private int f771k;

    /* renamed from: l */
    private int f772l;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    final class C0254a extends AbstractView$OnAttachStateChangeListenerC0410r {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0254a() {
            super(r4);
            ActionMenuItemView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
        /* renamed from: a */
        public final AbstractC0288p mo45617a() {
            if (ActionMenuItemView.this.f764c != null) {
                return ActionMenuItemView.this.f764c.mo46004a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0410r
        /* renamed from: b */
        public final boolean mo45616b() {
            AbstractC0288p mo45617a;
            return ActionMenuItemView.this.f763b != null && ActionMenuItemView.this.f763b.mo45999a(ActionMenuItemView.this.f762a) && (mo45617a = mo45617a()) != null && mo45617a.mo45923e();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$b.class */
    public static abstract class AbstractC0255b {
        /* renamed from: a */
        public abstract AbstractC0288p mo46004a();
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
        this.f768h = m46132f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.ActionMenuItemView, i, 0);
        this.f770j = obtainStyledAttributes.getDimensionPixelSize(C0142a.C0152j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f772l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f771k = -1;
        setSaveEnabled(false);
    }

    /* renamed from: f */
    private boolean m46132f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480) {
            return (i >= 640 && i2 >= 480) || configuration.orientation == 2;
        }
        return true;
    }

    /* renamed from: g */
    private void m46131g() {
        boolean isEmpty = TextUtils.isEmpty(this.f765e);
        boolean z = true;
        if (this.f766f != null) {
            if (this.f762a.m46064i()) {
                z = true;
                if (!this.f768h) {
                    if (this.f769i) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        setText(z2 ? this.f765e : null);
        CharSequence contentDescription = this.f762a.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f762a.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f762a.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            C0374ad.m45785a(this, z2 ? null : this.f762a.getTitle());
        } else {
            C0374ad.m45785a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final C0272i mo10613a() {
        return this.f762a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: a */
    public final void mo10612a(C0272i c0272i) {
        this.f762a = c0272i;
        setIcon(c0272i.getIcon());
        setTitle(c0272i.m46079a((AbstractC0285n.AbstractC0286a) this));
        setId(c0272i.getItemId());
        setVisibility(c0272i.isVisible() ? 0 : 8);
        setEnabled(c0272i.isEnabled());
        if (!c0272i.hasSubMenu() || this.f767g != null) {
            return;
        }
        this.f767g = new C0254a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0285n.AbstractC0286a
    /* renamed from: b */
    public final boolean mo10611b() {
        return true;
    }

    /* renamed from: c */
    public final boolean m46133c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0307a
    /* renamed from: d */
    public final boolean mo45993d() {
        return m46133c() && this.f762a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0307a
    /* renamed from: e */
    public final boolean mo45992e() {
        return m46133c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0268g.AbstractC0270b abstractC0270b = this.f763b;
        if (abstractC0270b != null) {
            abstractC0270b.mo45999a(this.f762a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f768h = m46132f();
        m46131g();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean m46133c = m46133c();
        if (m46133c && (i3 = this.f771k) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f770j) : this.f770j;
        if (mode != 1073741824 && this.f770j > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m46133c || this.f766f == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f766f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnAttachStateChangeListenerC0410r abstractView$OnAttachStateChangeListenerC0410r;
        if (!this.f762a.hasSubMenu() || (abstractView$OnAttachStateChangeListenerC0410r = this.f767g) == null || !abstractView$OnAttachStateChangeListenerC0410r.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f769i != z) {
            this.f769i = z;
            C0272i c0272i = this.f762a;
            if (c0272i == null) {
                return;
            }
            c0272i.f920d.m46085h();
        }
    }

    public void setIcon(Drawable drawable) {
        this.f766f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f772l;
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
        m46131g();
    }

    public void setItemInvoker(C0268g.AbstractC0270b abstractC0270b) {
        this.f763b = abstractC0270b;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f771k = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0255b abstractC0255b) {
        this.f764c = abstractC0255b;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        this.f765e = charSequence;
        m46131g();
    }
}
