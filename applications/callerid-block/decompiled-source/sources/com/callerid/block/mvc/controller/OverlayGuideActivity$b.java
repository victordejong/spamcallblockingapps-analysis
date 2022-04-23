package com.callerid.block.mvc.controller;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/OverlayGuideActivity$b.class */
class OverlayGuideActivity$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ OverlayGuideActivity f4695b;

    OverlayGuideActivity$b(OverlayGuideActivity overlayGuideActivity) {
        this.f4695b = overlayGuideActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        OverlayGuideActivity.S(this.f4695b).startAnimation(OverlayGuideActivity.R(this.f4695b));
        OverlayGuideActivity.Q(this.f4695b).setChecked(true);
    }
}
