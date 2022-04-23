package com.callerid.block.main;

import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
import com.callerid.block.R$string;
import com.callerid.block.main.MainActivity;
import com.callerid.block.util.C1186k;
import com.rey.material.app.Dialog;
/* loaded from: classes-dex2jar.jar:com/callerid/block/main/MainActivity$15$a.class */
class MainActivity$15$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ Dialog f4583b;

    /* renamed from: c */
    final /* synthetic */ MainActivity.15 f4584c;

    MainActivity$15$a(MainActivity.15 r4, Dialog dialog) {
        this.f4584c = r4;
        this.f4583b = dialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1186k.m9816c().m9812g("dialog_share");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", this.f4584c.n.getResources().getString(R$string.share_subject));
        intent.putExtra("android.intent.extra.TEXT", this.f4584c.n.getResources().getString(R$string.share_text));
        intent.setFlags(268435456);
        MainActivity mainActivity = this.f4584c.n;
        mainActivity.startActivity(Intent.createChooser(intent, mainActivity.getString(R$string.choose_type)));
        this.f4584c.n.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        this.f4583b.dismiss();
    }
}
