package androidx.media2.exoplayer.external.a;

import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.a.b;
import androidx.media2.exoplayer.external.ae;
import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.audio.f;
import androidx.media2.exoplayer.external.audio.g;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.d;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.source.u;
import androidx.media2.exoplayer.external.upstream.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a.class */
public final class a implements ae.b, f, g, androidx.media2.exoplayer.external.drm.g, d, u, c.a, androidx.media2.exoplayer.external.video.f, androidx.media2.exoplayer.external.video.g {

    /* renamed from: c  reason: collision with root package name */
    public ae f2784c;

    /* renamed from: d  reason: collision with root package name */
    private final androidx.media2.exoplayer.external.util.b f2785d;

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArraySet<androidx.media2.exoplayer.external.a.b> f2782a = new CopyOnWriteArraySet<>();

    /* renamed from: b  reason: collision with root package name */
    public final b f2783b = new b();
    private final al.b e = new al.b();

    /* renamed from: androidx.media2.exoplayer.external.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a$a.class */
    public static final class C0075a {

        /* renamed from: a  reason: collision with root package name */
        public final t.a f2786a;

        /* renamed from: b  reason: collision with root package name */
        public final al f2787b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2788c;

        public C0075a(t.a aVar, al alVar, int i) {
            this.f2786a = aVar;
            this.f2787b = alVar;
            this.f2788c = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a$b.class */
    public static final class b {

        /* renamed from: c  reason: collision with root package name */
        C0075a f2791c;

        /* renamed from: d  reason: collision with root package name */
        C0075a f2792d;
        C0075a e;
        public boolean g;

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<C0075a> f2789a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        final HashMap<t.a, C0075a> f2790b = new HashMap<>();
        private final al.a h = new al.a();
        al f = al.f2829a;

        public final C0075a a() {
            if (this.f2789a.isEmpty() || this.f.a() || this.g) {
                return null;
            }
            return this.f2789a.get(0);
        }

        public final C0075a a(int i) {
            C0075a aVar = null;
            for (int i2 = 0; i2 < this.f2789a.size(); i2++) {
                C0075a aVar2 = this.f2789a.get(i2);
                int a2 = this.f.a(aVar2.f2786a.f3748a);
                aVar = aVar;
                if (a2 != -1) {
                    aVar = aVar;
                    if (this.f.a(a2, this.h, false).f2832c != i) {
                        continue;
                    } else if (aVar != null) {
                        return null;
                    } else {
                        aVar = aVar2;
                    }
                }
            }
            return aVar;
        }

        final C0075a a(C0075a aVar, al alVar) {
            int a2 = alVar.a(aVar.f2786a.f3748a);
            if (a2 == -1) {
                return aVar;
            }
            return new C0075a(aVar.f2786a, alVar, alVar.a(a2, this.h, false).f2832c);
        }

        public final C0075a a(t.a aVar) {
            return this.f2790b.get(aVar);
        }
    }

    public a(androidx.media2.exoplayer.external.util.b bVar) {
        this.f2785d = (androidx.media2.exoplayer.external.util.b) androidx.media2.exoplayer.external.util.a.a(bVar);
    }

    private b.a a(C0075a aVar) {
        androidx.media2.exoplayer.external.util.a.a(this.f2784c);
        C0075a aVar2 = aVar;
        if (aVar == null) {
            int c2 = this.f2784c.c();
            aVar2 = this.f2783b.a(c2);
            if (aVar2 == null) {
                al k = this.f2784c.k();
                if (!(c2 < k.b())) {
                    k = al.f2829a;
                }
                return a(k, c2, (t.a) null);
            }
        }
        return a(aVar2.f2787b, aVar2.f2788c, aVar2.f2786a);
    }

    @RequiresNonNull({"player"})
    private b.a a(al alVar, int i, t.a aVar) {
        if (alVar.a()) {
            aVar = null;
        }
        long a2 = this.f2785d.a();
        boolean z = true;
        boolean z2 = alVar == this.f2784c.k() && i == this.f2784c.c();
        long j = 0;
        if (aVar != null && aVar.a()) {
            if (!z2 || this.f2784c.h() != aVar.f3749b || this.f2784c.i() != aVar.f3750c) {
                z = false;
            }
            if (z) {
                j = this.f2784c.e();
            }
        } else if (z2) {
            j = this.f2784c.j();
        } else if (!alVar.a()) {
            j = androidx.media2.exoplayer.external.c.a(alVar.a(i, this.e, 0L).i);
        }
        return new b.a(a2, alVar, i, aVar, j, this.f2784c.e(), this.f2784c.g());
    }

    private b.a d(int i, t.a aVar) {
        androidx.media2.exoplayer.external.util.a.a(this.f2784c);
        if (aVar != null) {
            C0075a a2 = this.f2783b.a(aVar);
            return a2 != null ? a(a2) : a(al.f2829a, i, aVar);
        }
        al k = this.f2784c.k();
        if (!(i < k.b())) {
            k = al.f2829a;
        }
        return a(k, i, (t.a) null);
    }

    private b.a m() {
        return a(this.f2783b.f2792d);
    }

    private b.a n() {
        return a(this.f2783b.e);
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a() {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(int i) {
        b bVar = this.f2783b;
        bVar.f2792d = bVar.f2791c;
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.f, androidx.media2.exoplayer.external.video.g
    public final void a(int i, int i2, int i3, float f) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void a(int i, long j) {
        m();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.g
    public final void a(int i, long j, long j2) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void a(int i, t.a aVar) {
        b bVar = this.f2783b;
        C0075a aVar2 = new C0075a(aVar, bVar.f.a(aVar.f3748a) != -1 ? bVar.f : al.f2829a, i);
        bVar.f2789a.add(aVar2);
        bVar.f2790b.put(aVar, aVar2);
        bVar.f2791c = bVar.f2789a.get(0);
        if (bVar.f2789a.size() == 1 && !bVar.f.a()) {
            bVar.f2792d = bVar.f2791c;
        }
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void a(int i, t.a aVar, u.b bVar, u.c cVar) {
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void a(int i, t.a aVar, u.b bVar, u.c cVar, IOException iOException, boolean z) {
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void a(int i, t.a aVar, u.c cVar) {
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void a(Surface surface) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(ExoPlaybackException exoPlaybackException) {
        m();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void a(Format format) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(al alVar, int i) {
        b bVar = this.f2783b;
        for (int i2 = 0; i2 < bVar.f2789a.size(); i2++) {
            C0075a a2 = bVar.a(bVar.f2789a.get(i2), alVar);
            bVar.f2789a.set(i2, a2);
            bVar.f2790b.put(a2.f2786a, a2);
        }
        if (bVar.e != null) {
            bVar.e = bVar.a(bVar.e, alVar);
        }
        bVar.f = alVar;
        bVar.f2792d = bVar.f2791c;
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void a(androidx.media2.exoplayer.external.b.d dVar) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.metadata.d
    public final void a(Metadata metadata) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(androidx.media2.exoplayer.external.trackselection.f fVar) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void a(String str, long j, long j2) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(boolean z) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void a(boolean z, int i) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.ae.b
    public final void b() {
        if (this.f2783b.g) {
            b bVar = this.f2783b;
            bVar.g = false;
            bVar.f2792d = bVar.f2791c;
            l();
            Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.f, androidx.media2.exoplayer.external.audio.g
    public final void b(int i) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void b(int i, t.a aVar) {
        d(i, aVar);
        b bVar = this.f2783b;
        C0075a remove = bVar.f2790b.remove(aVar);
        boolean z = false;
        if (remove != null) {
            bVar.f2789a.remove(remove);
            if (bVar.e != null && aVar.equals(bVar.e.f2786a)) {
                bVar.e = bVar.f2789a.isEmpty() ? null : bVar.f2789a.get(0);
            }
            if (!bVar.f2789a.isEmpty()) {
                bVar.f2791c = bVar.f2789a.get(0);
            }
            z = true;
        }
        if (z) {
            Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void b(int i, t.a aVar, u.b bVar, u.c cVar) {
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.g
    public final void b(Format format) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.g
    public final void b(androidx.media2.exoplayer.external.b.d dVar) {
        m();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.g
    public final void b(String str, long j, long j2) {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.f
    public final void c() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void c(int i, t.a aVar) {
        b bVar = this.f2783b;
        bVar.e = bVar.f2790b.get(aVar);
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.u
    public final void c(int i, t.a aVar, u.b bVar, u.c cVar) {
        d(i, aVar);
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.g
    public final void c(androidx.media2.exoplayer.external.b.d dVar) {
        l();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.f
    public final void d() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.g
    public final void d(androidx.media2.exoplayer.external.b.d dVar) {
        m();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.f
    public final void e() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.c.a
    public final void f() {
        b bVar = this.f2783b;
        a(bVar.f2789a.isEmpty() ? null : bVar.f2789a.get(bVar.f2789a.size() - 1));
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.g
    public final void g() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.g
    public final void h() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.g
    public final void i() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.g
    public final void j() {
        n();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.g
    public final void k() {
        m();
        Iterator<androidx.media2.exoplayer.external.a.b> it2 = this.f2782a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    public final b.a l() {
        return a(this.f2783b.a());
    }
}
