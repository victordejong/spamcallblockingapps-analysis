package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/BlockListActivity$a.class */
class BlockListActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ BlockListActivity f4910b;

    BlockListActivity$a(BlockListActivity blockListActivity) {
        this.f4910b = blockListActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4910b.finish();
        this.f4910b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
