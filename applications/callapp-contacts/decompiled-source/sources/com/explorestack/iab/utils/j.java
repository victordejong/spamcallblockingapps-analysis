package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/j.class */
public final class j extends i<CircularProgressBar> {
    public j(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        return Assets.defLoadingStyle;
    }

    @Override // com.explorestack.iab.utils.i
    final /* synthetic */ CircularProgressBar b(Context context, h hVar) {
        return new CircularProgressBar(context);
    }
}
