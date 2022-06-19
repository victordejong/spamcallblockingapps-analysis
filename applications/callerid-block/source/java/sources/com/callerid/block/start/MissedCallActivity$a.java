package com.callerid.block.start;

import com.callerid.block.p040h.p041a.p042b.C0962a;
import com.callerid.block.util.C1163a;
import com.callerid.block.util.p059w0.C1228a;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/MissedCallActivity$a.class */
class MissedCallActivity$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ MissedCallActivity f4937b;

    MissedCallActivity$a(MissedCallActivity missedCallActivity) {
        this.f4937b = missedCallActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        MissedCallActivity.Q(this.f4937b);
        MissedCallActivity.R(this.f4937b);
        C1163a.m9924a(this.f4937b);
        if (C1228a.m9521d()) {
            C0962a.m10447a(new a(this));
        }
        if (C1228a.m9520e()) {
            C0962a.m10447a(new b(this));
        }
    }
}
