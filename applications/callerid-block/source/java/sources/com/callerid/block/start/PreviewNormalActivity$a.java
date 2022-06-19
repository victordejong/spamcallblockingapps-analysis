package com.callerid.block.start;

import android.view.View;
import com.callerid.block.R$anim;
/* loaded from: classes-dex2jar.jar:com/callerid/block/start/PreviewNormalActivity$a.class */
class PreviewNormalActivity$a implements View.OnClickListener {

    /* renamed from: b */
    final /* synthetic */ PreviewNormalActivity f4938b;

    PreviewNormalActivity$a(PreviewNormalActivity previewNormalActivity) {
        this.f4938b = previewNormalActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4938b.finish();
        this.f4938b.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
    }
}
