package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$c.class */
class CallerActivity$c implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4916b;

    CallerActivity$c(CallerActivity callerActivity) {
        this.f4916b = callerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4916b.finish();
        this.f4916b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
