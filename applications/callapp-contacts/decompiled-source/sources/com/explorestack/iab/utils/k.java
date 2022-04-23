package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/k.class */
public final class k extends i<CircleCountdownView> {
    public boolean e = false;

    public k(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        if (hVar == null || !"speakerfill".equals(hVar.g)) {
            return Assets.defMuteStyle;
        }
        h hVar2 = new h();
        hVar2.f19186c = Boolean.TRUE;
        return Assets.defMuteStyle.a(hVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.iab.utils.i
    public final /* synthetic */ void a(Context context, CircleCountdownView circleCountdownView, h hVar) {
        circleCountdownView.setImage(Assets.getBitmapFromBase64(this.e ? Assets.unmute : Assets.mute));
    }

    @Override // com.explorestack.iab.utils.i
    final /* synthetic */ CircleCountdownView b(Context context, h hVar) {
        return new CircleCountdownView(context);
    }
}
