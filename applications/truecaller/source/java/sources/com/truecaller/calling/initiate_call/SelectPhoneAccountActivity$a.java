package com.truecaller.calling.initiate_call;

import android.content.DialogInterface;
import e.a.h.e.q;
import p193e.p194a.p804h.p826e.AbstractC14659l;
import p193e.p194a.p804h.p826e.AbstractC14663o;
import p193e.p194a.p804h.p826e.AbstractC14664p;
import p193e.p194a.p804h.p826e.C14661n;
import s1.z.c.l;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/initiate_call/SelectPhoneAccountActivity$a.class */
public final class SelectPhoneAccountActivity$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ SelectPhoneAccountActivity f10732a;

    /* renamed from: b */
    public final /* synthetic */ C14661n f10733b;

    public SelectPhoneAccountActivity$a(SelectPhoneAccountActivity selectPhoneAccountActivity, C14661n c14661n) {
        this.f10732a = selectPhoneAccountActivity;
        this.f10733b = c14661n;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        AbstractC14663o abstractC14663o;
        AbstractC14659l.b bVar = (AbstractC14659l) this.f10733b.getItem(i);
        if (bVar != null) {
            l.d(bVar, "adapter.getItem(position) ?: return@setAdapter");
            q qVar = this.f10732a.d;
            if (qVar == null) {
                l.l("presenter");
                throw null;
            }
            l.e(bVar, "phoneAccountInfo");
            if (bVar instanceof AbstractC14659l.b) {
                AbstractC14663o abstractC14663o2 = (AbstractC14663o) qVar.f57687b;
                if (abstractC14663o2 != null) {
                    String str = qVar.c;
                    if (str == null) {
                        l.l("number");
                        throw null;
                    }
                    String str2 = qVar.e;
                    if (str2 == null) {
                        l.l("analyticsContext");
                        throw null;
                    }
                    String str3 = qVar.d;
                    if (str3 == null) {
                        l.l("displayName");
                        throw null;
                    }
                    abstractC14663o2.m19814F8(str, str2, str3, null, null, qVar.f, qVar.g);
                }
            } else if ((bVar instanceof AbstractC14659l.a) && (abstractC14663o = (AbstractC14663o) qVar.f57687b) != null) {
                String str4 = qVar.c;
                if (str4 == null) {
                    l.l("number");
                    throw null;
                }
                String str5 = qVar.e;
                if (str5 == null) {
                    l.l("analyticsContext");
                    throw null;
                }
                String str6 = qVar.d;
                if (str6 == null) {
                    l.l("displayName");
                    throw null;
                }
                abstractC14663o.m19814F8(str4, str5, str6, Integer.valueOf(((AbstractC14659l.a) bVar).d), null, qVar.f, qVar.g);
            }
            AbstractC14664p abstractC14664p = (AbstractC14664p) qVar.f57683a;
            if (abstractC14664p == null) {
                return;
            }
            abstractC14664p.m19812t();
        }
    }
}
