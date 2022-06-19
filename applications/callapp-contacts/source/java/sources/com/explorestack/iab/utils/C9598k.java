package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
import com.explorestack.iab.vast.view.CircleCountdownView;
/* renamed from: com.explorestack.iab.utils.k */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/k.class */
public final class C9598k extends AbstractC9594i<CircleCountdownView> {

    /* renamed from: e */
    public boolean f32614e = false;

    public C9598k(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        if (c9593h == null || !"speakerfill".equals(c9593h.f32589g)) {
            return Assets.defMuteStyle;
        }
        C9593h c9593h2 = new C9593h();
        c9593h2.f32585c = Boolean.TRUE;
        return Assets.defMuteStyle.m24068a(c9593h2);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    public final /* synthetic */ void mo24037a(Context context, CircleCountdownView circleCountdownView, C9593h c9593h) {
        circleCountdownView.setImage(Assets.getBitmapFromBase64(this.f32614e ? Assets.unmute : Assets.mute));
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final /* synthetic */ CircleCountdownView mo24035b(Context context, C9593h c9593h) {
        return new CircleCountdownView(context);
    }
}
