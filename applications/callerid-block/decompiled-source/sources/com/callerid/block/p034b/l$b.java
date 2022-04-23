package com.callerid.block.p034b;

import android.content.Intent;
import android.view.View;
import com.callerid.block.sms.MessageBoxListActivity;
/* renamed from: com.callerid.block.b.l$b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/b/l$b.class */
class l$b implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ String f4092b;

    /* renamed from: c */
    final /* synthetic */ l f4093c;

    l$b(l lVar, String str) {
        this.f4093c = lVar;
        this.f4092b = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent(l.A(this.f4093c), MessageBoxListActivity.class);
        intent.putExtra("SmsNumber", this.f4092b);
        l.A(this.f4093c).startActivity(intent);
        l.B(this.f4093c).finish();
    }
}
