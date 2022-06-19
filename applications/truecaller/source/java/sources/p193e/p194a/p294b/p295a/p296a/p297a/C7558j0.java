package p193e.p194a.p294b.p295a.p296a.p297a;

import android.text.Editable;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p355m.AbstractC8092o;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.j0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/j0.class */
public final class C7558j0<T> implements AbstractC27012l0<C8036l<? extends AbstractC8042q<s>>> {

    /* renamed from: a */
    public final /* synthetic */ C7551i0 f23870a;

    public C7558j0(C7551i0 c7551i0) {
        this.f23870a = c7551i0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(C8036l<? extends AbstractC8042q<s>> c8036l) {
        C8036l<? extends AbstractC8042q<s>> c8036l2 = c8036l;
        if (!(c8036l2.f24764b instanceof AbstractC8042q.C8044b)) {
            AbstractC8042q<s> m28930a = c8036l2.m28930a();
            if (!(m28930a instanceof AbstractC8042q.C8045c)) {
                if (!(m28930a instanceof AbstractC8042q.C8043a)) {
                    return;
                }
                AbstractC8092o m29524OA = C7551i0.m29524OA(this.f23870a);
                TextInputLayout textInputLayout = m29524OA.f25048d;
                l.d(textInputLayout, "ttlName");
                textInputLayout.setError(this.f23870a.m29523PA().m29467c((AbstractC8042q.C8043a) m28930a));
                TextInputLayout textInputLayout2 = m29524OA.f25048d;
                l.d(textInputLayout2, "ttlName");
                textInputLayout2.setErrorEnabled(true);
                return;
            }
            C7551i0 c7551i0 = this.f23870a;
            AbstractC18228e abstractC18228e = c7551i0.f23861b;
            if (abstractC18228e == null) {
                l.l("bizProfileRefreshNotifier");
                throw null;
            }
            TextInputEditText textInputEditText = C7551i0.m29524OA(c7551i0).f25046b;
            l.d(textInputEditText, "binding.etName");
            Editable text = textInputEditText.getText();
            C17422k.m16095W(abstractC18228e, text != null ? text.toString() : null, false, 2, null);
            AbstractC8092o m29524OA2 = C7551i0.m29524OA(this.f23870a);
            TextInputLayout textInputLayout3 = m29524OA2.f25048d;
            l.d(textInputLayout3, "ttlName");
            textInputLayout3.setError(null);
            TextInputLayout textInputLayout4 = m29524OA2.f25048d;
            l.d(textInputLayout4, "ttlName");
            textInputLayout4.setErrorEnabled(false);
            this.f23870a.dismiss();
        }
    }
}
