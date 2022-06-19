package com.cocosw.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
import p227s0.C4273c;
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/ClosableSlidingLayout.class */
public class ClosableSlidingLayout extends FrameLayout {

    /* renamed from: b */
    public View f5880b;

    /* renamed from: e */
    public AbstractC1589b f5883e;

    /* renamed from: f */
    public int f5884f;

    /* renamed from: g */
    public int f5885g;

    /* renamed from: h */
    public int f5886h;

    /* renamed from: i */
    public boolean f5887i;

    /* renamed from: j */
    public float f5888j;

    /* renamed from: l */
    public float f5890l;

    /* renamed from: c */
    public boolean f5881c = true;

    /* renamed from: k */
    public boolean f5889k = false;

    /* renamed from: d */
    public C4273c f5882d = C4273c.m1154j(this, 0.8f, new C1590c(null));

    /* renamed from: a */
    public final float f5879a = getResources().getDisplayMetrics().density * 400.0f;

    /* renamed from: com.cocosw.bottomsheet.ClosableSlidingLayout$b */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/ClosableSlidingLayout$b.class */
    public interface AbstractC1589b {
    }

    /* renamed from: com.cocosw.bottomsheet.ClosableSlidingLayout$c */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/ClosableSlidingLayout$c.class */
    public class C1590c extends C4273c.AbstractC4276c {
        public C1590c(C1588a c1588a) {
            ClosableSlidingLayout.this = r4;
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: b */
        public int mo1137b(View view, int i, int i2) {
            return Math.max(i, ClosableSlidingLayout.this.f5885g);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: i */
        public void mo1130i(View view, int i, int i2, int i3, int i4) {
            ClosableSlidingLayout closableSlidingLayout = ClosableSlidingLayout.this;
            if (closableSlidingLayout.f5884f - i2 >= 1 || closableSlidingLayout.f5883e == null) {
                return;
            }
            closableSlidingLayout.f5882d.m1163a();
            ((C1593c) ClosableSlidingLayout.this.f5883e).f5912a.dismiss();
            ClosableSlidingLayout.this.f5882d.m1140x(view, 0, i2);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: j */
        public void mo1129j(View view, float f, float f2) {
            ClosableSlidingLayout closableSlidingLayout = ClosableSlidingLayout.this;
            if (f2 > closableSlidingLayout.f5879a) {
                closableSlidingLayout.f5882d.m1140x(view, 0, closableSlidingLayout.f5885g + closableSlidingLayout.f5884f);
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3589v.C3593d.m2083k(closableSlidingLayout);
                return;
            }
            int top = view.getTop();
            ClosableSlidingLayout closableSlidingLayout2 = ClosableSlidingLayout.this;
            int i = closableSlidingLayout2.f5885g;
            int i2 = closableSlidingLayout2.f5884f;
            if (top >= (i2 / 2) + i) {
                closableSlidingLayout2.f5882d.m1140x(view, 0, i + i2);
                WeakHashMap<View, C3611y> weakHashMap2 = C3589v.f11780a;
                C3589v.C3593d.m2083k(closableSlidingLayout2);
                return;
            }
            closableSlidingLayout2.f5882d.m1140x(view, 0, i);
            ClosableSlidingLayout closableSlidingLayout3 = ClosableSlidingLayout.this;
            WeakHashMap<View, C3611y> weakHashMap3 = C3589v.f11780a;
            C3589v.C3593d.m2083k(closableSlidingLayout3);
        }

        @Override // p227s0.C4273c.AbstractC4276c
        /* renamed from: k */
        public boolean mo1128k(View view, int i) {
            return true;
        }
    }

    public ClosableSlidingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f5882d.m1155i(true)) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            C3589v.C3593d.m2083k(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        AbstractC1589b abstractC1589b;
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || this.f5880b.canScrollVertically(-1)) {
            return false;
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.f5886h = -1;
            this.f5887i = false;
            if (this.f5889k && (-this.f5890l) > this.f5882d.f13390b && (abstractC1589b = this.f5883e) != null) {
                DialogC1599h.m4859a(((C1593c) abstractC1589b).f5912a);
            }
            this.f5882d.m1163a();
            return false;
        }
        if (actionMasked == 0) {
            this.f5884f = getChildAt(0).getHeight();
            this.f5885g = getChildAt(0).getTop();
            int pointerId = motionEvent.getPointerId(0);
            this.f5886h = pointerId;
            this.f5887i = false;
            int findPointerIndex = motionEvent.findPointerIndex(pointerId);
            float y = findPointerIndex < 0 ? -1.0f : motionEvent.getY(findPointerIndex);
            if (y == -1.0f) {
                return false;
            }
            this.f5888j = y;
            this.f5890l = 0.0f;
        } else if (actionMasked == 2) {
            int i = this.f5886h;
            if (i == -1) {
                return false;
            }
            int findPointerIndex2 = motionEvent.findPointerIndex(i);
            float y2 = findPointerIndex2 < 0 ? -1.0f : motionEvent.getY(findPointerIndex2);
            if (y2 == -1.0f) {
                return false;
            }
            float f = y2 - this.f5888j;
            this.f5890l = f;
            if (this.f5881c) {
                C4273c c4273c = this.f5882d;
                if (f > c4273c.f13390b && !this.f5887i) {
                    this.f5887i = true;
                    c4273c.m1162b(getChildAt(0), 0);
                }
            }
        }
        this.f5882d.m1141w(motionEvent);
        return this.f5887i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || this.f5880b.canScrollVertically(-1)) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            if (!this.f5881c) {
                return true;
            }
            this.f5882d.m1148p(motionEvent);
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
    }
}
