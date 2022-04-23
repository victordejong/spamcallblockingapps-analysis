package com.callerid.block.mvc.controller;

import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/OverlayPerActivity$b.class */
class OverlayPerActivity$b extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ OverlayPerActivity f4697b;

    OverlayPerActivity$b(OverlayPerActivity overlayPerActivity) {
        this.f4697b = overlayPerActivity;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        OverlayPerActivity.R(this.f4697b);
    }
}
