package p193e.p194a.p1365y.p1366a.p1372g;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.truecaller.flashsdk.p166ui.customviews.FlashAttachButton;
/* renamed from: e.a.y.a.g.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/g/b.class */
public final class View$OnClickListenerC21504b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C21505c f60041a;

    /* renamed from: b */
    public final /* synthetic */ FlashAttachButton f60042b;

    public View$OnClickListenerC21504b(C21505c c21505c, FlashAttachButton flashAttachButton, LayoutInflater layoutInflater, LinearLayout linearLayout) {
        this.f60041a = c21505c;
        this.f60042b = flashAttachButton;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        FlashAttachButton.AbstractC3943a abstractC3943a = this.f60042b.f12098b;
        if (abstractC3943a != null) {
            abstractC3943a.mo35338u0(this.f60041a.f60043a);
        }
        this.f60042b.m35353c();
    }
}
