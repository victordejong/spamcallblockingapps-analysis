package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/d.class */
public final class d extends i<CircleCountdownView> {
    public d(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        return Assets.resolveDefCloseStyle(context, hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.iab.utils.i
    public final /* synthetic */ void a(Context context, CircleCountdownView circleCountdownView, h hVar) {
        CircleCountdownView circleCountdownView2 = circleCountdownView;
        super.a(context, (Context) circleCountdownView2, hVar);
        if (EventConstants.SKIP.equals(hVar.g) || "skipfill".equals(hVar.g)) {
            circleCountdownView2.setImage(Assets.getBitmapFromBase64(Assets.skip));
        } else {
            circleCountdownView2.setImage(Assets.getBitmapFromBase64(Assets.close));
        }
    }

    @Override // com.explorestack.iab.utils.i
    final /* synthetic */ CircleCountdownView b(Context context, h hVar) {
        return new CircleCountdownView(context);
    }
}
