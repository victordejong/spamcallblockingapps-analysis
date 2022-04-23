package com.explorestack.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.explorestack.iab.vast.view.IabTextView;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/f.class */
public final class f extends i<IabTextView> {
    public f(View.OnClickListener onClickListener) {
        super(onClickListener);
    }

    @Override // com.explorestack.iab.utils.i
    protected final h a(Context context, h hVar) {
        return Assets.defCtaStyle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.iab.utils.i
    public final /* synthetic */ void a(Context context, IabTextView iabTextView, h hVar) {
        IabTextView iabTextView2 = iabTextView;
        super.a(context, (Context) iabTextView2, hVar);
        iabTextView2.setText(!TextUtils.isEmpty(hVar.j) ? hVar.j : "Learn more");
    }

    @Override // com.explorestack.iab.utils.i
    final /* synthetic */ IabTextView b(Context context, h hVar) {
        return new IabTextView(context);
    }
}
