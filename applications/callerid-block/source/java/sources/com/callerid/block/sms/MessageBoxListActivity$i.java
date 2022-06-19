package com.callerid.block.sms;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$i.class */
class MessageBoxListActivity$i implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ MessageBoxListActivity f4850b;

    MessageBoxListActivity$i(MessageBoxListActivity messageBoxListActivity) {
        this.f4850b = messageBoxListActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4850b.finish();
        this.f4850b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
