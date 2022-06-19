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
import androidx.appcompat.view.menu.C0136e;
import me.zhanghai.android.materialprogressbar.C3681R;
import p117h8.C3035k;
import p163m0.AbstractC3614z;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0194a extends ViewGroup {

    /* renamed from: a */
    public final C0195a f807a;

    /* renamed from: b */
    public final Context f808b;

    /* renamed from: c */
    public ActionMenuView f809c;

    /* renamed from: d */
    public C0202c f810d;

    /* renamed from: e */
    public int f811e;

    /* renamed from: f */
    public C3611y f812f;

    /* renamed from: g */
    public boolean f813g;

    /* renamed from: h */
    public boolean f814h;

    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    public class C0195a implements AbstractC3614z {

        /* renamed from: a */
        public boolean f815a = false;

        /* renamed from: b */
        public int f816b;

        public C0195a() {
            AbstractC0194a.this = r4;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: a */
        public void mo1977a(View view) {
            this.f815a = true;
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: c */
        public void mo1976c(View view) {
            if (this.f815a) {
                return;
            }
            AbstractC0194a abstractC0194a = AbstractC0194a.this;
            abstractC0194a.f812f = null;
            AbstractC0194a.super.setVisibility(this.f816b);
        }

        @Override // p163m0.AbstractC3614z
        /* renamed from: d */
        public void mo1975d(View view) {
            AbstractC0194a.super.setVisibility(0);
            this.f815a = false;
        }
    }

    public AbstractC0194a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0194a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f807a = new C0195a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C3681R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f808b = context;
        } else {
            this.f808b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: c */
    public int m8590c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: d */
    public int m8589d(View view, int i, int i2, int i3, boolean z) {
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
    public C3611y m8588e(int i, long j) {
        C3611y c3611y = this.f812f;
        if (c3611y != null) {
            c3611y.m1983b();
        }
        if (i != 0) {
            C3611y m2122b = C3589v.m2122b(this);
            m2122b.m1984a(0.0f);
            m2122b.m1982c(j);
            C0195a c0195a = this.f807a;
            AbstractC0194a.this.f812f = m2122b;
            c0195a.f816b = i;
            View view = m2122b.f11802a.get();
            if (view != null) {
                m2122b.m1980e(view, c0195a);
            }
            return m2122b;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        C3611y m2122b2 = C3589v.m2122b(this);
        m2122b2.m1984a(1.0f);
        m2122b2.m1982c(j);
        C0195a c0195a2 = this.f807a;
        AbstractC0194a.this.f812f = m2122b2;
        c0195a2.f816b = i;
        View view2 = m2122b2.f11802a.get();
        if (view2 != null) {
            m2122b2.m1980e(view2, c0195a2);
        }
        return m2122b2;
    }

    public int getAnimatedVisibility() {
        return this.f812f != null ? this.f807a.f816b : getVisibility();
    }

    public int getContentHeight() {
        return this.f811e;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C3035k.f10214a, C3681R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        C0202c c0202c = this.f810d;
        if (c0202c != null) {
            Configuration configuration2 = c0202c.f368b.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            c0202c.f850q = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            C0136e c0136e = c0202c.f369c;
            if (c0136e == null) {
                return;
            }
            c0136e.mo696p(true);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f814h = false;
        }
        if (!this.f814h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f814h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f814h = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f813g = false;
        }
        if (!this.f813g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f813g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f813g = false;
            return true;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f811e = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            C3611y c3611y = this.f812f;
            if (c3611y != null) {
                c3611y.m1983b();
            }
            super.setVisibility(i);
        }
    }
}
