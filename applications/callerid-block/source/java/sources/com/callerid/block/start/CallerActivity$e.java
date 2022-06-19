package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/CallerActivity$e.class */
class CallerActivity$e implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ CallerActivity f4918b;

    CallerActivity$e(CallerActivity callerActivity) {
        this.f4918b = callerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4918b.startActivity(new Intent((Context) this.f4918b, (Class<?>) PreviewSimpleActivity.class));
        this.f4918b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
