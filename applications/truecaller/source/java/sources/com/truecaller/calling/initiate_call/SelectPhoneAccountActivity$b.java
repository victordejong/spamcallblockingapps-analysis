package com.truecaller.calling.initiate_call;

import android.content.DialogInterface;
import e.a.h.e.q;
import p193e.p194a.p804h.p826e.AbstractC14664p;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/SelectPhoneAccountActivity$b.class */
public final class SelectPhoneAccountActivity$b implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ SelectPhoneAccountActivity f10734a;

    public SelectPhoneAccountActivity$b(SelectPhoneAccountActivity selectPhoneAccountActivity) {
        this.f10734a = selectPhoneAccountActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        q qVar = this.f10734a.d;
        if (qVar == null) {
            l.l("presenter");
            throw null;
        }
        AbstractC14664p abstractC14664p = (AbstractC14664p) qVar.f57683a;
        if (abstractC14664p == null) {
            return;
        }
        abstractC14664p.m19812t();
    }
}
