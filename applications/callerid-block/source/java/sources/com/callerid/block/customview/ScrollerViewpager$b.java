package com.callerid.block.customview;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/ScrollerViewpager$b.class */
class ScrollerViewpager$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ScrollerViewpager f4255b;

    ScrollerViewpager$b(ScrollerViewpager scrollerViewpager) {
        this.f4255b = scrollerViewpager;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (ScrollerViewpager.W(this.f4255b)) {
            try {
                ScrollerViewpager.Y(this.f4255b, true);
                Thread.sleep(ScrollerViewpager.Z(this.f4255b) * 1000);
                ScrollerViewpager.a0(this.f4255b).sendEmptyMessage(100002);
            } catch (InterruptedException e) {
                try {
                    ScrollerViewpager.Y(this.f4255b, false);
                    Thread.sleep(2147483647L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
