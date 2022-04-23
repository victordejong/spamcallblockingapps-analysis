package p131c.p161d.p170b.p188c.p190b1;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p131c.p161d.p170b.p188c.C2964r;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2737t;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2740u;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.b1.u */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/u.class */
public interface AbstractC2740u {

    /* renamed from: c.d.b.c.b1.u$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/u$a.class */
    public static final class C2741a {

        /* renamed from: a */
        public final int f9934a;

        /* renamed from: b */
        public final AbstractC2737t.C2738a f9935b;

        /* renamed from: c */
        public final CopyOnWriteArrayList<C2742a> f9936c;

        /* renamed from: d */
        public final long f9937d;

        /* renamed from: c.d.b.c.b1.u$a$a */
        /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/u$a$a.class */
        public static final class C2742a {

            /* renamed from: a */
            public final Handler f9938a;

            /* renamed from: b */
            public final AbstractC2740u f9939b;

            public C2742a(Handler handler, AbstractC2740u uVar) {
                this.f9938a = handler;
                this.f9939b = uVar;
            }
        }

        public C2741a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public C2741a(CopyOnWriteArrayList<C2742a> copyOnWriteArrayList, int i, AbstractC2737t.C2738a aVar, long j) {
            this.f9936c = copyOnWriteArrayList;
            this.f9934a = i;
            this.f9935b = aVar;
            this.f9937d = j;
        }

        /* renamed from: a */
        public final long m29233a(long j) {
            long b = C2964r.m28356b(j);
            long j2 = -9223372036854775807L;
            if (b != -9223372036854775807L) {
                j2 = this.f9937d + b;
            }
            return j2;
        }

        /* renamed from: a */
        public C2741a m29235a(int i, AbstractC2737t.C2738a aVar, long j) {
            return new C2741a(this.f9936c, i, aVar, j);
        }

        /* renamed from: a */
        public void m29236a() {
            AbstractC2737t.C2738a aVar = this.f9935b;
            C2877e.m28737a(aVar);
            final AbstractC2737t.C2738a aVar2 = aVar;
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29226a(uVar, aVar2);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m29234a(int i, Format format, int i2, Object obj, long j) {
            m29228a(new C2744c(1, i, format, i2, obj, m29233a(j), -9223372036854775807L));
        }

        /* renamed from: a */
        public void m29232a(Handler handler, AbstractC2740u uVar) {
            C2877e.m28734a((handler == null || uVar == null) ? false : true);
            this.f9936c.add(new C2742a(handler, uVar));
        }

        /* renamed from: a */
        public final void m29231a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        /* renamed from: a */
        public void m29230a(final C2743b bVar, final C2744c cVar) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29225a(uVar, bVar, cVar);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m29229a(final C2743b bVar, final C2744c cVar, final IOException iOException, final boolean z) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29224a(uVar, bVar, cVar, iOException, z);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m29228a(final C2744c cVar) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29223a(uVar, cVar);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m29227a(AbstractC2740u uVar) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                if (next.f9939b == uVar) {
                    this.f9936c.remove(next);
                }
            }
        }

        /* renamed from: a */
        public /* synthetic */ void m29226a(AbstractC2740u uVar, AbstractC2737t.C2738a aVar) {
            uVar.mo29238c(this.f9934a, aVar);
        }

        /* renamed from: a */
        public /* synthetic */ void m29225a(AbstractC2740u uVar, C2743b bVar, C2744c cVar) {
            uVar.mo29239b(this.f9934a, this.f9935b, bVar, cVar);
        }

        /* renamed from: a */
        public /* synthetic */ void m29224a(AbstractC2740u uVar, C2743b bVar, C2744c cVar, IOException iOException, boolean z) {
            uVar.mo29242a(this.f9934a, this.f9935b, bVar, cVar, iOException, z);
        }

        /* renamed from: a */
        public /* synthetic */ void m29223a(AbstractC2740u uVar, C2744c cVar) {
            uVar.mo29241a(this.f9934a, this.f9935b, cVar);
        }

        /* renamed from: a */
        public void m29222a(C2829k kVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            m29213c(new C2743b(kVar, kVar.f10265a, Collections.emptyMap(), j3, 0L, 0L), new C2744c(i, i2, format, i3, obj, m29233a(j), m29233a(j2)));
        }

        /* renamed from: a */
        public void m29221a(C2829k kVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m29230a(new C2743b(kVar, uri, map, j3, j4, j5), new C2744c(i, i2, format, i3, obj, m29233a(j), m29233a(j2)));
        }

        /* renamed from: a */
        public void m29220a(C2829k kVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            m29229a(new C2743b(kVar, uri, map, j3, j4, j5), new C2744c(i, i2, format, i3, obj, m29233a(j), m29233a(j2)), iOException, z);
        }

        /* renamed from: b */
        public void m29219b() {
            AbstractC2737t.C2738a aVar = this.f9935b;
            C2877e.m28737a(aVar);
            final AbstractC2737t.C2738a aVar2 = aVar;
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29217b(uVar, aVar2);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m29218b(final C2743b bVar, final C2744c cVar) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29216b(uVar, bVar, cVar);
                    }
                });
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m29217b(AbstractC2740u uVar, AbstractC2737t.C2738a aVar) {
            uVar.mo29240b(this.f9934a, aVar);
        }

        /* renamed from: b */
        public /* synthetic */ void m29216b(AbstractC2740u uVar, C2743b bVar, C2744c cVar) {
            uVar.mo29243a(this.f9934a, this.f9935b, bVar, cVar);
        }

        /* renamed from: b */
        public void m29215b(C2829k kVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m29218b(new C2743b(kVar, uri, map, j3, j4, j5), new C2744c(i, i2, format, i3, obj, m29233a(j), m29233a(j2)));
        }

        /* renamed from: c */
        public void m29214c() {
            AbstractC2737t.C2738a aVar = this.f9935b;
            C2877e.m28737a(aVar);
            final AbstractC2737t.C2738a aVar2 = aVar;
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29212c(uVar, aVar2);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m29213c(final C2743b bVar, final C2744c cVar) {
            Iterator<C2742a> it = this.f9936c.iterator();
            while (it.hasNext()) {
                C2742a next = it.next();
                final AbstractC2740u uVar = next.f9939b;
                m29231a(next.f9938a, new Runnable() { // from class: c.d.b.c.b1.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2740u.C2741a.this.m29211c(uVar, bVar, cVar);
                    }
                });
            }
        }

        /* renamed from: c */
        public /* synthetic */ void m29212c(AbstractC2740u uVar, AbstractC2737t.C2738a aVar) {
            uVar.mo29244a(this.f9934a, aVar);
        }

        /* renamed from: c */
        public /* synthetic */ void m29211c(AbstractC2740u uVar, C2743b bVar, C2744c cVar) {
            uVar.mo29237c(this.f9934a, this.f9935b, bVar, cVar);
        }
    }

    /* renamed from: c.d.b.c.b1.u$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/u$b.class */
    public static final class C2743b {

        /* renamed from: a */
        public final Uri f9940a;

        public C2743b(C2829k kVar, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f9940a = uri;
        }
    }

    /* renamed from: c.d.b.c.b1.u$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/u$c.class */
    public static final class C2744c {

        /* renamed from: a */
        public final int f9941a;

        /* renamed from: b */
        public final int f9942b;

        /* renamed from: c */
        public final Format f9943c;

        /* renamed from: d */
        public final int f9944d;

        /* renamed from: e */
        public final Object f9945e;

        /* renamed from: f */
        public final long f9946f;

        /* renamed from: g */
        public final long f9947g;

        public C2744c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f9941a = i;
            this.f9942b = i2;
            this.f9943c = format;
            this.f9944d = i3;
            this.f9945e = obj;
            this.f9946f = j;
            this.f9947g = j2;
        }
    }

    /* renamed from: a */
    void mo29244a(int i, AbstractC2737t.C2738a aVar);

    /* renamed from: a */
    void mo29243a(int i, AbstractC2737t.C2738a aVar, C2743b bVar, C2744c cVar);

    /* renamed from: a */
    void mo29242a(int i, AbstractC2737t.C2738a aVar, C2743b bVar, C2744c cVar, IOException iOException, boolean z);

    /* renamed from: a */
    void mo29241a(int i, AbstractC2737t.C2738a aVar, C2744c cVar);

    /* renamed from: b */
    void mo29240b(int i, AbstractC2737t.C2738a aVar);

    /* renamed from: b */
    void mo29239b(int i, AbstractC2737t.C2738a aVar, C2743b bVar, C2744c cVar);

    /* renamed from: c */
    void mo29238c(int i, AbstractC2737t.C2738a aVar);

    /* renamed from: c */
    void mo29237c(int i, AbstractC2737t.C2738a aVar, C2743b bVar, C2744c cVar);
}
