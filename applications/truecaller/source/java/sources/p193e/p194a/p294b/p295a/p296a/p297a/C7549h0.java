package p193e.p194a.p294b.p295a.p296a.p297a;

import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p355m.AbstractC8080l;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.h0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/h0.class */
public final class C7549h0<T> implements AbstractC27012l0<C8036l<? extends AbstractC8042q<s>>> {

    /* renamed from: a */
    public final /* synthetic */ C7542g0 f23858a;

    public C7549h0(C7542g0 c7542g0) {
        this.f23858a = c7542g0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(C8036l<? extends AbstractC8042q<s>> c8036l) {
        C8036l<? extends AbstractC8042q<s>> c8036l2 = c8036l;
        if (!(c8036l2.f24764b instanceof AbstractC8042q.C8044b)) {
            AbstractC8042q<s> m28930a = c8036l2.m28930a();
            if (m28930a instanceof AbstractC8042q.C8045c) {
                AbstractC8080l abstractC8080l = this.f23858a.f23850c;
                if (abstractC8080l == null) {
                    l.l("binding");
                    throw null;
                }
                TextInputLayout textInputLayout = abstractC8080l.f24988d;
                l.d(textInputLayout, "ttlEmail");
                textInputLayout.setError(null);
                TextInputLayout textInputLayout2 = abstractC8080l.f24988d;
                l.d(textInputLayout2, "ttlEmail");
                textInputLayout2.setErrorEnabled(false);
                this.f23858a.dismiss();
            } else if (!(m28930a instanceof AbstractC8042q.C8043a)) {
            } else {
                AbstractC8080l abstractC8080l2 = this.f23858a.f23850c;
                if (abstractC8080l2 == null) {
                    l.l("binding");
                    throw null;
                }
                TextInputLayout textInputLayout3 = abstractC8080l2.f24988d;
                l.d(textInputLayout3, "ttlEmail");
                textInputLayout3.setError(this.f23858a.m29526OA().m29467c((AbstractC8042q.C8043a) m28930a));
                TextInputLayout textInputLayout4 = abstractC8080l2.f24988d;
                l.d(textInputLayout4, "ttlEmail");
                textInputLayout4.setErrorEnabled(true);
            }
        }
    }
}
