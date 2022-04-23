package p012b.p076s.p078b.p079a.p082o0;

import android.view.Surface;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.C1221c0;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1210g;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p082o0.AbstractC1261b;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1279f;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1286m;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1324h;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1519d;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.o0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/o0/a.class */
public class C1257a implements AbstractC1223d0.AbstractC1225b, AbstractC1519d, AbstractC1286m, AbstractC1218o, AbstractC1533a0, AbstractC1679c.AbstractC1680a, AbstractC1324h, AbstractC1210g, AbstractC1279f {

    /* renamed from: a */
    public final CopyOnWriteArraySet<AbstractC1261b> f5030a;

    /* renamed from: b */
    public final AbstractC1162b f5031b;

    /* renamed from: c */
    public final AbstractC1252n0.C1255c f5032c;

    /* renamed from: d */
    public final C1260c f5033d;

    /* renamed from: e */
    public AbstractC1223d0 f5034e;

    /* renamed from: b.s.b.a.o0.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/o0/a$a.class */
    public static class C1258a {
        /* renamed from: a */
        public C1257a m34006a(AbstractC1223d0 d0Var, AbstractC1162b bVar) {
            return new C1257a(d0Var, bVar);
        }
    }

    /* renamed from: b.s.b.a.o0.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/o0/a$b.class */
    public static final class C1259b {

        /* renamed from: a */
        public final AbstractC1634r.C1635a f5035a;

        /* renamed from: b */
        public final AbstractC1252n0 f5036b;

        /* renamed from: c */
        public final int f5037c;

        public C1259b(AbstractC1634r.C1635a aVar, AbstractC1252n0 n0Var, int i) {
            this.f5035a = aVar;
            this.f5036b = n0Var;
            this.f5037c = i;
        }
    }

    /* renamed from: b.s.b.a.o0.a$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/o0/a$c.class */
    public static final class C1260c {

        /* renamed from: d */
        public C1259b f5041d;

        /* renamed from: e */
        public C1259b f5042e;

        /* renamed from: g */
        public boolean f5044g;

        /* renamed from: a */
        public final ArrayList<C1259b> f5038a = new ArrayList<>();

        /* renamed from: b */
        public final HashMap<AbstractC1634r.C1635a, C1259b> f5039b = new HashMap<>();

        /* renamed from: c */
        public final AbstractC1252n0.C1254b f5040c = new AbstractC1252n0.C1254b();

        /* renamed from: f */
        public AbstractC1252n0 f5043f = AbstractC1252n0.f5012a;

        /* renamed from: a */
        public C1259b m34005a() {
            return this.f5041d;
        }

        /* renamed from: a */
        public final C1259b m34001a(C1259b bVar, AbstractC1252n0 n0Var) {
            int a = n0Var.mo32715a(bVar.f5035a.f6755a);
            if (a == -1) {
                return bVar;
            }
            return new C1259b(bVar.f5035a, n0Var, n0Var.m34047a(a, this.f5040c).f5015c);
        }

        /* renamed from: a */
        public C1259b m33999a(AbstractC1634r.C1635a aVar) {
            return this.f5039b.get(aVar);
        }

        /* renamed from: a */
        public void m34004a(int i) {
            m33989h();
        }

        /* renamed from: a */
        public void m34003a(int i, AbstractC1634r.C1635a aVar) {
            C1259b bVar = new C1259b(aVar, this.f5043f.mo32715a(aVar.f6755a) != -1 ? this.f5043f : AbstractC1252n0.f5012a, i);
            this.f5038a.add(bVar);
            this.f5039b.put(aVar, bVar);
            if (this.f5038a.size() == 1 && !this.f5043f.m34040c()) {
                m33989h();
            }
        }

        /* renamed from: a */
        public void m34002a(AbstractC1252n0 n0Var) {
            for (int i = 0; i < this.f5038a.size(); i++) {
                C1259b a = m34001a(this.f5038a.get(i), n0Var);
                this.f5038a.set(i, a);
                this.f5039b.put(a.f5035a, a);
            }
            C1259b bVar = this.f5042e;
            if (bVar != null) {
                this.f5042e = m34001a(bVar, n0Var);
            }
            this.f5043f = n0Var;
            m33989h();
        }

        /* renamed from: b */
        public C1259b m33998b() {
            C1259b bVar;
            if (this.f5038a.isEmpty()) {
                bVar = null;
            } else {
                ArrayList<C1259b> arrayList = this.f5038a;
                bVar = arrayList.get(arrayList.size() - 1);
            }
            return bVar;
        }

        /* renamed from: b */
        public C1259b m33997b(int i) {
            C1259b bVar = null;
            for (int i2 = 0; i2 < this.f5038a.size(); i2++) {
                C1259b bVar2 = this.f5038a.get(i2);
                int a = this.f5043f.mo32715a(bVar2.f5035a.f6755a);
                bVar = bVar;
                if (a != -1) {
                    bVar = bVar;
                    if (this.f5043f.m34047a(a, this.f5040c).f5015c != i) {
                        continue;
                    } else if (bVar != null) {
                        return null;
                    } else {
                        bVar = bVar2;
                    }
                }
            }
            return bVar;
        }

        /* renamed from: b */
        public boolean m33996b(AbstractC1634r.C1635a aVar) {
            C1259b remove = this.f5039b.remove(aVar);
            if (remove == null) {
                return false;
            }
            this.f5038a.remove(remove);
            C1259b bVar = this.f5042e;
            if (bVar == null || !aVar.equals(bVar.f5035a)) {
                return true;
            }
            this.f5042e = this.f5038a.isEmpty() ? null : this.f5038a.get(0);
            return true;
        }

        /* renamed from: c */
        public C1259b m33995c() {
            return (this.f5038a.isEmpty() || this.f5043f.m34040c() || this.f5044g) ? null : this.f5038a.get(0);
        }

        /* renamed from: c */
        public void m33994c(AbstractC1634r.C1635a aVar) {
            this.f5042e = this.f5039b.get(aVar);
        }

        /* renamed from: d */
        public C1259b m33993d() {
            return this.f5042e;
        }

        /* renamed from: e */
        public boolean m33992e() {
            return this.f5044g;
        }

        /* renamed from: f */
        public void m33991f() {
            this.f5044g = false;
            m33989h();
        }

        /* renamed from: g */
        public void m33990g() {
            this.f5044g = true;
        }

        /* renamed from: h */
        public final void m33989h() {
            if (!this.f5038a.isEmpty()) {
                this.f5041d = this.f5038a.get(0);
            }
        }
    }

    public C1257a(AbstractC1223d0 d0Var, AbstractC1162b bVar) {
        if (d0Var != null) {
            this.f5034e = d0Var;
        }
        C1160a.m34522a(bVar);
        this.f5031b = bVar;
        this.f5030a = new CopyOnWriteArraySet<>();
        this.f5033d = new C1260c();
        this.f5032c = new AbstractC1252n0.C1255c();
    }

    @RequiresNonNull({"player"})
    /* renamed from: a */
    public AbstractC1261b.C1262a m34017a(AbstractC1252n0 n0Var, int i, AbstractC1634r.C1635a aVar) {
        if (n0Var.m34040c()) {
            aVar = null;
        }
        long a = this.f5031b.mo34313a();
        boolean z = true;
        boolean z2 = n0Var == this.f5034e.mo34070e() && i == this.f5034e.mo34079b();
        long j = 0;
        if (aVar != null && aVar.m32501a()) {
            if (!z2 || this.f5034e.mo34062i() != aVar.f6756b || this.f5034e.mo34064h() != aVar.f6757c) {
                z = false;
            }
            if (z) {
                j = this.f5034e.getCurrentPosition();
            }
        } else if (z2) {
            j = this.f5034e.mo34074c();
        } else if (!n0Var.m34040c()) {
            j = n0Var.m34045a(i, this.f5032c).m34024a();
        }
        return new AbstractC1261b.C1262a(a, n0Var, i, aVar, j, this.f5034e.getCurrentPosition(), this.f5034e.mo34066g());
    }

    /* renamed from: a */
    public final AbstractC1261b.C1262a m34015a(C1259b bVar) {
        C1160a.m34522a(this.f5034e);
        C1259b bVar2 = bVar;
        if (bVar == null) {
            int b = this.f5034e.mo34079b();
            bVar2 = this.f5033d.m33997b(b);
            if (bVar2 == null) {
                AbstractC1252n0 e = this.f5034e.mo34070e();
                if (!(b < e.mo32713b())) {
                    e = AbstractC1252n0.f5012a;
                }
                return m34017a(e, b, (AbstractC1634r.C1635a) null);
            }
        }
        return m34017a(bVar2.f5036b, bVar2.f5037c, bVar2.f5035a);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: a */
    public final void mo32193a() {
        if (this.f5033d.m33992e()) {
            this.f5033d.m33991f();
            AbstractC1261b.C1262a i = m34010i();
            Iterator<AbstractC1261b> it = this.f5030a.iterator();
            while (it.hasNext()) {
                it.next().m33988a(i);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1279f
    /* renamed from: a */
    public void mo32192a(float f) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33987a(j, f);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: a */
    public final void mo33901a(int i) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33965b(j, i);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1210g
    /* renamed from: a */
    public void mo34019a(int i, int i2) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33985a(j, i, i2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: a */
    public final void mo32190a(int i, int i2, int i3, float f) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33984a(j, i, i2, i3, f);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: a */
    public final void mo32189a(int i, long j) {
        AbstractC1261b.C1262a g = m34012g();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33983a(g, i, j);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1679c.AbstractC1680a
    /* renamed from: a */
    public final void mo32394a(int i, long j, long j2) {
        AbstractC1261b.C1262a h = m34011h();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33982a(h, i, j, j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: a */
    public final void mo32870a(int i, AbstractC1634r.C1635a aVar) {
        this.f5033d.m34003a(i, aVar);
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33955g(d);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: a */
    public final void mo32869a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33972a(d, bVar, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: a */
    public final void mo32868a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar, IOException iOException, boolean z) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33971a(d, bVar, cVar, iOException, z);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: a */
    public final void mo32867a(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1537c cVar) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33970a(d, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: a */
    public final void mo32188a(Surface surface) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33978a(j, surface);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: a */
    public final void mo32187a(ExoPlaybackException exoPlaybackException) {
        AbstractC1261b.C1262a h = exoPlaybackException.type == 0 ? m34011h() : m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33977a(h, exoPlaybackException);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: a */
    public final void mo33900a(Format format) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33981a(j, 1, format);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1519d
    /* renamed from: a */
    public final void mo32186a(Metadata metadata) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33976a(i, metadata);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: a */
    public final void mo32185a(TrackGroupArray trackGroupArray, C1671j jVar) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33975a(i, trackGroupArray, jVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: a */
    public final void mo34018a(C1221c0 c0Var) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33974a(i, c0Var);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: a */
    public final void mo34016a(AbstractC1252n0 n0Var, Object obj, int i) {
        this.f5033d.m34002a(n0Var);
        AbstractC1261b.C1262a i2 = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33986a(i2, i);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1279f
    /* renamed from: a */
    public void mo32184a(C1271c cVar) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33973a(j, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: a */
    public final void mo32183a(C1310c cVar) {
        AbstractC1261b.C1262a g = m34012g();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33980a(g, 2, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1324h
    /* renamed from: a */
    public final void mo33699a(Exception exc) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33969a(j, exc);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: a */
    public final void mo32182a(String str, long j, long j2) {
        AbstractC1261b.C1262a j3 = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33979a(j3, 2, str, j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1324h
    /* renamed from: b */
    public final void mo33698b() {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33953i(j);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    /* renamed from: b */
    public final void mo32181b(int i) {
        this.f5033d.m34004a(i);
        AbstractC1261b.C1262a i2 = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33960c(i2, i);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: b */
    public final void mo33899b(int i, long j, long j2) {
        AbstractC1261b.C1262a j3 = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33964b(j3, i, j, j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: b */
    public final void mo32865b(int i, AbstractC1634r.C1635a aVar) {
        this.f5033d.m33994c(aVar);
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33966b(d);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: b */
    public final void mo32864b(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33959c(d, bVar, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: b */
    public final void mo32180b(Format format) {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33981a(j, 2, format);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
    /* renamed from: b */
    public final void mo32179b(C1310c cVar) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33963b(i, 2, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: b */
    public final void mo33898b(String str, long j, long j2) {
        AbstractC1261b.C1262a j3 = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33979a(j3, 1, str, j2);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1324h
    /* renamed from: c */
    public final void mo33697c() {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33961c(j);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: c */
    public final void mo32863c(int i, AbstractC1634r.C1635a aVar) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        if (this.f5033d.m33996b(aVar)) {
            Iterator<AbstractC1261b> it = this.f5030a.iterator();
            while (it.hasNext()) {
                it.next().m33958d(d);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1533a0
    /* renamed from: c */
    public final void mo32862c(int i, AbstractC1634r.C1635a aVar, AbstractC1533a0.C1536b bVar, AbstractC1533a0.C1537c cVar) {
        AbstractC1261b.C1262a d = m34013d(i, aVar);
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33962b(d, bVar, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: c */
    public final void mo33897c(C1310c cVar) {
        AbstractC1261b.C1262a g = m34012g();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33980a(g, 1, cVar);
        }
    }

    /* renamed from: d */
    public final AbstractC1261b.C1262a m34013d(int i, AbstractC1634r.C1635a aVar) {
        C1160a.m34522a(this.f5034e);
        if (aVar != null) {
            C1259b a = this.f5033d.m33999a(aVar);
            return a != null ? m34015a(a) : m34017a(AbstractC1252n0.f5012a, i, aVar);
        }
        AbstractC1252n0 e = this.f5034e.mo34070e();
        if (!(i < e.mo32713b())) {
            e = AbstractC1252n0.f5012a;
        }
        return m34017a(e, i, (AbstractC1634r.C1635a) null);
    }

    @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1210g
    /* renamed from: d */
    public final void mo34014d() {
    }

    @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
    /* renamed from: d */
    public final void mo33896d(C1310c cVar) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33963b(i, 1, cVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1324h
    /* renamed from: e */
    public final void mo33696e() {
        AbstractC1261b.C1262a g = m34012g();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33954h(g);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1324h
    /* renamed from: f */
    public final void mo33695f() {
        AbstractC1261b.C1262a j = m34009j();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33956f(j);
        }
    }

    /* renamed from: g */
    public final AbstractC1261b.C1262a m34012g() {
        return m34015a(this.f5033d.m34005a());
    }

    /* renamed from: h */
    public final AbstractC1261b.C1262a m34011h() {
        return m34015a(this.f5033d.m33998b());
    }

    /* renamed from: i */
    public final AbstractC1261b.C1262a m34010i() {
        return m34015a(this.f5033d.m33995c());
    }

    /* renamed from: j */
    public final AbstractC1261b.C1262a m34009j() {
        return m34015a(this.f5033d.m33993d());
    }

    /* renamed from: k */
    public final void m34008k() {
        if (!this.f5033d.m33992e()) {
            AbstractC1261b.C1262a i = m34010i();
            this.f5033d.m33990g();
            Iterator<AbstractC1261b> it = this.f5030a.iterator();
            while (it.hasNext()) {
                it.next().m33957e(i);
            }
        }
    }

    /* renamed from: l */
    public final void m34007l() {
        for (C1259b bVar : new ArrayList(this.f5033d.f5038a)) {
            mo32863c(bVar.f5037c, bVar.f5035a);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    public final void onLoadingChanged(boolean z) {
        AbstractC1261b.C1262a i = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33968a(i, z);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
    public final void onPlayerStateChanged(boolean z, int i) {
        AbstractC1261b.C1262a i2 = m34010i();
        Iterator<AbstractC1261b> it = this.f5030a.iterator();
        while (it.hasNext()) {
            it.next().m33967a(i2, z, i);
        }
    }
}
