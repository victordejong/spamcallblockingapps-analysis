package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1807k.p1821i.AbstractC26560a0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.C26625z;
/* renamed from: n3.b.f.a */
/* loaded from: classes-dex2jar.jar:n3/b/f/a.class */
public abstract class AbstractC25489a extends ViewGroup {

    /* renamed from: a */
    public final C25490a f71300a;

    /* renamed from: b */
    public final Context f71301b;

    /* renamed from: c */
    public ActionMenuView f71302c;

    /* renamed from: d */
    public ActionMenuPresenter f71303d;

    /* renamed from: e */
    public int f71304e;

    /* renamed from: f */
    public C26625z f71305f;

    /* renamed from: g */
    public boolean f71306g;

    /* renamed from: h */
    public boolean f71307h;

    /* renamed from: n3.b.f.a$a */
    /* loaded from: classes-dex2jar.jar:n3/b/f/a$a.class */
    public class C25490a implements AbstractC26560a0 {

        /* renamed from: a */
        public boolean f71308a = false;

        /* renamed from: b */
        public int f71309b;

        public C25490a() {
            AbstractC25489a.this = r4;
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26560a0
        /* renamed from: a */
        public void mo1668a(View view) {
            this.f71308a = true;
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26560a0
        /* renamed from: b */
        public void mo1677b(View view) {
            if (this.f71308a) {
                return;
            }
            AbstractC25489a abstractC25489a = AbstractC25489a.this;
            abstractC25489a.f71305f = null;
            AbstractC25489a.super.setVisibility(this.f71309b);
        }

        @Override // p1727n3.p1807k.p1821i.AbstractC26560a0
        /* renamed from: c */
        public void mo1667c(View view) {
            AbstractC25489a.super.setVisibility(0);
            this.f71308a = false;
        }
    }

    public AbstractC25489a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC25489a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f71300a = new C25490a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0032R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f71301b = context;
        } else {
            this.f71301b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: c */
    public int m3407c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: d */
    public int m3406d(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
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

    /* renamed from: e */
    public C26625z m3405e(int i, long j) {
        C26625z c26625z = this.f71305f;
        if (c26625z != null) {
            c26625z.m1550b();
        }
        if (i != 0) {
            C26625z m1579b = C26614s.m1579b(this);
            m1579b.m1551a(0.0f);
            m1579b.m1549c(j);
            C25490a c25490a = this.f71300a;
            AbstractC25489a.this.f71305f = m1579b;
            c25490a.f71309b = i;
            View view = m1579b.f74523a.get();
            if (view != null) {
                m1579b.m1547e(view, c25490a);
            }
            return m1579b;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        C26625z m1579b2 = C26614s.m1579b(this);
        m1579b2.m1551a(1.0f);
        m1579b2.m1549c(j);
        C25490a c25490a2 = this.f71300a;
        AbstractC25489a.this.f71305f = m1579b2;
        c25490a2.f71309b = i;
        View view2 = m1579b2.f74523a.get();
        if (view2 != null) {
            m1579b2.m1547e(view2, c25490a2);
        }
        return m1579b2;
    }

    public int getAnimatedVisibility() {
        return this.f71305f != null ? this.f71300a.f71309b : getVisibility();
    }

    public int getContentHeight() {
        return this.f71304e;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0032R.styleable.ActionBar, C0032R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0032R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f71303d;
        if (actionMenuPresenter != null) {
            Configuration configuration2 = actionMenuPresenter.f71179b.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            actionMenuPresenter.q = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            C25469g c25469g = actionMenuPresenter.f71180c;
            if (c25469g == null) {
                return;
            }
            c25469g.m3467q(true);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f71307h = false;
        }
        if (!this.f71307h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f71307h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f71307h = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f71306g = false;
        }
        if (!this.f71306g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f71306g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f71306g = false;
            return true;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C26625z c26625z = this.f71305f;
            if (c26625z != null) {
                c26625z.m1550b();
            }
            super.setVisibility(i);
        }
    }
}
