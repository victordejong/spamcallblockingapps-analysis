package p220r4;

import java.util.concurrent.CountDownLatch;
/* renamed from: r4.p */
/* loaded from: classes-dex2jar.jar:r4/p.class */
public final class C4207p implements AbstractC4193b, AbstractC4192a {

    /* renamed from: a */
    public final CountDownLatch f13203a = new CountDownLatch(1);

    @Override // p220r4.AbstractC4192a
    public final void onFailure(Exception exc) {
        this.f13203a.countDown();
    }

    @Override // p220r4.AbstractC4193b
    public final void onSuccess(Object obj) {
        this.f13203a.countDown();
    }
}
