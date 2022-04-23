package com.callerid.block.start;

import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
import com.callerid.block.mvc.controller.RequestPerActivity;
import com.callerid.block.util.C1186k;
import com.callerid.block.util.C1199n0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/PrivacyActivity$a.class */
class PrivacyActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ PrivacyActivity f4940b;

    PrivacyActivity$a(PrivacyActivity privacyActivity) {
        this.f4940b = privacyActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1186k.m9816c().m9812g("privacy_click");
        C1199n0.m9691k0(true);
        Intent intent = new Intent();
        intent.setClass(this.f4940b, RequestPerActivity.class);
        intent.putExtra("is_first", true);
        this.f4940b.startActivity(intent);
        this.f4940b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        this.f4940b.finish();
    }
}
