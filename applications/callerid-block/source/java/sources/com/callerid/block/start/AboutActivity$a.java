package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/AboutActivity$a.class */
class AboutActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ AboutActivity f4894b;

    AboutActivity$a(AboutActivity aboutActivity) {
        this.f4894b = aboutActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4894b.finish();
        this.f4894b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
