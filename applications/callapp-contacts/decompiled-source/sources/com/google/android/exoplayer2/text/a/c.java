package com.google.android.exoplayer2.text.a;

import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.a.c;
import com.google.android.exoplayer2.text.e;
import com.google.android.exoplayer2.text.f;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.af;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c.class */
abstract class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<a> f21727a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<i> f21728b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<a> f21729c;

    /* renamed from: d  reason: collision with root package name */
    private a f21730d;
    private long e;
    private long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c$a.class */
    public static final class a extends h implements Comparable<a> {
        private long h;

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
        public final /* synthetic */ int compareTo(com.google.android.exoplayer2.text.a.c.a r6) {
            /*
                r5 = this;
                r0 = r6
                com.google.android.exoplayer2.text.a.c$a r0 = (com.google.android.exoplayer2.text.a.c.a) r0
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
                long r0 = r0.e
                r1 = r6
                long r1 = r1.e
                long r0 = r0 - r1
                r7 = r0
                r0 = r7
                r9 = r0
                r0 = r7
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0043
                r0 = r5
                long r0 = r0.h
                r1 = r6
                long r1 = r1.h
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.a.c.a.compareTo(java.lang.Object):int");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c$b.class */
    static final class b extends i {

        /* renamed from: d  reason: collision with root package name */
        private f.a<b> f21731d;

        public b(f.a<b> aVar) {
            this.f21731d = aVar;
        }

        @Override // com.google.android.exoplayer2.decoder.f
        public final void f() {
            this.f21731d.releaseOutputBuffer(this);
        }
    }

    public c() {
        for (int i = 0; i < 10; i++) {
            this.f21727a.add(new a());
        }
        this.f21728b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f21728b.add(new b(new f.a() { // from class: com.google.android.exoplayer2.text.a._$$Lambda$taMBNJo8phFetlaNAm_7ngtnjAs
                @Override // com.google.android.exoplayer2.decoder.f.a
                public final void releaseOutputBuffer(com.google.android.exoplayer2.decoder.f fVar) {
                    c.this.a((i) ((c.b) fVar));
                }
            }));
        }
        this.f21729c = new PriorityQueue<>();
    }

    private void a(a aVar) {
        aVar.a();
        this.f21727a.add(aVar);
    }

    @Override // com.google.android.exoplayer2.text.f
    public void a(long j) {
        this.e = j;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    protected abstract void a(h hVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(i iVar) {
        iVar.a();
        this.f21728b.add(iVar);
    }

    /* renamed from: b */
    public void a(h hVar) throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.a(hVar == this.f21730d);
        a aVar = (a) hVar;
        if (aVar.E_()) {
            a(aVar);
        } else {
            long j = this.f;
            this.f = 1 + j;
            aVar.h = j;
            this.f21729c.add(aVar);
        }
        this.f21730d = null;
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public void c() {
        this.f = 0L;
        this.e = 0L;
        while (!this.f21729c.isEmpty()) {
            a((a) af.a(this.f21729c.poll()));
        }
        a aVar = this.f21730d;
        if (aVar != null) {
            a(aVar);
            this.f21730d = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public void d() {
    }

    /* renamed from: e */
    public i b() throws SubtitleDecoderException {
        if (this.f21728b.isEmpty()) {
            return null;
        }
        while (!this.f21729c.isEmpty() && ((a) af.a(this.f21729c.peek())).e <= this.e) {
            a aVar = (a) af.a(this.f21729c.poll());
            if (aVar.c()) {
                i iVar = (i) af.a(this.f21728b.pollFirst());
                iVar.a(4);
                a(aVar);
                return iVar;
            }
            a((h) aVar);
            if (f()) {
                e g = g();
                i iVar2 = (i) af.a(this.f21728b.pollFirst());
                iVar2.a(aVar.e, g, Long.MAX_VALUE);
                a(aVar);
                return iVar2;
            }
            a(aVar);
        }
        return null;
    }

    protected abstract boolean f();

    protected abstract e g();

    /* renamed from: h */
    public h a() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.b(this.f21730d == null);
        if (this.f21727a.isEmpty()) {
            return null;
        }
        a pollFirst = this.f21727a.pollFirst();
        this.f21730d = pollFirst;
        return pollFirst;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final i j() {
        return this.f21728b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long k() {
        return this.e;
    }
}
