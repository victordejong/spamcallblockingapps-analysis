package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.concurrent.ThreadFactory;
/* renamed from: c.d.b.d.g.a.xe0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xe0.class */
public final class xe0 implements ThreadFactory {

    /* renamed from: a */
    public final /* synthetic */ String f16039a;

    public xe0(String str) {
        this.f16039a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.f16039a);
    }
}
