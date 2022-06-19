package com.callerid.block.fragment;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/EZCallLogFragment$o.class */
class EZCallLogFragment$o extends Handler {

    /* renamed from: a */
    WeakReference<EZCallLogFragment> f4343a;

    EZCallLogFragment$o(EZCallLogFragment eZCallLogFragment) {
        this.f4343a = new WeakReference<>(eZCallLogFragment);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        try {
            EZCallLogFragment eZCallLogFragment = this.f4343a.get();
            if (eZCallLogFragment != null) {
                int i = message.what;
                if (i != 15001) {
                    if (i == 15002 && EZCallLogFragment.E1(eZCallLogFragment).size() > 0) {
                        EZCallLogFragment.G1(eZCallLogFragment).notifyDataSetChanged();
                    }
                } else if (EZCallLogFragment.E1(eZCallLogFragment).size() > 0) {
                    EZCallLogFragment.G1(eZCallLogFragment).notifyDataSetChanged();
                    EZCallLogFragment.U1(eZCallLogFragment);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
