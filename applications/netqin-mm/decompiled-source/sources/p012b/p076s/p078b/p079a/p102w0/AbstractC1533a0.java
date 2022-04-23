package p012b.p076s.p078b.p079a.p102w0;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* renamed from: b.s.b.a.w0.a0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a0.class */
public interface AbstractC1533a0 {

    /* renamed from: b.s.b.a.w0.a0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a0$a.class */
    public static final class C1534a {

        /* renamed from: a */
        public final int f6247a;

        /* renamed from: b */
        public final AbstractC1634r.C1635a f6248b;

        /* renamed from: c */
        public final CopyOnWriteArrayList<C1535a> f6249c;

        /* renamed from: d */
        public final long f6250d;

        /* renamed from: b.s.b.a.w0.a0$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a0$a$a.class */
        public static final class C1535a {

            /* renamed from: a */
            public final Handler f6251a;

            /* renamed from: b */
            public final AbstractC1533a0 f6252b;

            public C1535a(Handler handler, AbstractC1533a0 a0Var) {
                this.f6251a = handler;
                this.f6252b = a0Var;
            }
        }

        public C1534a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public C1534a(CopyOnWriteArrayList<C1535a> copyOnWriteArrayList, int i, AbstractC1634r.C1635a aVar, long j) {
            this.f6249c = copyOnWriteArrayList;
            this.f6247a = i;
            this.f6248b = aVar;
            this.f6250d = j;
        }

        /* renamed from: a */
        public final long m32952a(long j) {
            long b = C1220c.m34195b(j);
            long j2 = -9223372036854775807L;
            if (b != -9223372036854775807L) {
                j2 = this.f6250d + b;
            }
            return j2;
        }

        /* renamed from: a */
        public C1534a m32953a(int i, AbstractC1634r.C1635a aVar, long j) {
            return new C1534a(this.f6249c, i, aVar, j);
        }

        /* renamed from: a */
        public void m32955a() {
            AbstractC1634r.C1635a aVar = this.f6248b;
            C1160a.m34522a(aVar);
            final AbstractC1634r.C1635a aVar2 = aVar;
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, aVar2) { // from class: b.s.b.a.w0.s

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6760a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6761b;

                    /* renamed from: c */
                    public final AbstractC1634r.C1635a f6762c;

                    {
                        this.f6760a = this;
                        this.f6761b = a0Var;
                        this.f6762c = aVar2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6760a.m32942a(this.f6761b, this.f6762c);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m32954a(int i, Format format, int i2, Object obj, long j) {
            m32947a(new C1537c(1, i, format, i2, obj, m32952a(j), -9223372036854775807L));
        }

        /* renamed from: a */
        public void m32951a(Handler handler, AbstractC1533a0 a0Var) {
            C1160a.m34520a((handler == null || a0Var == null) ? false : true);
            this.f6249c.add(new C1535a(handler, a0Var));
        }

        /* renamed from: a */
        public final void m32950a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        /* renamed from: a */
        public void m32949a(final C1536b bVar, final C1537c cVar) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, bVar, cVar) { // from class: b.s.b.a.w0.w

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6774a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6775b;

                    /* renamed from: c */
                    public final AbstractC1533a0.C1536b f6776c;

                    /* renamed from: d */
                    public final AbstractC1533a0.C1537c f6777d;

                    {
                        this.f6774a = this;
                        this.f6775b = a0Var;
                        this.f6776c = bVar;
                        this.f6777d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6774a.m32945a(this.f6775b, this.f6776c, this.f6777d);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m32948a(final C1536b bVar, final C1537c cVar, final IOException iOException, final boolean z) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, bVar, cVar, iOException, z) { // from class: b.s.b.a.w0.x

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6778a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6779b;

                    /* renamed from: c */
                    public final AbstractC1533a0.C1536b f6780c;

                    /* renamed from: d */
                    public final AbstractC1533a0.C1537c f6781d;

                    /* renamed from: e */
                    public final IOException f6782e;

                    /* renamed from: f */
                    public final boolean f6783f;

                    {
                        this.f6778a = this;
                        this.f6779b = a0Var;
                        this.f6780c = bVar;
                        this.f6781d = cVar;
                        this.f6782e = iOException;
                        this.f6783f = z;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6778a.m32944a(this.f6779b, this.f6780c, this.f6781d, this.f6782e, this.f6783f);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m32947a(final C1537c cVar) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, cVar) { // from class: b.s.b.a.w0.z

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6787a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6788b;

                    /* renamed from: c */
                    public final AbstractC1533a0.C1537c f6789c;

                    {
                        this.f6787a = this;
                        this.f6788b = a0Var;
                        this.f6789c = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6787a.m32943a(this.f6788b, this.f6789c);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m32946a(AbstractC1533a0 a0Var) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                if (next.f6252b == a0Var) {
                    this.f6249c.remove(next);
                }
            }
        }

        /* renamed from: a */
        public final /* synthetic */ void m32945a(AbstractC1533a0 a0Var, C1536b bVar, C1537c cVar) {
            a0Var.mo32862c(this.f6247a, this.f6248b, bVar, cVar);
        }

        /* renamed from: a */
        public final /* synthetic */ void m32944a(AbstractC1533a0 a0Var, C1536b bVar, C1537c cVar, IOException iOException, boolean z) {
            a0Var.mo32868a(this.f6247a, this.f6248b, bVar, cVar, iOException, z);
        }

        /* renamed from: a */
        public final /* synthetic */ void m32943a(AbstractC1533a0 a0Var, C1537c cVar) {
            a0Var.mo32867a(this.f6247a, this.f6248b, cVar);
        }

        /* renamed from: a */
        public final /* synthetic */ void m32942a(AbstractC1533a0 a0Var, AbstractC1634r.C1635a aVar) {
            a0Var.mo32870a(this.f6247a, aVar);
        }

        /* renamed from: a */
        public void m32941a(C1687i iVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            m32928c(new C1536b(iVar, iVar.f6883a, Collections.emptyMap(), j3, 0L, 0L), new C1537c(i, i2, format, i3, obj, m32952a(j), m32952a(j2)));
        }

        /* renamed from: a */
        public void m32940a(C1687i iVar, int i, long j) {
            m32941a(iVar, i, -1, (Format) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public void m32939a(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m32949a(new C1536b(iVar, uri, map, j3, j4, j5), new C1537c(i, i2, format, i3, obj, m32952a(j), m32952a(j2)));
        }

        /* renamed from: a */
        public void m32938a(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            m32948a(new C1536b(iVar, uri, map, j3, j4, j5), new C1537c(i, i2, format, i3, obj, m32952a(j), m32952a(j2)), iOException, z);
        }

        /* renamed from: a */
        public void m32937a(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m32939a(iVar, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: a */
        public void m32936a(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            m32938a(iVar, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        /* renamed from: b */
        public void m32935b() {
            AbstractC1634r.C1635a aVar = this.f6248b;
            C1160a.m34522a(aVar);
            final AbstractC1634r.C1635a aVar2 = aVar;
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, aVar2) { // from class: b.s.b.a.w0.t

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6763a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6764b;

                    /* renamed from: c */
                    public final AbstractC1634r.C1635a f6765c;

                    {
                        this.f6763a = this;
                        this.f6764b = a0Var;
                        this.f6765c = aVar2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6763a.m32932b(this.f6764b, this.f6765c);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m32934b(final C1536b bVar, final C1537c cVar) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, bVar, cVar) { // from class: b.s.b.a.w0.v

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6770a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6771b;

                    /* renamed from: c */
                    public final AbstractC1533a0.C1536b f6772c;

                    /* renamed from: d */
                    public final AbstractC1533a0.C1537c f6773d;

                    {
                        this.f6770a = this;
                        this.f6771b = a0Var;
                        this.f6772c = bVar;
                        this.f6773d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6770a.m32933b(this.f6771b, this.f6772c, this.f6773d);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m32933b(AbstractC1533a0 a0Var, C1536b bVar, C1537c cVar) {
            a0Var.mo32864b(this.f6247a, this.f6248b, bVar, cVar);
        }

        /* renamed from: b */
        public final /* synthetic */ void m32932b(AbstractC1533a0 a0Var, AbstractC1634r.C1635a aVar) {
            a0Var.mo32863c(this.f6247a, aVar);
        }

        /* renamed from: b */
        public void m32931b(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m32934b(new C1536b(iVar, uri, map, j3, j4, j5), new C1537c(i, i2, format, i3, obj, m32952a(j), m32952a(j2)));
        }

        /* renamed from: b */
        public void m32930b(C1687i iVar, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            m32931b(iVar, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: c */
        public void m32929c() {
            AbstractC1634r.C1635a aVar = this.f6248b;
            C1160a.m34522a(aVar);
            final AbstractC1634r.C1635a aVar2 = aVar;
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, aVar2) { // from class: b.s.b.a.w0.y

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6784a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6785b;

                    /* renamed from: c */
                    public final AbstractC1634r.C1635a f6786c;

                    {
                        this.f6784a = this;
                        this.f6785b = a0Var;
                        this.f6786c = aVar2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6784a.m32926c(this.f6785b, this.f6786c);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m32928c(final C1536b bVar, final C1537c cVar) {
            Iterator<C1535a> it = this.f6249c.iterator();
            while (it.hasNext()) {
                C1535a next = it.next();
                final AbstractC1533a0 a0Var = next.f6252b;
                m32950a(next.f6251a, new Runnable(this, a0Var, bVar, cVar) { // from class: b.s.b.a.w0.u

                    /* renamed from: a */
                    public final AbstractC1533a0.C1534a f6766a;

                    /* renamed from: b */
                    public final AbstractC1533a0 f6767b;

                    /* renamed from: c */
                    public final AbstractC1533a0.C1536b f6768c;

                    /* renamed from: d */
                    public final AbstractC1533a0.C1537c f6769d;

                    {
                        this.f6766a = this;
                        this.f6767b = a0Var;
                        this.f6768c = bVar;
                        this.f6769d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6766a.m32927c(this.f6767b, this.f6768c, this.f6769d);
                    }
                });
            }
        }

        /* renamed from: c */
        public final /* synthetic */ void m32927c(AbstractC1533a0 a0Var, C1536b bVar, C1537c cVar) {
            a0Var.mo32869a(this.f6247a, this.f6248b, bVar, cVar);
        }

        /* renamed from: c */
        public final /* synthetic */ void m32926c(AbstractC1533a0 a0Var, AbstractC1634r.C1635a aVar) {
            a0Var.mo32865b(this.f6247a, aVar);
        }
    }

    /* renamed from: b.s.b.a.w0.a0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a0$b.class */
    public static final class C1536b {

        /* renamed from: a */
        public final Uri f6253a;

        public C1536b(C1687i iVar, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f6253a = uri;
        }
    }

    /* renamed from: b.s.b.a.w0.a0$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/a0$c.class */
    public static final class C1537c {

        /* renamed from: a */
        public final int f6254a;

        /* renamed from: b */
        public final int f6255b;

        /* renamed from: c */
        public final Format f6256c;

        /* renamed from: d */
        public final int f6257d;

        /* renamed from: e */
        public final Object f6258e;

        /* renamed from: f */
        public final long f6259f;

        /* renamed from: g */
        public final long f6260g;

        public C1537c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f6254a = i;
            this.f6255b = i2;
            this.f6256c = format;
            this.f6257d = i3;
            this.f6258e = obj;
            this.f6259f = j;
            this.f6260g = j2;
        }
    }

    /* renamed from: a */
    void mo32870a(int i, AbstractC1634r.C1635a aVar);

    /* renamed from: a */
    void mo32869a(int i, AbstractC1634r.C1635a aVar, C1536b bVar, C1537c cVar);

    /* renamed from: a */
    void mo32868a(int i, AbstractC1634r.C1635a aVar, C1536b bVar, C1537c cVar, IOException iOException, boolean z);

    /* renamed from: a */
    void mo32867a(int i, AbstractC1634r.C1635a aVar, C1537c cVar);

    /* renamed from: b */
    void mo32865b(int i, AbstractC1634r.C1635a aVar);

    /* renamed from: b */
    void mo32864b(int i, AbstractC1634r.C1635a aVar, C1536b bVar, C1537c cVar);

    /* renamed from: c */
    void mo32863c(int i, AbstractC1634r.C1635a aVar);

    /* renamed from: c */
    void mo32862c(int i, AbstractC1634r.C1635a aVar, C1536b bVar, C1537c cVar);
}
