package com.truecaller.ads.leadgen;

import android.view.View;
import e.a.i.c0.d;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/LeadgenActivity$d.class */
public final class LeadgenActivity$d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ LeadgenActivity f9853a;

    public LeadgenActivity$d(LeadgenActivity leadgenActivity) {
        this.f9853a = leadgenActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        d dVar = this.f9853a.a;
        if (dVar != null) {
            dVar.onCloseClick();
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
