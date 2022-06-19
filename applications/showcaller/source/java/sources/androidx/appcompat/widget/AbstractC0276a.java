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
import p020b.p021a.C1423a;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.AbstractC1608b0;
import p020b.p041h.p050l.C1601a0;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0276a extends ViewGroup {

    /* renamed from: d */
    protected final C0277a f1220d;

    /* renamed from: e */
    protected final Context f1221e;

    /* renamed from: f */
    protected ActionMenuView f1222f;

    /* renamed from: g */
    protected ActionMenuPresenter f1223g;

    /* renamed from: h */
    protected int f1224h;

    /* renamed from: i */
    protected C1601a0 f1225i;

    /* renamed from: j */
    private boolean f1226j;

    /* renamed from: k */
    private boolean f1227k;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    public class C0277a implements AbstractC1608b0 {

        /* renamed from: a */
        private boolean f1228a = false;

        /* renamed from: b */
        int f1229b;

        protected C0277a() {
            AbstractC0276a.this = r4;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: a */
        public void mo29609a(View view) {
            this.f1228a = true;
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: b */
        public void mo29619b(View view) {
            if (this.f1228a) {
                return;
            }
            AbstractC0276a abstractC0276a = AbstractC0276a.this;
            abstractC0276a.f1225i = null;
            AbstractC0276a.super.setVisibility(this.f1229b);
        }

        @Override // p020b.p041h.p050l.AbstractC1608b0
        /* renamed from: c */
        public void mo29608c(View view) {
            AbstractC0276a.super.setVisibility(0);
            this.f1228a = false;
        }

        /* renamed from: d */
        public C0277a m34990d(C1601a0 c1601a0, int i) {
            AbstractC0276a.this.f1225i = c1601a0;
            this.f1229b = i;
            return this;
        }
    }

    AbstractC0276a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0276a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1220d = new C0277a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C1423a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1221e = context;
        } else {
            this.f1221e = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: d */
    public static int m34993d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: c */
    public int m34994c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: e */
    public int m34992e(View view, int i, int i2, int i3, boolean z) {
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
    public C1601a0 mo34991f(int i, long j) {
        C1601a0 c1601a0 = this.f1225i;
        if (c1601a0 != null) {
            c1601a0.m29641b();
        }
        if (i != 0) {
            C1601a0 m29642a = C1679w.m29302d(this).m29642a(0.0f);
            m29642a.m29639d(j);
            m29642a.m29637f(this.f1220d.m34990d(m29642a, i));
            return m29642a;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        C1601a0 m29642a2 = C1679w.m29302d(this).m29642a(1.0f);
        m29642a2.m29639d(j);
        m29642a2.m29637f(this.f1220d.m34990d(m29642a2, i));
        return m29642a2;
    }

    public int getAnimatedVisibility() {
        return this.f1225i != null ? this.f1220d.f1229b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1224h;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C1432j.ActionBar, C1423a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C1432j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f1223g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m35262I(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1227k = false;
        }
        if (!this.f1227k) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1227k = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1227k = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1226j = false;
        }
        if (!this.f1226j) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1226j = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1226j = false;
            return true;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C1601a0 c1601a0 = this.f1225i;
            if (c1601a0 != null) {
                c1601a0.m29641b();
            }
            super.setVisibility(i);
        }
    }
}
