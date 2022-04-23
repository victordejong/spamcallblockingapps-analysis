package com.callapp.contacts.activity.contact.details.overlay;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.criteo.publisher.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/PusherOverlayView.class */
public abstract class PusherOverlayView extends BaseOverlayView {

    /* renamed from: a  reason: collision with root package name */
    private View f12274a;

    /* renamed from: b  reason: collision with root package name */
    private int f12275b;

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f12276c;

    public PusherOverlayView(Context context, boolean z, boolean z2, BaseOverlayView.OverlayViewListener overlayViewListener) {
        super(context, z, z2, overlayViewListener);
    }

    private View getTopSpaceView() {
        return findViewById(2131364189);
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void createLayoutForOverlay(LayoutInflater layoutInflater) {
        layoutInflater.inflate(2131558465, this);
        this.f12276c = (ViewGroup) findViewById(2131362470);
        layoutInflater.inflate(getLayoutResId(), this.f12276c);
        View topSpaceView = getTopSpaceView();
        this.f12274a = topSpaceView;
        if (topSpaceView != null) {
            this.f12275b = topSpaceView.getLayoutParams().height;
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.f12274a == null) {
                this.f12274a = getTopSpaceView();
            }
            if (this.f12274a != null && this.f12276c != null && motionEvent.getY() >= this.f12274a.getHeight() && motionEvent.getY() <= this.f12276c.getY() + this.f12276c.getHeight()) {
                super.dispatchTouchEvent(motionEvent);
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public String getTrackEventCategory() {
        return Constants.PUSHER_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onCreate() {
        super.onCreate();
        setCloseButtonListenerInOverlay(a.C0337a.closeButton, ThemeUtils.getColor(2131099885), false);
        a();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void onDestroy() {
        removeView();
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getY() < this.f12276c.getY()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView
    public void updateWindowLayout() {
        int windowY;
        if (this.f12274a != null && (windowY = this.f12275b + getWindowY()) != this.f12274a.getLayoutParams().height) {
            this.f12274a.getLayoutParams().height = windowY;
            this.f12274a.requestLayout();
        }
    }
}
