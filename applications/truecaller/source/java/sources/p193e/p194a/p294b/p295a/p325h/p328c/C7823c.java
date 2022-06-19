package p193e.p194a.p294b.p295a.p325h.p328c;

import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1849n.AbstractC26868i;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.c.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/c.class */
public final class C7823c extends AbstractC26868i.AbstractC26869a {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC7819a f24347a;

    public C7823c(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        this.f24347a = view$OnClickListenerC7819a;
    }

    @Override // p1727n3.p1849n.AbstractC26868i.AbstractC26869a
    /* renamed from: e */
    public void mo1248e(AbstractC26868i abstractC26868i, int i) {
        TextInputLayout textInputLayout = View$OnClickListenerC7819a.m29275OA(this.f24347a).f24973n;
        l.d(textInputLayout, "binding.tilPincode");
        textInputLayout.setError(View$OnClickListenerC7819a.m29274PA(this.f24347a, abstractC26868i));
    }
}
