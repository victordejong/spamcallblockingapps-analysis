package p012b.p076s.p078b.p079a;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.util.PriorityTaskManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1210g;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p082o0.C1257a;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1279f;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1286m;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p083p0.C1275e;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.C1333o;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1519d;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p107x0.AbstractC1647b;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1673l;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.m0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/m0.class */
public class C1248m0 extends AbstractC1156a implements AbstractC1229f {

    /* renamed from: A */
    public AbstractC1634r f4981A;

    /* renamed from: B */
    public boolean f4982B;

    /* renamed from: C */
    public PriorityTaskManager f4983C;

    /* renamed from: D */
    public boolean f4984D;

    /* renamed from: b */
    public final AbstractC1236h0[] f4985b;

    /* renamed from: c */
    public final C1245m f4986c;

    /* renamed from: d */
    public final Handler f4987d;

    /* renamed from: e */
    public final SurfaceHolder$CallbackC1250b f4988e;

    /* renamed from: f */
    public final CopyOnWriteArraySet<AbstractC1210g> f4989f;

    /* renamed from: g */
    public final CopyOnWriteArraySet<AbstractC1279f> f4990g;

    /* renamed from: h */
    public final CopyOnWriteArraySet<AbstractC1519d> f4991h;

    /* renamed from: i */
    public final CopyOnWriteArraySet<AbstractC1218o> f4992i;

    /* renamed from: j */
    public final CopyOnWriteArraySet<AbstractC1286m> f4993j;

    /* renamed from: k */
    public final AbstractC1679c f4994k;

    /* renamed from: l */
    public final C1257a f4995l;

    /* renamed from: m */
    public final C1275e f4996m;

    /* renamed from: n */
    public Format f4997n;

    /* renamed from: o */
    public Format f4998o;

    /* renamed from: p */
    public Surface f4999p;

    /* renamed from: q */
    public boolean f5000q;

    /* renamed from: r */
    public SurfaceHolder f5001r;

    /* renamed from: s */
    public TextureView f5002s;

    /* renamed from: t */
    public int f5003t;

    /* renamed from: u */
    public int f5004u;

    /* renamed from: v */
    public C1310c f5005v;

    /* renamed from: w */
    public C1310c f5006w;

    /* renamed from: x */
    public int f5007x;

    /* renamed from: y */
    public C1271c f5008y;

    /* renamed from: z */
    public float f5009z;

    /* renamed from: b.s.b.a.m0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/m0$b.class */
    public final class SurfaceHolder$CallbackC1250b implements AbstractC1218o, AbstractC1286m, AbstractC1647b, AbstractC1519d, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, C1275e.AbstractC1278c, AbstractC1223d0.AbstractC1225b {
        public SurfaceHolder$CallbackC1250b() {
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32193a() {
            AbstractC1228e0.m34180a(this);
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1275e.AbstractC1278c
        /* renamed from: a */
        public void mo33903a(float f) {
            C1248m0.this.m34049u();
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: a */
        public void mo33901a(int i) {
            if (C1248m0.this.f5007x != i) {
                C1248m0.this.f5007x = i;
                Iterator it = C1248m0.this.f4990g.iterator();
                while (it.hasNext()) {
                    AbstractC1279f fVar = (AbstractC1279f) it.next();
                    if (!C1248m0.this.f4993j.contains(fVar)) {
                        fVar.mo32191a(i);
                    }
                }
                Iterator it2 = C1248m0.this.f4993j.iterator();
                while (it2.hasNext()) {
                    ((AbstractC1286m) it2.next()).mo33901a(i);
                }
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32190a(int i, int i2, int i3, float f) {
            Iterator it = C1248m0.this.f4989f.iterator();
            while (it.hasNext()) {
                AbstractC1210g gVar = (AbstractC1210g) it.next();
                if (!C1248m0.this.f4992i.contains(gVar)) {
                    gVar.m34211a(i, i2, i3, f);
                }
            }
            Iterator it2 = C1248m0.this.f4992i.iterator();
            while (it2.hasNext()) {
                ((AbstractC1218o) it2.next()).mo32190a(i, i2, i3, f);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32189a(int i, long j) {
            Iterator it = C1248m0.this.f4992i.iterator();
            while (it.hasNext()) {
                ((AbstractC1218o) it.next()).mo32189a(i, j);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32188a(Surface surface) {
            if (C1248m0.this.f4999p == surface) {
                Iterator it = C1248m0.this.f4989f.iterator();
                while (it.hasNext()) {
                    ((AbstractC1210g) it.next()).mo34014d();
                }
            }
            Iterator it2 = C1248m0.this.f4992i.iterator();
            while (it2.hasNext()) {
                ((AbstractC1218o) it2.next()).mo32188a(surface);
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32187a(ExoPlaybackException exoPlaybackException) {
            AbstractC1228e0.m34178a(this, exoPlaybackException);
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: a */
        public void mo33900a(Format format) {
            C1248m0.this.f4998o = format;
            Iterator it = C1248m0.this.f4993j.iterator();
            while (it.hasNext()) {
                ((AbstractC1286m) it.next()).mo33900a(format);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1519d
        /* renamed from: a */
        public void mo32186a(Metadata metadata) {
            Iterator it = C1248m0.this.f4991h.iterator();
            while (it.hasNext()) {
                ((AbstractC1519d) it.next()).mo32186a(metadata);
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32185a(TrackGroupArray trackGroupArray, C1671j jVar) {
            AbstractC1228e0.m34177a(this, trackGroupArray, jVar);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo34018a(C1221c0 c0Var) {
            AbstractC1228e0.m34176a(this, c0Var);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo34016a(AbstractC1252n0 n0Var, Object obj, int i) {
            AbstractC1228e0.m34175a(this, n0Var, obj, i);
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32183a(C1310c cVar) {
            Iterator it = C1248m0.this.f4992i.iterator();
            while (it.hasNext()) {
                ((AbstractC1218o) it.next()).mo32183a(cVar);
            }
            C1248m0.this.f4997n = null;
            C1248m0.this.f5005v = null;
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32182a(String str, long j, long j2) {
            Iterator it = C1248m0.this.f4992i.iterator();
            while (it.hasNext()) {
                ((AbstractC1218o) it.next()).mo32182a(str, j, j2);
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: b */
        public void mo32181b(int i) {
            AbstractC1228e0.m34179a(this, i);
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: b */
        public void mo33899b(int i, long j, long j2) {
            Iterator it = C1248m0.this.f4993j.iterator();
            while (it.hasNext()) {
                ((AbstractC1286m) it.next()).mo33899b(i, j, j2);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: b */
        public void mo32180b(Format format) {
            C1248m0.this.f4997n = format;
            Iterator it = C1248m0.this.f4992i.iterator();
            while (it.hasNext()) {
                ((AbstractC1218o) it.next()).mo32180b(format);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: b */
        public void mo32179b(C1310c cVar) {
            C1248m0.this.f5005v = cVar;
            Iterator it = C1248m0.this.f4992i.iterator();
            while (it.hasNext()) {
                ((AbstractC1218o) it.next()).mo32179b(cVar);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: b */
        public void mo33898b(String str, long j, long j2) {
            Iterator it = C1248m0.this.f4993j.iterator();
            while (it.hasNext()) {
                ((AbstractC1286m) it.next()).mo33898b(str, j, j2);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1275e.AbstractC1278c
        /* renamed from: c */
        public void mo33902c(int i) {
            C1248m0 m0Var = C1248m0.this;
            m0Var.m34080a(m0Var.m34057m(), i);
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: c */
        public void mo33897c(C1310c cVar) {
            Iterator it = C1248m0.this.f4993j.iterator();
            while (it.hasNext()) {
                ((AbstractC1286m) it.next()).mo33897c(cVar);
            }
            C1248m0.this.f4998o = null;
            C1248m0.this.f5006w = null;
            C1248m0.this.f5007x = 0;
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1286m
        /* renamed from: d */
        public void mo33896d(C1310c cVar) {
            C1248m0.this.f5006w = cVar;
            Iterator it = C1248m0.this.f4993j.iterator();
            while (it.hasNext()) {
                ((AbstractC1286m) it.next()).mo33896d(cVar);
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        public void onLoadingChanged(boolean z) {
            if (C1248m0.this.f4983C == null) {
                return;
            }
            if (z && !C1248m0.this.f4984D) {
                C1248m0.this.f4983C.m37889a(0);
                C1248m0.this.f4984D = true;
            } else if (!z && C1248m0.this.f4984D) {
                C1248m0.this.f4983C.m37888b(0);
                C1248m0.this.f4984D = false;
            }
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        public void onPlayerStateChanged(boolean z, int i) {
            AbstractC1228e0.m34173a(this, z, i);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C1248m0.this.m34099a(new Surface(surfaceTexture), true);
            C1248m0.this.m34102a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C1248m0.this.m34099a((Surface) null, true);
            C1248m0.this.m34102a(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C1248m0.this.m34102a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C1248m0.this.m34102a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            C1248m0.this.m34099a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C1248m0.this.m34099a((Surface) null, false);
            C1248m0.this.m34102a(0, 0);
        }
    }

    public C1248m0(Context context, AbstractC1242k0 k0Var, AbstractC1673l lVar, AbstractC1645x xVar, AbstractC1327k<C1333o> kVar, AbstractC1679c cVar, C1257a.C1258a aVar, Looper looper) {
        this(context, k0Var, lVar, xVar, kVar, cVar, aVar, AbstractC1162b.f4682a, looper);
    }

    public C1248m0(Context context, AbstractC1242k0 k0Var, AbstractC1673l lVar, AbstractC1645x xVar, AbstractC1327k<C1333o> kVar, AbstractC1679c cVar, C1257a.C1258a aVar, AbstractC1162b bVar, Looper looper) {
        this.f4994k = cVar;
        this.f4988e = new SurfaceHolder$CallbackC1250b();
        this.f4989f = new CopyOnWriteArraySet<>();
        this.f4990g = new CopyOnWriteArraySet<>();
        new CopyOnWriteArraySet();
        this.f4991h = new CopyOnWriteArraySet<>();
        this.f4992i = new CopyOnWriteArraySet<>();
        this.f4993j = new CopyOnWriteArraySet<>();
        Handler handler = new Handler(looper);
        this.f4987d = handler;
        SurfaceHolder$CallbackC1250b bVar2 = this.f4988e;
        this.f4985b = k0Var.mo32134a(handler, bVar2, bVar2, bVar2, bVar2, kVar);
        this.f5009z = 1.0f;
        this.f5007x = 0;
        this.f5008y = C1271c.f5062e;
        Collections.emptyList();
        C1245m mVar = new C1245m(this.f4985b, lVar, xVar, cVar, bVar, looper);
        this.f4986c = mVar;
        C1257a a = aVar.m34006a(mVar, bVar);
        this.f4995l = a;
        m34096a((AbstractC1223d0.AbstractC1225b) a);
        m34096a(this.f4988e);
        this.f4992i.add(this.f4995l);
        this.f4989f.add(this.f4995l);
        this.f4993j.add(this.f4995l);
        this.f4990g.add(this.f4995l);
        m34084a(this.f4995l);
        cVar.mo32368a(this.f4987d, this.f4995l);
        if (kVar instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) kVar).m38107a(this.f4987d, this.f4995l);
        }
        this.f4996m = new C1275e(context, this.f4988e);
    }

    /* renamed from: a */
    public void m34103a(float f) {
        m34048v();
        float a = C1167d0.m34496a(f, 0.0f, 1.0f);
        if (this.f5009z != a) {
            this.f5009z = a;
            m34049u();
            Iterator<AbstractC1279f> it = this.f4990g.iterator();
            while (it.hasNext()) {
                it.next().mo32192a(a);
            }
        }
    }

    /* renamed from: a */
    public final void m34102a(int i, int i2) {
        if (i != this.f5003t || i2 != this.f5004u) {
            this.f5003t = i;
            this.f5004u = i2;
            Iterator<AbstractC1210g> it = this.f4989f.iterator();
            while (it.hasNext()) {
                it.next().mo34019a(i, i2);
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: a */
    public void mo34101a(int i, long j) {
        m34048v();
        this.f4995l.m34008k();
        this.f4986c.mo34101a(i, j);
    }

    /* renamed from: a */
    public void m34100a(Surface surface) {
        m34048v();
        m34050t();
        int i = 0;
        m34099a(surface, false);
        if (surface != null) {
            i = -1;
        }
        m34102a(i, i);
    }

    /* renamed from: a */
    public final void m34099a(Surface surface, boolean z) {
        AbstractC1236h0[] h0VarArr;
        ArrayList<C1230f0> arrayList = new ArrayList();
        for (AbstractC1236h0 h0Var : this.f4985b) {
            if (h0Var.mo34141e() == 2) {
                C1230f0 a = this.f4986c.m34131a(h0Var);
                a.m34171a(1);
                a.m34170a(surface);
                a.m34159k();
                arrayList.add(a);
            }
        }
        Surface surface2 = this.f4999p;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (C1230f0 f0Var : arrayList) {
                    f0Var.m34172a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.f5000q) {
                this.f4999p.release();
            }
        }
        this.f4999p = surface;
        this.f5000q = z;
    }

    @Deprecated
    /* renamed from: a */
    public void m34098a(AbstractC1218o oVar) {
        this.f4992i.add(oVar);
    }

    /* renamed from: a */
    public void m34097a(C1221c0 c0Var) {
        m34048v();
        this.f4986c.m34134a(c0Var);
    }

    /* renamed from: a */
    public void m34096a(AbstractC1223d0.AbstractC1225b bVar) {
        m34048v();
        this.f4986c.m34132a(bVar);
    }

    /* renamed from: a */
    public void m34095a(C1244l0 l0Var) {
        m34048v();
        this.f4986c.m34130a(l0Var);
    }

    /* renamed from: a */
    public void m34086a(C1271c cVar) {
        m34085a(cVar, false);
    }

    /* renamed from: a */
    public void m34085a(C1271c cVar, boolean z) {
        AbstractC1236h0[] h0VarArr;
        m34048v();
        if (!C1167d0.m34478a(this.f5008y, cVar)) {
            this.f5008y = cVar;
            for (AbstractC1236h0 h0Var : this.f4985b) {
                if (h0Var.mo34141e() == 1) {
                    C1230f0 a = this.f4986c.m34131a(h0Var);
                    a.m34171a(3);
                    a.m34170a(cVar);
                    a.m34159k();
                }
            }
            Iterator<AbstractC1279f> it = this.f4990g.iterator();
            while (it.hasNext()) {
                it.next().mo32184a(cVar);
            }
        }
        C1275e eVar = this.f4996m;
        if (!z) {
            cVar = null;
        }
        m34080a(m34057m(), eVar.m33923a(cVar, m34057m(), m34054p()));
    }

    /* renamed from: a */
    public void m34084a(AbstractC1519d dVar) {
        this.f4991h.add(dVar);
    }

    /* renamed from: a */
    public void m34083a(AbstractC1634r rVar) {
        m34082a(rVar, true, true);
    }

    /* renamed from: a */
    public void m34082a(AbstractC1634r rVar, boolean z, boolean z2) {
        m34048v();
        AbstractC1634r rVar2 = this.f4981A;
        if (rVar2 != null) {
            rVar2.mo32505a(this.f4995l);
            this.f4995l.m34007l();
        }
        this.f4981A = rVar;
        rVar.mo32506a(this.f4987d, this.f4995l);
        m34080a(m34057m(), this.f4996m.m33911c(m34057m()));
        this.f4986c.m34128a(rVar, z, z2);
    }

    /* renamed from: a */
    public void m34081a(boolean z) {
        m34048v();
        m34080a(z, this.f4996m.m33917a(z, m34054p()));
    }

    /* renamed from: a */
    public final void m34080a(boolean z, int i) {
        C1245m mVar = this.f4986c;
        boolean z2 = false;
        boolean z3 = z && i != -1;
        if (i != 1) {
            z2 = true;
        }
        mVar.m34124a(z3, z2);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: b */
    public int mo34079b() {
        m34048v();
        return this.f4986c.mo34079b();
    }

    @Deprecated
    /* renamed from: b */
    public void m34078b(AbstractC1218o oVar) {
        this.f4992i.retainAll(Collections.singleton(this.f4995l));
        if (oVar != null) {
            m34098a(oVar);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: c */
    public long mo34074c() {
        m34048v();
        return this.f4986c.mo34074c();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: d */
    public long mo34072d() {
        m34048v();
        return this.f4986c.mo34072d();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: e */
    public AbstractC1252n0 mo34070e() {
        m34048v();
        return this.f4986c.mo34070e();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: f */
    public C1671j mo34068f() {
        m34048v();
        return this.f4986c.mo34068f();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: g */
    public long mo34066g() {
        m34048v();
        return this.f4986c.mo34066g();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    public long getCurrentPosition() {
        m34048v();
        return this.f4986c.getCurrentPosition();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    public long getDuration() {
        m34048v();
        return this.f4986c.getDuration();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: h */
    public int mo34064h() {
        m34048v();
        return this.f4986c.mo34064h();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1223d0
    /* renamed from: i */
    public int mo34062i() {
        m34048v();
        return this.f4986c.mo34062i();
    }

    /* renamed from: k */
    public Looper m34059k() {
        return this.f4986c.m34119k();
    }

    /* renamed from: l */
    public C1271c m34058l() {
        return this.f5008y;
    }

    /* renamed from: m */
    public boolean m34057m() {
        m34048v();
        return this.f4986c.m34116n();
    }

    /* renamed from: n */
    public ExoPlaybackException m34056n() {
        m34048v();
        return this.f4986c.m34115o();
    }

    /* renamed from: o */
    public Looper m34055o() {
        return this.f4986c.m34114p();
    }

    /* renamed from: p */
    public int m34054p() {
        m34048v();
        return this.f4986c.m34113q();
    }

    /* renamed from: q */
    public int m34053q() {
        m34048v();
        return this.f4986c.m34112r();
    }

    /* renamed from: r */
    public float m34052r() {
        return this.f5009z;
    }

    /* renamed from: s */
    public void m34051s() {
        m34048v();
        this.f4996m.m33908e();
        this.f4986c.m34110t();
        m34050t();
        Surface surface = this.f4999p;
        if (surface != null) {
            if (this.f5000q) {
                surface.release();
            }
            this.f4999p = null;
        }
        AbstractC1634r rVar = this.f4981A;
        if (rVar != null) {
            rVar.mo32505a(this.f4995l);
            this.f4981A = null;
        }
        if (this.f4984D) {
            PriorityTaskManager priorityTaskManager = this.f4983C;
            C1160a.m34522a(priorityTaskManager);
            priorityTaskManager.m37888b(0);
            this.f4984D = false;
        }
        this.f4994k.mo32367a(this.f4995l);
        Collections.emptyList();
    }

    /* renamed from: t */
    public final void m34050t() {
        TextureView textureView = this.f5002s;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f4988e) {
                C1175j.m34414d("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f5002s.setSurfaceTextureListener(null);
            }
            this.f5002s = null;
        }
        SurfaceHolder surfaceHolder = this.f5001r;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f4988e);
            this.f5001r = null;
        }
    }

    /* renamed from: u */
    public final void m34049u() {
        AbstractC1236h0[] h0VarArr;
        float f = this.f5009z;
        float d = this.f4996m.m33910d();
        for (AbstractC1236h0 h0Var : this.f4985b) {
            if (h0Var.mo34141e() == 1) {
                C1230f0 a = this.f4986c.m34131a(h0Var);
                a.m34171a(2);
                a.m34170a(Float.valueOf(f * d));
                a.m34159k();
            }
        }
    }

    /* renamed from: v */
    public final void m34048v() {
        if (Looper.myLooper() != m34059k()) {
            C1175j.m34416b("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/troubleshooting.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean", this.f4982B ? null : new IllegalStateException());
            this.f4982B = true;
        }
    }
}
