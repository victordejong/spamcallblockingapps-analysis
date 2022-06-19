package androidx.media2.exoplayer.external.p062a;

import android.view.Surface;
import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AbstractC1409f;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.drm.AbstractC1464g;
import androidx.media2.exoplayer.external.metadata.AbstractC1672d;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.p062a.AbstractC1363b;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.AbstractC1845u;
import androidx.media2.exoplayer.external.trackselection.C1943f;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.video.AbstractC2047f;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: androidx.media2.exoplayer.external.a.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a.class */
public final class C1360a implements AbstractC1369ae.AbstractC1371b, AbstractC1409f, AbstractC1410g, AbstractC1464g, AbstractC1672d, AbstractC1845u, AbstractC1964c.AbstractC1965a, AbstractC2047f, AbstractC2048g {

    /* renamed from: c */
    public AbstractC1369ae f5081c;

    /* renamed from: d */
    private final AbstractC1999b f5082d;

    /* renamed from: a */
    public final CopyOnWriteArraySet<AbstractC1363b> f5079a = new CopyOnWriteArraySet<>();

    /* renamed from: b */
    public final C1362b f5080b = new C1362b();

    /* renamed from: e */
    private final AbstractC1383al.C1386b f5083e = new AbstractC1383al.C1386b();

    /* renamed from: androidx.media2.exoplayer.external.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a$a.class */
    public static final class C1361a {

        /* renamed from: a */
        public final AbstractC1842t.C1843a f5084a;

        /* renamed from: b */
        public final AbstractC1383al f5085b;

        /* renamed from: c */
        public final int f5086c;

        public C1361a(AbstractC1842t.C1843a c1843a, AbstractC1383al abstractC1383al, int i) {
            this.f5084a = c1843a;
            this.f5085b = abstractC1383al;
            this.f5086c = i;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/a/a$b.class */
    public static final class C1362b {

        /* renamed from: c */
        C1361a f5089c;

        /* renamed from: d */
        C1361a f5090d;

        /* renamed from: e */
        C1361a f5091e;

        /* renamed from: g */
        public boolean f5093g;

        /* renamed from: a */
        public final ArrayList<C1361a> f5087a = new ArrayList<>();

        /* renamed from: b */
        final HashMap<AbstractC1842t.C1843a, C1361a> f5088b = new HashMap<>();

        /* renamed from: h */
        private final AbstractC1383al.C1385a f5094h = new AbstractC1383al.C1385a();

        /* renamed from: f */
        AbstractC1383al f5092f = AbstractC1383al.f5203a;

        /* renamed from: a */
        public final C1361a m43158a() {
            if (this.f5087a.isEmpty() || this.f5092f.m43094a() || this.f5093g) {
                return null;
            }
            return this.f5087a.get(0);
        }

        /* renamed from: a */
        public final C1361a m43157a(int i) {
            C1361a c1361a = null;
            int i2 = 0;
            while (i2 < this.f5087a.size()) {
                C1361a c1361a2 = this.f5087a.get(i2);
                int mo42088a = this.f5092f.mo42088a(c1361a2.f5084a.f7356a);
                C1361a c1361a3 = c1361a;
                if (mo42088a != -1) {
                    c1361a3 = c1361a;
                    if (this.f5092f.mo42091a(mo42088a, this.f5094h, false).f5206c != i) {
                        continue;
                    } else if (c1361a != null) {
                        return null;
                    } else {
                        c1361a3 = c1361a2;
                    }
                }
                i2++;
                c1361a = c1361a3;
            }
            return c1361a;
        }

        /* renamed from: a */
        final C1361a m43156a(C1361a c1361a, AbstractC1383al abstractC1383al) {
            int mo42088a = abstractC1383al.mo42088a(c1361a.f5084a.f7356a);
            if (mo42088a == -1) {
                return c1361a;
            }
            return new C1361a(c1361a.f5084a, abstractC1383al, abstractC1383al.mo42091a(mo42088a, this.f5094h, false).f5206c);
        }

        /* renamed from: a */
        public final C1361a m43155a(AbstractC1842t.C1843a c1843a) {
            return this.f5088b.get(c1843a);
        }
    }

    public C1360a(AbstractC1999b abstractC1999b) {
        this.f5082d = (AbstractC1999b) C1993a.m41690a(abstractC1999b);
    }

    /* renamed from: a */
    private AbstractC1363b.C1364a m43164a(C1361a c1361a) {
        C1993a.m41690a(this.f5081c);
        C1361a c1361a2 = c1361a;
        if (c1361a == null) {
            int mo42489c = this.f5081c.mo42489c();
            c1361a2 = this.f5080b.m43157a(mo42489c);
            if (c1361a2 == null) {
                AbstractC1383al mo42481k = this.f5081c.mo42481k();
                if (!(mo42489c < mo42481k.mo42094b())) {
                    mo42481k = AbstractC1383al.f5203a;
                }
                return m43163a(mo42481k, mo42489c, (AbstractC1842t.C1843a) null);
            }
        }
        return m43163a(c1361a2.f5085b, c1361a2.f5086c, c1361a2.f5084a);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    @RequiresNonNull({"player"})
    /* renamed from: a */
    private AbstractC1363b.C1364a m43163a(AbstractC1383al abstractC1383al, int i, AbstractC1842t.C1843a c1843a) {
        if (abstractC1383al.m43094a()) {
            c1843a = null;
        }
        long mo41494a = this.f5082d.mo41494a();
        boolean z = abstractC1383al == this.f5081c.mo42481k() && i == this.f5081c.mo42489c();
        char c = 0;
        if (c1843a != null && c1843a.m42064a()) {
            if (z && this.f5081c.mo42484h() == c1843a.f7357b && this.f5081c.mo42483i() == c1843a.f7358c) {
                c = this.f5081c.mo42487e();
            }
        } else if (z) {
            c = this.f5081c.mo42482j();
        } else if (!abstractC1383al.m43094a()) {
            c = C1446c.m42894a(abstractC1383al.mo42095a(i, this.f5083e, 0L).f5218i);
        }
        return new AbstractC1363b.C1364a(mo41494a, abstractC1383al, i, c1843a, c, this.f5081c.mo42487e(), this.f5081c.mo42485g());
    }

    /* renamed from: d */
    private AbstractC1363b.C1364a m43162d(int i, AbstractC1842t.C1843a c1843a) {
        C1993a.m41690a(this.f5081c);
        if (c1843a != null) {
            C1361a m43155a = this.f5080b.m43155a(c1843a);
            return m43155a != null ? m43164a(m43155a) : m43163a(AbstractC1383al.f5203a, i, c1843a);
        }
        AbstractC1383al mo42481k = this.f5081c.mo42481k();
        if (!(i < mo42481k.mo42094b())) {
            mo42481k = AbstractC1383al.f5203a;
        }
        return m43163a(mo42481k, i, (AbstractC1842t.C1843a) null);
    }

    /* renamed from: m */
    private AbstractC1363b.C1364a m43160m() {
        return m43164a(this.f5080b.f5090d);
    }

    /* renamed from: n */
    private AbstractC1363b.C1364a m43159n() {
        return m43164a(this.f5080b.f5091e);
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo43097a() {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo41243a(int i) {
        C1362b c1362b = this.f5080b;
        c1362b.f5090d = c1362b.f5089c;
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2047f, androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41242a(int i, int i2, int i3, float f) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41241a(int i, long j) {
        m43160m();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: a */
    public final void mo43006a(int i, long j, long j2) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: a */
    public final void mo42062a(int i, AbstractC1842t.C1843a c1843a) {
        C1362b c1362b = this.f5080b;
        C1361a c1361a = new C1361a(c1843a, c1362b.f5092f.mo42088a(c1843a.f7356a) != -1 ? c1362b.f5092f : AbstractC1383al.f5203a, i);
        c1362b.f5087a.add(c1361a);
        c1362b.f5088b.put(c1843a, c1361a);
        c1362b.f5089c = c1362b.f5087a.get(0);
        if (c1362b.f5087a.size() == 1 && !c1362b.f5092f.m43094a()) {
            c1362b.f5090d = c1362b.f5089c;
        }
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: a */
    public final void mo42061a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: a */
    public final void mo42060a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c, IOException iOException, boolean z) {
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: a */
    public final void mo42059a(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1849c c1849c) {
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41240a(Surface surface) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo41239a(ExoPlaybackException exoPlaybackException) {
        m43160m();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41238a(Format format) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo43096a(AbstractC1383al abstractC1383al, int i) {
        C1362b c1362b = this.f5080b;
        for (int i2 = 0; i2 < c1362b.f5087a.size(); i2++) {
            C1361a m43156a = c1362b.m43156a(c1362b.f5087a.get(i2), abstractC1383al);
            c1362b.f5087a.set(i2, m43156a);
            c1362b.f5088b.put(m43156a.f5084a, m43156a);
        }
        if (c1362b.f5091e != null) {
            c1362b.f5091e = c1362b.m43156a(c1362b.f5091e, abstractC1383al);
        }
        c1362b.f5092f = abstractC1383al;
        c1362b.f5090d = c1362b.f5089c;
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41237a(C1441d c1441d) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1672d
    /* renamed from: a */
    public final void mo41236a(Metadata metadata) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo41235a(C1943f c1943f) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: a */
    public final void mo41234a(String str, long j, long j2) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo43095a(boolean z) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: a */
    public final void mo41233a(boolean z, int i) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
    /* renamed from: b */
    public final void mo41232b() {
        if (this.f5080b.f5093g) {
            C1362b c1362b = this.f5080b;
            c1362b.f5093g = false;
            c1362b.f5090d = c1362b.f5089c;
            m43161l();
            Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f, androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: b */
    public final void mo41231b(int i) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: b */
    public final void mo42058b(int i, AbstractC1842t.C1843a c1843a) {
        m43162d(i, c1843a);
        C1362b c1362b = this.f5080b;
        C1361a remove = c1362b.f5088b.remove(c1843a);
        boolean z = false;
        if (remove != null) {
            c1362b.f5087a.remove(remove);
            if (c1362b.f5091e != null && c1843a.equals(c1362b.f5091e.f5084a)) {
                c1362b.f5091e = c1362b.f5087a.isEmpty() ? null : c1362b.f5087a.get(0);
            }
            if (!c1362b.f5087a.isEmpty()) {
                c1362b.f5089c = c1362b.f5087a.get(0);
            }
            z = true;
        }
        if (z) {
            Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: b */
    public final void mo42057b(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: b */
    public final void mo43005b(Format format) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
    /* renamed from: b */
    public final void mo41230b(C1441d c1441d) {
        m43160m();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: b */
    public final void mo43004b(String str, long j, long j2) {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f
    /* renamed from: c */
    public final void mo41229c() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: c */
    public final void mo42056c(int i, AbstractC1842t.C1843a c1843a) {
        C1362b c1362b = this.f5080b;
        c1362b.f5091e = c1362b.f5088b.get(c1843a);
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.source.AbstractC1845u
    /* renamed from: c */
    public final void mo42055c(int i, AbstractC1842t.C1843a c1843a, AbstractC1845u.C1848b c1848b, AbstractC1845u.C1849c c1849c) {
        m43162d(i, c1843a);
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: c */
    public final void mo43003c(C1441d c1441d) {
        m43161l();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1409f
    /* renamed from: d */
    public final void mo41228d() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
    /* renamed from: d */
    public final void mo43002d(C1441d c1441d) {
        m43160m();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.video.AbstractC2047f
    /* renamed from: e */
    public final void mo41424e() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1964c.AbstractC1965a
    /* renamed from: f */
    public final void mo41744f() {
        C1362b c1362b = this.f5080b;
        m43164a(c1362b.f5087a.isEmpty() ? null : c1362b.f5087a.get(c1362b.f5087a.size() - 1));
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1464g
    /* renamed from: g */
    public final void mo42875g() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1464g
    /* renamed from: h */
    public final void mo42874h() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1464g
    /* renamed from: i */
    public final void mo42873i() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1464g
    /* renamed from: j */
    public final void mo42872j() {
        m43159n();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1464g
    /* renamed from: k */
    public final void mo42871k() {
        m43160m();
        Iterator<AbstractC1363b> it2 = this.f5079a.iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    /* renamed from: l */
    public final AbstractC1363b.C1364a m43161l() {
        return m43164a(this.f5080b.m43158a());
    }
}
