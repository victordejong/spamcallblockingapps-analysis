package p000;

import android.content.Context;
import android.view.View;
import p193e.p194a.p437c.p438a.p471e.p472a.C8977i;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import s1.z.c.l;
/* renamed from: n */
/* loaded from: classes2-dex2jar.jar:n.class */
public final class View$OnClickListenerC25366n implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70778a;

    /* renamed from: b */
    public final /* synthetic */ Object f70779b;

    public View$OnClickListenerC25366n(int i, Object obj) {
        this.f70778a = i;
        this.f70779b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f70778a;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            ((C8977i) this.f70779b).dismiss();
            return;
        }
        AbstractC10256f abstractC10256f = ((C8977i) this.f70779b).f27287b;
        if (abstractC10256f == null) {
            l.l("insightsSmsIntents");
            throw null;
        }
        if (!abstractC10256f.mo26525b()) {
            C8977i c8977i = (C8977i) this.f70779b;
            AbstractC10256f abstractC10256f2 = c8977i.f27287b;
            if (abstractC10256f2 == null) {
                l.l("insightsSmsIntents");
                throw null;
            }
            Context requireContext = c8977i.requireContext();
            l.d(requireContext, "requireContext()");
            ((C8977i) this.f70779b).startActivity(abstractC10256f2.mo26526a(requireContext));
        }
        ((C8977i) this.f70779b).dismiss();
    }
}
