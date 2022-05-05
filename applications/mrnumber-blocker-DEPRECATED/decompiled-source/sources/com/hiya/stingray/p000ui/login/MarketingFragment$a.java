package com.hiya.stingray.p000ui.login;

import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;
import com.hiya.stingray.util.C0127u;
/* renamed from: com.hiya.stingray.ui.login.MarketingFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/MarketingFragment$a.class */
class MarketingFragment$a extends ClickableSpan {

    /* renamed from: f */
    final /* synthetic */ URLSpan f0f;

    /* renamed from: g */
    final /* synthetic */ MarketingFragment f1g;

    MarketingFragment$a(MarketingFragment marketingFragment, URLSpan uRLSpan) {
        this.f1g = marketingFragment;
        this.f0f = uRLSpan;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        MarketingFragment.f1(this.f1g, this.f0f.getURL());
        C0127u.m913i(this.f1g.getActivity(), this.f0f.getURL());
    }
}
