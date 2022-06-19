package p1727n3.p1807k.p1808a;

import android.content.Intent;
import com.truecaller.log.AssertionUtil;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import s1.z.c.l;
/* renamed from: n3.k.a.h */
/* loaded from: classes-dex2jar.jar:n3/k/a/h.class */
public final class C26430h implements AbstractServiceC26431i.AbstractC26436e {

    /* renamed from: a */
    public final AbstractServiceC26431i.AbstractC26436e f74061a;

    public C26430h(AbstractServiceC26431i.AbstractC26436e abstractC26436e) {
        l.e(abstractC26436e, "workItem");
        this.f74061a = abstractC26436e;
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
    /* renamed from: O5 */
    public void mo1883O5() {
        try {
            this.f74061a.mo1883O5();
        } catch (IllegalArgumentException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i.AbstractC26436e
    public Intent getIntent() {
        return this.f74061a.getIntent();
    }
}
