package com.callerid.block.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.callerid.block.R$anim;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.sms.MessageBoxListActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$d.class */
class b$d implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ b f4376b;

    b$d(b bVar) {
        this.f4376b = bVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        SMSBean sMSBean = (SMSBean) b.P1(this.f4376b).getItem(i);
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putParcelable("message", sMSBean);
        intent.putExtras(bundle);
        intent.setClass(b.Q1(this.f4376b), MessageBoxListActivity.class);
        this.f4376b.z1(intent);
        b.Q1(this.f4376b).overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
