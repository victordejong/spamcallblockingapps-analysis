package com.callerid.block.fragment;

import android.content.Intent;
import android.view.View;
import com.callerid.block.mvc.controller.SelectContactsActivity;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$a.class */
class b$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ b f4373b;

    b$a(b bVar) {
        this.f4373b = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4373b.z1(new Intent(b.F1(this.f4373b), SelectContactsActivity.class));
    }
}
