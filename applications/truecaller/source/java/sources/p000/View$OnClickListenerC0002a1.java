package p000;

import android.content.Context;
import android.view.View;
import p193e.p194a.p682e.p684b.p695o.AbstractC13025m;
import p193e.p194a.p682e.p684b.p695o.C13017i;
import s1.z.c.l;
/* renamed from: a1 */
/* loaded from: classes3-dex2jar.jar:a1.class */
public final class View$OnClickListenerC0002a1 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f2a;

    /* renamed from: b */
    public final /* synthetic */ Object f3b;

    public View$OnClickListenerC0002a1(int i, Object obj) {
        this.f2a = i;
        this.f3b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f2a;
        if (i == 0) {
            ((C13017i) this.f3b).m22205OA().mo22161Xe();
        } else if (i == 1) {
            ((C13017i) this.f3b).m22205OA().mo22172Ci();
        } else if (i != 2) {
            if (i != 3) {
                throw null;
            }
            ((C13017i) this.f3b).m22205OA().mo22154vf();
        } else {
            AbstractC13025m m22205OA = ((C13017i) this.f3b).m22205OA();
            Context requireContext = ((C13017i) this.f3b).requireContext();
            l.d(requireContext, "requireContext()");
            m22205OA.mo22152xj(requireContext);
        }
    }
}
