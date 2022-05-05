package com.privacystar.core.p011ui;

import android.graphics.Point;
import android.os.Bundle;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.service.PreferenceUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.OverlayActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/OverlayActivity.class */
public abstract class OverlayActivity extends PSActivity {
    protected View mDisplayed;
    protected int mDragInitialX;
    protected int mDragInitialY;
    protected WindowManager.LayoutParams mLayoutParams;
    protected float mTouchInitialX;
    protected float mTouchInitialY;

    /* renamed from: wm */
    protected WindowManager f288wm;
    protected boolean mHorizontalDragEnabled = true;
    protected boolean mVerticalDragEnabled = true;
    protected boolean mLogDragDetails = true;
    protected boolean mDragging = false;

    private int getHalfScreenPoint() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y / 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onDragEvent */
    public boolean bridge$lambda$0$OverlayActivity(View view, MotionEvent motionEvent) {
        if (this.mLogDragDetails) {
            Timber.m28v("Overlay being dragged:", new Object[0]);
            Timber.m28v("isVerticalDragEnabled? %b", Boolean.valueOf(isVerticalDragEnabled()));
            Timber.m28v("isHorizontalDragEnabled? %b", Boolean.valueOf(isHorizontalDragEnabled()));
        }
        this.mLayoutParams = (WindowManager.LayoutParams) this.mDisplayed.getLayoutParams();
        switch (motionEvent.getAction()) {
            case 0:
                this.mDragInitialX = this.mLayoutParams.x;
                this.mDragInitialY = this.mLayoutParams.y;
                this.mTouchInitialX = motionEvent.getRawX();
                this.mTouchInitialY = motionEvent.getRawY();
                Timber.m28v("Drag Beginning", new Object[0]);
                this.mLogDragDetails = false;
                this.mDragging = true;
                return true;
            case 1:
                Timber.m28v("Drag ended", new Object[0]);
                this.mLogDragDetails = true;
                PreferenceUtil.putCallCenterY(this.mLayoutParams.y);
                PreferenceUtil.putCallCenterX(this.mLayoutParams.x);
                this.mDragging = false;
                return true;
            case 2:
                if (isHorizontalDragEnabled()) {
                    this.mLayoutParams.x = this.mDragInitialX + ((int) (motionEvent.getRawX() - this.mTouchInitialX));
                    Timber.m28v("Changed view x: %d", Integer.valueOf(this.mLayoutParams.x));
                }
                if (isVerticalDragEnabled()) {
                    this.mLayoutParams.y = this.mDragInitialY + ((int) (motionEvent.getRawY() - this.mTouchInitialY));
                    Timber.m28v("Changed view y: %d", Integer.valueOf(this.mLayoutParams.y));
                }
                this.f288wm.updateViewLayout(this.mDisplayed, this.mLayoutParams);
                return true;
            default:
                return false;
        }
    }

    protected WindowManager.LayoutParams getAlertParams() {
        Timber.m28v("Using alert", new Object[0]);
        return getParamsWithLevel(2003);
    }

    protected WindowManager.LayoutParams getErrorParams() {
        Timber.m28v("Using error overlay", new Object[0]);
        return getParamsWithLevel(2010);
    }

    protected WindowManager.LayoutParams getLayoutParams() {
        Timber.m28v("Creating overlay parameters", new Object[0]);
        this.mLayoutParams = getErrorParams();
        this.mLayoutParams.gravity = 48;
        this.mLayoutParams.softInputMode = 4;
        this.mLayoutParams.screenOrientation = 1;
        this.mLayoutParams.horizontalMargin = DensityUtil.dpToPx(this, 10);
        this.mLayoutParams.y = PreferenceUtil.getCallCenterY();
        this.mLayoutParams.x = PreferenceUtil.getCallCenterX();
        if (this.mLayoutParams.y == -1) {
            this.mLayoutParams.y = getHalfScreenPoint();
            PreferenceUtil.putCallCenterY(this.mLayoutParams.y);
        }
        return this.mLayoutParams;
    }

    protected WindowManager.LayoutParams getOverlayLayoutParams() {
        Timber.m28v("Using overlay", new Object[0]);
        return getParamsWithLevel(2006);
    }

    protected WindowManager.LayoutParams getParamsWithLevel(int i) {
        return new WindowManager.LayoutParams(-1, -2, i, 7077929, -3);
    }

    protected WindowManager.LayoutParams getPhoneParams() {
        Timber.m28v("Using priority phone", new Object[0]);
        return getParamsWithLevel(2007);
    }

    public abstract View getView();

    public void hideView() {
        this.mDisplayed.setVisibility(4);
    }

    public boolean isDragActive() {
        return !this.mLogDragDetails;
    }

    public boolean isHorizontalDragEnabled() {
        return this.mHorizontalDragEnabled;
    }

    public boolean isVerticalDragEnabled() {
        return this.mVerticalDragEnabled;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Timber.m31i("Creating overlay activity", new Object[0]);
        this.f288wm = (WindowManager) getSystemService("window");
        this.mDisplayed = getView();
        this.f288wm.addView(this.mDisplayed, getLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Timber.m28v("Destroying overlay view activity...", new Object[0]);
        if (this.mDisplayed != null) {
            Timber.m28v("Clearing the overlay view from the window.", new Object[0]);
            this.f288wm.removeViewImmediate(this.mDisplayed);
            Timber.m28v("Finished overlay default destruction", new Object[0]);
            return;
        }
        Timber.m28v("No overlay to clear - skipping destruction", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setDraggableView(View view) {
        Timber.m28v("Enabling dragging on the view", new Object[0]);
        view.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.privacystar.core.ui.OverlayActivity$$Lambda$0
            private final OverlayActivity arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return this.arg$1.bridge$lambda$0$OverlayActivity(view2, motionEvent);
            }
        });
    }

    public void setHorizontalDragEnabled(boolean z) {
        this.mHorizontalDragEnabled = z;
    }

    public void setVerticalDragEnabled(boolean z) {
        this.mVerticalDragEnabled = z;
    }

    public void showView() {
        this.mDisplayed.setVisibility(0);
    }

    public void toggleViewVisible() {
        if (this.mDisplayed.getVisibility() == 0) {
            this.mDisplayed.setVisibility(4);
        } else {
            this.mDisplayed.setVisibility(0);
        }
    }
}
