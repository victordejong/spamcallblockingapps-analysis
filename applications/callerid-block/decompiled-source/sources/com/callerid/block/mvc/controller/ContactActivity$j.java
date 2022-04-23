package com.callerid.block.mvc.controller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/ContactActivity$j.class */
class ContactActivity$j extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ ContactActivity f4613a;

    ContactActivity$j(ContactActivity contactActivity) {
        this.f4613a = contactActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (intent.getAction() != null && "com.callerid.block.CLOSE_AD_VEST".equals(intent.getAction())) {
                ContactActivity.Z(this.f4613a).setVisibility(8);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
