package com.privacystar.core.p011ui;

import android.app.Service;
import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.p011ui.util.OverlayHelper;
import com.privacystar.core.service.PreferenceUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.OverlayService */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/OverlayService.class */
public abstract class OverlayService extends Service {
    protected View displayed;
    protected int dragInitialX;
    protected int dragInitialY;
    protected WindowManager.LayoutParams layoutParams;
    protected float touchInitialX;
    protected float touchInitialY;

    /* renamed from: wm */
    protected WindowManager f289wm;
    protected boolean horizontalDragEnabled = true;
    protected boolean verticalDragEnabled = true;
    protected boolean logDragDetails = true;
    protected boolean dragging = false;

    private int getHalfScreenPoint() {
        this.f289wm = (WindowManager) getSystemService("window");
        Display defaultDisplay = this.f289wm.getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y / 2;
    }

    private void onActionMove(MotionEvent motionEvent) {
        if (isHorizontalDragEnabled()) {
            this.layoutParams.x = this.dragInitialX + ((int) (motionEvent.getRawX() - this.touchInitialX));
        }
        if (isVerticalDragEnabled()) {
            this.layoutParams.y = this.dragInitialY + ((int) (motionEvent.getRawY() - this.touchInitialY));
        }
        this.f289wm.updateViewLayout(this.displayed, this.layoutParams);
    }

    private void onDragDown(MotionEvent motionEvent) {
        this.dragInitialX = this.layoutParams.x;
        this.dragInitialY = this.layoutParams.y;
        this.touchInitialX = motionEvent.getRawX();
        this.touchInitialY = motionEvent.getRawY();
        Timber.m28v("Drag Beginning", new Object[0]);
        this.logDragDetails = false;
        this.dragging = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onDragEvent */
    public boolean bridge$lambda$0$OverlayService(View view, MotionEvent motionEvent) {
        if (this.logDragDetails) {
            Timber.m28v("Overlay being dragged:", new Object[0]);
            Timber.m28v("isVerticalDragEnabled? %b", Boolean.valueOf(isVerticalDragEnabled()));
            Timber.m28v("isHorizontalDragEnabled? %b", Boolean.valueOf(isHorizontalDragEnabled()));
        }
        this.layoutParams = (WindowManager.LayoutParams) this.displayed.getLayoutParams();
        switch (motionEvent.getAction()) {
            case 0:
                onDragDown(motionEvent);
                return true;
            case 1:
                onDragUp();
                return true;
            case 2:
                onActionMove(motionEvent);
                return true;
            default:
                return false;
        }
    }

    private void onDragUp() {
        Timber.m28v("Drag ended", new Object[0]);
        this.logDragDetails = true;
        PreferenceUtil.putCallCenterY(this.layoutParams.y);
        PreferenceUtil.putCallCenterX(this.layoutParams.x);
        this.dragging = false;
    }

    protected WindowManager.LayoutParams getLayoutParams() {
        Timber.m28v("Creating overlay parameters", new Object[0]);
        this.layoutParams = OverlayHelper.INSTANCE.getOverlayLayoutParamForOS();
        this.layoutParams.gravity = 48;
        this.layoutParams.softInputMode = 4;
        this.layoutParams.screenOrientation = 1;
        this.layoutParams.horizontalMargin = DensityUtil.dpToPx(this, 10);
        this.layoutParams.y = PreferenceUtil.getCallCenterY();
        this.layoutParams.x = PreferenceUtil.getCallCenterX();
        if (this.layoutParams.y == -1) {
            this.layoutParams.y = getHalfScreenPoint();
            PreferenceUtil.putCallCenterY(this.layoutParams.y);
        }
        return this.layoutParams;
    }

    public abstract View getView();

    public void hideView() {
        Timber.m28v("Setting OverlayService INVISIBLE.", new Object[0]);
        this.displayed.setVisibility(4);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
    }

    public boolean isDragActive() {
        return !this.logDragDetails;
    }

    public boolean isHorizontalDragEnabled() {
        return this.horizontalDragEnabled;
    }

    public boolean isVerticalDragEnabled() {
        return this.verticalDragEnabled;
    }

    @Override // android.app.Service
    public void onCreate() {
        boolean z;
        super.onCreate();
        Timber.m31i("Creating overlay activity", new Object[0]);
        this.f289wm = (WindowManager) getSystemService("window");
        this.displayed = getView();
        this.layoutParams = getLayoutParams();
        try {
            this.f289wm.addView(this.displayed, this.layoutParams);
            z = true;
        } catch (WindowManager.BadTokenException e) {
            Timber.m29i(e, "Could not attach view to OverlayView, clearing and retrying.", new Object[0]);
            z = false;
        }
        if (!z) {
            try {
                this.f289wm.removeView(this.displayed);
                this.f289wm.addView(this.displayed, this.layoutParams);
            } catch (Exception e2) {
                Timber.m23w(e2, "OverlayView creation failed for the second time, aborting.", new Object[0]);
                stopSelf();
            }
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Timber.m28v("Destroying overlay view activity...", new Object[0]);
        if (this.displayed != null) {
            Timber.m28v("Clearing the overlay view from the window.", new Object[0]);
            if (this.displayed.isAttachedToWindow()) {
                this.f289wm.removeViewImmediate(this.displayed);
            }
            Timber.m28v("Finished overlay default destruction", new Object[0]);
        } else {
            Timber.m28v("No overlay to clear - skipping destruction", new Object[0]);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setDraggableView(View view) {
        Timber.m28v("Enabling dragging on the view", new Object[0]);
        view.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.privacystar.core.ui.OverlayService$$Lambda$0
            private final OverlayService arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return this.arg$1.bridge$lambda$0$OverlayService(view2, motionEvent);
            }
        });
    }

    public void setHorizontalDragEnabled(boolean z) {
        this.horizontalDragEnabled = z;
    }

    public void setVerticalDragEnabled(boolean z) {
        this.verticalDragEnabled = z;
    }

    public void showView() {
        Timber.m28v("Setting OverlayService VISIBLE.", new Object[0]);
        this.displayed.setVisibility(0);
    }

    public void toggleViewVisible() {
        if (this.displayed.getVisibility() == 0) {
            this.displayed.setVisibility(4);
        } else {
            this.displayed.setVisibility(0);
        }
    }
}
