package p193e.p194a.p294b.p295a.p325h.p328c;

import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1849n.AbstractC26868i;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.c.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/e.class */
public final class C7825e extends AbstractC26868i.AbstractC26869a {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC7819a f24349a;

    public C7825e(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        this.f24349a = view$OnClickListenerC7819a;
    }

    @Override // p1727n3.p1849n.AbstractC26868i.AbstractC26869a
    /* renamed from: e */
    public void mo1248e(AbstractC26868i abstractC26868i, int i) {
        TextInputLayout textInputLayout = View$OnClickListenerC7819a.m29275OA(this.f24349a).f24972m;
        l.d(textInputLayout, "binding.tilCity");
        textInputLayout.setError(View$OnClickListenerC7819a.m29274PA(this.f24349a, abstractC26868i));
    }
}
