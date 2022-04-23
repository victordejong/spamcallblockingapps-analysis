package com.google.android.exoplayer2.drm;

import android.os.Handler;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.util.af;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c.class */
public interface c {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(c cVar, int i, r.a aVar) {
        }

        public static void $default$a(c cVar, int i, r.a aVar, Exception exc) {
        }

        public static void $default$b(c cVar, int i, r.a aVar) {
        }

        public static void $default$c(c cVar, int i, r.a aVar) {
        }

        public static void $default$d(c cVar, int i, r.a aVar) {
        }

        public static void $default$e(c cVar, int i, r.a aVar) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f20881a;

        /* renamed from: b  reason: collision with root package name */
        public final r.a f20882b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0423a> f20883c;

        /* renamed from: com.google.android.exoplayer2.drm.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/c$a$a.class */
        static final class C0423a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f20884a;

            /* renamed from: b  reason: collision with root package name */
            public c f20885b;

            public C0423a(Handler handler, c cVar) {
                this.f20884a = handler;
                this.f20885b = cVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList<C0423a> copyOnWriteArrayList, int i, r.a aVar) {
            this.f20883c = copyOnWriteArrayList;
            this.f20881a = i;
            this.f20882b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(c cVar) {
            cVar.e(this.f20881a, this.f20882b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(c cVar, Exception exc) {
            cVar.a(this.f20881a, this.f20882b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(c cVar) {
            cVar.d(this.f20881a, this.f20882b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(c cVar) {
            cVar.c(this.f20881a, this.f20882b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(c cVar) {
            cVar.b(this.f20881a, this.f20882b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(c cVar) {
            cVar.a(this.f20881a, this.f20882b);
        }

        public final a a(int i, r.a aVar) {
            return new a(this.f20883c, i, aVar);
        }

        public final void a() {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$up52avUaT9X1ehp2mXY_yQ_dMPA
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.e(cVar);
                    }
                });
            }
        }

        public final void a(Handler handler, c cVar) {
            com.google.android.exoplayer2.util.a.b(handler);
            com.google.android.exoplayer2.util.a.b(cVar);
            this.f20883c.add(new C0423a(handler, cVar));
        }

        public final void a(final Exception exc) {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$q8M4mxe6b4tm3DTvKgHTeK_1Mhg
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.a(cVar, exc);
                    }
                });
            }
        }

        public final void b() {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$z7jDPGaJ8i2s3C5k7bBkTGKM_Hk
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.d(cVar);
                    }
                });
            }
        }

        public final void c() {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$04GcogedEUb2CvSWjusVuJhzeh8
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.c(cVar);
                    }
                });
            }
        }

        public final void d() {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$3XW80SE7nF2xZQkloGDxKyF0_jU
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.b(cVar);
                    }
                });
            }
        }

        public final void e() {
            Iterator<C0423a> it2 = this.f20883c.iterator();
            while (it2.hasNext()) {
                C0423a next = it2.next();
                final c cVar = next.f20885b;
                af.a(next.f20884a, new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$c$a$wKNWQw3KOO5FAkx_ga61EjJqBIo
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.a.this.a(cVar);
                    }
                });
            }
        }
    }

    void a(int i, r.a aVar);

    void a(int i, r.a aVar, Exception exc);

    void b(int i, r.a aVar);

    void c(int i, r.a aVar);

    void d(int i, r.a aVar);

    void e(int i, r.a aVar);
}
