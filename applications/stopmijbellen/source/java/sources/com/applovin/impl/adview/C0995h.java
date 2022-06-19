package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.webkit.WebView;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.applovin.impl.adview.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/h.class */
public class C0995h extends WebView {

    /* renamed from: a */
    private PointF f3640a = new PointF();

    public C0995h(Context context) {
        super(context);
    }

    public PointF getAndClearLastClickLocation() {
        PointF pointF = this.f3640a;
        this.f3640a = new PointF();
        return pointF;
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f3640a = new PointF(motionEvent.getRawX(), motionEvent.getRawY());
        return super.onTouchEvent(motionEvent);
    }
}
