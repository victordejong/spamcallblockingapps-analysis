package com.callerid.block.mvc.controller;

import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/OverlayPerActivity$c.class */
class OverlayPerActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ OverlayPerActivity f4698b;

    OverlayPerActivity$c(OverlayPerActivity overlayPerActivity) {
        this.f4698b = overlayPerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Intent intent = new Intent((Context) this.f4698b, (Class<?>) OverlayGuideActivity.class);
        intent.addFlags(268435456);
        this.f4698b.startActivity(intent);
    }
}
