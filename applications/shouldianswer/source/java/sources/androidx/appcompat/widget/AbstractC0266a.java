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
import androidx.appcompat.C0051a;
import androidx.core.p023g.AbstractC0568z;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.C0564y;
import androidx.customview.p026a.AbstractC0610a;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0266a extends ViewGroup {

    /* renamed from: a */
    protected final C0267a f1110a;

    /* renamed from: b */
    protected final Context f1111b;

    /* renamed from: c */
    protected ActionMenuView f1112c;

    /* renamed from: d */
    protected ActionMenuPresenter f1113d;

    /* renamed from: e */
    protected int f1114e;

    /* renamed from: f */
    protected C0564y f1115f;

    /* renamed from: g */
    private boolean f1116g;

    /* renamed from: h */
    private boolean f1117h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    public class C0267a implements AbstractC0568z {

        /* renamed from: a */
        int f1118a;

        /* renamed from: c */
        private boolean f1120c = false;

        protected C0267a() {
            AbstractC0266a.this = r4;
        }

        /* renamed from: a */
        public C0267a m7307a(C0564y c0564y, int i) {
            AbstractC0266a.this.f1115f = c0564y;
            this.f1118a = i;
            return this;
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: a */
        public void mo3963a(View view) {
            AbstractC0266a.super.setVisibility(0);
            this.f1120c = false;
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: b */
        public void mo3962b(View view) {
            if (this.f1120c) {
                return;
            }
            AbstractC0266a abstractC0266a = AbstractC0266a.this;
            abstractC0266a.f1115f = null;
            AbstractC0266a.super.setVisibility(this.f1118a);
        }

        @Override // androidx.core.p023g.AbstractC0568z
        /* renamed from: c */
        public void mo3961c(View view) {
            this.f1120c = true;
        }
    }

    AbstractC0266a(Context context) {
        this(context, null);
    }

    AbstractC0266a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0266a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1110a = new C0267a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0051a.C0052a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1111b = context;
        } else {
            this.f1111b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: a */
    public static int m7313a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: a */
    public int m7311a(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, AbstractC0610a.INVALID_ID), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: a */
    public int m7310a(View view, int i, int i2, int i3, boolean z) {
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

    /* renamed from: a */
    public C0564y mo7312a(int i, long j) {
        C0564y c0564y = this.f1115f;
        if (c0564y != null) {
            c0564y.m6182b();
        }
        if (i != 0) {
            C0564y m6188a = C0552u.m6233n(this).m6188a(FlexItem.FLEX_GROW_DEFAULT);
            m6188a.m6187a(j);
            m6188a.m6183a(this.f1110a.m7307a(m6188a, i));
            return m6188a;
        }
        if (getVisibility() != 0) {
            setAlpha(FlexItem.FLEX_GROW_DEFAULT);
        }
        C0564y m6188a2 = C0552u.m6233n(this).m6188a(1.0f);
        m6188a2.m6187a(j);
        m6188a2.m6183a(this.f1110a.m7307a(m6188a2, i));
        return m6188a2;
    }

    /* renamed from: a */
    public boolean mo7314a() {
        ActionMenuPresenter actionMenuPresenter = this.f1113d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m7468c();
        }
        return false;
    }

    public int getAnimatedVisibility() {
        return this.f1115f != null ? this.f1110a.f1118a : getVisibility();
    }

    public int getContentHeight() {
        return this.f1114e;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0051a.C0061j.ActionBar, C0051a.C0052a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0051a.C0061j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1113d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m7481a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1117h = false;
        }
        if (!this.f1117h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1117h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1117h = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1116g = false;
        }
        if (!this.f1116g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1116g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1116g = false;
            return true;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f1114e = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C0564y c0564y = this.f1115f;
            if (c0564y != null) {
                c0564y.m6182b();
            }
            super.setVisibility(i);
        }
    }
}
