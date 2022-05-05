package com.hiya.stingray.p000ui.premium;

import android.content.Context;
import android.view.View;
import com.hiya.stingray.p000ui.premium.upsell.SubscriptionUpsellActivity$a;
import com.hiya.stingray.p000ui.premium.upsell.c$b;
import com.hiya.stingray.ui.premium.upsell.SubscriptionUpsellActivity;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.b$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/b$a.class */
final class b$a implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ b f30f;

    b$a(b bVar) {
        this.f30f = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b bVar = this.f30f;
        SubscriptionUpsellActivity$a subscriptionUpsellActivity$a = SubscriptionUpsellActivity.r;
        Context context = bVar.getContext();
        if (context != null) {
            k.c(context, "context!!");
            bVar.startActivity(subscriptionUpsellActivity$a.m1194a(context, c$b.BASIC_TAB));
            this.f30f.g1().m1243c();
            return;
        }
        k.o();
        throw null;
    }
}
