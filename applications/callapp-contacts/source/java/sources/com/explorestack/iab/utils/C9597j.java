package com.explorestack.iab.utils;

import android.content.Context;
import android.view.View;
/* renamed from: com.explorestack.iab.utils.j */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/j.class */
public final class C9597j extends AbstractC9594i<CircularProgressBar> {
    public C9597j(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        return Assets.defLoadingStyle;
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final /* synthetic */ CircularProgressBar mo24035b(Context context, C9593h c9593h) {
        return new CircularProgressBar(context);
    }
}
