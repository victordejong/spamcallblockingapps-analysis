package com.callerid.block.p038f;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.callerid.block.mvc.controller.UnknownContactActivity;
import com.callerid.block.search.CallLogBean;
/* renamed from: com.callerid.block.f.a$d */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/a$d.class */
final class a$d implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallLogBean f4314b;

    a$d(CallLogBean callLogBean) {
        this.f4314b = callLogBean;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a.n(a.b());
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("contact_tony", this.f4314b);
        intent.putExtras(bundle);
        intent.setClass(a.b(), UnknownContactActivity.class);
        intent.setFlags(268435456);
        a.b().startActivity(intent);
    }
}
