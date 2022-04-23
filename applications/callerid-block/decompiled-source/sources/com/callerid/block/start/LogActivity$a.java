package com.callerid.block.start;

import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/LogActivity$a.class */
class LogActivity$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    final /* synthetic */ LogActivity f4927b;

    /* renamed from: com.callerid.block.start.LogActivity$a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/start/LogActivity$a$a.class */
    class RunnableC1155a implements Runnable {
        RunnableC1155a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LogActivity.N(LogActivity$a.this.f4927b).fullScroll(130);
        }
    }

    LogActivity$a(LogActivity logActivity) {
        this.f4927b = logActivity;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        LogActivity.N(this.f4927b).post(new RunnableC1155a());
    }
}
