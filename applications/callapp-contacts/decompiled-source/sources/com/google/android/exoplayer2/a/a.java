package com.google.android.exoplayer2.a;

import android.os.Looper;
import android.util.SparseArray;
import android.view.Surface;
import com.facebook.ads.AdError;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.a.b;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.audio.d;
import com.google.android.exoplayer2.audio.f;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.o;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.upstream.c;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.m;
import com.google.android.exoplayer2.video.l;
import com.google.common.base.j;
import com.google.common.collect.ab;
import com.google.common.collect.v;
import com.google.common.collect.x;
import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/a.class */
public final class a implements ac.a, f, c, s, c.a, l {

    /* renamed from: a  reason: collision with root package name */
    public final C0419a f20633a;

    /* renamed from: b  reason: collision with root package name */
    public ac f20634b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.c f20635c;

    /* renamed from: d  reason: collision with root package name */
    private final al.a f20636d;
    private final al.b e = new al.b();
    private final SparseArray<b.a> f = new SparseArray<>();
    private m<b, b.C0420b> g;
    private boolean h;

    /* renamed from: com.google.android.exoplayer2.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/a/a$a.class */
    public static final class C0419a {

        /* renamed from: a  reason: collision with root package name */
        public final al.a f20637a;

        /* renamed from: c  reason: collision with root package name */
        public r.a f20639c;

        /* renamed from: d  reason: collision with root package name */
        public r.a f20640d;
        public r.a e;

        /* renamed from: b  reason: collision with root package name */
        public v<r.a> f20638b = v.g();
        private x<r.a, al> f = x.a();

        public C0419a(al.a aVar) {
            this.f20637a = aVar;
        }

        public static r.a a(ac acVar, v<r.a> vVar, r.a aVar, al.a aVar2) {
            al K = acVar.K();
            int x = acVar.x();
            Object a2 = K.c() ? null : K.a(x);
            int b2 = (acVar.C() || K.c()) ? -1 : K.a(x, aVar2, false).b(com.google.android.exoplayer2.f.b(acVar.A()) - aVar2.e);
            for (int i = 0; i < vVar.size(); i++) {
                r.a aVar3 = vVar.get(i);
                if (a(aVar3, a2, acVar.C(), acVar.D(), acVar.E(), b2)) {
                    return aVar3;
                }
            }
            if (!vVar.isEmpty() || aVar == null || !a(aVar, a2, acVar.C(), acVar.D(), acVar.E(), b2)) {
                return null;
            }
            return aVar;
        }

        private void a(x.a<r.a, al> aVar, r.a aVar2, al alVar) {
            if (aVar2 != null) {
                if (alVar.c(aVar2.f21637a) != -1) {
                    aVar.a(aVar2, alVar);
                    return;
                }
                al alVar2 = this.f.get(aVar2);
                if (alVar2 != null) {
                    aVar.a(aVar2, alVar2);
                }
            }
        }

        private static boolean a(r.a aVar, Object obj, boolean z, int i, int i2, int i3) {
            if (!aVar.f21637a.equals(obj)) {
                return false;
            }
            if (z && aVar.f21638b == i && aVar.f21639c == i2) {
                return true;
            }
            return !z && aVar.f21638b == -1 && aVar.e == i3;
        }

        public final al a(r.a aVar) {
            return this.f.get(aVar);
        }

        public final void a(al alVar) {
            x.a<r.a, al> b2 = x.b();
            if (this.f20638b.isEmpty()) {
                a(b2, this.f20640d, alVar);
                if (!j.a(this.e, this.f20640d)) {
                    a(b2, this.e, alVar);
                }
                if (!j.a(this.f20639c, this.f20640d) && !j.a(this.f20639c, this.e)) {
                    a(b2, this.f20639c, alVar);
                }
            } else {
                for (int i = 0; i < this.f20638b.size(); i++) {
                    a(b2, this.f20638b.get(i), alVar);
                }
                if (!this.f20638b.contains(this.f20639c)) {
                    a(b2, this.f20639c, alVar);
                }
            }
            this.f = b2.a();
        }
    }

    public a(com.google.android.exoplayer2.util.c cVar) {
        this.f20635c = (com.google.android.exoplayer2.util.c) com.google.android.exoplayer2.util.a.b(cVar);
        this.g = new m<>(af.c(), cVar, _$$Lambda$nugrN4gUgxZMGEMKGuuRSjJR39g.INSTANCE, _$$Lambda$a$frR0oeVoxOVQZPyIzp0c_vP6ZtE.INSTANCE);
        al.a aVar = new al.a();
        this.f20636d = aVar;
        this.f20633a = new C0419a(aVar);
    }

    @RequiresNonNull({"player"})
    private b.a a(al alVar, int i, r.a aVar) {
        if (alVar.c()) {
            aVar = null;
        }
        long a2 = this.f20635c.a();
        boolean z = true;
        boolean z2 = alVar.equals(this.f20634b.K()) && i == this.f20634b.y();
        long j = 0;
        if (aVar != null && aVar.a()) {
            if (!z2 || this.f20634b.D() != aVar.f21638b || this.f20634b.E() != aVar.f21639c) {
                z = false;
            }
            if (z) {
                j = this.f20634b.A();
            }
        } else if (z2) {
            j = this.f20634b.F();
        } else if (!alVar.c()) {
            j = com.google.android.exoplayer2.f.a(alVar.a(i, this.e, 0L).p);
        }
        return new b.a(a2, alVar, i, aVar, j, this.f20634b.K(), this.f20634b.y(), this.f20633a.f20639c, this.f20634b.A(), this.f20634b.B());
    }

    private b.a a(r.a aVar) {
        com.google.android.exoplayer2.util.a.b(this.f20634b);
        al a2 = aVar == null ? null : this.f20633a.a(aVar);
        if (aVar != null && a2 != null) {
            return a(a2, a2.a(aVar.f21637a, this.f20636d).f20677c, aVar);
        }
        int y = this.f20634b.y();
        al K = this.f20634b.K();
        if (!(y < K.a())) {
            K = al.f20674b;
        }
        return a(K, y, (r.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, float f, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, int i2, int i3, float f, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, int i2, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, long j, long j2, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, long j, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, int i, b bVar) {
    }

    private void a(b.a aVar, int i, m.a<b> aVar2) {
        this.f.put(i, aVar);
        this.g.b(i, aVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, long j, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, long j, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, Surface surface, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, ExoPlaybackException exoPlaybackException, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, Format format, e eVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, MediaItem mediaItem, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, aa aaVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, d dVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.google.android.exoplayer2.decoder.d dVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, Metadata metadata, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, TrackGroupArray trackGroupArray, g gVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.google.android.exoplayer2.source.l lVar, o oVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, com.google.android.exoplayer2.source.l lVar, o oVar, IOException iOException, boolean z, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, o oVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, Exception exc, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, String str, long j, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, String str, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, List list, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, boolean z, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b.a aVar, boolean z, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b bVar, b.C0420b bVar2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ac acVar, b bVar, b.C0420b bVar2) {
        SparseArray<b.a> sparseArray = this.f;
        bVar2.f20645a.clear();
        for (int i = 0; i < bVar2.f22319b.size(); i++) {
            int b2 = bVar2.b(i);
            bVar2.f20645a.append(b2, (b.a) com.google.android.exoplayer2.util.a.b(sparseArray.get(b2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, int i, long j, long j2, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, Format format, e eVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, com.google.android.exoplayer2.decoder.d dVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, com.google.android.exoplayer2.source.l lVar, o oVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, Exception exc, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, String str, long j, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, String str, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, boolean z, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(b.a aVar, boolean z, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, com.google.android.exoplayer2.decoder.d dVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, com.google.android.exoplayer2.source.l lVar, o oVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(b.a aVar, boolean z, b bVar) {
    }

    private b.a d() {
        return a(this.f20633a.f20639c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, com.google.android.exoplayer2.decoder.d dVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(b.a aVar, boolean z, b bVar) {
    }

    private b.a e() {
        return a(this.f20633a.f20640d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(b.a aVar, int i, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(b.a aVar, b bVar) {
    }

    private b.a f() {
        return a(this.f20633a.e);
    }

    private b.a f(int i, r.a aVar) {
        com.google.android.exoplayer2.util.a.b(this.f20634b);
        boolean z = true;
        boolean z2 = true;
        if (aVar != null) {
            if (this.f20633a.a(aVar) == null) {
                z2 = false;
            }
            return z2 ? a(aVar) : a(al.f20674b, i, aVar);
        }
        al K = this.f20634b.K();
        if (i >= K.a()) {
            z = false;
        }
        if (!z) {
            K = al.f20674b;
        }
        return a(K, i, (r.a) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(b.a aVar, b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(b.a aVar, b bVar) {
    }

    public final void a() {
        final b.a d2 = d();
        this.f.put(1036, d2);
        m<b, b.C0420b> mVar = this.g;
        mVar.f22301b.a(1, 1036, 0, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$tolDqLVeuOWuz54dYTBbISK2LVQ
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.h(b.a.this, (b) obj);
            }
        }).sendToTarget();
    }

    public final void a(final float f) {
        final b.a f2 = f();
        a(f2, 1019, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$iAdqiQA4Sf3IM_WosW5WgWigb9A
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, f, (b) obj);
            }
        });
    }

    public final void a(final int i, final int i2) {
        final b.a f = f();
        a(f, 1029, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$vd0Kqfbwls9de9ARi_4cZfyxbcc
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i, i2, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final int i, final int i2, final int i3, final float f) {
        final b.a f2 = f();
        a(f2, 1028, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$wQBhgLIJro8ZdIK12Nh3qFW4QFc
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i, i2, i3, f, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final int i, final long j) {
        final b.a e = e();
        a(e, 1023, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$P14E2FuHzNVqWsCPktQWCbddx8E
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i, j, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void a(final int i, final long j, final long j2) {
        final b.a f = f();
        a(f, 1012, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$d7W1H1qxUFaO6gd_BJ18jonlpQ0
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, i, j, j2, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void a(int i, r.a aVar) {
        final b.a f = f(i, aVar);
        a(f, 1030, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$0zIm_npBHWkR3V50j8W3QRq7i5Q
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.e(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.s
    public final void a(int i, r.a aVar, final com.google.android.exoplayer2.source.l lVar, final o oVar) {
        final b.a f = f(i, aVar);
        a(f, 1000, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ZLtekCfxyxhL1UPVwDnzly2_RqY
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.c(b.a.this, lVar, oVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.s
    public final void a(int i, r.a aVar, final com.google.android.exoplayer2.source.l lVar, final o oVar, final IOException iOException, final boolean z) {
        final b.a f = f(i, aVar);
        a(f, 1003, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$8MgCfb27LMHkoq3j_wJ4qTunkn4
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, lVar, oVar, iOException, z, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.s
    public final void a(int i, r.a aVar, final o oVar) {
        final b.a f = f(i, aVar);
        a(f, 1004, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$iro95wRVN_SvQ_RaaFOZrUFl1jg
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, oVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void a(int i, r.a aVar, final Exception exc) {
        final b.a f = f(i, aVar);
        a(f, 1032, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$mbXtZ6NDkl3Za1ru6_oKDUYwDpM
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, exc, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void a(final long j) {
        final b.a f = f();
        a(f, 1011, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$1GsbzsjmtCxUXRkd87bcmhiPB3Y
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, j, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final long j, final int i) {
        final b.a e = e();
        a(e, 1026, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$8jUUZmm2DtYS_wa_c5moRw3lphg
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, j, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final Surface surface) {
        final b.a f = f();
        a(f, 1027, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$taabKT2eJ8WWOjs7_m3L4ADuWWY
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, surface, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(final ExoPlaybackException exoPlaybackException) {
        final b.a a2 = exoPlaybackException.g != null ? a(new r.a(exoPlaybackException.g)) : d();
        a(a2, 11, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$coO4LtZg9YbqVOqecCJtgQmdBbY
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, exoPlaybackException, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final Format format, final e eVar) {
        final b.a f = f();
        a(f, 1022, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$v5940N5MCHJ757_fQtkQqJVbK9A
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, format, eVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(final MediaItem mediaItem, final int i) {
        final b.a d2 = d();
        a(d2, 1, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$kVBmXFYs2kVMF82iOxweduayui0
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, mediaItem, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(final aa aaVar) {
        final b.a d2 = d();
        a(d2, 13, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$QZH_5RbzpFXbvXG9W0W_ERjYxfE
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, aaVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void a(ac.b bVar) {
        ac.a._CC.$default$a(this, bVar);
    }

    public final void a(final ac acVar, Looper looper) {
        com.google.android.exoplayer2.util.a.b(this.f20634b == null || this.f20633a.f20638b.isEmpty());
        this.f20634b = (ac) com.google.android.exoplayer2.util.a.b(acVar);
        m<b, b.C0420b> mVar = this.g;
        this.g = new m<>(mVar.e, looper, mVar.f22300a, mVar.f22302c, new m.b() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$jtOsbChicVO6JDSFVk09oUd53xA
            @Override // com.google.android.exoplayer2.util.m.b
            public final void invoke(Object obj, com.google.android.exoplayer2.util.r rVar) {
                a.this.a(acVar, (b) obj, (b.C0420b) rVar);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(al alVar, final int i) {
        C0419a aVar = this.f20633a;
        ac acVar = (ac) com.google.android.exoplayer2.util.a.b(this.f20634b);
        aVar.f20639c = C0419a.a(acVar, aVar.f20638b, aVar.f20640d, aVar.f20637a);
        aVar.a(acVar.K());
        final b.a d2 = d();
        a(d2, 0, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$EjUjn0MYLrqSRC7Vj4dtQzHmqeA
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.e(b.a.this, i, (b) obj);
            }
        });
    }

    public final void a(final d dVar) {
        final b.a f = f();
        a(f, 1016, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$wRqyB9b8YczY3iw0kdRuklIg23c
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, dVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final com.google.android.exoplayer2.decoder.d dVar) {
        final b.a f = f();
        a(f, 1020, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$L2RL1_HcWV4VwA1QZQnG_MM3Fdo
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, dVar, (b) obj);
            }
        });
    }

    public final void a(final Metadata metadata) {
        final b.a d2 = d();
        a(d2, 1007, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$a2PfBlDdoMUEDdx2kkVi3n9BxoY
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, metadata, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(final TrackGroupArray trackGroupArray, final g gVar) {
        final b.a d2 = d();
        a(d2, 2, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ehuuyKZGhNNG46R7BaiI6eU8Aew
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, trackGroupArray, gVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void a(final Exception exc) {
        final b.a f = f();
        a(f, 1018, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$YeNv7p_Ht_KM4ncXGGhHVu2q5Lw
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, exc, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final String str) {
        final b.a f = f();
        a(f, 1024, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$aPK7_0CKlE4H6xuM9SjSRckphgY
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, str, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void a(final String str, long j, final long j2) {
        final b.a f = f();
        a(f, 1021, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$dkx80oLOHUB8H6eUBp545G198TU
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, str, j2, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void a(final boolean z) {
        final b.a d2 = d();
        a(d2, 8, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$pTdXKpe0s0FlGssV_oLRw6EFUk4
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, z, (b) obj);
            }
        });
    }

    public final void b() {
        if (!this.h) {
            final b.a d2 = d();
            this.h = true;
            a(d2, -1, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$cKmvA13zuSaJj8mPyZFWY7xsvMI
                @Override // com.google.android.exoplayer2.util.m.a
                public final void invoke(Object obj) {
                    a.g(b.a.this, (b) obj);
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void b(final int i) {
        final b.a d2 = d();
        a(d2, 5, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$KfzQW7R0kfwrESQgmw_D0rHPrnQ
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.d(b.a.this, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.c.a
    public final void b(final int i, final long j, final long j2) {
        r.a aVar;
        Object obj;
        C0419a aVar2 = this.f20633a;
        if (aVar2.f20638b.isEmpty()) {
            aVar = null;
        } else {
            v<r.a> vVar = aVar2.f20638b;
            if (vVar instanceof List) {
                v<r.a> vVar2 = vVar;
                if (!vVar2.isEmpty()) {
                    obj = vVar2.get(vVar2.size() - 1);
                } else {
                    throw new NoSuchElementException();
                }
            } else {
                obj = ab.b(vVar.iterator());
            }
            aVar = (r.a) obj;
        }
        final b.a a2 = a(aVar);
        a(a2, 1006, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$sA7gT1502m_RV_yg0LaX2s_5n1U
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj2) {
                a.a(b.a.this, i, j, j2, (b) obj2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void b(int i, r.a aVar) {
        final b.a f = f(i, aVar);
        a(f, 1031, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$Ys2yAAFf1uUBewdZcSE6i71R7bU
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.d(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.s
    public final void b(int i, r.a aVar, final com.google.android.exoplayer2.source.l lVar, final o oVar) {
        final b.a f = f(i, aVar);
        a(f, 1001, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$_6R8Mq3YGYlMaQVQ5ZytKgp3IUE
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, lVar, oVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void b(final Format format, final e eVar) {
        final b.a f = f();
        a(f, 1010, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$NhqbY4PURfB22Clq1P9ltGtwjmA
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, format, eVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.l
    public final void b(final com.google.android.exoplayer2.decoder.d dVar) {
        final b.a e = e();
        a(e, 1025, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$jX7s11aeFHiKqIRGNV_UeSxl9go
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, dVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void b(final String str) {
        final b.a f = f();
        a(f, 1013, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$1Mrd1xsp_zVhR9N_jlpQkeEJoZ0
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, str, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void b(final String str, long j, final long j2) {
        final b.a f = f();
        a(f, 1009, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ckM6xtKyHlwiCQdNcs6mHEP5oCU
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, str, j2, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void b(final boolean z) {
        final b.a d2 = d();
        a(d2, 4, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$ZhiVBZuPylGwrgjAkk8T7KDh5dM
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.c(b.a.this, z, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void b(final boolean z, final int i) {
        final b.a d2 = d();
        a(d2, -1, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$M4D0RQhs1gd2V7qQ3bjtdT1IfB8
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, z, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void c(int i, r.a aVar) {
        final b.a f = f(i, aVar);
        a(f, 1033, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$BrV9Qq4zIIs2HWn8ozmae13MzJU
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.c(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.s
    public final void c(int i, r.a aVar, final com.google.android.exoplayer2.source.l lVar, final o oVar) {
        final b.a f = f(i, aVar);
        a(f, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$K5zQS_pTn_fq8zxym09qHukNCaA
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, lVar, oVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void c(final com.google.android.exoplayer2.decoder.d dVar) {
        final b.a f = f();
        a(f, 1008, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$VyKw1Nm8PKwnzJ_AHxgPFGYMIL0
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.d(b.a.this, dVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void c(final List<Metadata> list) {
        final b.a d2 = d();
        a(d2, 3, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$Dj93FcofXhMygkae0WVWoeDrD1w
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, list, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void c(final boolean z) {
        final b.a d2 = d();
        a(d2, 10, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$6Mu1G1CyOCbV_FmsaLZFrzdMcrU
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, z, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void c(final boolean z, final int i) {
        final b.a d2 = d();
        a(d2, 6, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$tQ4jNxFtLNhrGdI__aZQXfpcnWs
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, z, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void d(final int i) {
        final b.a d2 = d();
        a(d2, 7, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$3LKLU2w8WPaPkkD0v_DIMvutPdo
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.c(b.a.this, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void d(int i, r.a aVar) {
        final b.a f = f(i, aVar);
        a(f, 1034, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$_NZ__OVTwvuZkULoQfMj2nCeHrA
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void d(final com.google.android.exoplayer2.decoder.d dVar) {
        final b.a e = e();
        a(e, 1014, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$xnVlRxXRDLM5A2ZMy_OsHvtGB_o
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.c(b.a.this, dVar, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.f
    public final void d(final boolean z) {
        final b.a f = f();
        a(f, 1017, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$pJefUOL7g_BbaprQeaLm9t7dWY8
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.d(b.a.this, z, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void e(final int i) {
        final b.a d2 = d();
        a(d2, 9, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$E7BIUV2f0CdY6o15bvkYiRcApIA
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.b(b.a.this, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c
    public final void e(int i, r.a aVar) {
        final b.a f = f(i, aVar);
        a(f, 1035, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$6jzbncxT0WlUeEEUEreNJcBYN4A
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void f(final int i) {
        if (i == 1) {
            this.h = false;
        }
        C0419a aVar = this.f20633a;
        aVar.f20639c = C0419a.a((ac) com.google.android.exoplayer2.util.a.b(this.f20634b), aVar.f20638b, aVar.f20640d, aVar.f20637a);
        final b.a d2 = d();
        a(d2, 12, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$i340sWouQ1ITC9vTLDAGYFXXTTc
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.a(b.a.this, i, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public final void p_() {
        final b.a d2 = d();
        a(d2, -1, new m.a() { // from class: com.google.android.exoplayer2.a._$$Lambda$a$BTWeHlincaMRD_iTGFZEdVoClq0
            @Override // com.google.android.exoplayer2.util.m.a
            public final void invoke(Object obj) {
                a.f(b.a.this, (b) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.ac.a
    public /* synthetic */ void q_() {
        ac.a._CC.$default$q_(this);
    }
}
