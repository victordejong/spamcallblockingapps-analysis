package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.criteo.publisher.C8217a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/PusherOverlayView.class */
public abstract class PusherOverlayView extends BaseOverlayView {

    /* renamed from: a */
    private View f22058a;

    /* renamed from: b */
    private int f22059b;

    /* renamed from: c */
    private ViewGroup f22060c;

    public PusherOverlayView(Context context, boolean z, boolean z2, BaseOverlayView.OverlayViewListener overlayViewListener) {
        super(context, z, z2, overlayViewListener);
    }

    private View getTopSpaceView() {
        return findViewById(2131364189);
    }

    /* renamed from: a */
    protected abstract void mo30860a();

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void createLayoutForOverlay(LayoutInflater layoutInflater) {
        layoutInflater.inflate(2131558465, this);
        this.f22060c = (ViewGroup) findViewById(2131362470);
        layoutInflater.inflate(getLayoutResId(), this.f22060c);
        View topSpaceView = getTopSpaceView();
        this.f22058a = topSpaceView;
        if (topSpaceView != null) {
            this.f22059b = topSpaceView.getLayoutParams().height;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.f22058a == null) {
                this.f22058a = getTopSpaceView();
            }
            if (this.f22058a != null && this.f22060c != null && motionEvent.getY() >= this.f22058a.getHeight() && motionEvent.getY() <= this.f22060c.getY() + this.f22060c.getHeight()) {
                super.dispatchTouchEvent(motionEvent);
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.PUSHER_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        setCloseButtonListenerInOverlay(C8217a.C8218a.closeButton, ThemeUtils.getColor(2131099885), false);
        mo30860a();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        removeView();
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getY() < this.f22060c.getY()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void updateWindowLayout() {
        int windowY;
        if (this.f22058a == null || (windowY = this.f22059b + getWindowY()) == this.f22058a.getLayoutParams().height) {
            return;
        }
        this.f22058a.getLayoutParams().height = windowY;
        this.f22058a.requestLayout();
    }
}
