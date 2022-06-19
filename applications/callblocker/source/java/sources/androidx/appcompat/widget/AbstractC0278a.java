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
import androidx.appcompat.C0083a;
import androidx.core.p026h.AbstractC0611z;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0607y;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.appcompat.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a.class */
public abstract class AbstractC0278a extends ViewGroup {

    /* renamed from: a */
    protected final C0279a f1189a;

    /* renamed from: b */
    protected final Context f1190b;

    /* renamed from: c */
    protected ActionMenuView f1191c;

    /* renamed from: d */
    protected C0330c f1192d;

    /* renamed from: e */
    protected int f1193e;

    /* renamed from: f */
    protected C0607y f1194f;

    /* renamed from: g */
    private boolean f1195g;

    /* renamed from: h */
    private boolean f1196h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: androidx.appcompat.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a$a.class */
    public class C0279a implements AbstractC0611z {

        /* renamed from: a */
        int f1197a;

        /* renamed from: c */
        private boolean f1199c = false;

        protected C0279a() {
            AbstractC0278a.this = r4;
        }

        /* renamed from: a */
        public C0279a m21562a(C0607y c0607y, int i) {
            AbstractC0278a.this.f1194f = c0607y;
            this.f1197a = i;
            return this;
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: a */
        public void mo20245a(View view) {
            AbstractC0278a.super.setVisibility(0);
            this.f1199c = false;
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: b */
        public void mo20244b(View view) {
            if (this.f1199c) {
                return;
            }
            AbstractC0278a.this.f1194f = null;
            AbstractC0278a.super.setVisibility(this.f1197a);
        }

        @Override // androidx.core.p026h.AbstractC0611z
        /* renamed from: c */
        public void mo20243c(View view) {
            this.f1199c = true;
        }
    }

    AbstractC0278a(Context context) {
        this(context, null);
    }

    AbstractC0278a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractC0278a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1189a = new C0279a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0083a.C0084a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f1190b = context;
        } else {
            this.f1190b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* renamed from: a */
    public static int m21568a(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* renamed from: a */
    public int m21566a(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, RecyclerView.UNDEFINED_DURATION), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* renamed from: a */
    public int m21565a(View view, int i, int i2, int i3, boolean z) {
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

    /* renamed from: a */
    public C0607y mo21567a(int i, long j) {
        C0607y m20255a;
        if (this.f1194f != null) {
            this.f1194f.m20249b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            m20255a = C0595u.m20311m(this).m20255a(1.0f);
            m20255a.m20254a(j);
            m20255a.m20250a(this.f1189a.m21562a(m20255a, i));
        } else {
            m20255a = C0595u.m20311m(this).m20255a(0.0f);
            m20255a.m20254a(j);
            m20255a.m20250a(this.f1189a.m21562a(m20255a, i));
        }
        return m20255a;
    }

    /* renamed from: a */
    public boolean mo21569a() {
        return this.f1192d != null ? this.f1192d.m21369e() : false;
    }

    public int getAnimatedVisibility() {
        return this.f1194f != null ? this.f1189a.f1197a : getVisibility();
    }

    public int getContentHeight() {
        return this.f1193e;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0083a.C0093j.ActionBar, C0083a.C0084a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0083a.C0093j.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        if (this.f1192d != null) {
            this.f1192d.m21384a(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1196h = false;
        }
        if (!this.f1196h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1196h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1196h = false;
            return true;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1195g = false;
        }
        if (!this.f1195g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1195g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1195g = false;
            return true;
        }
        return true;
    }

    public void setContentHeight(int i) {
        this.f1193e = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            if (this.f1194f != null) {
                this.f1194f.m20249b();
            }
            super.setVisibility(i);
        }
    }
}
