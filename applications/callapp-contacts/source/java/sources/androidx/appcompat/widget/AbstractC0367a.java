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
import androidx.appcompat.C0142a;
import androidx.core.view.AbstractC0944z;
import androidx.core.view.C0926v;
import androidx.core.view.C0940y;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0367a extends ViewGroup {

    /* renamed from: a */
    protected final C0368a f1479a;

    /* renamed from: b */
    protected final Context f1480b;

    /* renamed from: c */
    protected ActionMenuView f1481c;

    /* renamed from: d */
    protected ActionMenuPresenter f1482d;

    /* renamed from: e */
    protected int f1483e;

    /* renamed from: f */
    protected C0940y f1484f;

    /* renamed from: g */
    private boolean f1485g;

    /* renamed from: h */
    private boolean f1486h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    public final class C0368a implements AbstractC0944z {

        /* renamed from: a */
        int f1487a;

        /* renamed from: c */
        private boolean f1489c = false;

        protected C0368a() {
            AbstractC0367a.this = r4;
        }

        /* renamed from: a */
        public final C0368a m45811a(C0940y c0940y, int i) {
            AbstractC0367a.this.f1484f = c0940y;
            this.f1487a = i;
            return this;
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: a */
        public final void mo44039a(View view) {
            AbstractC0367a.super.setVisibility(0);
            this.f1489c = false;
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: b */
        public final void mo44038b(View view) {
            if (this.f1489c) {
                return;
            }
            AbstractC0367a.this.f1484f = null;
            AbstractC0367a.super.setVisibility(this.f1487a);
        }

        @Override // androidx.core.view.AbstractC0944z
        /* renamed from: c */
        public final void mo44037c(View view) {
            this.f1489c = true;
        }
    }

    AbstractC0367a(Context context) {
        this(context, null);
    }

    AbstractC0367a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0367a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1479a = new C0368a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0142a.C0143a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1480b = context;
        } else {
            this.f1480b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: a */
    public static int m45817a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: a */
    public static int m45815a(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - 0);
    }

    /* renamed from: a */
    public static int m45814a(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: a */
    public C0940y mo45816a(int i, long j) {
        C0940y c0940y = this.f1484f;
        if (c0940y != null) {
            c0940y.m44043b();
        }
        if (i != 0) {
            C0940y m44049a = C0926v.m44086m(this).m44049a(BitmapDescriptorFactory.HUE_RED);
            m44049a.m44048a(j);
            m44049a.m44044a(this.f1479a.m45811a(m44049a, i));
            return m44049a;
        }
        if (getVisibility() != 0) {
            setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        C0940y m44049a2 = C0926v.m44086m(this).m44049a(1.0f);
        m44049a2.m44048a(j);
        m44049a2.m44044a(this.f1479a.m45811a(m44049a2, i));
        return m44049a2;
    }

    /* renamed from: a */
    public boolean mo45818a() {
        ActionMenuPresenter actionMenuPresenter = this.f1482d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m46009e();
        }
        return false;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0142a.C0152j.ActionBar, C0142a.C0143a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0142a.C0152j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1482d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m46011c();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1486h = false;
        }
        if (!this.f1486h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1486h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1486h = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1485g = false;
        }
        if (!this.f1485g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1485g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1485g = false;
            return true;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f1483e = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C0940y c0940y = this.f1484f;
            if (c0940y != null) {
                c0940y.m44043b();
            }
            super.setVisibility(i);
        }
    }
}
