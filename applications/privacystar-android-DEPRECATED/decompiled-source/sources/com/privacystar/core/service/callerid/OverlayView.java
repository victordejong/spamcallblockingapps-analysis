package com.privacystar.core.service.callerid;

import android.app.Service;
import android.content.Intent;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.util.OverlayHelper;
import com.privacystar.core.p011ui.widgets.ServiceAttachedView;
import com.privacystar.core.service.PreferenceService;
import com.privacystar.core.util.Text;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/callerid/OverlayView.class */
public class OverlayView extends ServiceAttachedView {
    private static String htmlFileLocation = "callerIdV3.htm";
    private Service cidService;

    /* renamed from: gd */
    protected GestureDetector f279gd;
    private boolean isFocused;
    protected WindowManager.LayoutParams layoutParams;
    private int layoutResId;
    boolean loaded;
    boolean longPressed;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/callerid/OverlayView$OverlayGestureDetector.class */
    class OverlayGestureDetector extends GestureDetector.SimpleOnGestureListener {
        OverlayGestureDetector() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (motionEvent == null) {
                Timber.m25w("e1 is null!", new Object[0]);
                return false;
            } else if (motionEvent2 != null) {
                return Math.abs(motionEvent.getY() - motionEvent2.getY()) > 150.0f ? false : false;
            } else {
                Timber.m25w("e2 is null!", new Object[0]);
                return false;
            }
        }
    }

    public OverlayView(Service service) {
        this(service, C1566R.C1571layout.overlay);
        this.cidService = service;
    }

    public OverlayView(Service service, int i) {
        super(service);
        this.loaded = false;
        this.longPressed = false;
        this.f279gd = new GestureDetector(new OverlayGestureDetector()) { // from class: com.privacystar.core.service.callerid.OverlayView.1
            @Override // android.view.GestureDetector
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if ((motionEvent.getAction() & 255) == 0) {
                    OverlayView.this.onTouchEvent_Press(motionEvent);
                } else if ((motionEvent.getAction() & 255) == 1) {
                    OverlayView.this.onTouchEvent_Up(motionEvent);
                } else if ((motionEvent.getAction() & 255) == 2 && OverlayView.this.longPressed) {
                    OverlayView.this.onTouchEvent_Move(motionEvent);
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.layoutResId = i;
    }

    public static String getHtmlFileLocation() {
        return htmlFileLocation;
    }

    public static void setHtmlFileLocation(String str) {
        if (!Text.isBlank(str)) {
            htmlFileLocation = str;
        }
    }

    protected void addView() {
        setupLayoutParams();
        ((WindowManager) getContext().getSystemService("window")).addView(this, this.layoutParams);
        setVisibility(8);
    }

    protected View animationView() {
        return this;
    }

    public void destroy() {
        removeFromWindowManager();
        this.layoutParams = null;
        this.cidService = null;
    }

    @Override // android.widget.RelativeLayout
    public int getGravity() {
        return 8388659;
    }

    public boolean getIsFocused() {
        return this.isFocused;
    }

    public int getLayoutGravity() {
        return 8388659;
    }

    public Service getService() {
        return this.cidService;
    }

    boolean getUseFullScreen() {
        return false;
    }

    public void hide() {
        setVisibility(8);
    }

    public void incomingCall(String str) {
    }

    protected void inflateView() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.layoutResId, this);
        onInflateView();
        setContent(false);
    }

    public boolean isVisible() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void load() {
        inflateView();
        addView();
        refresh();
    }

    public void makeFocusable(boolean z) {
    }

    protected void onInflateView() {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            onTouchEvent_Press(motionEvent);
        } else if (motionEvent.getActionMasked() == 1) {
            onTouchEvent_Up(motionEvent);
        } else if (motionEvent.getActionMasked() == 2) {
            if (this.longPressed) {
                onTouchEvent_Move(motionEvent);
            }
        } else if (motionEvent.getActionMasked() == 4) {
            onTouchEvent_Outside(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public boolean onTouchEvent_LongPress() {
        return false;
    }

    protected void onTouchEvent_Move(MotionEvent motionEvent) {
    }

    protected void onTouchEvent_Outside(MotionEvent motionEvent) {
    }

    protected void onTouchEvent_Press(MotionEvent motionEvent) {
    }

    protected void onTouchEvent_Up(MotionEvent motionEvent) {
    }

    public void refresh() {
        if (!isVisible()) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        refreshViews();
    }

    public void refreshAfterSizeChange() {
    }

    public void refreshAfterSizeChange(Intent intent) {
    }

    public void refreshLayout() {
        removeAllViews();
        inflateView();
        ((WindowManager) getContext().getSystemService("window")).updateViewLayout(this, this.layoutParams);
        refresh();
    }

    public void refreshViews() {
        try {
            ((WindowManager) getContext().getSystemService("window")).updateViewLayout(this, this.layoutParams);
        } catch (IllegalArgumentException e) {
            Timber.m32e(e, "IllegalArgumentException while attempting to update callerId view. Most likely a window manager issue. Catching to prevent crash", new Object[0]);
        }
    }

    protected void setContent() {
        setContent(false);
    }

    protected void setContent(boolean z) {
    }

    public void setIsFocused(boolean z) {
        this.isFocused = z;
    }

    void setUseFullScreen(boolean z) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    protected void setupLayoutParams() {
        Timber.m28v("SETUP LAYOUT PARAMS", new Object[0]);
        this.layoutParams = new WindowManager.LayoutParams(-1, -2, 0, PreferenceService.getCallerIdPositionY(getContext()), OverlayHelper.INSTANCE.getOverlayLayoutTypeForOS(), 7077928, -3);
        this.layoutParams.screenOrientation = 1;
        this.layoutParams.gravity = getLayoutGravity();
        this.layoutParams.softInputMode = 4;
    }

    public void show() {
        setVisibility(0);
    }

    protected void unload() {
        removeFromWindowManager();
        removeAllViews();
    }
}
