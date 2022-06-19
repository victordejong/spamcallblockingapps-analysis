package com.google.android.exoplayer2.text.p252l;

import com.google.android.exoplayer2.text.AbstractC5320e;
import com.google.android.exoplayer2.text.AbstractC5321f;
import com.google.android.exoplayer2.text.AbstractC5325i;
import com.google.android.exoplayer2.text.C5324h;
import com.google.android.exoplayer2.util.C5508e;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* renamed from: com.google.android.exoplayer2.text.l.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/e.class */
public abstract class AbstractC5336e implements AbstractC5321f {

    /* renamed from: a */
    private final ArrayDeque<C5338b> f17019a = new ArrayDeque<>();

    /* renamed from: b */
    private final ArrayDeque<AbstractC5325i> f17020b;

    /* renamed from: c */
    private final PriorityQueue<C5338b> f17021c;

    /* renamed from: d */
    private C5338b f17022d;

    /* renamed from: e */
    private long f17023e;

    /* renamed from: f */
    private long f17024f;

    /* renamed from: com.google.android.exoplayer2.text.l.e$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/e$b.class */
    public static final class C5338b extends C5324h implements Comparable<C5338b> {

        /* renamed from: j */
        private long f17025j;

        private C5338b() {
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* renamed from: o */
        public int compareTo(C5338b c5338b) {
            int i = 1;
            if (isEndOfStream() != c5338b.isEndOfStream()) {
                if (!isEndOfStream()) {
                    i = -1;
                }
                return i;
            }
            ?? r0 = this.f14776f - c5338b.f14776f;
            char c = r0;
            if (r0 == 0) {
                ?? r02 = this.f17025j - c5338b.f17025j;
                c = r02;
                if (r02 == 0) {
                    return 0;
                }
            }
            return c > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.text.l.e$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/l/e$c.class */
    public final class C5339c extends AbstractC5325i {
        private C5339c() {
            AbstractC5336e.this = r4;
        }

        @Override // com.google.android.exoplayer2.p242b1.AbstractC4859f
        public final void release() {
            AbstractC5336e.this.m19578m(this);
        }
    }

    public AbstractC5336e() {
        for (int i = 0; i < 10; i++) {
            this.f17019a.add(new C5338b());
        }
        this.f17020b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f17020b.add(new C5339c());
        }
        this.f17021c = new PriorityQueue<>();
    }

    /* renamed from: l */
    private void m19579l(C5338b c5338b) {
        c5338b.clear();
        this.f17019a.add(c5338b);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5321f
    /* renamed from: a */
    public void mo19590a(long j) {
        this.f17023e = j;
    }

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4856c
    /* renamed from: b */
    public void mo19589b() {
    }

    /* renamed from: f */
    protected abstract AbstractC5320e mo19585f();

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4856c
    public void flush() {
        this.f17024f = 0L;
        this.f17023e = 0L;
        while (!this.f17021c.isEmpty()) {
            m19579l(this.f17021c.poll());
        }
        C5338b c5338b = this.f17022d;
        if (c5338b != null) {
            m19579l(c5338b);
            this.f17022d = null;
        }
    }

    /* renamed from: g */
    protected abstract void mo19584g(C5324h c5324h);

    /* renamed from: h */
    public C5324h mo19587d() {
        C5508e.m18910f(this.f17022d == null);
        if (this.f17019a.isEmpty()) {
            return null;
        }
        C5338b pollFirst = this.f17019a.pollFirst();
        this.f17022d = pollFirst;
        return pollFirst;
    }

    /* renamed from: i */
    public AbstractC5325i mo19588c() {
        if (this.f17020b.isEmpty()) {
            return null;
        }
        while (!this.f17021c.isEmpty() && this.f17021c.peek().f14776f <= this.f17023e) {
            C5338b poll = this.f17021c.poll();
            if (poll.isEndOfStream()) {
                AbstractC5325i pollFirst = this.f17020b.pollFirst();
                pollFirst.addFlag(4);
                m19579l(poll);
                return pollFirst;
            }
            mo19584g(poll);
            if (mo19581j()) {
                AbstractC5320e mo19585f = mo19585f();
                if (!poll.isDecodeOnly()) {
                    AbstractC5325i pollFirst2 = this.f17020b.pollFirst();
                    pollFirst2.m19678g(poll.f14776f, mo19585f, Long.MAX_VALUE);
                    m19579l(poll);
                    return pollFirst2;
                }
            }
            m19579l(poll);
        }
        return null;
    }

    /* renamed from: j */
    protected abstract boolean mo19581j();

    /* renamed from: k */
    public void mo19586e(C5324h c5324h) {
        C5508e.m18915a(c5324h == this.f17022d);
        if (c5324h.isDecodeOnly()) {
            m19579l(this.f17022d);
        } else {
            C5338b c5338b = this.f17022d;
            long j = this.f17024f;
            this.f17024f = 1 + j;
            c5338b.f17025j = j;
            this.f17021c.add(this.f17022d);
        }
        this.f17022d = null;
    }

    /* renamed from: m */
    protected void m19578m(AbstractC5325i abstractC5325i) {
        abstractC5325i.clear();
        this.f17020b.add(abstractC5325i);
    }
}
