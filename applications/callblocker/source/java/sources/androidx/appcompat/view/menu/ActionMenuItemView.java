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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.menu.AbstractC0216n;
import androidx.appcompat.view.menu.C0199g;
import androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, AbstractC0216n.AbstractC0217a, ActionMenuView.AbstractC0231a {

    /* renamed from: a */
    C0203i f648a;

    /* renamed from: b */
    C0199g.AbstractC0201b f649b;

    /* renamed from: c */
    AbstractC0186b f650c;

    /* renamed from: e */
    private CharSequence f651e;

    /* renamed from: f */
    private Drawable f652f;

    /* renamed from: g */
    private AbstractView$OnAttachStateChangeListenerC0282ab f653g;

    /* renamed from: h */
    private boolean f654h;

    /* renamed from: i */
    private boolean f655i;

    /* renamed from: j */
    private int f656j;

    /* renamed from: k */
    private int f657k;

    /* renamed from: l */
    private int f658l;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    private class C0185a extends AbstractView$OnAttachStateChangeListenerC0282ab {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0185a() {
            super(r4);
            ActionMenuItemView.this = r4;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab
        /* renamed from: a */
        public AbstractC0219p mo21358a() {
            return ActionMenuItemView.this.f650c != null ? ActionMenuItemView.this.f650c.mo21361a() : null;
        }

        @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0282ab
        /* renamed from: b */
        protected boolean mo21357b() {
            boolean z = false;
            if (ActionMenuItemView.this.f649b != null) {
                z = false;
                if (ActionMenuItemView.this.f649b.mo21748a(ActionMenuItemView.this.f648a)) {
                    AbstractC0219p mo21358a = mo21358a();
                    z = false;
                    if (mo21358a != null) {
                        z = false;
                        if (mo21358a.mo21536e()) {
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
    public static abstract class AbstractC0186b {
        /* renamed from: a */
        public abstract AbstractC0219p mo21361a();
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
        this.f654h = m21936e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.ActionMenuItemView, i, 0);
        this.f656j = obtainStyledAttributes.getDimensionPixelSize(C0083a.C0093j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f658l = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f657k = -1;
        setSaveEnabled(false);
    }

    /* renamed from: e */
    private boolean m21936e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r3.f655i != false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21935f() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r3
            java.lang.CharSequence r0 = r0.f651e
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L8a
            r0 = 1
            r6 = r0
        L10:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f652f
            if (r0 == 0) goto L35
            r0 = r4
            r7 = r0
            r0 = r3
            androidx.appcompat.view.menu.i r0 = r0.f648a
            boolean r0 = r0.m21821m()
            if (r0 == 0) goto L38
            r0 = r3
            boolean r0 = r0.f654h
            if (r0 != 0) goto L35
            r0 = r4
            r7 = r0
            r0 = r3
            boolean r0 = r0.f655i
            if (r0 == 0) goto L38
        L35:
            r0 = 1
            r7 = r0
        L38:
            r0 = r6
            r1 = r7
            r0 = r0 & r1
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L8f
            r0 = r3
            java.lang.CharSequence r0 = r0.f651e
            r8 = r0
        L47:
            r0 = r3
            r1 = r8
            r0.setText(r1)
            r0 = r3
            androidx.appcompat.view.menu.i r0 = r0.f648a
            java.lang.CharSequence r0 = r0.getContentDescription()
            r8 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto La1
            r0 = r6
            if (r0 == 0) goto L95
            r0 = 0
            r8 = r0
        L65:
            r0 = r3
            r1 = r8
            r0.setContentDescription(r1)
        L6b:
            r0 = r3
            androidx.appcompat.view.menu.i r0 = r0.f648a
            java.lang.CharSequence r0 = r0.getTooltipText()
            r8 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lb6
            r0 = r6
            if (r0 == 0) goto Laa
            r0 = r5
            r8 = r0
        L83:
            r0 = r3
            r1 = r8
            androidx.appcompat.widget.C0321ar.m21406a(r0, r1)
        L89:
            return
        L8a:
            r0 = 0
            r6 = r0
            goto L10
        L8f:
            r0 = 0
            r8 = r0
            goto L47
        L95:
            r0 = r3
            androidx.appcompat.view.menu.i r0 = r0.f648a
            java.lang.CharSequence r0 = r0.getTitle()
            r8 = r0
            goto L65
        La1:
            r0 = r3
            r1 = r8
            r0.setContentDescription(r1)
            goto L6b
        Laa:
            r0 = r3
            androidx.appcompat.view.menu.i r0 = r0.f648a
            java.lang.CharSequence r0 = r0.getTitle()
            r8 = r0
            goto L83
        Lb6:
            r0 = r3
            r1 = r8
            androidx.appcompat.widget.C0321ar.m21406a(r0, r1)
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ActionMenuItemView.m21935f():void");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public void mo2909a(C0203i c0203i, int i) {
        this.f648a = c0203i;
        setIcon(c0203i.getIcon());
        setTitle(c0203i.m21841a((AbstractC0216n.AbstractC0217a) this));
        setId(c0203i.getItemId());
        setVisibility(c0203i.isVisible() ? 0 : 8);
        setEnabled(c0203i.isEnabled());
        if (!c0203i.hasSubMenu() || this.f653g != null) {
            return;
        }
        this.f653g = new C0185a();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    /* renamed from: a */
    public boolean mo2910a() {
        return true;
    }

    /* renamed from: b */
    public boolean m21937b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0231a
    /* renamed from: c */
    public boolean mo21360c() {
        return m21937b() && this.f648a.getIcon() == null;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0231a
    /* renamed from: d */
    public boolean mo21359d() {
        return m21937b();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0216n.AbstractC0217a
    public C0203i getItemData() {
        return this.f648a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f649b != null) {
            this.f649b.mo21748a(this.f648a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f654h = m21936e();
        m21935f();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        boolean m21937b = m21937b();
        if (m21937b && this.f657k >= 0) {
            super.setPadding(this.f657k, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f656j) : this.f656j;
        if (mode != 1073741824 && this.f656j > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (m21937b || this.f652f == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f652f.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (!this.f648a.hasSubMenu() || this.f653g == null || !this.f653g.onTouch(this, motionEvent)) ? super.onTouchEvent(motionEvent) : true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f655i != z) {
            this.f655i = z;
            if (this.f648a == null) {
                return;
            }
            this.f648a.m21826h();
        }
    }

    public void setIcon(Drawable drawable) {
        this.f652f = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = intrinsicHeight;
            int i2 = intrinsicWidth;
            if (intrinsicWidth > this.f658l) {
                float f = this.f658l / intrinsicWidth;
                i2 = this.f658l;
                i = (int) (intrinsicHeight * f);
            }
            int i3 = i;
            int i4 = i2;
            if (i > this.f658l) {
                float f2 = this.f658l / i;
                i3 = this.f658l;
                i4 = (int) (i2 * f2);
            }
            drawable.setBounds(0, 0, i4, i3);
        }
        setCompoundDrawables(drawable, null, null, null);
        m21935f();
    }

    public void setItemInvoker(C0199g.AbstractC0201b abstractC0201b) {
        this.f649b = abstractC0201b;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f657k = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0186b abstractC0186b) {
        this.f650c = abstractC0186b;
    }

    public void setTitle(CharSequence charSequence) {
        this.f651e = charSequence;
        m21935f();
    }
}
