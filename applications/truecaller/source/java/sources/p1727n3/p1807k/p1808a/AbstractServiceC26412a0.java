package p1727n3.p1807k.p1808a;

import com.truecaller.log.AssertionUtil;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
/* renamed from: n3.k.a.a0 */
/* loaded from: classes-dex2jar.jar:n3/k/a/a0.class */
public abstract class AbstractServiceC26412a0 extends AbstractServiceC26431i {
    @Override // p1727n3.p1807k.p1808a.AbstractServiceC26431i
    public AbstractServiceC26431i.AbstractC26436e dequeueWork() {
        C26430h c26430h;
        try {
            AbstractServiceC26431i.AbstractC26436e dequeueWork = super.dequeueWork();
            c26430h = null;
            if (dequeueWork != null) {
                c26430h = new C26430h(dequeueWork);
            }
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            c26430h = null;
        }
        return c26430h;
    }
}
