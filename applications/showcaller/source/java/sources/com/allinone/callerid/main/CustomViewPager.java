package com.allinone.callerid.main;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Switch;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/CustomViewPager.class */
public class CustomViewPager extends ViewPager {

    /* renamed from: p0 */
    private boolean f9909p0 = true;

    public CustomViewPager(Context context) {
        super(context);
    }

    public CustomViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: W */
    protected boolean m26150W(View view) {
        return view instanceof Switch;
    }

    @Override // androidx.viewpager.widget.ViewPager
    /* renamed from: g */
    public boolean mo26149g(View view, boolean z, int i, int i2, int i3) {
        return super.mo26149g(view, z, i, i2, i3) || (z && m26150W(view));
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f9909p0 && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f9909p0 && super.onTouchEvent(motionEvent);
    }

    public void setScanScroll(boolean z) {
        this.f9909p0 = z;
    }
}
