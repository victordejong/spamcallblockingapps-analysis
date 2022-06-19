package com.appnext.nativeads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.appnext.base.Appnext;
import com.appnext.base.C0472a;
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdView.class */
public class NativeAdView extends FrameLayout {
    private AbstractC0634a adViewActions;

    /* renamed from: fE */
    private NativeAd f1964fE;

    /* renamed from: fG */
    private NativeAdData f1965fG;

    /* renamed from: fW */
    private PrivacyIcon f1966fW;

    /* renamed from: fX */
    private ViewTreeObserver.OnScrollChangedListener f1967fX;

    /* renamed from: com.appnext.nativeads.NativeAdView$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/nativeads/NativeAdView$a.class */
    public interface AbstractC0634a {
        /* renamed from: d */
        void mo42212d(int i);
    }

    public NativeAdView(Context context) {
        this(context, null);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1967fX = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.nativeads.NativeAdView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                NativeAdView nativeAdView = NativeAdView.this;
                nativeAdView.m42213e(nativeAdView.getVisiblePercent(nativeAdView));
            }
        };
        Appnext.init(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f1967fX = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.nativeads.NativeAdView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                NativeAdView nativeAdView = NativeAdView.this;
                nativeAdView.m42213e(nativeAdView.getVisiblePercent(nativeAdView));
            }
        };
        Appnext.init(context);
    }

    /* renamed from: e */
    public void m42213e(int i) {
        if (getWindowVisibility() == 8 || getWindowVisibility() == 4 || this.f1964fE == null) {
            return;
        }
        AbstractC0634a abstractC0634a = this.adViewActions;
        if (abstractC0634a != null) {
            abstractC0634a.mo42212d(i);
        }
        if (this.f1964fE.getMediaView() == null) {
            return;
        }
        this.f1964fE.getMediaView().m42234d(getVisiblePercent(this.f1964fE.getMediaView()));
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
            C0472a.m42577a("NativeAdView$isViewPartiallyVisible", th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x011f A[Catch: all -> 0x0186, TRY_LEAVE, TryCatch #0 {all -> 0x0186, blocks: (B:7:0x001d, B:9:0x002b, B:11:0x0031, B:13:0x003a, B:15:0x005a, B:29:0x00e8, B:31:0x011f, B:32:0x012d, B:34:0x0137, B:35:0x0144, B:37:0x014f), top: B:41:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012d A[Catch: all -> 0x0186, TRY_ENTER, TryCatch #0 {all -> 0x0186, blocks: (B:7:0x001d, B:9:0x002b, B:11:0x0031, B:13:0x003a, B:15:0x005a, B:29:0x00e8, B:31:0x011f, B:32:0x012d, B:34:0x0137, B:35:0x0144, B:37:0x014f), top: B:41:0x001d }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42218a(com.appnext.nativeads.NativeAd r7, com.appnext.nativeads.NativeAdData r8, com.appnext.nativeads.NativeAdView.AbstractC0634a r9) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appnext.nativeads.NativeAdView.m42218a(com.appnext.nativeads.NativeAd, com.appnext.nativeads.NativeAdData, com.appnext.nativeads.NativeAdView$a):void");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.f1966fW);
    }

    /* renamed from: bd */
    public final void m42214bd() {
        super.removeView(this.f1966fW);
        this.f1964fE = null;
        this.f1965fG = null;
        this.adViewActions = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        PrivacyIcon privacyIcon = this.f1966fW;
        if (privacyIcon != view) {
            super.bringChildToFront(privacyIcon);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f1964fE == null || this.f1965fG == null || this.adViewActions == null) {
            return;
        }
        m42213e(getVisiblePercent(this));
    }

    public final int getVisiblePercent(View view) {
        if (isViewPartiallyVisible(this) && view != null) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            return (int) (((rect.height() * rect.width()) * 100.0d) / (view.getHeight() * view.getWidth()));
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        bringToFront();
        getViewTreeObserver().addOnScrollChangedListener(this.f1967fX);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            getViewTreeObserver().removeOnScrollChangedListener(this.f1967fX);
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdView$onWindowVisibilityChanged", th);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1964fE == null || this.f1965fG == null || this.adViewActions == null) {
            return;
        }
        m42213e(getVisiblePercent(this));
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        try {
            NativeAd nativeAd = this.f1964fE;
            if (nativeAd == null || this.f1965fG == null) {
                return;
            }
            nativeAd.onWindowVisibilityChanged(i);
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdView$onWindowVisibilityChanged", th);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.f1966fW);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (view != this.f1966fW) {
            super.removeView(view);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.f1964fE == null || this.f1965fG == null) {
            return;
        }
        super.setVisibility(i);
        m42213e(getVisiblePercent(this));
    }
}
