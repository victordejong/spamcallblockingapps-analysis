package androidx.media2.exoplayer.external.text.a;

import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.e;
import androidx.media2.exoplayer.external.text.g;
import androidx.media2.exoplayer.external.text.h;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d.class */
abstract class d implements e {

    /* renamed from: a  reason: collision with root package name */
    final ArrayDeque<h> f3810a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<a> f3811b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<a> f3812c;

    /* renamed from: d  reason: collision with root package name */
    private a f3813d;
    private long e;
    private long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d$a.class */
    public static final class a extends g implements Comparable<a> {
        private long g;

        private a() {
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // java.lang.Comparable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ int compareTo(androidx.media2.exoplayer.external.text.a.d.a r6) {
            /*
                r5 = this;
                r0 = r6
                androidx.media2.exoplayer.external.text.a.d$a r0 = (androidx.media2.exoplayer.external.text.a.d.a) r0
                r6 = r0
                r0 = r5
                boolean r0 = r0.c()
                r1 = r6
                boolean r1 = r1.c()
                if (r0 == r1) goto L_0x001b
                r0 = r5
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x0019
                r0 = 1
                return r0
            L_0x0019:
                r0 = -1
                return r0
            L_0x001b:
                r0 = r5
                long r0 = r0.f2950d
                r1 = r6
                long r1 = r1.f2950d
                long r0 = r0 - r1
                r7 = r0
                r0 = r7
                r9 = r0
                r0 = r7
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0043
                r0 = r5
                long r0 = r0.g
                r1 = r6
                long r1 = r1.g
                long r0 = r0 - r1
                r7 = r0
                r0 = r7
                r9 = r0
                r0 = r7
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0043
                r0 = 0
                return r0
            L_0x0043:
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x004c
                r0 = 1
                return r0
            L_0x004c:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.a.d.a.compareTo(java.lang.Object):int");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/a/d$b.class */
    final class b extends h {
        private b() {
        }

        @Override // androidx.media2.exoplayer.external.text.h, androidx.media2.exoplayer.external.b.f
        public final void f() {
            d dVar = d.this;
            a();
            dVar.f3810a.add(this);
        }
    }

    public d() {
        for (int i = 0; i < 10; i++) {
            this.f3811b.add(new a());
        }
        this.f3810a = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f3810a.add(new b());
        }
        this.f3812c = new PriorityQueue<>();
    }

    private void a(a aVar) {
        aVar.a();
        this.f3811b.add(aVar);
    }

    @Override // androidx.media2.exoplayer.external.text.e
    public void a(long j) {
        this.e = j;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    protected abstract void a(g gVar);

    /* renamed from: b */
    public void a(g gVar) throws SubtitleDecoderException {
        androidx.media2.exoplayer.external.util.a.a(gVar == this.f3813d);
        if (gVar.l_()) {
            a(this.f3813d);
        } else {
            a aVar = this.f3813d;
            long j = this.f;
            this.f = 1 + j;
            aVar.g = j;
            this.f3812c.add(this.f3813d);
        }
        this.f3813d = null;
    }

    @Override // androidx.media2.exoplayer.external.b.c
    public void c() {
        this.f = 0L;
        this.e = 0L;
        while (!this.f3812c.isEmpty()) {
            a(this.f3812c.poll());
        }
        a aVar = this.f3813d;
        if (aVar != null) {
            a(aVar);
            this.f3813d = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.b.c
    public void d() {
    }

    protected abstract boolean e();

    protected abstract androidx.media2.exoplayer.external.text.d f();

    /* renamed from: g */
    public h b() throws SubtitleDecoderException {
        if (this.f3810a.isEmpty()) {
            return null;
        }
        while (!this.f3812c.isEmpty() && this.f3812c.peek().f2950d <= this.e) {
            a poll = this.f3812c.poll();
            if (poll.c()) {
                h pollFirst = this.f3810a.pollFirst();
                pollFirst.a(4);
                a(poll);
                return pollFirst;
            }
            a((g) poll);
            if (e()) {
                androidx.media2.exoplayer.external.text.d f = f();
                if (!poll.l_()) {
                    h pollFirst2 = this.f3810a.pollFirst();
                    pollFirst2.a(poll.f2950d, f, Long.MAX_VALUE);
                    a(poll);
                    return pollFirst2;
                }
            }
            a(poll);
        }
        return null;
    }

    /* renamed from: h */
    public g a() throws SubtitleDecoderException {
        androidx.media2.exoplayer.external.util.a.b(this.f3813d == null);
        if (this.f3811b.isEmpty()) {
            return null;
        }
        a pollFirst = this.f3811b.pollFirst();
        this.f3813d = pollFirst;
        return pollFirst;
    }
}
