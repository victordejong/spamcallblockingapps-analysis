package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.AbstractC11318s;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.source.s */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s.class */
public interface AbstractC11318s {

    /* renamed from: com.google.android.exoplayer2.source.s$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(AbstractC11318s abstractC11318s, int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
        }

        public static void $default$a(AbstractC11318s abstractC11318s, int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z) {
        }

        public static void $default$a(AbstractC11318s abstractC11318s, int i, AbstractC11315r.C11316a c11316a, C11311o c11311o) {
        }

        public static void $default$b(AbstractC11318s abstractC11318s, int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
        }

        public static void $default$c(AbstractC11318s abstractC11318s, int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.s$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$a.class */
    public static final class C11319a {

        /* renamed from: a */
        public final int f37153a;

        /* renamed from: b */
        public final AbstractC11315r.C11316a f37154b;

        /* renamed from: c */
        final CopyOnWriteArrayList<C11320a> f37155c;

        /* renamed from: d */
        private final long f37156d;

        /* renamed from: com.google.android.exoplayer2.source.s$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$a$a.class */
        public static final class C11320a {

            /* renamed from: a */
            public Handler f37157a;

            /* renamed from: b */
            public AbstractC11318s f37158b;

            public C11320a(Handler handler, AbstractC11318s abstractC11318s) {
                this.f37157a = handler;
                this.f37158b = abstractC11318s;
            }
        }

        public C11319a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private C11319a(CopyOnWriteArrayList<C11320a> copyOnWriteArrayList, int i, AbstractC11315r.C11316a c11316a, long j) {
            this.f37155c = copyOnWriteArrayList;
            this.f37153a = i;
            this.f37154b = c11316a;
            this.f37156d = j;
        }

        /* renamed from: a */
        private long m20932a(long j) {
            long m21374a = C11158f.m21374a(j);
            if (m21374a == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f37156d + m21374a;
        }

        /* renamed from: a */
        public /* synthetic */ void m20924a(AbstractC11318s abstractC11318s, C11305l c11305l, C11311o c11311o) {
            abstractC11318s.mo19598c(this.f37153a, this.f37154b, c11305l, c11311o);
        }

        /* renamed from: a */
        public /* synthetic */ void m20923a(AbstractC11318s abstractC11318s, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z) {
            abstractC11318s.mo19604a(this.f37153a, this.f37154b, c11305l, c11311o, iOException, z);
        }

        /* renamed from: a */
        public /* synthetic */ void m20922a(AbstractC11318s abstractC11318s, C11311o c11311o) {
            abstractC11318s.mo19603a(this.f37153a, this.f37154b, c11311o);
        }

        /* renamed from: b */
        public /* synthetic */ void m20919b(AbstractC11318s abstractC11318s, C11305l c11305l, C11311o c11311o) {
            abstractC11318s.mo19600b(this.f37153a, this.f37154b, c11305l, c11311o);
        }

        /* renamed from: c */
        public /* synthetic */ void m20917c(AbstractC11318s abstractC11318s, C11305l c11305l, C11311o c11311o) {
            abstractC11318s.mo19605a(this.f37153a, this.f37154b, c11305l, c11311o);
        }

        /* renamed from: a */
        public final C11319a m20933a(int i, AbstractC11315r.C11316a c11316a, long j) {
            return new C11319a(this.f37155c, i, c11316a, 0L);
        }

        /* renamed from: a */
        public final void m20934a(int i, Format format, long j) {
            m20925a(new C11311o(1, i, format, 0, null, m20932a(j), -9223372036854775807L));
        }

        /* renamed from: a */
        public final void m20931a(Handler handler, AbstractC11318s abstractC11318s) {
            C11593a.m20020b(handler);
            C11593a.m20020b(abstractC11318s);
            this.f37155c.add(new C11320a(handler, abstractC11318s));
        }

        /* renamed from: a */
        public final void m20930a(C11305l c11305l, int i, Format format, long j, long j2, IOException iOException, boolean z) {
            m20926a(c11305l, new C11311o(i, -1, format, 0, null, m20932a(j), m20932a(j2)), iOException, z);
        }

        /* renamed from: a */
        public final void m20929a(C11305l c11305l, long j, long j2) {
            m20918c(c11305l, new C11311o(1, -1, null, 0, null, m20932a(j), m20932a(j2)));
        }

        /* renamed from: a */
        public final void m20928a(C11305l c11305l, Format format, long j, long j2) {
            m20927a(c11305l, new C11311o(1, -1, format, 0, null, m20932a(j), m20932a(j2)));
        }

        /* renamed from: a */
        public final void m20927a(final C11305l c11305l, final C11311o c11311o) {
            Iterator<C11320a> it2 = this.f37155c.iterator();
            while (it2.hasNext()) {
                C11320a next = it2.next();
                final AbstractC11318s abstractC11318s = next.f37158b;
                C11599af.m19984a(next.f37157a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$vPnzxHYIW8nwzxfJYnwdK5uihqo
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11318s.C11319a.this.m20917c(abstractC11318s, c11305l, c11311o);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m20926a(final C11305l c11305l, final C11311o c11311o, final IOException iOException, final boolean z) {
            Iterator<C11320a> it2 = this.f37155c.iterator();
            while (it2.hasNext()) {
                C11320a next = it2.next();
                final AbstractC11318s abstractC11318s = next.f37158b;
                C11599af.m19984a(next.f37157a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$hDV7dy8QbvlYWQOA93nLirNi15Q
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11318s.C11319a.this.m20923a(abstractC11318s, c11305l, c11311o, iOException, z);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m20925a(final C11311o c11311o) {
            Iterator<C11320a> it2 = this.f37155c.iterator();
            while (it2.hasNext()) {
                C11320a next = it2.next();
                final AbstractC11318s abstractC11318s = next.f37158b;
                C11599af.m19984a(next.f37157a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$J_qzQKhgeI_EcH7RcbEns7bqTnk
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11318s.C11319a.this.m20922a(abstractC11318s, c11311o);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m20921b(C11305l c11305l, Format format, long j, long j2) {
            m20920b(c11305l, new C11311o(1, -1, format, 0, null, m20932a(j), m20932a(j2)));
        }

        /* renamed from: b */
        public final void m20920b(final C11305l c11305l, final C11311o c11311o) {
            Iterator<C11320a> it2 = this.f37155c.iterator();
            while (it2.hasNext()) {
                C11320a next = it2.next();
                final AbstractC11318s abstractC11318s = next.f37158b;
                C11599af.m19984a(next.f37157a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$j_ADRdNvHZXK6b8OkuMSbSsj_xg
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11318s.C11319a.this.m20919b(abstractC11318s, c11305l, c11311o);
                    }
                });
            }
        }

        /* renamed from: c */
        public final void m20918c(final C11305l c11305l, final C11311o c11311o) {
            Iterator<C11320a> it2 = this.f37155c.iterator();
            while (it2.hasNext()) {
                C11320a next = it2.next();
                final AbstractC11318s abstractC11318s = next.f37158b;
                C11599af.m19984a(next.f37157a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$i_xK8A3LLD2SSZ4iJ3FFAiK86cM
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC11318s.C11319a.this.m20924a(abstractC11318s, c11305l, c11311o);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo19605a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o);

    /* renamed from: a */
    void mo19604a(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o, IOException iOException, boolean z);

    /* renamed from: a */
    void mo19603a(int i, AbstractC11315r.C11316a c11316a, C11311o c11311o);

    /* renamed from: b */
    void mo19600b(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o);

    /* renamed from: c */
    void mo19598c(int i, AbstractC11315r.C11316a c11316a, C11305l c11305l, C11311o c11311o);
}
