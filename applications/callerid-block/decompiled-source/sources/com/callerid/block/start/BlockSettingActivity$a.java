package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockSettingActivity$a.class */
class BlockSettingActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ BlockSettingActivity f4913b;

    BlockSettingActivity$a(BlockSettingActivity blockSettingActivity) {
        this.f4913b = blockSettingActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4913b.finish();
        this.f4913b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
