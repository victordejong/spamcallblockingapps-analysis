package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.f;
import com.google.android.exoplayer2.decoder.d;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f.class */
public interface f {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(f fVar, int i, long j, long j2) {
        }

        public static void $default$a(f fVar, long j) {
        }

        public static void $default$a(f fVar, Exception exc) {
        }

        public static void $default$b(f fVar, Format format, e eVar) {
        }

        public static void $default$b(f fVar, String str) {
        }

        public static void $default$b(f fVar, String str, long j, long j2) {
        }

        public static void $default$c(f fVar, d dVar) {
        }

        public static void $default$d(f fVar, d dVar) {
        }

        public static void $default$d(f fVar, boolean z) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f20754a;

        /* renamed from: b  reason: collision with root package name */
        private final f f20755b;

        public a(Handler handler, f fVar) {
            this.f20754a = fVar != null ? (Handler) com.google.android.exoplayer2.util.a.b(handler) : null;
            this.f20755b = fVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, long j, long j2) {
            ((f) af.a(this.f20755b)).a(i, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(long j) {
            ((f) af.a(this.f20755b)).a(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Format format, e eVar) {
            ((f) af.a(this.f20755b)).b(format, eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Exception exc) {
            ((f) af.a(this.f20755b)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((f) af.a(this.f20755b)).b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((f) af.a(this.f20755b)).b(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(boolean z) {
            ((f) af.a(this.f20755b)).d(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(d dVar) {
            ((f) af.a(this.f20755b)).d(dVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(d dVar) {
            ((f) af.a(this.f20755b)).c(dVar);
        }

        public final void a(final int i, final long j, final long j2) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$7GFVK8IUJOtYO5JnYlu73iPP_MU
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(i, j, j2);
                    }
                });
            }
        }

        public final void a(final long j) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$lwjI1sRMYu8kIP9pzEftEJTgrW4
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(j);
                    }
                });
            }
        }

        public final void a(final Format format, final e eVar) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(format, eVar);
                    }
                });
            }
        }

        public final void a(final d dVar) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$NIjWc6GcJF8_6jhTqB7s12zsLJU
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.d(dVar);
                    }
                });
            }
        }

        public final void a(final Exception exc) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$nxLsiOLwwwcCwWr5gy7MEngL6QQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(exc);
                    }
                });
            }
        }

        public final void a(final String str) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$wmeq3R_6L15oJOA8KEnFlMLbh4A
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(str);
                    }
                });
            }
        }

        public final void a(final String str, final long j, final long j2) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$aFbEFUMhDDtVTBzF6_24e08EOoc
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(str, j, j2);
                    }
                });
            }
        }

        public final void a(final boolean z) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$bOLlBo_GeM0pfArsYGiSCb5e9oU
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.b(z);
                    }
                });
            }
        }

        public final void b(final d dVar) {
            Handler handler = this.f20754a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.this.c(dVar);
                    }
                });
            }
        }
    }

    void a(int i, long j, long j2);

    void a(long j);

    void a(Exception exc);

    void b(Format format, e eVar);

    void b(String str);

    void b(String str, long j, long j2);

    void c(d dVar);

    void d(d dVar);

    void d(boolean z);
}
