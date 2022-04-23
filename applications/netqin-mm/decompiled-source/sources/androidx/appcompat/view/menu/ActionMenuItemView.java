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
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.AbstractC0667p;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s;
import p012b.p016b.p026q.C0697h0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView.class */
public class ActionMenuItemView extends AppCompatTextView implements AbstractC0664n.AbstractC0665a, View.OnClickListener, ActionMenuView.AbstractC0122a {

    /* renamed from: e */
    public C0651i f370e;

    /* renamed from: f */
    public CharSequence f371f;

    /* renamed from: g */
    public Drawable f372g;

    /* renamed from: h */
    public C0647g.AbstractC0649b f373h;

    /* renamed from: i */
    public AbstractView$OnTouchListenerC0722s f374i;

    /* renamed from: j */
    public AbstractC0108b f375j;

    /* renamed from: k */
    public boolean f376k;

    /* renamed from: l */
    public boolean f377l;

    /* renamed from: m */
    public int f378m;

    /* renamed from: n */
    public int f379n;

    /* renamed from: o */
    public int f380o;

    /* renamed from: androidx.appcompat.view.menu.ActionMenuItemView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ActionMenuItemView$a.class */
    public class C0107a extends AbstractView$OnTouchListenerC0722s {
        public C0107a() {
            super(ActionMenuItemView.this);
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: b */
        public AbstractC0667p mo36228b() {
            AbstractC0108b bVar = ActionMenuItemView.this.f375j;
            if (bVar != null) {
                return bVar.mo39046a();
            }
            return null;
        }

        @Override // p012b.p016b.p026q.AbstractView$OnTouchListenerC0722s
        /* renamed from: c */
        public boolean mo36225c() {
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            C0647g.AbstractC0649b bVar = actionMenuItemView.f373h;
            boolean z = false;
            if (bVar != null) {
                z = false;
                if (bVar.mo36575a(actionMenuItemView.f370e)) {
                    AbstractC0667p b = mo36228b();
                    z = false;
                    if (b != null) {
                        z = false;
                        if (b.mo36517a()) {
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
    public static abstract class AbstractC0108b {
        /* renamed from: a */
        public abstract AbstractC0667p mo39046a();
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
        this.f376k = m39093f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ActionMenuItemView, i, 0);
        this.f378m = obtainStyledAttributes.getDimensionPixelSize(C0583j.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.f380o = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f379n = -1;
        setSaveEnabled(false);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    /* renamed from: a */
    public void mo36519a(C0651i iVar, int i) {
        this.f370e = iVar;
        setIcon(iVar.getIcon());
        setTitle(iVar.m36570a(this));
        setId(iVar.getItemId());
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.f374i == null) {
            this.f374i = new C0107a();
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0122a
    /* renamed from: a */
    public boolean mo39033a() {
        return m39094e();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0122a
    /* renamed from: b */
    public boolean mo39032b() {
        return m39094e() && this.f370e.getIcon() == null;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    /* renamed from: c */
    public boolean mo36518c() {
        return true;
    }

    /* renamed from: e */
    public boolean m39094e() {
        return !TextUtils.isEmpty(getText());
    }

    /* renamed from: f */
    public final boolean m39093f() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    /* renamed from: g */
    public final void m39092g() {
        boolean isEmpty = TextUtils.isEmpty(this.f371f);
        boolean z = true;
        if (this.f372g != null) {
            if (this.f370e.m36550n()) {
                z = true;
                if (!this.f376k) {
                    if (this.f377l) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        boolean z2 = (!isEmpty) & z;
        CharSequence charSequence = null;
        setText(z2 ? this.f371f : null);
        CharSequence contentDescription = this.f370e.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            setContentDescription(z2 ? null : this.f370e.getTitle());
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f370e.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z2) {
                charSequence = this.f370e.getTitle();
            }
            C0697h0.m36376a(this, charSequence);
            return;
        }
        C0697h0.m36376a(this, tooltipText);
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n.AbstractC0665a
    public C0651i getItemData() {
        return this.f370e;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0647g.AbstractC0649b bVar = this.f373h;
        if (bVar != null) {
            bVar.mo36575a(this.f370e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f376k = m39093f();
        m39092g();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean e = m39094e();
        if (e && (i3 = this.f379n) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.f378m) : this.f378m;
        if (mode != 1073741824 && this.f378m > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (!e && this.f372g != null) {
            super.setPadding((getMeasuredWidth() - this.f372g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractView$OnTouchListenerC0722s sVar;
        if (!this.f370e.hasSubMenu() || (sVar = this.f374i) == null || !sVar.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.f377l != z) {
            this.f377l = z;
            C0651i iVar = this.f370e;
            if (iVar != null) {
                iVar.m36566b();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f372g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.f380o;
            int i2 = intrinsicWidth;
            int i3 = intrinsicHeight;
            if (intrinsicWidth > i) {
                i3 = (int) (intrinsicHeight * (i / intrinsicWidth));
                i2 = i;
            }
            int i4 = this.f380o;
            int i5 = i2;
            int i6 = i3;
            if (i3 > i4) {
                i5 = (int) (i2 * (i4 / i3));
                i6 = i4;
            }
            drawable.setBounds(0, 0, i5, i6);
        }
        setCompoundDrawables(drawable, null, null, null);
        m39092g();
    }

    public void setItemInvoker(C0647g.AbstractC0649b bVar) {
        this.f373h = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.f379n = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(AbstractC0108b bVar) {
        this.f375j = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f371f = charSequence;
        m39092g();
    }
}
