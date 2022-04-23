package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/PreviewSimpleActivity$a.class */
class PreviewSimpleActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ PreviewSimpleActivity f4939b;

    PreviewSimpleActivity$a(PreviewSimpleActivity previewSimpleActivity) {
        this.f4939b = previewSimpleActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4939b.finish();
        this.f4939b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
