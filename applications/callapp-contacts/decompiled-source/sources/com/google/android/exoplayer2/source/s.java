package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s.class */
public interface s {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(s sVar, int i, r.a aVar, l lVar, o oVar) {
        }

        public static void $default$a(s sVar, int i, r.a aVar, l lVar, o oVar, IOException iOException, boolean z) {
        }

        public static void $default$a(s sVar, int i, r.a aVar, o oVar) {
        }

        public static void $default$b(s sVar, int i, r.a aVar, l lVar, o oVar) {
        }

        public static void $default$c(s sVar, int i, r.a aVar, l lVar, o oVar) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f21641a;

        /* renamed from: b  reason: collision with root package name */
        public final r.a f21642b;

        /* renamed from: c  reason: collision with root package name */
        final CopyOnWriteArrayList<C0436a> f21643c;

        /* renamed from: d  reason: collision with root package name */
        private final long f21644d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.android.exoplayer2.source.s$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/s$a$a.class */
        public static final class C0436a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f21645a;

            /* renamed from: b  reason: collision with root package name */
            public s f21646b;

            public C0436a(Handler handler, s sVar) {
                this.f21645a = handler;
                this.f21646b = sVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList<C0436a> copyOnWriteArrayList, int i, r.a aVar, long j) {
            this.f21643c = copyOnWriteArrayList;
            this.f21641a = i;
            this.f21642b = aVar;
            this.f21644d = j;
        }

        private long a(long j) {
            long a2 = f.a(j);
            if (a2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f21644d + a2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(s sVar, l lVar, o oVar) {
            sVar.c(this.f21641a, this.f21642b, lVar, oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(s sVar, l lVar, o oVar, IOException iOException, boolean z) {
            sVar.a(this.f21641a, this.f21642b, lVar, oVar, iOException, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(s sVar, o oVar) {
            sVar.a(this.f21641a, this.f21642b, oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(s sVar, l lVar, o oVar) {
            sVar.b(this.f21641a, this.f21642b, lVar, oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(s sVar, l lVar, o oVar) {
            sVar.a(this.f21641a, this.f21642b, lVar, oVar);
        }

        public final a a(int i, r.a aVar, long j) {
            return new a(this.f21643c, i, aVar, 0L);
        }

        public final void a(int i, Format format, long j) {
            a(new o(1, i, format, 0, null, a(j), -9223372036854775807L));
        }

        public final void a(Handler handler, s sVar) {
            com.google.android.exoplayer2.util.a.b(handler);
            com.google.android.exoplayer2.util.a.b(sVar);
            this.f21643c.add(new C0436a(handler, sVar));
        }

        public final void a(l lVar, int i, Format format, long j, long j2, IOException iOException, boolean z) {
            a(lVar, new o(i, -1, format, 0, null, a(j), a(j2)), iOException, z);
        }

        public final void a(l lVar, long j, long j2) {
            c(lVar, new o(1, -1, null, 0, null, a(j), a(j2)));
        }

        public final void a(l lVar, Format format, long j, long j2) {
            a(lVar, new o(1, -1, format, 0, null, a(j), a(j2)));
        }

        public final void a(final l lVar, final o oVar) {
            Iterator<C0436a> it2 = this.f21643c.iterator();
            while (it2.hasNext()) {
                C0436a next = it2.next();
                final s sVar = next.f21646b;
                af.a(next.f21645a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$vPnzxHYIW8nwzxfJYnwdK5uihqo
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.c(sVar, lVar, oVar);
                    }
                });
            }
        }

        public final void a(final l lVar, final o oVar, final IOException iOException, final boolean z) {
            Iterator<C0436a> it2 = this.f21643c.iterator();
            while (it2.hasNext()) {
                C0436a next = it2.next();
                final s sVar = next.f21646b;
                af.a(next.f21645a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$hDV7dy8QbvlYWQOA93nLirNi15Q
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.a(sVar, lVar, oVar, iOException, z);
                    }
                });
            }
        }

        public final void a(final o oVar) {
            Iterator<C0436a> it2 = this.f21643c.iterator();
            while (it2.hasNext()) {
                C0436a next = it2.next();
                final s sVar = next.f21646b;
                af.a(next.f21645a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$J_qzQKhgeI_EcH7RcbEns7bqTnk
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.a(sVar, oVar);
                    }
                });
            }
        }

        public final void b(l lVar, Format format, long j, long j2) {
            b(lVar, new o(1, -1, format, 0, null, a(j), a(j2)));
        }

        public final void b(final l lVar, final o oVar) {
            Iterator<C0436a> it2 = this.f21643c.iterator();
            while (it2.hasNext()) {
                C0436a next = it2.next();
                final s sVar = next.f21646b;
                af.a(next.f21645a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$j_ADRdNvHZXK6b8OkuMSbSsj_xg
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.b(sVar, lVar, oVar);
                    }
                });
            }
        }

        public final void c(final l lVar, final o oVar) {
            Iterator<C0436a> it2 = this.f21643c.iterator();
            while (it2.hasNext()) {
                C0436a next = it2.next();
                final s sVar = next.f21646b;
                af.a(next.f21645a, new Runnable() { // from class: com.google.android.exoplayer2.source._$$Lambda$s$a$i_xK8A3LLD2SSZ4iJ3FFAiK86cM
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.a(sVar, lVar, oVar);
                    }
                });
            }
        }
    }

    void a(int i, r.a aVar, l lVar, o oVar);

    void a(int i, r.a aVar, l lVar, o oVar, IOException iOException, boolean z);

    void a(int i, r.a aVar, o oVar);

    void b(int i, r.a aVar, l lVar, o oVar);

    void c(int i, r.a aVar, l lVar, o oVar);
}
