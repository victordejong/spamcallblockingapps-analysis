package com.callerid.block.p038f;

import android.content.Intent;
import android.view.View;
import com.callerid.block.search.CallLogBean;
import com.callerid.block.sms.MessageBoxListActivity;
/* renamed from: com.callerid.block.f.a$c */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/a$c.class */
final class a$c implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallLogBean f4313b;

    a$c(CallLogBean callLogBean) {
        this.f4313b = callLogBean;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a.n(a.b());
        try {
            Intent intent = new Intent(a.b(), MessageBoxListActivity.class);
            intent.putExtra("SmsNumber", this.f4313b.m10045o());
            intent.addFlags(268468224);
            a.b().startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
