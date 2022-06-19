package com.telguarder.features.advertisements;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.p022ui.UiHelper;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/AdvertContainer.class */
public class AdvertContainer extends CardView {
    public static int ADMARGIN = 16;
    private boolean touchTheftNeeded = true;
    public boolean containerAndChildVisible = false;
    private Runnable mSetHolderHeightCompletion = null;
    private Runnable mAdvertLayoutCompletion = null;
    private Runnable mAddViewToHolderCompletion = null;
    private FrameLayout.LayoutParams mParams = null;
    private View mAdvertView = null;

    public AdvertContainer(Context context) {
        super(context);
    }

    public AdvertContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdvertContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: advertAddToHolder */
    public void lambda$addViewToHolder$0$AdvertContainer() {
        this.mParams.gravity = 17;
        addView(this.mAdvertView, this.mParams);
        setVisibility(0);
        this.mSetHolderHeightCompletion = null;
        this.mAdvertLayoutCompletion = new Runnable() { // from class: com.telguarder.features.advertisements._$$Lambda$AdvertContainer$0OXEywhkIunKme12_Jq0asPJzSs
            @Override // java.lang.Runnable
            public final void run() {
                AdvertContainer.this.lambda$advertAddToHolder$1$AdvertContainer();
            }
        };
        this.mAdvertView.invalidate();
        this.mAdvertView.requestLayout();
    }

    private float getScalePercent(Context context, int i, int i2) {
        int deviceScreenWidth;
        int dpToPixel;
        if (i2 + UiHelper.dpToPixel(context, ADMARGIN) >= UiHelper.getDeviceScreenHeight(context) / 2 || (dpToPixel = i + UiHelper.dpToPixel(context, ADMARGIN)) >= (deviceScreenWidth = UiHelper.getDeviceScreenWidth(context))) {
            return 1.0f;
        }
        return ((((deviceScreenWidth - dpToPixel) * 100.0f) / deviceScreenWidth) / 100.0f) + 1.0f;
    }

    public void addViewToHolder(Context context, int i, int i2, View view, Runnable runnable) {
        this.mAddViewToHolderCompletion = runnable;
        this.mAdvertView = view;
        if (context == null) {
            context = ApplicationObject.getContext();
        }
        if (getChildCount() > 0) {
            removeAllViews();
        }
        if (this.mAdvertView.getParent() != null && (this.mAdvertView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.mAdvertView.getParent()).removeView(this.mAdvertView);
        }
        setBackgroundColor(AppUtil.getColorResource(context, C2083R.C2084color.post_call_divider));
        if (i <= 0 || i2 <= 0) {
            if (i >= 0 || i2 >= 0) {
                this.mParams = new FrameLayout.LayoutParams(-2, -2);
                lambda$addViewToHolder$0$AdvertContainer();
                return;
            }
            this.mParams = new FrameLayout.LayoutParams(i, i2);
            lambda$addViewToHolder$0$AdvertContainer();
            return;
        }
        int dpToPixel = UiHelper.dpToPixel(context, i2);
        int dpToPixel2 = UiHelper.dpToPixel(context, i);
        float scalePercent = getScalePercent(context, dpToPixel2, dpToPixel);
        if (scalePercent > 1.0f) {
            this.mAdvertView.setScaleX(scalePercent);
            this.mAdvertView.setScaleY(scalePercent);
        }
        this.mParams = new FrameLayout.LayoutParams(dpToPixel2, dpToPixel);
        if (getLayoutParams() == null) {
            lambda$addViewToHolder$0$AdvertContainer();
            return;
        }
        getLayoutParams().height = (int) (scalePercent * (dpToPixel + UiHelper.dpToPixel(context, ADMARGIN)));
        this.mAdvertLayoutCompletion = null;
        this.mSetHolderHeightCompletion = new Runnable() { // from class: com.telguarder.features.advertisements._$$Lambda$AdvertContainer$_VO2BkmMWB1I8nuJec1YmuNGEaA
            @Override // java.lang.Runnable
            public final void run() {
                AdvertContainer.this.lambda$addViewToHolder$0$AdvertContainer();
            }
        };
        requestLayout();
    }

    public void clearVisibilityHandlers() {
        this.mSetHolderHeightCompletion = null;
        this.mAdvertLayoutCompletion = null;
        this.mAddViewToHolderCompletion = null;
    }

    public /* synthetic */ void lambda$advertAddToHolder$1$AdvertContainer() {
        try {
            if (this.containerAndChildVisible || getChildCount() <= 0 || getHeight() <= 0) {
                return;
            }
            this.containerAndChildVisible = true;
            AdvertManager.addAdNetworkFlowDebugInfo("advert is visible");
            Runnable runnable = this.mAddViewToHolderCompletion;
            if (runnable == null) {
                return;
            }
            runnable.run();
            this.mAddViewToHolderCompletion = null;
        } catch (Exception e) {
            Runnable runnable2 = this.mAddViewToHolderCompletion;
            if (runnable2 == null) {
                return;
            }
            runnable2.run();
            this.mAddViewToHolderCompletion = null;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.containerAndChildVisible = false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getChildAt(0) == null) {
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Runnable runnable = this.mSetHolderHeightCompletion;
        if (runnable != null) {
            runnable.run();
            this.mSetHolderHeightCompletion = null;
            return;
        }
        Runnable runnable2 = this.mAdvertLayoutCompletion;
        if (runnable2 == null) {
            return;
        }
        runnable2.run();
        this.mAdvertLayoutCompletion = null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View childAt;
        if (motionEvent.getAction() != 1 || (childAt = getChildAt(0)) == null) {
            return true;
        }
        this.touchTheftNeeded = false;
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        obtainNoHistory.setAction(0);
        MotionEvent obtainNoHistory2 = MotionEvent.obtainNoHistory(motionEvent);
        obtainNoHistory2.setAction(1);
        childAt.dispatchTouchEvent(obtainNoHistory);
        childAt.dispatchTouchEvent(obtainNoHistory2);
        return true;
    }
}
