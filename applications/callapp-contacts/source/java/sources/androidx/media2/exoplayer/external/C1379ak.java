package androidx.media2.exoplayer.external;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.media2.exoplayer.external.AbstractC1369ae;
import androidx.media2.exoplayer.external.AbstractC1383al;
import androidx.media2.exoplayer.external.audio.AbstractC1409f;
import androidx.media2.exoplayer.external.audio.AbstractC1410g;
import androidx.media2.exoplayer.external.audio.C1401c;
import androidx.media2.exoplayer.external.audio.C1405e;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.C1475o;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.metadata.AbstractC1672d;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.p062a.AbstractC1363b;
import androidx.media2.exoplayer.external.p062a.C1360a;
import androidx.media2.exoplayer.external.p063b.C1441d;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.text.AbstractC1919i;
import androidx.media2.exoplayer.external.text.C1856a;
import androidx.media2.exoplayer.external.trackselection.AbstractC1944g;
import androidx.media2.exoplayer.external.trackselection.C1943f;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import androidx.media2.exoplayer.external.upstream.AbstractC1964c;
import androidx.media2.exoplayer.external.upstream.C1973j;
import androidx.media2.exoplayer.external.util.AbstractC1999b;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.PriorityTaskManager;
import androidx.media2.exoplayer.external.video.AbstractC2047f;
import androidx.media2.exoplayer.external.video.AbstractC2048g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: androidx.media2.exoplayer.external.ak */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak.class */
public final class C1379ak extends AbstractC1357a implements AbstractC1644g {

    /* renamed from: A */
    private boolean f5160A;

    /* renamed from: B */
    private int f5161B;

    /* renamed from: C */
    private SurfaceHolder f5162C;

    /* renamed from: D */
    private TextureView f5163D;

    /* renamed from: E */
    private int f5164E;

    /* renamed from: F */
    private int f5165F;

    /* renamed from: G */
    private boolean f5166G;

    /* renamed from: b */
    protected final AbstractC1375ag[] f5167b;

    /* renamed from: c */
    public final C1645h f5168c;

    /* renamed from: d */
    public final Handler f5169d;

    /* renamed from: e */
    final CopyOnWriteArraySet<AbstractC2047f> f5170e;

    /* renamed from: f */
    final CopyOnWriteArraySet<AbstractC1409f> f5171f;

    /* renamed from: g */
    final CopyOnWriteArraySet<AbstractC1919i> f5172g;

    /* renamed from: h */
    final CopyOnWriteArraySet<AbstractC1672d> f5173h;

    /* renamed from: i */
    final CopyOnWriteArraySet<AbstractC2048g> f5174i;

    /* renamed from: j */
    final CopyOnWriteArraySet<AbstractC1410g> f5175j;

    /* renamed from: k */
    public final C1360a f5176k;

    /* renamed from: l */
    public final C1405e f5177l;

    /* renamed from: m */
    Format f5178m;

    /* renamed from: n */
    Format f5179n;

    /* renamed from: o */
    Surface f5180o;

    /* renamed from: p */
    C1441d f5181p;

    /* renamed from: q */
    C1441d f5182q;

    /* renamed from: r */
    int f5183r;

    /* renamed from: s */
    public C1401c f5184s;

    /* renamed from: t */
    public float f5185t;

    /* renamed from: u */
    public AbstractC1842t f5186u;

    /* renamed from: v */
    List<C1856a> f5187v;

    /* renamed from: w */
    PriorityTaskManager f5188w;

    /* renamed from: x */
    boolean f5189x;

    /* renamed from: y */
    private final SurfaceHolder$CallbackC1382b f5190y;

    /* renamed from: z */
    private final AbstractC1964c f5191z;

    /* renamed from: androidx.media2.exoplayer.external.ak$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak$a.class */
    public static final class C1381a {

        /* renamed from: a */
        private final Context f5192a;

        /* renamed from: b */
        private final AbstractC1377ai f5193b;

        /* renamed from: c */
        private AbstractC1999b f5194c;

        /* renamed from: d */
        private AbstractC1944g f5195d;

        /* renamed from: e */
        private AbstractC2059y f5196e;

        /* renamed from: f */
        private AbstractC1964c f5197f;

        /* renamed from: g */
        private C1360a f5198g;

        /* renamed from: h */
        private Looper f5199h;

        /* renamed from: i */
        private boolean f5200i;

        /* renamed from: j */
        private boolean f5201j;

        public C1381a(Context context) {
            this(context, new C1643f(context));
        }

        public C1381a(Context context, AbstractC1377ai abstractC1377ai) {
            this(context, abstractC1377ai, new DefaultTrackSelector(context), new C1447d(), C1973j.m41722a(context), C1996ac.m41678a(), new C1360a(AbstractC1999b.f8075a), true, AbstractC1999b.f8075a);
        }

        public C1381a(Context context, AbstractC1377ai abstractC1377ai, AbstractC1944g abstractC1944g, AbstractC2059y abstractC2059y, AbstractC1964c abstractC1964c, Looper looper, C1360a c1360a, boolean z, AbstractC1999b abstractC1999b) {
            this.f5192a = context;
            this.f5193b = abstractC1377ai;
            this.f5195d = abstractC1944g;
            this.f5196e = abstractC2059y;
            this.f5197f = abstractC1964c;
            this.f5199h = looper;
            this.f5198g = c1360a;
            this.f5200i = z;
            this.f5194c = abstractC1999b;
        }

        /* renamed from: a */
        public final C1381a m43100a(Looper looper) {
            C1993a.m41686b(!this.f5201j);
            this.f5199h = looper;
            return this;
        }

        /* renamed from: a */
        public final C1381a m43099a(AbstractC1944g abstractC1944g) {
            C1993a.m41686b(!this.f5201j);
            this.f5195d = abstractC1944g;
            return this;
        }

        /* renamed from: a */
        public final C1381a m43098a(AbstractC1964c abstractC1964c) {
            C1993a.m41686b(!this.f5201j);
            this.f5197f = abstractC1964c;
            return this;
        }

        /* renamed from: a */
        public final C1379ak m43101a() {
            C1993a.m41686b(!this.f5201j);
            this.f5201j = true;
            return new C1379ak(this.f5192a, this.f5193b, this.f5195d, this.f5196e, this.f5197f, this.f5198g, this.f5194c, this.f5199h);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.ak$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ak$b.class */
    public final class SurfaceHolder$CallbackC1382b implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, AbstractC1369ae.AbstractC1371b, C1405e.AbstractC1408b, AbstractC1410g, AbstractC1672d, AbstractC1919i, AbstractC2048g {
        private SurfaceHolder$CallbackC1382b() {
            C1379ak.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo43097a() {
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41243a(int i) {
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41242a(int i, int i2, int i3, float f) {
            Iterator<AbstractC2047f> it2 = C1379ak.this.f5170e.iterator();
            while (it2.hasNext()) {
                AbstractC2047f next = it2.next();
                if (!C1379ak.this.f5174i.contains(next)) {
                    next.mo41242a(i, i2, i3, f);
                }
            }
            Iterator<AbstractC2048g> it3 = C1379ak.this.f5174i.iterator();
            while (it3.hasNext()) {
                it3.next().mo41242a(i, i2, i3, f);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41241a(int i, long j) {
            Iterator<AbstractC2048g> it2 = C1379ak.this.f5174i.iterator();
            while (it2.hasNext()) {
                it2.next().mo41241a(i, j);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: a */
        public final void mo43006a(int i, long j, long j2) {
            Iterator<AbstractC1410g> it2 = C1379ak.this.f5175j.iterator();
            while (it2.hasNext()) {
                it2.next().mo43006a(i, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41240a(Surface surface) {
            if (C1379ak.this.f5180o == surface) {
                Iterator<AbstractC2047f> it2 = C1379ak.this.f5170e.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
            }
            Iterator<AbstractC2048g> it3 = C1379ak.this.f5174i.iterator();
            while (it3.hasNext()) {
                it3.next().mo41240a(surface);
            }
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41239a(ExoPlaybackException exoPlaybackException) {
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41238a(Format format) {
            C1379ak.this.f5178m = format;
            Iterator<AbstractC2048g> it2 = C1379ak.this.f5174i.iterator();
            while (it2.hasNext()) {
                it2.next().mo41238a(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo43096a(AbstractC1383al abstractC1383al, int i) {
            if (abstractC1383al.mo42094b() == 1) {
                abstractC1383al.mo42095a(0, new AbstractC1383al.C1386b(), 0L);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41237a(C1441d c1441d) {
            C1379ak.this.f5181p = c1441d;
            Iterator<AbstractC2048g> it2 = C1379ak.this.f5174i.iterator();
            while (it2.hasNext()) {
                it2.next().mo41237a(c1441d);
            }
        }

        @Override // androidx.media2.exoplayer.external.metadata.AbstractC1672d
        /* renamed from: a */
        public final void mo41236a(Metadata metadata) {
            Iterator<AbstractC1672d> it2 = C1379ak.this.f5173h.iterator();
            while (it2.hasNext()) {
                it2.next().mo41236a(metadata);
            }
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41235a(C1943f c1943f) {
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: a */
        public final void mo41234a(String str, long j, long j2) {
            Iterator<AbstractC2048g> it2 = C1379ak.this.f5174i.iterator();
            while (it2.hasNext()) {
                it2.next().mo41234a(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.text.AbstractC1919i
        /* renamed from: a */
        public final void mo41880a(List<C1856a> list) {
            C1379ak.this.f5187v = list;
            Iterator<AbstractC1919i> it2 = C1379ak.this.f5172g.iterator();
            while (it2.hasNext()) {
                it2.next().mo41880a(list);
            }
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo43095a(boolean z) {
            if (C1379ak.this.f5188w != null) {
                if (!z || C1379ak.this.f5189x) {
                    if (z || !C1379ak.this.f5189x) {
                        return;
                    }
                    C1379ak.this.f5188w.m41692a();
                    C1379ak.this.f5189x = false;
                    return;
                }
                PriorityTaskManager priorityTaskManager = C1379ak.this.f5188w;
                synchronized (priorityTaskManager.f8059a) {
                    priorityTaskManager.f8060b.add(0);
                    priorityTaskManager.f8061c = Math.max(priorityTaskManager.f8061c, 0);
                }
                C1379ak.this.f5189x = true;
            }
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: a */
        public final void mo41233a(boolean z, int i) {
        }

        @Override // androidx.media2.exoplayer.external.AbstractC1369ae.AbstractC1371b
        /* renamed from: b */
        public final void mo41232b() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: b */
        public final void mo41231b(int i) {
            if (C1379ak.this.f5183r == i) {
                return;
            }
            C1379ak.this.f5183r = i;
            Iterator<AbstractC1409f> it2 = C1379ak.this.f5171f.iterator();
            while (it2.hasNext()) {
                AbstractC1409f next = it2.next();
                if (!C1379ak.this.f5175j.contains(next)) {
                    next.mo41231b(i);
                }
            }
            Iterator<AbstractC1410g> it3 = C1379ak.this.f5175j.iterator();
            while (it3.hasNext()) {
                it3.next().mo41231b(i);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: b */
        public final void mo43005b(Format format) {
            C1379ak.this.f5179n = format;
            Iterator<AbstractC1410g> it2 = C1379ak.this.f5175j.iterator();
            while (it2.hasNext()) {
                it2.next().mo43005b(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.AbstractC2048g
        /* renamed from: b */
        public final void mo41230b(C1441d c1441d) {
            Iterator<AbstractC2048g> it2 = C1379ak.this.f5174i.iterator();
            while (it2.hasNext()) {
                it2.next().mo41230b(c1441d);
            }
            C1379ak.this.f5178m = null;
            C1379ak.this.f5181p = null;
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: b */
        public final void mo43004b(String str, long j, long j2) {
            Iterator<AbstractC1410g> it2 = C1379ak.this.f5175j.iterator();
            while (it2.hasNext()) {
                it2.next().mo43004b(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.C1405e.AbstractC1408b
        /* renamed from: c */
        public final void mo43008c() {
            C1379ak.this.m43102t();
        }

        @Override // androidx.media2.exoplayer.external.audio.C1405e.AbstractC1408b
        /* renamed from: c */
        public final void mo43007c(int i) {
            C1379ak c1379ak = C1379ak.this;
            c1379ak.m43112a(c1379ak.m43108n(), i);
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: c */
        public final void mo43003c(C1441d c1441d) {
            C1379ak.this.f5182q = c1441d;
            Iterator<AbstractC1410g> it2 = C1379ak.this.f5175j.iterator();
            while (it2.hasNext()) {
                it2.next().mo43003c(c1441d);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AbstractC1410g
        /* renamed from: d */
        public final void mo43002d(C1441d c1441d) {
            Iterator<AbstractC1410g> it2 = C1379ak.this.f5175j.iterator();
            while (it2.hasNext()) {
                it2.next().mo43002d(c1441d);
            }
            C1379ak.this.f5179n = null;
            C1379ak.this.f5182q = null;
            C1379ak.this.f5183r = 0;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            C1379ak.this.m43121a(new Surface(surfaceTexture), true);
            C1379ak.this.m43123a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            C1379ak.this.m43121a((Surface) null, true);
            C1379ak.this.m43123a(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            C1379ak.this.m43123a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            C1379ak.this.m43123a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceCreated(SurfaceHolder surfaceHolder) {
            C1379ak.this.m43121a(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            C1379ak.this.m43121a((Surface) null, false);
            C1379ak.this.m43123a(0, 0);
        }
    }

    @Deprecated
    protected C1379ak(Context context, AbstractC1377ai abstractC1377ai, AbstractC1944g abstractC1944g, AbstractC2059y abstractC2059y, AbstractC1468k<C1475o> abstractC1468k, AbstractC1964c abstractC1964c, C1360a c1360a, AbstractC1999b abstractC1999b, Looper looper) {
        this.f5191z = abstractC1964c;
        this.f5176k = c1360a;
        SurfaceHolder$CallbackC1382b surfaceHolder$CallbackC1382b = new SurfaceHolder$CallbackC1382b();
        this.f5190y = surfaceHolder$CallbackC1382b;
        CopyOnWriteArraySet<AbstractC2047f> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        this.f5170e = copyOnWriteArraySet;
        CopyOnWriteArraySet<AbstractC1409f> copyOnWriteArraySet2 = new CopyOnWriteArraySet<>();
        this.f5171f = copyOnWriteArraySet2;
        this.f5172g = new CopyOnWriteArraySet<>();
        this.f5173h = new CopyOnWriteArraySet<>();
        CopyOnWriteArraySet<AbstractC2048g> copyOnWriteArraySet3 = new CopyOnWriteArraySet<>();
        this.f5174i = copyOnWriteArraySet3;
        CopyOnWriteArraySet<AbstractC1410g> copyOnWriteArraySet4 = new CopyOnWriteArraySet<>();
        this.f5175j = copyOnWriteArraySet4;
        Handler handler = new Handler(looper);
        this.f5169d = handler;
        AbstractC1375ag[] mo41183a = abstractC1377ai.mo41183a(handler, surfaceHolder$CallbackC1382b, surfaceHolder$CallbackC1382b, surfaceHolder$CallbackC1382b, surfaceHolder$CallbackC1382b, abstractC1468k);
        this.f5167b = mo41183a;
        this.f5185t = 1.0f;
        this.f5183r = 0;
        this.f5184s = C1401c.f5298a;
        this.f5161B = 1;
        this.f5187v = Collections.emptyList();
        C1645h c1645h = new C1645h(mo41183a, abstractC1944g, abstractC2059y, abstractC1964c, abstractC1999b, looper);
        this.f5168c = c1645h;
        C1993a.m41686b(c1360a.f5081c == null || c1360a.f5080b.f5087a.isEmpty());
        c1360a.f5081c = (AbstractC1369ae) C1993a.m41690a(c1645h);
        m43120a((AbstractC1369ae.AbstractC1371b) c1360a);
        m43120a((AbstractC1369ae.AbstractC1371b) surfaceHolder$CallbackC1382b);
        copyOnWriteArraySet3.add(c1360a);
        copyOnWriteArraySet.add(c1360a);
        copyOnWriteArraySet4.add(c1360a);
        copyOnWriteArraySet2.add(c1360a);
        m43115a((AbstractC1672d) c1360a);
        abstractC1964c.mo41721a(handler, c1360a);
        if (abstractC1468k instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) abstractC1468k).f5560a.m41591a(handler, c1360a);
        }
        this.f5177l = new C1405e(context, surfaceHolder$CallbackC1382b);
    }

    protected C1379ak(Context context, AbstractC1377ai abstractC1377ai, AbstractC1944g abstractC1944g, AbstractC2059y abstractC2059y, AbstractC1964c abstractC1964c, C1360a c1360a, AbstractC1999b abstractC1999b, Looper looper) {
        this(context, abstractC1377ai, abstractC1944g, abstractC2059y, AbstractC1468k.f5584e, abstractC1964c, c1360a, abstractC1999b, looper);
    }

    /* renamed from: a */
    public void m43121a(Surface surface, boolean z) {
        AbstractC1375ag[] abstractC1375agArr;
        ArrayList<C1372af> arrayList = new ArrayList();
        for (AbstractC1375ag abstractC1375ag : this.f5167b) {
            if (abstractC1375ag.mo42938a() == 2) {
                arrayList.add(this.f5168c.m42497a(abstractC1375ag).m43129a(1).m43128a(surface).m43130a());
            }
        }
        Surface surface2 = this.f5180o;
        if (surface2 != null && surface2 != surface) {
            try {
                for (C1372af c1372af : arrayList) {
                    c1372af.m43125c();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.f5160A) {
                this.f5180o.release();
            }
        }
        this.f5180o = surface;
        this.f5160A = z;
    }

    /* renamed from: r */
    private Looper m43104r() {
        return this.f5168c.f6520c.getLooper();
    }

    /* renamed from: s */
    private void m43103s() {
        TextureView textureView = this.f5163D;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f5190y) {
                C2009j.m41584a("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f5163D.setSurfaceTextureListener(null);
            }
            this.f5163D = null;
        }
        SurfaceHolder surfaceHolder = this.f5162C;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f5190y);
            this.f5162C = null;
        }
    }

    /* renamed from: t */
    public void m43102t() {
        AbstractC1375ag[] abstractC1375agArr;
        float f = this.f5185t;
        float f2 = this.f5177l.f5314e;
        for (AbstractC1375ag abstractC1375ag : this.f5167b) {
            if (abstractC1375ag.mo42938a() == 1) {
                this.f5168c.m42497a(abstractC1375ag).m43129a(2).m43128a(Float.valueOf(f * f2)).m43130a();
            }
        }
    }

    /* renamed from: a */
    public final void m43124a(float f) {
        m43105q();
        float m41677a = C1996ac.m41677a(f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        if (this.f5185t == m41677a) {
            return;
        }
        this.f5185t = m41677a;
        m43102t();
        Iterator<AbstractC1409f> it2 = this.f5171f.iterator();
        while (it2.hasNext()) {
            it2.next().mo41228d();
        }
    }

    /* renamed from: a */
    public final void m43123a(int i, int i2) {
        if (i == this.f5164E && i2 == this.f5165F) {
            return;
        }
        this.f5164E = i;
        this.f5165F = i2;
        Iterator<AbstractC2047f> it2 = this.f5170e.iterator();
        while (it2.hasNext()) {
            it2.next().mo41424e();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: a */
    public final void mo42501a(int i, long j) {
        m43105q();
        C1360a c1360a = this.f5176k;
        if (!c1360a.f5080b.f5093g) {
            c1360a.m43161l();
            c1360a.f5080b.f5093g = true;
            Iterator<AbstractC1363b> it2 = c1360a.f5079a.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        this.f5168c.mo42501a(i, j);
    }

    /* renamed from: a */
    public final void m43122a(Surface surface) {
        m43105q();
        m43103s();
        int i = 0;
        m43121a(surface, false);
        if (surface != null) {
            i = -1;
        }
        m43123a(i, i);
    }

    /* renamed from: a */
    public final void m43120a(AbstractC1369ae.AbstractC1371b abstractC1371b) {
        m43105q();
        this.f5168c.m42498a(abstractC1371b);
    }

    /* renamed from: a */
    public final void m43116a(C1401c c1401c) {
        int i;
        AbstractC1375ag[] abstractC1375agArr;
        m43105q();
        boolean z = false;
        if (!C1996ac.m41658a(this.f5184s, c1401c)) {
            this.f5184s = c1401c;
            for (AbstractC1375ag abstractC1375ag : this.f5167b) {
                if (abstractC1375ag.mo42938a() == 1) {
                    this.f5168c.m42497a(abstractC1375ag).m43129a(3).m43128a(c1401c).m43130a();
                }
            }
            Iterator<AbstractC1409f> it2 = this.f5171f.iterator();
            while (it2.hasNext()) {
                it2.next().mo41229c();
            }
        }
        C1405e c1405e = this.f5177l;
        boolean m43108n = m43108n();
        int m43110l = m43110l();
        if (!C1996ac.m41658a(c1405e.f5311b, (Object) null)) {
            c1405e.f5311b = null;
            c1405e.f5313d = 0;
            if (c1405e.f5313d == 1 || c1405e.f5313d == 0) {
                z = true;
            }
            C1993a.m41687a(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
            if (m43108n && (m43110l == 2 || m43110l == 3)) {
                i = c1405e.m43016a();
                m43112a(m43108n(), i);
            }
        }
        i = m43110l == 1 ? m43108n ? 1 : -1 : c1405e.m43015a(m43108n);
        m43112a(m43108n(), i);
    }

    /* renamed from: a */
    public final void m43115a(AbstractC1672d abstractC1672d) {
        this.f5173h.add(abstractC1672d);
    }

    @Deprecated
    /* renamed from: a */
    public final void m43114a(AbstractC2048g abstractC2048g) {
        this.f5174i.retainAll(Collections.singleton(this.f5176k));
        this.f5174i.add(abstractC2048g);
    }

    /* renamed from: a */
    public final void m43113a(boolean z) {
        m43105q();
        C1405e c1405e = this.f5177l;
        int m43110l = m43110l();
        int i = -1;
        if (!z) {
            c1405e.m43013b(false);
        } else if (m43110l != 1) {
            i = c1405e.m43016a();
        } else if (z) {
            i = 1;
        }
        m43112a(z, i);
    }

    /* renamed from: a */
    public final void m43112a(boolean z, int i) {
        C1645h c1645h = this.f5168c;
        boolean z2 = false;
        boolean z3 = z && i != -1;
        if (i != 1) {
            z2 = true;
        }
        c1645h.m42492a(z3, z2);
    }

    /* renamed from: b */
    public final Looper m43111b() {
        return this.f5168c.f6521d.f7836b.getLooper();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: c */
    public final int mo42489c() {
        m43105q();
        return this.f5168c.mo42489c();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: d */
    public final long mo42488d() {
        m43105q();
        return this.f5168c.mo42488d();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: e */
    public final long mo42487e() {
        m43105q();
        return this.f5168c.mo42487e();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: f */
    public final long mo42486f() {
        m43105q();
        return this.f5168c.mo42486f();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: g */
    public final long mo42485g() {
        m43105q();
        return this.f5168c.mo42485g();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: h */
    public final int mo42484h() {
        m43105q();
        return this.f5168c.mo42484h();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: i */
    public final int mo42483i() {
        m43105q();
        return this.f5168c.mo42483i();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: j */
    public final long mo42482j() {
        m43105q();
        return this.f5168c.mo42482j();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1369ae
    /* renamed from: k */
    public final AbstractC1383al mo42481k() {
        m43105q();
        return this.f5168c.f6530m.f5122a;
    }

    /* renamed from: l */
    public final int m43110l() {
        m43105q();
        return this.f5168c.f6530m.f5126e;
    }

    /* renamed from: m */
    public final ExoPlaybackException m43109m() {
        m43105q();
        return this.f5168c.f6530m.f5127f;
    }

    /* renamed from: n */
    public final boolean m43108n() {
        m43105q();
        return this.f5168c.f6522e;
    }

    /* renamed from: o */
    public final int m43107o() {
        m43105q();
        return this.f5168c.f6523f;
    }

    /* renamed from: p */
    public final void m43106p() {
        m43105q();
        this.f5177l.m43013b(true);
        this.f5168c.m42490b();
        m43103s();
        Surface surface = this.f5180o;
        if (surface != null) {
            if (this.f5160A) {
                surface.release();
            }
            this.f5180o = null;
        }
        AbstractC1842t abstractC1842t = this.f5186u;
        if (abstractC1842t != null) {
            abstractC1842t.mo42069a(this.f5176k);
            this.f5186u = null;
        }
        if (this.f5189x) {
            ((PriorityTaskManager) C1993a.m41690a(this.f5188w)).m41692a();
            this.f5189x = false;
        }
        this.f5191z.mo41720a(this.f5176k);
        this.f5187v = Collections.emptyList();
    }

    /* renamed from: q */
    public final void m43105q() {
        if (Looper.myLooper() != m43104r()) {
            C2009j.m41583a("SimpleExoPlayer", "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread", this.f5166G ? null : new IllegalStateException());
            this.f5166G = true;
        }
    }
}
