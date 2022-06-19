package com.google.android.exoplayer2.text.p337a;

import com.google.android.exoplayer2.decoder.AbstractC10936f;
import com.google.android.exoplayer2.text.AbstractC11379e;
import com.google.android.exoplayer2.text.AbstractC11386f;
import com.google.android.exoplayer2.text.AbstractC11405i;
import com.google.android.exoplayer2.text.C11402h;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.p337a.AbstractC11351c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* renamed from: com.google.android.exoplayer2.text.a.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c.class */
public abstract class AbstractC11351c implements AbstractC11386f {

    /* renamed from: a */
    private final ArrayDeque<C11353a> f37402a = new ArrayDeque<>();

    /* renamed from: b */
    private final ArrayDeque<AbstractC11405i> f37403b;

    /* renamed from: c */
    private final PriorityQueue<C11353a> f37404c;

    /* renamed from: d */
    private C11353a f37405d;

    /* renamed from: e */
    private long f37406e;

    /* renamed from: f */
    private long f37407f;

    /* renamed from: com.google.android.exoplayer2.text.a.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c$a.class */
    public static final class C11353a extends C11402h implements Comparable<C11353a> {

        /* renamed from: h */
        private long f37408h;

        private C11353a() {
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v6, types: [long] */
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(C11353a c11353a) {
            C11353a c11353a2 = c11353a;
            if (m21917c() != c11353a2.m21917c()) {
                return m21917c() ? 1 : -1;
            }
            ?? r0 = this.f35338e - c11353a2.f35338e;
            char c = r0;
            if (r0 == 0) {
                ?? r02 = this.f37408h - c11353a2.f37408h;
                c = r02;
                if (r02 == 0) {
                    return 0;
                }
            }
            return c > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.text.a.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/a/c$b.class */
    public static final class C11354b extends AbstractC11405i {

        /* renamed from: d */
        private AbstractC10936f.AbstractC10937a<C11354b> f37409d;

        public C11354b(AbstractC10936f.AbstractC10937a<C11354b> abstractC10937a) {
            this.f37409d = abstractC10937a;
        }

        @Override // com.google.android.exoplayer2.decoder.AbstractC10936f
        /* renamed from: f */
        public final void mo19678f() {
            this.f37409d.releaseOutputBuffer(this);
        }
    }

    public AbstractC11351c() {
        for (int i = 0; i < 10; i++) {
            this.f37402a.add(new C11353a());
        }
        this.f37403b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f37403b.add(new C11354b(new AbstractC10936f.AbstractC10937a() { // from class: com.google.android.exoplayer2.text.a._$$Lambda$taMBNJo8phFetlaNAm_7ngtnjAs
                @Override // com.google.android.exoplayer2.decoder.AbstractC10936f.AbstractC10937a
                public final void releaseOutputBuffer(AbstractC10936f abstractC10936f) {
                    AbstractC11351c.this.m20758a((AbstractC11405i) ((AbstractC11351c.C11354b) abstractC10936f));
                }
            }));
        }
        this.f37404c = new PriorityQueue<>();
    }

    /* renamed from: a */
    private void m20760a(C11353a c11353a) {
        c11353a.mo20663a();
        this.f37402a.add(c11353a);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11386f
    /* renamed from: a */
    public void mo20704a(long j) {
        this.f37406e = j;
    }

    /* renamed from: a */
    protected abstract void mo20759a(C11402h c11402h);

    /* renamed from: a */
    public void m20758a(AbstractC11405i abstractC11405i) {
        abstractC11405i.mo20663a();
        this.f37403b.add(abstractC11405i);
    }

    /* renamed from: b */
    public void mo20757a(C11402h c11402h) throws SubtitleDecoderException {
        C11593a.m20022a(c11402h == this.f37405d);
        C11353a c11353a = (C11353a) c11402h;
        if (c11353a.m21920E_()) {
            m20760a(c11353a);
        } else {
            long j = this.f37407f;
            this.f37407f = 1 + j;
            c11353a.f37408h = j;
            this.f37404c.add(c11353a);
        }
        this.f37405d = null;
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: c */
    public void mo20754c() {
        this.f37407f = 0L;
        this.f37406e = 0L;
        while (!this.f37404c.isEmpty()) {
            m20760a((C11353a) C11599af.m19974a(this.f37404c.poll()));
        }
        C11353a c11353a = this.f37405d;
        if (c11353a != null) {
            m20760a(c11353a);
            this.f37405d = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10933c
    /* renamed from: d */
    public void mo20753d() {
    }

    /* renamed from: e */
    public AbstractC11405i mo20756b() throws SubtitleDecoderException {
        if (this.f37403b.isEmpty()) {
            return null;
        }
        while (!this.f37404c.isEmpty() && ((C11353a) C11599af.m19974a(this.f37404c.peek())).f35338e <= this.f37406e) {
            C11353a c11353a = (C11353a) C11599af.m19974a(this.f37404c.poll());
            if (c11353a.m21917c()) {
                AbstractC11405i abstractC11405i = (AbstractC11405i) C11599af.m19974a(this.f37403b.pollFirst());
                abstractC11405i.m21919a(4);
                m20760a(c11353a);
                return abstractC11405i;
            }
            mo20759a((C11402h) c11353a);
            if (mo20751f()) {
                AbstractC11379e mo20750g = mo20750g();
                AbstractC11405i abstractC11405i2 = (AbstractC11405i) C11599af.m19974a(this.f37403b.pollFirst());
                abstractC11405i2.m20662a(c11353a.f35338e, mo20750g, Long.MAX_VALUE);
                m20760a(c11353a);
                return abstractC11405i2;
            }
            m20760a(c11353a);
        }
        return null;
    }

    /* renamed from: f */
    protected abstract boolean mo20751f();

    /* renamed from: g */
    protected abstract AbstractC11379e mo20750g();

    /* renamed from: h */
    public C11402h mo20761a() throws SubtitleDecoderException {
        C11593a.m20019b(this.f37405d == null);
        if (this.f37402a.isEmpty()) {
            return null;
        }
        C11353a pollFirst = this.f37402a.pollFirst();
        this.f37405d = pollFirst;
        return pollFirst;
    }

    /* renamed from: j */
    public final AbstractC11405i m20748j() {
        return this.f37403b.pollFirst();
    }

    /* renamed from: k */
    public final long m20747k() {
        return this.f37406e;
    }
}
