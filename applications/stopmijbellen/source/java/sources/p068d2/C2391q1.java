package p068d2;

import java.util.concurrent.CountDownLatch;
/* renamed from: d2.q1 */
/* loaded from: classes-dex2jar.jar:d2/q1.class */
public class C2391q1 implements AbstractC2161a<C2432w1> {

    /* renamed from: a */
    public final /* synthetic */ C2432w1[] f8456a;

    /* renamed from: b */
    public final /* synthetic */ CountDownLatch f8457b;

    public C2391q1(C2396r1 c2396r1, C2432w1[] c2432w1Arr, CountDownLatch countDownLatch) {
        this.f8456a = c2432w1Arr;
        this.f8457b = countDownLatch;
    }

    @Override // p068d2.AbstractC2161a
    public void accept(C2432w1 c2432w1) {
        this.f8456a[0] = c2432w1;
        this.f8457b.countDown();
    }
}
