package com.explorestack.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.explorestack.iab.vast.view.IabTextView;
/* renamed from: com.explorestack.iab.utils.f */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/f.class */
public final class C9591f extends AbstractC9594i<IabTextView> {
    public C9591f(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    protected final C9593h mo24036a(Context context, C9593h c9593h) {
        return Assets.defCtaStyle;
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: a */
    public final /* synthetic */ void mo24037a(Context context, IabTextView iabTextView, C9593h c9593h) {
        IabTextView iabTextView2 = iabTextView;
        super.mo24037a(context, (Context) iabTextView2, c9593h);
        iabTextView2.setText(!TextUtils.isEmpty(c9593h.f32592j) ? c9593h.f32592j : "Learn more");
    }

    @Override // com.explorestack.iab.utils.AbstractC9594i
    /* renamed from: b */
    final /* synthetic */ IabTextView mo24035b(Context context, C9593h c9593h) {
        return new IabTextView(context);
    }
}
