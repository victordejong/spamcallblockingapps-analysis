package p193e.p194a.p195a.p200c;

import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.a.c.b6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b6.class */
public final class View$OnClickListenerC5111b6 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C5180c6 f17487a;

    /* renamed from: b */
    public final /* synthetic */ C5061a6 f17488b;

    public View$OnClickListenerC5111b6(C5180c6 c5180c6, C5061a6 c5061a6) {
        this.f17487a = c5180c6;
        this.f17488b = c5061a6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC5229d6 abstractC5229d6 = this.f17487a.f17776a;
        if (abstractC5229d6 != null) {
            abstractC5229d6.mo33479n(this.f17488b.f17336a);
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
