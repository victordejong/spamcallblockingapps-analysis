package com.callerid.block.customview;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ScrollerViewpager$a.class */
class ScrollerViewpager$a extends Handler {

    /* renamed from: a */
    final /* synthetic */ ScrollerViewpager f4254a;

    ScrollerViewpager$a(ScrollerViewpager scrollerViewpager) {
        this.f4254a = scrollerViewpager;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message.what == 100002) {
            ScrollerViewpager scrollerViewpager = this.f4254a;
            scrollerViewpager.setCurrentItem(scrollerViewpager.getCurrentItem() + 1);
        }
    }
}
