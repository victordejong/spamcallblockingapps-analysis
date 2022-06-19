package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import d.a.a;
import d.a.j;
import d.h.m.t;
import d.h.m.x;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
abstract class AbstractC0121a extends ViewGroup {

    /* renamed from: b */
    protected final a f570b;

    /* renamed from: c */
    protected final Context f571c;

    /* renamed from: d */
    protected ActionMenuView f572d;

    /* renamed from: e */
    protected ActionMenuPresenter f573e;

    /* renamed from: f */
    protected int f574f;

    /* renamed from: g */
    protected x f575g;

    /* renamed from: h */
    private boolean f576h;

    /* renamed from: i */
    private boolean f577i;

    AbstractC0121a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    AbstractC0121a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f570b = new a(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f571c = context;
        } else {
            this.f571c = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: d */
    protected static int m14661d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: c */
    protected int m14662c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: e */
    protected int m14660e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        int i5 = measuredWidth;
        if (z) {
            i5 = -measuredWidth;
        }
        return i5;
    }

    /* renamed from: f */
    public x m14659f(int i, long j) {
        x xVar = this.f575g;
        if (xVar != null) {
            xVar.b();
        }
        if (i != 0) {
            x d = t.d(this);
            d.a(0.0f);
            d.d(j);
            a aVar = this.f570b;
            aVar.d(d, i);
            d.f(aVar);
            return d;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        x d2 = t.d(this);
        d2.a(1.0f);
        d2.d(j);
        a aVar2 = this.f570b;
        aVar2.d(d2, i);
        d2.f(aVar2);
        return d2;
    }

    public int getAnimatedVisibility() {
        return this.f575g != null ? this.f570b.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f574f;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, j.ActionBar, a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f573e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.z(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f577i = false;
        }
        if (!this.f577i) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f577i = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f577i = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f576h = false;
        }
        if (!this.f576h) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f576h = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f576h = false;
            return true;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            x xVar = this.f575g;
            if (xVar != null) {
                xVar.b();
            }
            super.setVisibility(i);
        }
    }
}
