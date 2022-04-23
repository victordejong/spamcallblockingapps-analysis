package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.h;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u.class */
public interface u {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3752a;

        /* renamed from: b  reason: collision with root package name */
        public final t.a f3753b;

        /* renamed from: c  reason: collision with root package name */
        final CopyOnWriteArrayList<C0086a> f3754c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3755d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.media2.exoplayer.external.source.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$a$a.class */
        public static final class C0086a {

            /* renamed from: a  reason: collision with root package name */
            public final Handler f3756a;

            /* renamed from: b  reason: collision with root package name */
            public final u f3757b;

            public C0086a(Handler handler, u uVar) {
                this.f3756a = handler;
                this.f3757b = uVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList<C0086a> copyOnWriteArrayList, int i, t.a aVar, long j) {
            this.f3754c = copyOnWriteArrayList;
            this.f3752a = i;
            this.f3753b = aVar;
            this.f3755d = j;
        }

        private long a(long j) {
            long a2 = androidx.media2.exoplayer.external.c.a(j);
            if (a2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f3755d + a2;
        }

        private static void a(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        public final a a(int i, t.a aVar, long j) {
            return new a(this.f3754c, i, aVar, 0L);
        }

        public final void a() {
            final t.a aVar = (t.a) androidx.media2.exoplayer.external.util.a.a(this.f3753b);
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, aVar) { // from class: androidx.media2.exoplayer.external.source.v

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3766a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3767b;

                    /* renamed from: c  reason: collision with root package name */
                    private final t.a f3768c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3766a = this;
                        this.f3767b = uVar;
                        this.f3768c = aVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar2 = this.f3766a;
                        this.f3767b.a(aVar2.f3752a, this.f3768c);
                    }
                });
            }
        }

        public final void a(int i, Format format, int i2, Object obj, long j) {
            a(new c(1, i, format, i2, obj, a(j), -9223372036854775807L));
        }

        public final void a(final b bVar, final c cVar) {
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, bVar, cVar) { // from class: androidx.media2.exoplayer.external.source.x

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3772a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3773b;

                    /* renamed from: c  reason: collision with root package name */
                    private final u.b f3774c;

                    /* renamed from: d  reason: collision with root package name */
                    private final u.c f3775d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3772a = this;
                        this.f3773b = uVar;
                        this.f3774c = bVar;
                        this.f3775d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar = this.f3772a;
                        this.f3773b.a(aVar.f3752a, aVar.f3753b, this.f3774c, this.f3775d);
                    }
                });
            }
        }

        public final void a(final b bVar, final c cVar, final IOException iOException, final boolean z) {
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, bVar, cVar, iOException, z) { // from class: androidx.media2.exoplayer.external.source.aa

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3503a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3504b;

                    /* renamed from: c  reason: collision with root package name */
                    private final u.b f3505c;

                    /* renamed from: d  reason: collision with root package name */
                    private final u.c f3506d;
                    private final IOException e;
                    private final boolean f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3503a = this;
                        this.f3504b = uVar;
                        this.f3505c = bVar;
                        this.f3506d = cVar;
                        this.e = iOException;
                        this.f = z;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar = this.f3503a;
                        this.f3504b.a(aVar.f3752a, aVar.f3753b, this.f3505c, this.f3506d, this.e, this.f);
                    }
                });
            }
        }

        public final void a(final c cVar) {
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, cVar) { // from class: androidx.media2.exoplayer.external.source.ac

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3510a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3511b;

                    /* renamed from: c  reason: collision with root package name */
                    private final u.c f3512c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3510a = this;
                        this.f3511b = uVar;
                        this.f3512c = cVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar = this.f3510a;
                        this.f3511b.a(aVar.f3752a, aVar.f3753b, this.f3512c);
                    }
                });
            }
        }

        public final void a(h hVar, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3) {
            a(new b(hVar, hVar.f4064a, Collections.emptyMap(), j3, 0L, 0L), new c(i, i2, format, i3, obj, a(j), a(j2)));
        }

        public final void a(h hVar, int i, long j) {
            a(hVar, i, -1, (Format) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, j);
        }

        public final void a(h hVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            b(new b(hVar, uri, map, j3, j4, j5), new c(i, i2, format, i3, obj, a(j), a(j2)));
        }

        public final void a(h hVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            a(new b(hVar, uri, map, j3, j4, j5), new c(i, i2, format, i3, obj, a(j), a(j2)), iOException, z);
        }

        public final void a(h hVar, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            a(hVar, uri, map, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        public final void a(h hVar, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            a(hVar, uri, map, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public final void b() {
            final t.a aVar = (t.a) androidx.media2.exoplayer.external.util.a.a(this.f3753b);
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, aVar) { // from class: androidx.media2.exoplayer.external.source.w

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3769a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3770b;

                    /* renamed from: c  reason: collision with root package name */
                    private final t.a f3771c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3769a = this;
                        this.f3770b = uVar;
                        this.f3771c = aVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar2 = this.f3769a;
                        this.f3770b.b(aVar2.f3752a, this.f3771c);
                    }
                });
            }
        }

        public final void b(final b bVar, final c cVar) {
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, bVar, cVar) { // from class: androidx.media2.exoplayer.external.source.y

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3776a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3777b;

                    /* renamed from: c  reason: collision with root package name */
                    private final u.b f3778c;

                    /* renamed from: d  reason: collision with root package name */
                    private final u.c f3779d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3776a = this;
                        this.f3777b = uVar;
                        this.f3778c = bVar;
                        this.f3779d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar = this.f3776a;
                        this.f3777b.b(aVar.f3752a, aVar.f3753b, this.f3778c, this.f3779d);
                    }
                });
            }
        }

        public final void b(h hVar, Uri uri, Map<String, List<String>> map, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5) {
            c(new b(hVar, uri, map, j3, j4, j5), new c(i, i2, format, i3, obj, a(j), a(j2)));
        }

        public final void b(h hVar, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            b(hVar, uri, map, 4, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public final void c() {
            final t.a aVar = (t.a) androidx.media2.exoplayer.external.util.a.a(this.f3753b);
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, aVar) { // from class: androidx.media2.exoplayer.external.source.ab

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3507a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3508b;

                    /* renamed from: c  reason: collision with root package name */
                    private final t.a f3509c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3507a = this;
                        this.f3508b = uVar;
                        this.f3509c = aVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar2 = this.f3507a;
                        this.f3508b.c(aVar2.f3752a, this.f3509c);
                    }
                });
            }
        }

        public final void c(final b bVar, final c cVar) {
            Iterator<C0086a> it2 = this.f3754c.iterator();
            while (it2.hasNext()) {
                C0086a next = it2.next();
                final u uVar = next.f3757b;
                a(next.f3756a, new Runnable(this, uVar, bVar, cVar) { // from class: androidx.media2.exoplayer.external.source.z

                    /* renamed from: a  reason: collision with root package name */
                    private final u.a f3780a;

                    /* renamed from: b  reason: collision with root package name */
                    private final u f3781b;

                    /* renamed from: c  reason: collision with root package name */
                    private final u.b f3782c;

                    /* renamed from: d  reason: collision with root package name */
                    private final u.c f3783d;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3780a = this;
                        this.f3781b = uVar;
                        this.f3782c = bVar;
                        this.f3783d = cVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        u.a aVar = this.f3780a;
                        this.f3781b.c(aVar.f3752a, aVar.f3753b, this.f3782c, this.f3783d);
                    }
                });
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final h f3758a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri f3759b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, List<String>> f3760c;

        /* renamed from: d  reason: collision with root package name */
        public final long f3761d;
        public final long e;
        public final long f;

        public b(h hVar, Uri uri, Map<String, List<String>> map, long j, long j2, long j3) {
            this.f3758a = hVar;
            this.f3759b = uri;
            this.f3760c = map;
            this.f3761d = j;
            this.e = j2;
            this.f = j3;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/u$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f3762a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3763b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f3764c;

        /* renamed from: d  reason: collision with root package name */
        public final int f3765d;
        public final Object e;
        public final long f;
        public final long g;

        public c(int i, int i2, Format format, int i3, Object obj, long j, long j2) {
            this.f3762a = i;
            this.f3763b = i2;
            this.f3764c = format;
            this.f3765d = i3;
            this.e = obj;
            this.f = j;
            this.g = j2;
        }
    }

    void a(int i, t.a aVar);

    void a(int i, t.a aVar, b bVar, c cVar);

    void a(int i, t.a aVar, b bVar, c cVar, IOException iOException, boolean z);

    void a(int i, t.a aVar, c cVar);

    void b(int i, t.a aVar);

    void b(int i, t.a aVar, b bVar, c cVar);

    void c(int i, t.a aVar);

    void c(int i, t.a aVar, b bVar, c cVar);
}
