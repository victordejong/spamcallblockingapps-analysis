package p131c.p135b.p136a.p148e;

import com.applovin.sdk.AppLovinSdk;
import java.util.LinkedList;
import java.util.Queue;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
/* renamed from: c.b.a.e.w */
/* loaded from: classes-dex2jar.jar:c/b/a/e/w.class */
public class C2379w {

    /* renamed from: a */
    public int f9247a;

    /* renamed from: b */
    public final Queue<AbstractC2250f> f9248b = new LinkedList();

    /* renamed from: c */
    public final Object f9249c = new Object();

    public C2379w(int i) {
        m30005a(i);
    }

    /* renamed from: a */
    public int m30006a() {
        int size;
        synchronized (this.f9249c) {
            size = this.f9248b.size();
        }
        return size;
    }

    /* renamed from: a */
    public void m30005a(int i) {
        if (i > 25) {
            i = 25;
        }
        this.f9247a = i;
    }

    /* renamed from: a */
    public void m30004a(AbstractC2250f fVar) {
        synchronized (this.f9249c) {
            if (m30006a() <= 25) {
                this.f9248b.offer(fVar);
            } else {
                C2374t.m30034j(AppLovinSdk.TAG, "Maximum queue capacity reached - discarding ad...");
            }
        }
    }

    /* renamed from: b */
    public int m30003b() {
        return this.f9247a;
    }

    /* renamed from: c */
    public boolean m30002c() {
        boolean z;
        synchronized (this.f9249c) {
            z = m30006a() >= this.f9247a;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m30001d() {
        boolean z;
        synchronized (this.f9249c) {
            z = m30006a() == 0;
        }
        return z;
    }

    /* renamed from: e */
    public AbstractC2250f m30000e() {
        AbstractC2250f poll;
        try {
            synchronized (this.f9249c) {
                poll = !m30001d() ? this.f9248b.poll() : null;
            }
            return poll;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: f */
    public AbstractC2250f m29999f() {
        AbstractC2250f peek;
        synchronized (this.f9249c) {
            peek = this.f9248b.peek();
        }
        return peek;
    }
}
