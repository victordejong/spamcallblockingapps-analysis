package p193e.p194a.p1187r2;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.r2.b0 */
/* loaded from: classes5-dex2jar.jar:e/a/r2/b0.class */
public abstract class AbstractC19847b0 implements AbstractC19845a0 {
    /* renamed from: b */
    public <T> T m11858b(Class<T> cls, AbstractC19890w abstractC19890w) {
        if (AbstractC19851d0.class.equals(cls)) {
            return (T) new C19855f0(abstractC19890w);
        }
        StringBuilder m8728C = C22128a.m8728C("Proxy for class ");
        m8728C.append(cls.getCanonicalName());
        m8728C.append(" was not generated. Did you forget to annotate interface by @ActorInterface annotation?");
        throw new IllegalArgumentException(m8728C.toString());
    }
}
