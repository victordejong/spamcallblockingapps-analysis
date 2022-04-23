package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$d.class */
class CallerActivity$d implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4917b;

    CallerActivity$d(CallerActivity callerActivity) {
        this.f4917b = callerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4917b.startActivity(new Intent((Context) this.f4917b, (Class<?>) PreviewNormalActivity.class));
        this.f4917b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
