package p081h.p203i.p204a.p224e.p258i;

import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.i.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/i/f.class */
public abstract class AbstractC7150f {
    @GuardedBy("SdkFlagFactory.class")

    /* renamed from: a */
    public static AbstractC7150f f17250a;

    /* renamed from: a */
    public static AbstractC7150f m21029a() {
        AbstractC7150f fVar;
        synchronized (AbstractC7150f.class) {
            try {
                if (f17250a == null) {
                    f17250a = new C7146b();
                }
                fVar = f17250a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* renamed from: a */
    public abstract AbstractC7151g<Boolean> mo21028a(String str, boolean z);
}
