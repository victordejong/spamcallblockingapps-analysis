package p193e.p1512i.p1516b.p1529r1;

import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import java.lang.ref.Reference;
import java.net.URI;
import java.util.Objects;
import p193e.p1512i.p1516b.p1527q1.AbstractC23013c;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.r1.f */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/f.class */
public class C23043f implements AbstractC23061u {

    /* renamed from: a */
    public final URI f63839a;

    /* renamed from: b */
    public final Reference<CriteoNativeAdListener> f63840b;

    /* renamed from: c */
    public final C23051l f63841c;

    /* renamed from: e.i.b.r1.f$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/r1/f$a.class */
    public class C23044a implements AbstractC23013c {
        public C23044a() {
            C23043f.this = r4;
        }

        @Override // p193e.p1512i.p1516b.p1527q1.AbstractC23013c
        /* renamed from: a */
        public void mo7576a() {
            C23043f c23043f = C23043f.this;
            C23051l c23051l = c23043f.f63841c;
            CriteoNativeAdListener criteoNativeAdListener = c23043f.f63840b.get();
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
            C23043f c23043f = C23043f.this;
            C23051l c23051l = c23043f.f63841c;
            CriteoNativeAdListener criteoNativeAdListener = c23043f.f63840b.get();
            Objects.requireNonNull(c23051l);
            if (criteoNativeAdListener == null) {
                return;
            }
            ExecutorC23149c executorC23149c = c23051l.f63850c;
            executorC23149c.f64119a.post(new C23049j(criteoNativeAdListener));
        }
    }

    public C23043f(URI uri, Reference<CriteoNativeAdListener> reference, C23051l c23051l) {
        this.f63839a = uri;
        this.f63840b = reference;
        this.f63841c = c23051l;
    }

    @Override // p193e.p1512i.p1516b.p1529r1.AbstractC23061u
    /* renamed from: a */
    public void mo7573a() {
        C23051l c23051l = this.f63841c;
        CriteoNativeAdListener criteoNativeAdListener = this.f63840b.get();
        Objects.requireNonNull(c23051l);
        if (criteoNativeAdListener != null) {
            ExecutorC23149c executorC23149c = c23051l.f63850c;
            executorC23149c.f64119a.post(new C23048i(criteoNativeAdListener));
        }
        C23051l c23051l2 = this.f63841c;
        URI uri = this.f63839a;
        C23044a c23044a = new C23044a();
        c23051l2.f63848a.m7589a(uri.toString(), c23051l2.f63849b.m7616a(), c23044a);
    }
}
