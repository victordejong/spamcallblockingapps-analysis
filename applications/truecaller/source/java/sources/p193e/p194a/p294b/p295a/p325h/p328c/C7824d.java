package p193e.p194a.p294b.p295a.p325h.p328c;

import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1849n.AbstractC26868i;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.c.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/d.class */
public final class C7824d extends AbstractC26868i.AbstractC26869a {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC7819a f24348a;

    public C7824d(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        this.f24348a = view$OnClickListenerC7819a;
    }

    @Override // p1727n3.p1849n.AbstractC26868i.AbstractC26869a
    /* renamed from: e */
    public void mo1248e(AbstractC26868i abstractC26868i, int i) {
        TextInputLayout textInputLayout = View$OnClickListenerC7819a.m29275OA(this.f24348a).f24971l;
        l.d(textInputLayout, "binding.tilBuildingName");
        textInputLayout.setError(View$OnClickListenerC7819a.m29274PA(this.f24348a, abstractC26868i));
    }
}
