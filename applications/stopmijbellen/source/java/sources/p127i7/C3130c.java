package p127i7;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p127i7.AbstractAsyncTaskC3127b;
/* renamed from: i7.c */
/* loaded from: classes-dex2jar.jar:i7/c.class */
public class C3130c implements AbstractAsyncTaskC3127b.AbstractC3128a {

    /* renamed from: b */
    public final ArrayDeque<AbstractAsyncTaskC3127b> f10572b = new ArrayDeque<>();

    /* renamed from: c */
    public AbstractAsyncTaskC3127b f10573c = null;

    /* renamed from: a */
    public final ThreadPoolExecutor f10571a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: a */
    public final void m2591a() {
        AbstractAsyncTaskC3127b poll = this.f10572b.poll();
        this.f10573c = poll;
        if (poll != null) {
            poll.executeOnExecutor(this.f10571a, new Object[0]);
        }
    }

    /* renamed from: b */
    public void m2590b(AbstractAsyncTaskC3127b abstractAsyncTaskC3127b) {
        abstractAsyncTaskC3127b.f10569a = this;
        this.f10572b.add(abstractAsyncTaskC3127b);
        if (this.f10573c == null) {
            m2591a();
        }
    }
}
