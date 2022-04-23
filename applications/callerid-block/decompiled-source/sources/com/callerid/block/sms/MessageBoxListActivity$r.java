package com.callerid.block.sms;

import android.view.KeyEvent;
import android.widget.TextView;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$r.class */
class MessageBoxListActivity$r implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ MessageBoxListActivity f4853a;

    MessageBoxListActivity$r(MessageBoxListActivity messageBoxListActivity) {
        this.f4853a = messageBoxListActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "点击发送");
        }
        MessageBoxListActivity.g0(this.f4853a);
        return false;
    }
}
