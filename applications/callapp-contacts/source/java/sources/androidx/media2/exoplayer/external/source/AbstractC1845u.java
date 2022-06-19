package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.upstream.C1971h;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.media2.exoplayer.external.source.u */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u.class */
public interface AbstractC1845u {

    /* renamed from: androidx.media2.exoplayer.external.source.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$a.class */
    public static final class C1846a {

        /* renamed from: a */
        public final int f7361a;

        /* renamed from: b */
        public final AbstractC1842t.C1843a f7362b;

        /* renamed from: c */
        final CopyOnWriteArrayList<C1847a> f7363c;

        /* renamed from: d */
        private final long f7364d;

        /* renamed from: androidx.media2.exoplayer.external.source.u$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$a$a.class */
        public static final class C1847a {

            /* renamed from: a */
            public final Handler f7365a;

            /* renamed from: b */
            public final AbstractC1845u f7366b;

            public C1847a(Handler handler, AbstractC1845u abstractC1845u) {
                this.f7365a = handler;
                this.f7366b = abstractC1845u;
            }
        }

        public C1846a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private C1846a(CopyOnWriteArrayList<C1847a> copyOnWriteArrayList, int i, AbstractC1842t.C1843a c1843a, long j) {
            this.f7363c = copyOnWriteArrayList;
            this.f7361a = i;
            this.f7362b = c1843a;
            this.f7364d = j;
        }

        /* renamed from: a */
        private long m42051a(long j) {
            long m42894a = C1446c.m42894a(j);
            if (m42894a == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f7364d + m42894a;
        }

        /* renamed from: a */
        private static void m42050a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        /* renamed from: a */
        public final C1846a m42052a(int i, AbstractC1842t.C1843a c1843a, long j) {
            return new C1846a(this.f7363c, i, c1843a, 0L);
        }

        /* renamed from: a */
        public final void m42054a() {
            AbstractC1842t.C1843a c1843a = (AbstractC1842t.C1843a) C1993a.m41690a(this.f7362b);
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1843a) { // from class: androidx.media2.exoplayer.external.source.v

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f7380a;

                    /* renamed from: b */
                    private final AbstractC1845u f7381b;

                    /* renamed from: c */
                    private final AbstractC1842t.C1843a f7382c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7380a = this;
                        this.f7381b = abstractC1845u;
                        this.f7382c = c1843a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f7380a;
                        this.f7381b.mo42062a(c1846a.f7361a, this.f7382c);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m42053a(int i, Format format, int i2, Object obj, long j) {
            m42047a(new C1849c(1, i, format, i2, obj, m42051a(j), -9223372036854775807L));
        }

        /* renamed from: a */
        public final void m42049a(C1848b c1848b, C1849c c1849c) {
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1848b, c1849c) { // from class: androidx.media2.exoplayer.external.source.x

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f7386a;

                    /* renamed from: b */
                    private final AbstractC1845u f7387b;

                    /* renamed from: c */
                    private final AbstractC1845u.C1848b f7388c;

                    /* renamed from: d */
                    private final AbstractC1845u.C1849c f7389d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7386a = this;
                        this.f7387b = abstractC1845u;
                        this.f7388c = c1848b;
                        this.f7389d = c1849c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f7386a;
                        this.f7387b.mo42061a(c1846a.f7361a, c1846a.f7362b, this.f7388c, this.f7389d);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m42048a(C1848b c1848b, C1849c c1849c, IOException iOException, boolean z) {
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1848b, c1849c, iOException, z) { // from class: androidx.media2.exoplayer.external.source.aa

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f6766a;

                    /* renamed from: b */
                    private final AbstractC1845u f6767b;

                    /* renamed from: c */
                    private final AbstractC1845u.C1848b f6768c;

                    /* renamed from: d */
                    private final AbstractC1845u.C1849c f6769d;

                    /* renamed from: e */
                    private final IOException f6770e;

                    /* renamed from: f */
                    private final boolean f6771f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6766a = this;
                        this.f6767b = abstractC1845u;
                        this.f6768c = c1848b;
                        this.f6769d = c1849c;
                        this.f6770e = iOException;
                        this.f6771f = z;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f6766a;
                        this.f6767b.mo42060a(c1846a.f7361a, c1846a.f7362b, this.f6768c, this.f6769d, this.f6770e, this.f6771f);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m42047a(C1849c c1849c) {
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1849c) { // from class: androidx.media2.exoplayer.external.source.ac

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f6775a;

                    /* renamed from: b */
                    private final AbstractC1845u f6776b;

                    /* renamed from: c */
                    private final AbstractC1845u.C1849c f6777c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6775a = this;
                        this.f6776b = abstractC1845u;
                        this.f6777c = c1849c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f6775a;
                        this.f6776b.mo42059a(c1846a.f7361a, c1846a.f7362b, this.f6777c);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m42046a(C1971h c1971h, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            m42049a(new C1848b(c1971h, c1971h.f7952a, Collections.emptyMap(), j3, 0L, 0L), new C1849c(i, i2, format, i3, obj, m42051a(j), m42051a(j2)));
        }

        /* renamed from: a */
        public final void m42045a(C1971h c1971h, int i, long j) {
            m42046a(c1971h, i, -1, (Format) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public final void m42044a(C1971h c1971h, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m42039b(new C1848b(c1971h, uri, map, j3, j4, j5), new C1849c(i, i2, format, i3, obj, m42051a(j), m42051a(j2)));
        }

        /* renamed from: a */
        public final void m42043a(C1971h c1971h, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            m42048a(new C1848b(c1971h, uri, map, j3, j4, j5), new C1849c(i, i2, format, i3, obj, m42051a(j), m42051a(j2)), iOException, z);
        }

        /* renamed from: a */
        public final void m42042a(C1971h c1971h, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            m42043a(c1971h, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        /* renamed from: a */
        public final void m42041a(C1971h c1971h, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            m42044a(c1971h, uri, map, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: b */
        public final void m42040b() {
            AbstractC1842t.C1843a c1843a = (AbstractC1842t.C1843a) C1993a.m41690a(this.f7362b);
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1843a) { // from class: androidx.media2.exoplayer.external.source.w

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f7383a;

                    /* renamed from: b */
                    private final AbstractC1845u f7384b;

                    /* renamed from: c */
                    private final AbstractC1842t.C1843a f7385c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7383a = this;
                        this.f7384b = abstractC1845u;
                        this.f7385c = c1843a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f7383a;
                        this.f7384b.mo42058b(c1846a.f7361a, this.f7385c);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m42039b(C1848b c1848b, C1849c c1849c) {
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1848b, c1849c) { // from class: androidx.media2.exoplayer.external.source.y

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f7390a;

                    /* renamed from: b */
                    private final AbstractC1845u f7391b;

                    /* renamed from: c */
                    private final AbstractC1845u.C1848b f7392c;

                    /* renamed from: d */
                    private final AbstractC1845u.C1849c f7393d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7390a = this;
                        this.f7391b = abstractC1845u;
                        this.f7392c = c1848b;
                        this.f7393d = c1849c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f7390a;
                        this.f7391b.mo42057b(c1846a.f7361a, c1846a.f7362b, this.f7392c, this.f7393d);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m42038b(C1971h c1971h, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            m42035c(new C1848b(c1971h, uri, map, j3, j4, j5), new C1849c(i, i2, format, i3, obj, m42051a(j), m42051a(j2)));
        }

        /* renamed from: b */
        public final void m42037b(C1971h c1971h, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            m42038b(c1971h, uri, map, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        /* renamed from: c */
        public final void m42036c() {
            AbstractC1842t.C1843a c1843a = (AbstractC1842t.C1843a) C1993a.m41690a(this.f7362b);
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1843a) { // from class: androidx.media2.exoplayer.external.source.ab

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f6772a;

                    /* renamed from: b */
                    private final AbstractC1845u f6773b;

                    /* renamed from: c */
                    private final AbstractC1842t.C1843a f6774c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6772a = this;
                        this.f6773b = abstractC1845u;
                        this.f6774c = c1843a;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f6772a;
                        this.f6773b.mo42056c(c1846a.f7361a, this.f6774c);
                    }
                });
            }
        }

        /* renamed from: c */
        public final void m42035c(C1848b c1848b, C1849c c1849c) {
            Iterator<C1847a> it2 = this.f7363c.iterator();
            while (it2.hasNext()) {
                C1847a next = it2.next();
                m42050a(next.f7365a, new Runnable(this, next.f7366b, c1848b, c1849c) { // from class: androidx.media2.exoplayer.external.source.z

                    /* renamed from: a */
                    private final AbstractC1845u.C1846a f7394a;

                    /* renamed from: b */
                    private final AbstractC1845u f7395b;

                    /* renamed from: c */
                    private final AbstractC1845u.C1848b f7396c;

                    /* renamed from: d */
                    private final AbstractC1845u.C1849c f7397d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7394a = this;
                        this.f7395b = abstractC1845u;
                        this.f7396c = c1848b;
                        this.f7397d = c1849c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC1845u.C1846a c1846a = this.f7394a;
                        this.f7395b.mo42055c(c1846a.f7361a, c1846a.f7362b, this.f7396c, this.f7397d);
                    }
                });
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$b.class */
    public static final class C1848b {

        /* renamed from: a */
        public final C1971h f7367a;

        /* renamed from: b */
        public final Uri f7368b;

        /* renamed from: c */
        public final Map<String, List<String>> f7369c;

        /* renamed from: d */
        public final long f7370d;

        /* renamed from: e */
        public final long f7371e;

        /* renamed from: f */
        public final long f7372f;

        public C1848b(C1971h c1971h, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f7367a = c1971h;
            this.f7368b = uri;
            this.f7369c = map;
            this.f7370d = j;
            this.f7371e = j2;
            this.f7372f = j3;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.u$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$c.class */
    public static final class C1849c {

        /* renamed from: a */
        public final int f7373a;

        /* renamed from: b */
        public final int f7374b;

        /* renamed from: c */
        public final Format f7375c;

        /* renamed from: d */
        public final int f7376d;

        /* renamed from: e */
        public final Object f7377e;

        /* renamed from: f */
        public final long f7378f;

        /* renamed from: g */
        public final long f7379g;

        public C1849c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f7373a = i;
            this.f7374b = i2;
            this.f7375c = format;
            this.f7376d = i3;
            this.f7377e = obj;
            this.f7378f = j;
            this.f7379g = j2;
        }
    }

    /* renamed from: a */
    void mo42062a(int i, AbstractC1842t.C1843a c1843a);

    /* renamed from: a */
    void mo42061a(int i, AbstractC1842t.C1843a c1843a, C1848b c1848b, C1849c c1849c);

    /* renamed from: a */
    void mo42060a(int i, AbstractC1842t.C1843a c1843a, C1848b c1848b, C1849c c1849c, IOException iOException, boolean z);

    /* renamed from: a */
    void mo42059a(int i, AbstractC1842t.C1843a c1843a, C1849c c1849c);

    /* renamed from: b */
    void mo42058b(int i, AbstractC1842t.C1843a c1843a);

    /* renamed from: b */
    void mo42057b(int i, AbstractC1842t.C1843a c1843a, C1848b c1848b, C1849c c1849c);

    /* renamed from: c */
    void mo42056c(int i, AbstractC1842t.C1843a c1843a);

    /* renamed from: c */
    void mo42055c(int i, AbstractC1842t.C1843a c1843a, C1848b c1848b, C1849c c1849c);
}
