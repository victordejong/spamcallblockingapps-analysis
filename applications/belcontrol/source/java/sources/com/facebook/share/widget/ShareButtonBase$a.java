package com.facebook.share.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareButtonBase$a.class */
public class ShareButtonBase$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ShareButtonBase f2703a;

    public ShareButtonBase$a(ShareButtonBase shareButtonBase) {
        this.f2703a = shareButtonBase;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ShareButtonBase.n(this.f2703a, view);
        this.f2703a.getDialog().i(this.f2703a.getShareContent());
    }
}
