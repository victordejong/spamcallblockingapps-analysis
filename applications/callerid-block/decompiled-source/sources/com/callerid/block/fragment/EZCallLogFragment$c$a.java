package com.callerid.block.fragment;

import com.callerid.block.fragment.EZCallLogFragment;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$c$a.class */
class EZCallLogFragment$c$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ EZCallLogFragment.c f4336b;

    EZCallLogFragment$c$a(EZCallLogFragment.c cVar) {
        this.f4336b = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        EZCallLogFragment.b2(this.f4336b.a);
        EZCallLogFragment.c2(this.f4336b.a).sendEmptyMessage(15001);
        EZCallLogFragment.d2(this.f4336b.a);
        EZCallLogFragment.c2(this.f4336b.a).sendEmptyMessage(15002);
    }
}
