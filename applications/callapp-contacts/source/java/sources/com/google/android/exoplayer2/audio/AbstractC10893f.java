package com.google.android.exoplayer2.audio;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AbstractC10893f;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.audio.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f.class */
public interface AbstractC10893f {

    /* renamed from: com.google.android.exoplayer2.audio.f$_CC */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f$_CC.class */
    public final /* synthetic */ class _CC {
        public static void $default$a(AbstractC10893f abstractC10893f, int i, long j, long j2) {
        }

        public static void $default$a(AbstractC10893f abstractC10893f, long j) {
        }

        public static void $default$a(AbstractC10893f abstractC10893f, Exception exc) {
        }

        public static void $default$b(AbstractC10893f abstractC10893f, Format format, C10935e c10935e) {
        }

        public static void $default$b(AbstractC10893f abstractC10893f, String str) {
        }

        public static void $default$b(AbstractC10893f abstractC10893f, String str, long j, long j2) {
        }

        public static void $default$c(AbstractC10893f abstractC10893f, C10934d c10934d) {
        }

        public static void $default$d(AbstractC10893f abstractC10893f, C10934d c10934d) {
        }

        public static void $default$d(AbstractC10893f abstractC10893f, boolean z) {
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.f$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/f$a.class */
    public static final class C10894a {

        /* renamed from: a */
        private final Handler f35151a;

        /* renamed from: b */
        private final AbstractC10893f f35152b;

        public C10894a(Handler handler, AbstractC10893f abstractC10893f) {
            this.f35151a = abstractC10893f != null ? (Handler) C11593a.m20020b(handler) : null;
            this.f35152b = abstractC10893f;
        }

        /* renamed from: b */
        public /* synthetic */ void m22049b(int i, long j, long j2) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22066a(i, j, j2);
        }

        /* renamed from: b */
        public /* synthetic */ void m22048b(long j) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22065a(j);
        }

        /* renamed from: b */
        public /* synthetic */ void m22047b(Format format, C10935e c10935e) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22063b(format, c10935e);
        }

        /* renamed from: b */
        public /* synthetic */ void m22045b(Exception exc) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22064a(exc);
        }

        /* renamed from: b */
        public /* synthetic */ void m22044b(String str) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22062b(str);
        }

        /* renamed from: b */
        public /* synthetic */ void m22043b(String str, long j, long j2) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22061b(str, j, j2);
        }

        /* renamed from: b */
        public /* synthetic */ void m22042b(boolean z) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22058d(z);
        }

        /* renamed from: c */
        public /* synthetic */ void m22041c(C10934d c10934d) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22059d(c10934d);
        }

        /* renamed from: d */
        public /* synthetic */ void m22040d(C10934d c10934d) {
            ((AbstractC10893f) C11599af.m19974a(this.f35152b)).mo22060c(c10934d);
        }

        /* renamed from: a */
        public final void m22057a(final int i, final long j, final long j2) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$7GFVK8IUJOtYO5JnYlu73iPP_MU
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22049b(i, j, j2);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22056a(final long j) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$lwjI1sRMYu8kIP9pzEftEJTgrW4
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22048b(j);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22055a(final Format format, final C10935e c10935e) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$3hzmHBaCNyJ1S2ote4plVtA_rho
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22047b(format, c10935e);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22054a(final C10934d c10934d) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$NIjWc6GcJF8_6jhTqB7s12zsLJU
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22040d(c10934d);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22053a(final Exception exc) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$nxLsiOLwwwcCwWr5gy7MEngL6QQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22045b(exc);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22052a(final String str) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$wmeq3R_6L15oJOA8KEnFlMLbh4A
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22044b(str);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22051a(final String str, final long j, final long j2) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$aFbEFUMhDDtVTBzF6_24e08EOoc
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22043b(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: a */
        public final void m22050a(final boolean z) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$bOLlBo_GeM0pfArsYGiSCb5e9oU
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22042b(z);
                    }
                });
            }
        }

        /* renamed from: b */
        public final void m22046b(final C10934d c10934d) {
            Handler handler = this.f35151a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.exoplayer2.audio._$$Lambda$f$a$gJlMxnEqr3eKBqnKJSnVUCTgpLE
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC10893f.C10894a.this.m22041c(c10934d);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo22066a(int i, long j, long j2);

    /* renamed from: a */
    void mo22065a(long j);

    /* renamed from: a */
    void mo22064a(Exception exc);

    /* renamed from: b */
    void mo22063b(Format format, C10935e c10935e);

    /* renamed from: b */
    void mo22062b(String str);

    /* renamed from: b */
    void mo22061b(String str, long j, long j2);

    /* renamed from: c */
    void mo22060c(C10934d c10934d);

    /* renamed from: d */
    void mo22059d(C10934d c10934d);

    /* renamed from: d */
    void mo22058d(boolean z);
}
