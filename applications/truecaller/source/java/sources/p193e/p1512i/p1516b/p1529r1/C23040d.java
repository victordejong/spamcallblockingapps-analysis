package p193e.p1512i.p1516b.p1529r1;

import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import java.lang.ref.Reference;
import java.net.URI;
import java.util.Objects;
import p193e.p1512i.p1516b.p1527q1.AbstractC23013c;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.r1.d */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/d.class */
public class C23040d implements AbstractC23061u {

    /* renamed from: a */
    public final URI f63832a;

    /* renamed from: b */
    public final Reference<CriteoNativeAdListener> f63833b;

    /* renamed from: c */
    public final C23051l f63834c;

    /* renamed from: e.i.b.r1.d$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/r1/d$a.class */
    public class C23041a implements AbstractC23013c {
        public C23041a() {
            C23040d.this = r4;
        }

        @Override // p193e.p1512i.p1516b.p1527q1.AbstractC23013c
        /* renamed from: a */
        public void mo7576a() {
            C23040d c23040d = C23040d.this;
            C23051l c23051l = c23040d.f63834c;
            CriteoNativeAdListener criteoNativeAdListener = c23040d.f63833b.get();
            Objects.requireNonNull(c23051l);
            if (criteoNativeAdListener == null) {
                return;
            }
            ExecutorC23149c executorC23149c = c23051l.f63850c;
            executorC23149c.f64119a.post(new C23050k(criteoNativeAdListener));
        }

        @Override // p193e.p1512i.p1516b.p1527q1.AbstractC23013c
        /* renamed from: b */
        public void mo7575b() {
            C23040d c23040d = C23040d.this;
            C23051l c23051l = c23040d.f63834c;
            CriteoNativeAdListener criteoNativeAdListener = c23040d.f63833b.get();
            Objects.requireNonNull(c23051l);
            if (criteoNativeAdListener == null) {
                return;
            }
            ExecutorC23149c executorC23149c = c23051l.f63850c;
            executorC23149c.f64119a.post(new C23049j(criteoNativeAdListener));
        }
    }

    public C23040d(URI uri, Reference<CriteoNativeAdListener> reference, C23051l c23051l) {
        this.f63832a = uri;
        this.f63833b = reference;
        this.f63834c = c23051l;
    }

    @Override // p193e.p1512i.p1516b.p1529r1.AbstractC23061u
    /* renamed from: a */
    public void mo7573a() {
        C23051l c23051l = this.f63834c;
        URI uri = this.f63832a;
        C23041a c23041a = new C23041a();
        c23051l.f63848a.m7589a(uri.toString(), c23051l.f63849b.m7616a(), c23041a);
    }
}
