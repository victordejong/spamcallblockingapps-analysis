package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import com.callerid.block.mvc.controller.OverlayGuideActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/EZGuideTipsActivity$c.class */
class EZGuideTipsActivity$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ EZGuideTipsActivity f4923b;

    EZGuideTipsActivity$c(EZGuideTipsActivity eZGuideTipsActivity) {
        this.f4923b = eZGuideTipsActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Intent intent = new Intent((Context) this.f4923b, (Class<?>) OverlayGuideActivity.class);
        intent.addFlags(268435456);
        this.f4923b.startActivity(intent);
    }
}
