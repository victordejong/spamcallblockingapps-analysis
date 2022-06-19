package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.upstream.C5481l;
import com.google.android.exoplayer2.util.C5508e;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.exoplayer2.source.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/w.class */
public interface AbstractC5297w {

    /* renamed from: com.google.android.exoplayer2.source.w$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/w$a.class */
    public static final class C5298a {

        /* renamed from: a */
        public final int f16785a;

        /* renamed from: b */
        public final AbstractC5294v.C5295a f16786b;

        /* renamed from: c */
        private final CopyOnWriteArrayList<C5299a> f16787c;

        /* renamed from: d */
        private final long f16788d;

        /* renamed from: com.google.android.exoplayer2.source.w$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/w$a$a.class */
        public static final class C5299a {

            /* renamed from: a */
            public final Handler f16789a;

            /* renamed from: b */
            public final AbstractC5297w f16790b;

            public C5299a(Handler handler, AbstractC5297w abstractC5297w) {
                this.f16789a = handler;
                this.f16790b = abstractC5297w;
            }
        }

        public C5298a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private C5298a(CopyOnWriteArrayList<C5299a> copyOnWriteArrayList, int i, AbstractC5294v.C5295a c5295a, long j) {
            this.f16787c = copyOnWriteArrayList;
            this.f16785a = i;
            this.f16786b = c5295a;
            this.f16788d = j;
        }

        /* renamed from: I */
        private void m19824I(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [long] */
        /* renamed from: b */
        private long m19819b(long j) {
            long m18629b = C5543v.m18629b(j);
            char c = 1;
            if (m18629b != -9223372036854775807L) {
                c = this.f16788d + m18629b;
            }
            return c;
        }

        /* renamed from: e */
        public /* synthetic */ void m19815f(AbstractC5297w abstractC5297w, C5301c c5301c) {
            abstractC5297w.mo19840A(this.f16785a, this.f16786b, c5301c);
        }

        /* renamed from: g */
        public /* synthetic */ void m19813h(AbstractC5297w abstractC5297w, C5300b c5300b, C5301c c5301c) {
            abstractC5297w.mo19837i(this.f16785a, this.f16786b, c5300b, c5301c);
        }

        /* renamed from: i */
        public /* synthetic */ void m19811j(AbstractC5297w abstractC5297w, C5300b c5300b, C5301c c5301c) {
            abstractC5297w.mo19839e(this.f16785a, this.f16786b, c5300b, c5301c);
        }

        /* renamed from: k */
        public /* synthetic */ void m19809l(AbstractC5297w abstractC5297w, C5300b c5300b, C5301c c5301c, IOException iOException, boolean z) {
            abstractC5297w.mo19835r(this.f16785a, this.f16786b, c5300b, c5301c, iOException, z);
        }

        /* renamed from: m */
        public /* synthetic */ void m19807n(AbstractC5297w abstractC5297w, C5300b c5300b, C5301c c5301c) {
            abstractC5297w.mo19836q(this.f16785a, this.f16786b, c5300b, c5301c);
        }

        /* renamed from: o */
        public /* synthetic */ void m19805p(AbstractC5297w abstractC5297w, AbstractC5294v.C5295a c5295a) {
            abstractC5297w.mo19833w(this.f16785a, c5295a);
        }

        /* renamed from: q */
        public /* synthetic */ void m19803r(AbstractC5297w abstractC5297w, AbstractC5294v.C5295a c5295a) {
            abstractC5297w.mo19834u(this.f16785a, c5295a);
        }

        /* renamed from: s */
        public /* synthetic */ void m19801t(AbstractC5297w abstractC5297w, AbstractC5294v.C5295a c5295a) {
            abstractC5297w.mo19838h(this.f16785a, c5295a);
        }

        /* renamed from: A */
        public void m19832A(final C5300b c5300b, final C5301c c5301c, final IOException iOException, final boolean z) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19809l(abstractC5297w, c5300b, c5301c, iOException, z);
                    }
                });
            }
        }

        /* renamed from: B */
        public void m19831B(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            m19832A(new C5300b(c5481l, uri, map, j3, j4, j5), new C5301c(i, i2, format, i3, obj, m19819b(j), m19819b(j2)), iOException, z);
        }

        /* renamed from: C */
        public void m19830C(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            m19831B(c5481l, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        /* renamed from: D */
        public void m19829D(final C5300b c5300b, final C5301c c5301c) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19807n(abstractC5297w, c5300b, c5301c);
                    }
                });
            }
        }

        /* renamed from: E */
        public void m19828E(C5481l c5481l, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            m19829D(new C5300b(c5481l, c5481l.f17746a, Collections.emptyMap(), j3, 0L, 0L), new C5301c(i, i2, format, i3, obj, m19819b(j), m19819b(j2)));
        }

        /* renamed from: F */
        public void m19827F(C5481l c5481l, int i, long j) {
            m19828E(c5481l, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j);
        }

        /* renamed from: G */
        public void m19826G() {
            final AbstractC5294v.C5295a c5295a = (AbstractC5294v.C5295a) C5508e.m18911e(this.f16786b);
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19805p(abstractC5297w, c5295a);
                    }
                });
            }
        }

        /* renamed from: H */
        public void m19825H() {
            final AbstractC5294v.C5295a c5295a = (AbstractC5294v.C5295a) C5508e.m18911e(this.f16786b);
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19803r(abstractC5297w, c5295a);
                    }
                });
            }
        }

        /* renamed from: J */
        public void m19823J() {
            final AbstractC5294v.C5295a c5295a = (AbstractC5294v.C5295a) C5508e.m18911e(this.f16786b);
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19801t(abstractC5297w, c5295a);
                    }
                });
            }
        }

        /* renamed from: K */
        public void m19822K(AbstractC5297w abstractC5297w) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                if (next.f16790b == abstractC5297w) {
                    this.f16787c.remove(next);
                }
            }
        }

        /* renamed from: L */
        public C5298a m19821L(int i, AbstractC5294v.C5295a c5295a, long j) {
            return new C5298a(this.f16787c, i, c5295a, j);
        }

        /* renamed from: a */
        public void m19820a(Handler handler, AbstractC5297w abstractC5297w) {
            C5508e.m18915a((handler == null || abstractC5297w == null) ? false : true);
            this.f16787c.add(new C5299a(handler, abstractC5297w));
        }

        /* renamed from: c */
        public void m19818c(int i, Format format, int i2, Object obj, long j) {
            m19817d(new C5301c(1, i, format, i2, obj, m19819b(j), -9223372036854775807L));
        }

        /* renamed from: d */
        public void m19817d(final C5301c c5301c) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19815f(abstractC5297w, c5301c);
                    }
                });
            }
        }

        /* renamed from: u */
        public void m19800u(final C5300b c5300b, final C5301c c5301c) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19813h(abstractC5297w, c5300b, c5301c);
                    }
                });
            }
        }

        /* renamed from: v */
        public void m19799v(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m19800u(new C5300b(c5481l, uri, map, j3, j4, j5), new C5301c(i, i2, format, i3, obj, m19819b(j), m19819b(j2)));
        }

        /* renamed from: w */
        public void m19798w(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m19799v(c5481l, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: x */
        public void m19797x(final C5300b c5300b, final C5301c c5301c) {
            Iterator<C5299a> it = this.f16787c.iterator();
            while (it.hasNext()) {
                C5299a next = it.next();
                final AbstractC5297w abstractC5297w = next.f16790b;
                m19824I(next.f16789a, new Runnable() { // from class: com.google.android.exoplayer2.source.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC5297w.C5298a.this.m19811j(abstractC5297w, c5300b, c5301c);
                    }
                });
            }
        }

        /* renamed from: y */
        public void m19796y(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m19797x(new C5300b(c5481l, uri, map, j3, j4, j5), new C5301c(i, i2, format, i3, obj, m19819b(j), m19819b(j2)));
        }

        /* renamed from: z */
        public void m19795z(C5481l c5481l, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m19796y(c5481l, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.w$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/w$b.class */
    public static final class C5300b {

        /* renamed from: a */
        public final C5481l f16791a;

        /* renamed from: b */
        public final Uri f16792b;

        /* renamed from: c */
        public final Map<String, List<String>> f16793c;

        /* renamed from: d */
        public final long f16794d;

        /* renamed from: e */
        public final long f16795e;

        /* renamed from: f */
        public final long f16796f;

        public C5300b(C5481l c5481l, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f16791a = c5481l;
            this.f16792b = uri;
            this.f16793c = map;
            this.f16794d = j;
            this.f16795e = j2;
            this.f16796f = j3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.w$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/w$c.class */
    public static final class C5301c {

        /* renamed from: a */
        public final int f16797a;

        /* renamed from: b */
        public final int f16798b;

        /* renamed from: c */
        public final Format f16799c;

        /* renamed from: d */
        public final int f16800d;

        /* renamed from: e */
        public final Object f16801e;

        /* renamed from: f */
        public final long f16802f;

        /* renamed from: g */
        public final long f16803g;

        public C5301c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f16797a = i;
            this.f16798b = i2;
            this.f16799c = format;
            this.f16800d = i3;
            this.f16801e = obj;
            this.f16802f = j;
            this.f16803g = j2;
        }
    }

    /* renamed from: A */
    void mo19840A(int i, AbstractC5294v.C5295a c5295a, C5301c c5301c);

    /* renamed from: e */
    void mo19839e(int i, AbstractC5294v.C5295a c5295a, C5300b c5300b, C5301c c5301c);

    /* renamed from: h */
    void mo19838h(int i, AbstractC5294v.C5295a c5295a);

    /* renamed from: i */
    void mo19837i(int i, AbstractC5294v.C5295a c5295a, C5300b c5300b, C5301c c5301c);

    /* renamed from: q */
    void mo19836q(int i, AbstractC5294v.C5295a c5295a, C5300b c5300b, C5301c c5301c);

    /* renamed from: r */
    void mo19835r(int i, AbstractC5294v.C5295a c5295a, C5300b c5300b, C5301c c5301c, IOException iOException, boolean z);

    /* renamed from: u */
    void mo19834u(int i, AbstractC5294v.C5295a c5295a);

    /* renamed from: w */
    void mo19833w(int i, AbstractC5294v.C5295a c5295a);
}
