package com.callerid.block.fragment;

import android.content.Intent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$c.class */
class a$c implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ a f4367b;

    a$c(a aVar) {
        this.f4367b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            Intent intent = new Intent("android.intent.action.INSERT");
            intent.setType("vnd.android.cursor.dir/person");
            intent.setType("vnd.android.cursor.dir/contact");
            intent.setType("vnd.android.cursor.dir/raw_contact");
            intent.putExtra("phone_type", 2);
            this.f4367b.z1(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
