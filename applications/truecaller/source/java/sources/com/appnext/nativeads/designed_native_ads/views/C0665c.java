package com.appnext.nativeads.designed_native_ads.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.appnext.base.C0472a;
/* renamed from: com.appnext.nativeads.designed_native_ads.views.c */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/c.class */
public class C0665c extends FrameLayout {

    /* renamed from: fX */
    private ViewTreeObserver.OnScrollChangedListener f2053fX;

    /* renamed from: ha */
    private AbstractC0667a f2054ha;

    /* renamed from: com.appnext.nativeads.designed_native_ads.views.c$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/designed_native_ads/views/c$a.class */
    public interface AbstractC0667a {
        /* renamed from: f */
        void mo42151f(int i);
    }

    public C0665c(Context context) {
        this(context, null);
    }

    public C0665c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0665c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2053fX = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.nativeads.designed_native_ads.views.c.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                if (C0665c.this.f2054ha != null) {
                    C0665c.this.f2054ha.mo42151f(C0665c.this.getVisiblePercent());
                }
            }
        };
    }

    public C0665c(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f2053fX = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.nativeads.designed_native_ads.views.c.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                if (C0665c.this.f2054ha != null) {
                    C0665c.this.f2054ha.mo42151f(C0665c.this.getVisiblePercent());
                }
            }
        };
    }

    public int getVisiblePercent() {
        try {
            if (!isViewPartiallyVisible(this)) {
                return 0;
            }
            Rect rect = new Rect();
            getGlobalVisibleRect(rect);
            return (int) (((rect.width() * rect.height()) * 100.0d) / (getWidth() * getHeight()));
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdViewContainerImpl$getVisiblePercent", th);
            return 0;
        }
    }

    private boolean isViewPartiallyVisible(View view) {
        try {
            if (getParent() == null || !view.isAttachedToWindow()) {
                return false;
            }
            Rect rect = new Rect();
            ((ViewGroup) getParent()).getHitRect(rect);
            return view.getGlobalVisibleRect(rect);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdViewContainerImpl$isViewPartiallyVisible", th);
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        AbstractC0667a abstractC0667a = this.f2054ha;
        if (abstractC0667a != null) {
            abstractC0667a.mo42151f(getVisiblePercent());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        bringToFront();
        getViewTreeObserver().addOnScrollChangedListener(this.f2053fX);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            getViewTreeObserver().removeOnScrollChangedListener(this.f2053fX);
        } catch (Throwable th) {
            C0472a.m42577a("DesignedNativeAdViewContainerImpl$onDetachedFromWindow", th);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        AbstractC0667a abstractC0667a = this.f2054ha;
        if (abstractC0667a != null) {
            abstractC0667a.mo42151f(getVisiblePercent());
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            try {
                AbstractC0667a abstractC0667a = this.f2054ha;
                if (abstractC0667a == null) {
                    return;
                }
                abstractC0667a.mo42151f(getVisiblePercent());
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdViewContainerImpl$onVisibilityChanged", th);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            try {
                AbstractC0667a abstractC0667a = this.f2054ha;
                if (abstractC0667a == null) {
                    return;
                }
                abstractC0667a.mo42151f(getVisiblePercent());
            } catch (Throwable th) {
            }
        }
    }

    public void register(AbstractC0667a abstractC0667a) {
        this.f2054ha = abstractC0667a;
        if (abstractC0667a != null) {
            this.f2054ha.mo42151f(getVisiblePercent());
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            try {
                AbstractC0667a abstractC0667a = this.f2054ha;
                if (abstractC0667a == null) {
                    return;
                }
                abstractC0667a.mo42151f(getVisiblePercent());
            } catch (Throwable th) {
                C0472a.m42577a("DesignedNativeAdViewContainerImpl$setVisibility", th);
            }
        }
    }
}
