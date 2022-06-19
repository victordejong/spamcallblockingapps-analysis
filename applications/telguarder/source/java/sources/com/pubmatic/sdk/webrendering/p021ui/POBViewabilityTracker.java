package com.pubmatic.sdk.webrendering.p021ui;

import android.view.View;
import android.view.ViewTreeObserver;
import com.pubmatic.sdk.common.utility.POBUtils;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBViewabilityTracker */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBViewabilityTracker.class */
public class POBViewabilityTracker implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnWindowFocusChangeListener, View.OnAttachStateChangeListener {

    /* renamed from: a */
    private View f1237a;

    /* renamed from: b */
    private onViewabilityChangedListener f1238b;

    /* renamed from: c */
    private float f1239c;

    /* renamed from: e */
    private boolean f1241e = false;

    /* renamed from: d */
    private boolean f1240d = false;

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBViewabilityTracker$onViewabilityChangedListener */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBViewabilityTracker$onViewabilityChangedListener.class */
    public interface onViewabilityChangedListener {
        void onViewabilityChanged(boolean z);
    }

    public POBViewabilityTracker(View view) {
        this.f1237a = view;
        view.addOnAttachStateChangeListener(this);
    }

    /* renamed from: a */
    private void m427a() {
        if (this.f1237a.getViewTreeObserver().isAlive()) {
            this.f1237a.getViewTreeObserver().addOnWindowFocusChangeListener(this);
        }
    }

    /* renamed from: b */
    private void m426b() {
        if (this.f1237a.getViewTreeObserver().isAlive()) {
            this.f1237a.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f1237a.getViewTreeObserver().addOnScrollChangedListener(this);
        }
    }

    /* renamed from: c */
    private void m425c() {
        if (this.f1237a.getViewTreeObserver().isAlive()) {
            this.f1237a.getViewTreeObserver().removeOnWindowFocusChangeListener(this);
        }
    }

    /* renamed from: d */
    private void m424d() {
        if (this.f1237a.getViewTreeObserver().isAlive()) {
            this.f1237a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f1237a.getViewTreeObserver().removeOnScrollChangedListener(this);
        }
    }

    /* renamed from: e */
    private void m423e() {
        boolean z = POBUtils.getVisiblePercent(this.f1237a) >= this.f1239c && this.f1237a.hasWindowFocus();
        if (this.f1241e != z) {
            onViewabilityChangedListener onviewabilitychangedlistener = this.f1238b;
            if (onviewabilitychangedlistener != null) {
                onviewabilitychangedlistener.onViewabilityChanged(z);
            }
            this.f1241e = z;
        }
    }

    public void destroy() {
        m424d();
        m425c();
        this.f1237a.removeOnAttachStateChangeListener(this);
    }

    public boolean isViewable() {
        return this.f1241e;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        m423e();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        m423e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        m427a();
        if (this.f1240d) {
            m426b();
        }
        m423e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m424d();
        m425c();
        m423e();
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public void onWindowFocusChanged(boolean z) {
        m423e();
    }

    public void setAllowViewTreeObserverRegistration(boolean z) {
        this.f1240d = z;
    }

    public void setOnExposureChangeWithThresholdListener(onViewabilityChangedListener onviewabilitychangedlistener) {
        this.f1238b = onviewabilitychangedlistener;
    }

    public void setViewabilityThresholdPercent(float f) {
        this.f1239c = f;
    }
}
