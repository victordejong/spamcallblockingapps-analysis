package com.callerid.block.start;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.callerid.block.R$anim;
import com.callerid.block.main.MainActivity;
import com.callerid.block.util.C1216t0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/SettingActivity$a.class */
class SettingActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ SettingActivity f4941b;

    SettingActivity$a(SettingActivity settingActivity) {
        this.f4941b = settingActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (C1216t0.f5074a) {
            C1216t0.f5074a = false;
            this.f4941b.startActivity(new Intent((Context) this.f4941b, (Class<?>) MainActivity.class));
        }
        this.f4941b.finish();
        this.f4941b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
