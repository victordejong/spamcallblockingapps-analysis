package p000;

import android.view.View;
import n3.r.a.l;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.p694n.C13000h;
/* renamed from: b0 */
/* loaded from: classes3-dex2jar.jar:b0.class */
public final class View$OnClickListenerC0425b0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f1599a;

    /* renamed from: b */
    public final /* synthetic */ Object f1600b;

    public View$OnClickListenerC0425b0(int i, Object obj) {
        this.f1599a = i;
        this.f1600b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f1599a;
        if (i == 0) {
            ((C13000h) this.f1600b).m22274OA().mo22227O9();
        } else if (i != 1) {
            throw null;
        } else {
            C13000h c13000h = (C13000h) this.f1600b;
            int i2 = C13000h.f37726Q;
            l activity = c13000h.getActivity();
            if (activity == null) {
                return;
            }
            C12864a2.m22575S(activity, "https://support.truecaller.com/hc/en-us/sections/115000753845-Messaging", false);
        }
    }
}
