package p193e.p194a.p1066n;

import com.truecaller.backup.AfterRestoreBehaviorFlag;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.n.z0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/z0.class */
public abstract class AbstractC18454z0<T> implements AbstractC18438v<T> {

    /* renamed from: a */
    public final AbstractC8541a f52109a;

    public AbstractC18454z0(AbstractC8541a abstractC8541a) {
        l.e(abstractC8541a, "coreSettings");
        this.f52109a = abstractC8541a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: a */
    public boolean mo14935a() {
        return this.f52109a.contains(getKey());
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: c */
    public AfterRestoreBehaviorFlag mo14934c() {
        return null;
    }
}
