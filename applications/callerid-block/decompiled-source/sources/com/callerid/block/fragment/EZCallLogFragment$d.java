package com.callerid.block.fragment;

import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$d.class */
class EZCallLogFragment$d extends TimerTask {

    /* renamed from: b */
    final /* synthetic */ EZCallLogFragment f4337b;

    EZCallLogFragment$d(EZCallLogFragment eZCallLogFragment) {
        this.f4337b = eZCallLogFragment;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        EZCallLogFragment.e2(this.f4337b);
    }
}
