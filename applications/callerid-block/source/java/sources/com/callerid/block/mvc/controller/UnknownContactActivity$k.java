package com.callerid.block.mvc.controller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$k.class */
class UnknownContactActivity$k extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ UnknownContactActivity f4723a;

    UnknownContactActivity$k(UnknownContactActivity unknownContactActivity) {
        this.f4723a = unknownContactActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction() == null || !"com.callerid.block.CLOSE_AD_VEST".equals(intent.getAction())) {
                return;
            }
            UnknownContactActivity.e0(this.f4723a).setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
