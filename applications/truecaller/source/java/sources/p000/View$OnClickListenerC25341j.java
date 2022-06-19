package p000;

import android.view.View;
import p193e.p194a.p682e.p684b.p695o.C13017i;
/* renamed from: j */
/* loaded from: classes2-dex2jar.jar:j.class */
public final class View$OnClickListenerC25341j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70744a;

    /* renamed from: b */
    public final /* synthetic */ Object f70745b;

    public View$OnClickListenerC25341j(int i, Object obj) {
        this.f70744a = i;
        this.f70745b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f70744a;
        if (i == 0) {
            ((C13017i) this.f70745b).m22205OA().mo22160ef();
        } else if (i != 1) {
            throw null;
        } else {
            ((C13017i) this.f70745b).m22205OA().mo22157mi();
        }
    }
}
