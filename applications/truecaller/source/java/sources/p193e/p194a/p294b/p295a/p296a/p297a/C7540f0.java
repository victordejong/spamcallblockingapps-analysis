package p193e.p194a.p294b.p295a.p296a.p297a;

import com.google.android.material.textfield.TextInputLayout;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p355m.AbstractC8074j;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.f0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/f0.class */
public final class C7540f0<T> implements AbstractC27012l0<C8036l<? extends AbstractC8042q<s>>> {

    /* renamed from: a */
    public final /* synthetic */ C7534e0 f23845a;

    public C7540f0(C7534e0 c7534e0) {
        this.f23845a = c7534e0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(C8036l<? extends AbstractC8042q<s>> c8036l) {
        C8036l<? extends AbstractC8042q<s>> c8036l2 = c8036l;
        if (!(c8036l2.f24764b instanceof AbstractC8042q.C8044b)) {
            AbstractC8042q<s> m28930a = c8036l2.m28930a();
            if (m28930a instanceof AbstractC8042q.C8045c) {
                AbstractC8074j abstractC8074j = this.f23845a.f23838c;
                if (abstractC8074j == null) {
                    l.l("binding");
                    throw null;
                }
                TextInputLayout textInputLayout = abstractC8074j.f24945d;
                l.d(textInputLayout, "ttlDesc");
                textInputLayout.setError(null);
                TextInputLayout textInputLayout2 = abstractC8074j.f24945d;
                l.d(textInputLayout2, "ttlDesc");
                textInputLayout2.setErrorEnabled(false);
                this.f23845a.dismiss();
            } else if (!(m28930a instanceof AbstractC8042q.C8043a)) {
            } else {
                AbstractC8074j abstractC8074j2 = this.f23845a.f23838c;
                if (abstractC8074j2 == null) {
                    l.l("binding");
                    throw null;
                }
                TextInputLayout textInputLayout3 = abstractC8074j2.f24945d;
                l.d(textInputLayout3, "ttlDesc");
                textInputLayout3.setError(this.f23845a.m29529OA().m29467c((AbstractC8042q.C8043a) m28930a));
                TextInputLayout textInputLayout4 = abstractC8074j2.f24945d;
                l.d(textInputLayout4, "ttlDesc");
                textInputLayout4.setErrorEnabled(true);
            }
        }
    }
}
