package com.allinone.callerid.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.ListView;
import p020b.p041h.p050l.AbstractC1667k;
import p020b.p041h.p050l.C1666j;
import p020b.p041h.p050l.C1668l;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/NestedScrollingListView.class */
public class NestedScrollingListView extends ListView implements AbstractC1667k {

    /* renamed from: d */
    private C1668l f8598d;

    /* renamed from: e */
    private int[] f8599e;

    /* renamed from: f */
    private int[] f8600f;

    /* renamed from: g */
    private int[] f8601g;

    /* renamed from: h */
    private int f8602h;

    /* renamed from: i */
    private int f8603i;

    /* renamed from: j */
    private int f8604j;

    /* renamed from: k */
    private boolean f8605k;

    /* renamed from: l */
    private int f8606l;

    public NestedScrollingListView(Context context) {
        super(context);
        this.f8599e = new int[2];
        this.f8600f = new int[2];
        this.f8601g = new int[2];
        this.f8605k = true;
        m27379a();
    }

    public NestedScrollingListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8599e = new int[2];
        this.f8600f = new int[2];
        this.f8601g = new int[2];
        this.f8605k = true;
        m27379a();
    }

    public NestedScrollingListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8599e = new int[2];
        this.f8600f = new int[2];
        this.f8601g = new int[2];
        this.f8605k = true;
        m27379a();
    }

    /* renamed from: a */
    private void m27379a() {
        this.f8598d = new C1668l(this);
        setNestedScrollingEnabled(true);
    }

    /* renamed from: b */
    private boolean m27378b(int i, int i2) {
        if (i <= 0 || i2 >= 0) {
            return i < 0 && i2 > 0;
        }
        return true;
    }

    /* renamed from: c */
    private void m27377c(MotionEvent motionEvent) {
        this.f8606l = 0;
        int[] iArr = this.f8599e;
        iArr[1] = 0;
        iArr[0] = 0;
        this.f8602h = C1666j.m29388d(motionEvent, 0);
        this.f8603i = (int) (motionEvent.getX() + 0.5f);
        this.f8604j = (int) (motionEvent.getY() + 0.5f);
        startNestedScroll(2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f8598d.m29384a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f8598d.m29383b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f8598d.m29382c(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f8598d.m29379f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f8598d.m29375j();
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public boolean isNestedScrollingEnabled() {
        return this.f8598d.m29373l();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int m29389c = C1666j.m29389c(motionEvent);
        int m29390b = C1666j.m29390b(motionEvent);
        if (m29389c == 0) {
            int[] iArr = this.f8599e;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.f8599e;
        obtain.offsetLocation(iArr2[0], iArr2[1]);
        if (m29389c == 0) {
            m27377c(motionEvent);
        } else if (m29389c == 1) {
            stopNestedScroll();
            this.f8605k = true;
        } else if (m29389c == 2) {
            int m29391a = C1666j.m29391a(motionEvent, this.f8602h);
            if (m29391a < 0) {
                Log.e("NestedListView", "Error processing scroll; pointer index for id " + this.f8602h + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int m29387e = (int) (C1666j.m29387e(motionEvent, m29391a) + 0.5f);
            int m29386f = (int) (C1666j.m29386f(motionEvent, m29391a) + 0.5f);
            int i = this.f8603i;
            int i2 = this.f8604j - m29386f;
            if (this.f8605k) {
                Log.i("pyt", "FIRST");
                this.f8605k = false;
                m27377c(motionEvent);
                return true;
            } else if (!m27378b(this.f8606l, i2)) {
                this.f8606l = i2;
                Log.i("pyt", "move lastY" + this.f8604j + ",y=" + m29386f + ",dy=" + i2);
                if (dispatchNestedPreScroll(i - m29387e, i2, this.f8600f, this.f8601g)) {
                    int[] iArr3 = this.f8601g;
                    obtain.offsetLocation(iArr3[0], iArr3[1]);
                    int[] iArr4 = this.f8599e;
                    int i3 = iArr4[0];
                    int[] iArr5 = this.f8601g;
                    iArr4[0] = i3 + iArr5[0];
                    iArr4[1] = iArr4[1] + iArr5[1];
                }
                int[] iArr6 = this.f8601g;
                this.f8603i = m29387e - iArr6[0];
                this.f8604j = m29386f - iArr6[1];
            }
        } else if (m29389c == 5) {
            this.f8602h = C1666j.m29388d(motionEvent, m29390b);
            this.f8603i = (int) (C1666j.m29387e(motionEvent, m29390b) + 0.5f);
            this.f8604j = (int) (C1666j.m29386f(motionEvent, m29390b) + 0.5f);
        }
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f8598d.m29372m(z);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f8598d.m29370o(i);
    }

    @Override // android.view.View, p020b.p041h.p050l.AbstractC1667k
    public void stopNestedScroll() {
        this.f8598d.m29368q();
    }
}
