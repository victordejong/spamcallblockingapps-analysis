package androidx.media2.exoplayer.external.text.p071a;

import androidx.media2.exoplayer.external.text.AbstractC1886d;
import androidx.media2.exoplayer.external.text.AbstractC1889e;
import androidx.media2.exoplayer.external.text.AbstractC1905h;
import androidx.media2.exoplayer.external.text.C1902g;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* renamed from: androidx.media2.exoplayer.external.text.a.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d.class */
public abstract class AbstractC1864d implements AbstractC1889e {

    /* renamed from: a */
    final ArrayDeque<AbstractC1905h> f7496a;

    /* renamed from: b */
    private final ArrayDeque<C1866a> f7497b = new ArrayDeque<>();

    /* renamed from: c */
    private final PriorityQueue<C1866a> f7498c;

    /* renamed from: d */
    private C1866a f7499d;

    /* renamed from: e */
    private long f7500e;

    /* renamed from: f */
    private long f7501f;

    /* renamed from: androidx.media2.exoplayer.external.text.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d$a.class */
    public static final class C1866a extends C1902g implements Comparable<C1866a> {

        /* renamed from: g */
        private long f7502g;

        private C1866a() {
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C1866a c1866a) {
            C1866a c1866a2 = c1866a;
            if (m42911c() != c1866a2.m42911c()) {
                return m42911c() ? 1 : -1;
            }
            ?? r0 = this.f5495d - c1866a2.f5495d;
            char c = r0;
            if (r0 == 0) {
                ?? r02 = this.f7502g - c1866a2.f7502g;
                c = r02;
                if (r02 == 0) {
                    return 0;
                }
            }
            return c > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.text.a.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d$b.class */
    public final class C1867b extends AbstractC1905h {
        private C1867b() {
            AbstractC1864d.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.text.AbstractC1905h, androidx.media2.exoplayer.external.p063b.AbstractC1443f
        /* renamed from: f */
        public final void mo41914f() {
            AbstractC1864d abstractC1864d = AbstractC1864d.this;
            mo41916a();
            abstractC1864d.f7496a.add(this);
        }
    }

    public AbstractC1864d() {
        for (int i = 0; i < 10; i++) {
            this.f7497b.add(new C1866a());
        }
        this.f7496a = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f7496a.add(new C1867b());
        }
        this.f7498c = new PriorityQueue<>();
    }

    /* renamed from: a */
    private void m41991a(C1866a c1866a) {
        c1866a.mo41916a();
        this.f7497b.add(c1866a);
    }

    @Override // androidx.media2.exoplayer.external.text.AbstractC1889e
    /* renamed from: a */
    public void mo41951a(long j) {
        this.f7500e = j;
    }

    /* renamed from: a */
    protected abstract void mo41990a(C1902g c1902g);

    /* renamed from: b */
    public void mo41989a(C1902g c1902g) throws SubtitleDecoderException {
        C1993a.m41688a(c1902g == this.f7499d);
        if (c1902g.m42908l_()) {
            m41991a(this.f7499d);
        } else {
            C1866a c1866a = this.f7499d;
            long j = this.f7501f;
            this.f7501f = 1 + j;
            c1866a.f7502g = j;
            this.f7498c.add(this.f7499d);
        }
        this.f7499d = null;
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: c */
    public void mo41986c() {
        this.f7501f = 0L;
        this.f7500e = 0L;
        while (!this.f7498c.isEmpty()) {
            m41991a(this.f7498c.poll());
        }
        C1866a c1866a = this.f7499d;
        if (c1866a != null) {
            m41991a(c1866a);
            this.f7499d = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: d */
    public void mo41985d() {
    }

    /* renamed from: e */
    protected abstract boolean mo41984e();

    /* renamed from: f */
    protected abstract AbstractC1886d mo41983f();

    /* renamed from: g */
    public AbstractC1905h mo41988b() throws SubtitleDecoderException {
        if (this.f7496a.isEmpty()) {
            return null;
        }
        while (!this.f7498c.isEmpty() && this.f7498c.peek().f5495d <= this.f7500e) {
            C1866a poll = this.f7498c.poll();
            if (poll.m42911c()) {
                AbstractC1905h pollFirst = this.f7496a.pollFirst();
                pollFirst.m42913a(4);
                m41991a(poll);
                return pollFirst;
            }
            mo41990a((C1902g) poll);
            if (mo41984e()) {
                AbstractC1886d mo41983f = mo41983f();
                if (!poll.m42908l_()) {
                    AbstractC1905h pollFirst2 = this.f7496a.pollFirst();
                    pollFirst2.m41915a(poll.f5495d, mo41983f, Long.MAX_VALUE);
                    m41991a(poll);
                    return pollFirst2;
                }
            }
            m41991a(poll);
        }
        return null;
    }

    /* renamed from: h */
    public C1902g mo41992a() throws SubtitleDecoderException {
        C1993a.m41686b(this.f7499d == null);
        if (this.f7497b.isEmpty()) {
            return null;
        }
        C1866a pollFirst = this.f7497b.pollFirst();
        this.f7499d = pollFirst;
        return pollFirst;
    }
}
