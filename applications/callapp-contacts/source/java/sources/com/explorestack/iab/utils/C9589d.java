package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: com.explorestack.iab.utils.d */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/d.class */
public final class C9589d extends AbstractC9594i<CircleCountdownView> {
    public C9589d(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        return Assets.resolveDefCloseStyle(context, c9593h);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    public final /* synthetic */ void mo24037a(Context context, CircleCountdownView circleCountdownView, C9593h c9593h) {
        CircleCountdownView circleCountdownView2 = circleCountdownView;
        super.mo24037a(context, (Context) circleCountdownView2, c9593h);
        if (EventConstants.SKIP.equals(c9593h.f32589g) || "skipfill".equals(c9593h.f32589g)) {
            circleCountdownView2.setImage(Assets.getBitmapFromBase64(Assets.skip));
        } else {
            circleCountdownView2.setImage(Assets.getBitmapFromBase64(Assets.close));
        }
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final /* synthetic */ CircleCountdownView mo24035b(Context context, C9593h c9593h) {
        return new CircleCountdownView(context);
    }
}
