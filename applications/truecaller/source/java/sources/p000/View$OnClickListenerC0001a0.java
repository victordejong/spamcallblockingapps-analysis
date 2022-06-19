package p000;

import android.view.View;
import p193e.p194a.p837h0.p838a.C14745a;
/* renamed from: a0 */
/* loaded from: classes3-dex2jar.jar:a0.class */
public final class View$OnClickListenerC0001a0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f0a;

    /* renamed from: b */
    public final /* synthetic */ Object f1b;

    public View$OnClickListenerC0001a0(int i, Object obj) {
        this.f0a = i;
        this.f1b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f0a;
        if (i == 0) {
            ((C14745a) this.f1b).m19692Q4().performClick();
        } else if (i != 1) {
            throw null;
        } else {
            ((C14745a) this.f1b).m19692Q4().performClick();
        }
    }
}
