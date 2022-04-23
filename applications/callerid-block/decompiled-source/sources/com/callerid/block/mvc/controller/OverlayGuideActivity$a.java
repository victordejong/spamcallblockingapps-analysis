package com.callerid.block.mvc.controller;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/OverlayGuideActivity$a.class */
class OverlayGuideActivity$a implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ OverlayGuideActivity f4693a;

    /* renamed from: com.callerid.block.mvc.controller.OverlayGuideActivity$a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/OverlayGuideActivity$a$a.class */
    class RunnableC1107a implements Runnable {
        RunnableC1107a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OverlayGuideActivity.S(OverlayGuideActivity$a.this.f4693a).startAnimation(OverlayGuideActivity.R(OverlayGuideActivity$a.this.f4693a));
            OverlayGuideActivity.Q(OverlayGuideActivity$a.this.f4693a).setChecked(true);
        }
    }

    OverlayGuideActivity$a(OverlayGuideActivity overlayGuideActivity) {
        this.f4693a = overlayGuideActivity;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        OverlayGuideActivity.Q(this.f4693a).setChecked(false);
        OverlayGuideActivity.S(this.f4693a).postDelayed(new RunnableC1107a(), 1500L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
