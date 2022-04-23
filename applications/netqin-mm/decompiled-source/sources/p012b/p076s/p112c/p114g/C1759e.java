package p012b.p076s.p112c.p114g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.DefaultAudioSink;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.player.MediaPlayer2;
import androidx.media2.player.exoplayer.ByteArrayFrame;
import com.facebook.ads.AdError;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p078b.p079a.AbstractC1223d0;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.C1222d;
import p012b.p076s.p078b.p079a.C1233g;
import p012b.p076s.p078b.p079a.C1248m0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p082o0.C1257a;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1279f;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p083p0.C1274d;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
import p012b.p076s.p078b.p079a.p096u0.AbstractC1519d;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1634r;
import p012b.p076s.p078b.p079a.p102w0.C1564i;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1691m;
import p012b.p076s.p078b.p079a.p111z0.C1694o;
import p012b.p076s.p112c.C1710b;
import p012b.p076s.p112c.C1711c;
import p012b.p076s.p112c.C1713d;
import p012b.p076s.p112c.p114g.C1774j;
/* renamed from: b.s.c.g.e */
/* loaded from: classes-dex2jar.jar:b/s/c/g/e.class */
public final class C1759e {

    /* renamed from: a */
    public final Context f7085a;

    /* renamed from: b */
    public final AbstractC1764d f7086b;

    /* renamed from: c */
    public final Looper f7087c;

    /* renamed from: d */
    public final Handler f7088d;

    /* renamed from: e */
    public final C1691m f7089e = new C1691m();

    /* renamed from: f */
    public final Runnable f7090f = new RunnableC1767g();

    /* renamed from: g */
    public C1248m0 f7091g;

    /* renamed from: h */
    public Handler f7092h;

    /* renamed from: i */
    public DefaultAudioSink f7093i;

    /* renamed from: j */
    public C1778k f7094j;

    /* renamed from: k */
    public C1766f f7095k;

    /* renamed from: l */
    public boolean f7096l;

    /* renamed from: m */
    public int f7097m;

    /* renamed from: n */
    public boolean f7098n;

    /* renamed from: o */
    public boolean f7099o;

    /* renamed from: p */
    public boolean f7100p;

    /* renamed from: q */
    public boolean f7101q;

    /* renamed from: r */
    public int f7102r;

    /* renamed from: s */
    public int f7103s;

    /* renamed from: t */
    public C1711c f7104t;

    /* renamed from: b.s.c.g.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$a.class */
    public static final class RunnableC1760a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ DefaultAudioSink f7105a;

        /* renamed from: b */
        public final /* synthetic */ int f7106b;

        public RunnableC1760a(DefaultAudioSink defaultAudioSink, int i) {
            this.f7105a = defaultAudioSink;
            this.f7106b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7105a.m38144b(this.f7106b);
        }
    }

    /* renamed from: b.s.c.g.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$b.class */
    public final class C1761b extends AbstractC1223d0.AbstractC1224a implements AbstractC1218o, AbstractC1279f, C1774j.AbstractC1777c, AbstractC1519d {
        public C1761b() {
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32193a() {
            C1759e.this.m32203q();
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1279f
        /* renamed from: a */
        public void mo32192a(float f) {
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1279f
        /* renamed from: a */
        public void mo32191a(int i) {
            C1759e.this.m32219c(i);
        }

        @Override // p012b.p076s.p112c.p114g.C1774j.AbstractC1777c
        /* renamed from: a */
        public void mo32116a(int i, int i2) {
            C1759e.this.m32235a(i, i2);
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32190a(int i, int i2, int i3, float f) {
            C1759e.this.m32234a(i, i2, f);
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32189a(int i, long j) {
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32188a(Surface surface) {
            C1759e.this.m32204p();
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32187a(ExoPlaybackException exoPlaybackException) {
            C1759e.this.m32228a(exoPlaybackException);
        }

        @Override // p012b.p076s.p078b.p079a.p096u0.AbstractC1519d
        /* renamed from: a */
        public void mo32186a(Metadata metadata) {
            C1759e.this.m32227a(metadata);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: a */
        public void mo32185a(TrackGroupArray trackGroupArray, C1671j jVar) {
            C1759e.this.m32205o();
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.AbstractC1279f
        /* renamed from: a */
        public void mo32184a(C1271c cVar) {
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32183a(C1310c cVar) {
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: a */
        public void mo32182a(String str, long j, long j2) {
        }

        @Override // p012b.p076s.p112c.p114g.C1774j.AbstractC1777c
        /* renamed from: a */
        public void mo32115a(byte[] bArr, long j) {
            C1759e.this.m32224a(bArr, j);
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        /* renamed from: b */
        public void mo32181b(int i) {
            C1759e.this.m32217d(i);
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: b */
        public void mo32180b(Format format) {
            if (C1178m.m34398l(format.f1562i)) {
                C1759e.this.m32234a(format.f1567n, format.f1568o, format.f1571r);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p081b1.AbstractC1218o
        /* renamed from: b */
        public void mo32179b(C1310c cVar) {
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1223d0.AbstractC1225b
        public void onPlayerStateChanged(boolean z, int i) {
            C1759e.this.m32225a(z, i);
        }
    }

    /* renamed from: b.s.c.g.e$c */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$c.class */
    public static final class C1762c {

        /* renamed from: a */
        public final Map<FileDescriptor, C1763a> f7108a = new HashMap();

        /* renamed from: b.s.c.g.e$c$a */
        /* loaded from: classes-dex2jar.jar:b/s/c/g/e$c$a.class */
        public static final class C1763a {

            /* renamed from: a */
            public final Object f7109a = new Object();

            /* renamed from: b */
            public int f7110b;
        }

        /* renamed from: a */
        public Object m32178a(FileDescriptor fileDescriptor) {
            if (!this.f7108a.containsKey(fileDescriptor)) {
                this.f7108a.put(fileDescriptor, new C1763a());
            }
            C1763a aVar = this.f7108a.get(fileDescriptor);
            C0948h.m35442a(aVar);
            C1763a aVar2 = aVar;
            aVar2.f7110b++;
            return aVar2.f7109a;
        }

        /* renamed from: b */
        public void m32177b(FileDescriptor fileDescriptor) {
            C1763a aVar = this.f7108a.get(fileDescriptor);
            C0948h.m35442a(aVar);
            C1763a aVar2 = aVar;
            int i = aVar2.f7110b - 1;
            aVar2.f7110b = i;
            if (i == 0) {
                this.f7108a.remove(fileDescriptor);
            }
        }
    }

    /* renamed from: b.s.c.g.e$d */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$d.class */
    public interface AbstractC1764d {
        /* renamed from: a */
        void mo32176a();

        /* renamed from: a */
        void mo32175a(MediaItem mediaItem);

        /* renamed from: a */
        void mo32174a(MediaItem mediaItem, int i);

        /* renamed from: a */
        void mo32173a(MediaItem mediaItem, int i, int i2);

        /* renamed from: a */
        void mo32172a(MediaItem mediaItem, int i, SubtitleData subtitleData);

        /* renamed from: a */
        void mo32171a(MediaItem mediaItem, C1710b bVar);

        /* renamed from: a */
        void mo32170a(MediaItem mediaItem, C1713d dVar);

        /* renamed from: b */
        void mo32169b(MediaItem mediaItem);

        /* renamed from: b */
        void mo32168b(MediaItem mediaItem, int i);

        /* renamed from: c */
        void mo32167c(MediaItem mediaItem);

        /* renamed from: c */
        void mo32166c(MediaItem mediaItem, int i);

        /* renamed from: d */
        void mo32165d(MediaItem mediaItem);

        /* renamed from: e */
        void mo32164e(MediaItem mediaItem);

        /* renamed from: f */
        void mo32163f(MediaItem mediaItem);

        /* renamed from: g */
        void mo32162g(MediaItem mediaItem);

        /* renamed from: h */
        void mo32161h(MediaItem mediaItem);

        /* renamed from: i */
        void mo32160i(MediaItem mediaItem);
    }

    /* renamed from: b.s.c.g.e$e */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$e.class */
    public static final class C1765e {

        /* renamed from: a */
        public final MediaItem f7111a;

        /* renamed from: b */
        public final C1718b f7112b;

        /* renamed from: c */
        public final boolean f7113c;

        public C1765e(MediaItem mediaItem, C1718b bVar, boolean z) {
            this.f7111a = mediaItem;
            this.f7112b = bVar;
            this.f7113c = z;
        }
    }

    /* renamed from: b.s.c.g.e$f */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$f.class */
    public static final class C1766f {

        /* renamed from: a */
        public final Context f7114a;

        /* renamed from: b */
        public final AbstractC1764d f7115b;

        /* renamed from: c */
        public final C1248m0 f7116c;

        /* renamed from: d */
        public final AbstractC1684g.AbstractC1685a f7117d;

        /* renamed from: e */
        public final C1564i f7118e = new C1564i(new AbstractC1634r[0]);

        /* renamed from: f */
        public final ArrayDeque<C1765e> f7119f = new ArrayDeque<>();

        /* renamed from: g */
        public final C1762c f7120g = new C1762c();

        /* renamed from: h */
        public long f7121h = -1;

        /* renamed from: i */
        public long f7122i;

        public C1766f(Context context, C1248m0 m0Var, AbstractC1764d dVar) {
            this.f7114a = context;
            this.f7116c = m0Var;
            this.f7115b = dVar;
            this.f7117d = new C1694o(context, C1167d0.m34487a(context, "MediaPlayer2"));
        }

        /* renamed from: a */
        public void m32159a() {
            while (!this.f7119f.isEmpty()) {
                m32156a(this.f7119f.remove());
            }
        }

        /* renamed from: a */
        public void m32158a(MediaItem mediaItem) {
            m32159a();
            this.f7118e.m32776d();
            m32155a(Collections.singletonList(mediaItem));
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0068, code lost:
            if (r0 != 576460752303423487L) goto L_0x006b;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m32157a(androidx.media2.common.MediaItem r12, java.util.Collection<p012b.p076s.p112c.p114g.C1759e.C1765e> r13, java.util.Collection<p012b.p076s.p078b.p079a.p102w0.AbstractC1634r> r14) {
            /*
                r11 = this;
                r0 = r11
                b.s.b.a.z0.g$a r0 = r0.f7117d
                r15 = r0
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.FileMediaItem
                if (r0 == 0) goto L_0x003c
                r0 = r12
                androidx.media2.common.FileMediaItem r0 = (androidx.media2.common.FileMediaItem) r0
                r16 = r0
                r0 = r16
                r0.m38236o()
                r0 = r16
                android.os.ParcelFileDescriptor r0 = r0.m38237n()
                java.io.FileDescriptor r0 = r0.getFileDescriptor()
                r15 = r0
                r0 = r15
                r1 = r16
                long r1 = r1.m38238m()
                r2 = r16
                long r2 = r2.m38239l()
                r3 = r11
                b.s.c.g.e$c r3 = r3.f7120g
                r4 = r15
                java.lang.Object r3 = r3.m32178a(r4)
                b.s.b.a.z0.g$a r0 = p012b.p076s.p112c.p114g.C1768f.m32143a(r0, r1, r2, r3)
                r15 = r0
            L_0x003c:
                r0 = r11
                android.content.Context r0 = r0.f7114a
                r1 = r15
                r2 = r12
                b.s.b.a.w0.r r0 = p012b.p076s.p112c.p114g.C1758d.m32247a(r0, r1, r2)
                r17 = r0
                r0 = 0
                r15 = r0
                r0 = r12
                long r0 = r0.m38231j()
                r18 = r0
                r0 = r12
                long r0 = r0.m38234g()
                r20 = r0
                r0 = r18
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006b
                r0 = r17
                r16 = r0
                r0 = r20
                r1 = 576460752303423487(0x7ffffffffffffff, double:3.7857669957336787E-270)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x008e
            L_0x006b:
                b.s.c.g.b r0 = new b.s.c.g.b
                r1 = r0
                r2 = r17
                r1.<init>(r2)
                r15 = r0
                androidx.media2.exoplayer.external.source.ClippingMediaSource r0 = new androidx.media2.exoplayer.external.source.ClippingMediaSource
                r1 = r0
                r2 = r15
                r3 = r18
                long r3 = p012b.p076s.p078b.p079a.C1220c.m34196a(r3)
                r4 = r20
                long r4 = p012b.p076s.p078b.p079a.C1220c.m34196a(r4)
                r5 = 0
                r6 = 0
                r7 = 1
                r1.<init>(r2, r3, r4, r5, r6, r7)
                r16 = r0
            L_0x008e:
                r0 = r12
                boolean r0 = r0 instanceof androidx.media2.common.UriMediaItem
                if (r0 == 0) goto L_0x00a8
                r0 = r12
                androidx.media2.common.UriMediaItem r0 = (androidx.media2.common.UriMediaItem) r0
                android.net.Uri r0 = r0.m38202k()
                boolean r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34453b(r0)
                if (r0 != 0) goto L_0x00a8
                r0 = 1
                r22 = r0
                goto L_0x00ab
            L_0x00a8:
                r0 = 0
                r22 = r0
            L_0x00ab:
                r0 = r14
                r1 = r16
                boolean r0 = r0.add(r1)
                r0 = r13
                b.s.c.g.e$e r1 = new b.s.c.g.e$e
                r2 = r1
                r3 = r12
                r4 = r15
                r5 = r22
                r2.<init>(r3, r4, r5)
                boolean r0 = r0.add(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1759e.C1766f.m32157a(androidx.media2.common.MediaItem, java.util.Collection, java.util.Collection):void");
        }

        /* renamed from: a */
        public final void m32156a(C1765e eVar) {
            MediaItem mediaItem = eVar.f7111a;
            try {
                if (mediaItem instanceof FileMediaItem) {
                    this.f7120g.m32177b(((FileMediaItem) mediaItem).m38237n().getFileDescriptor());
                    ((FileMediaItem) mediaItem).m38240k();
                } else if (mediaItem instanceof CallbackMediaItem) {
                    ((CallbackMediaItem) mediaItem).m38241k().close();
                }
            } catch (IOException e) {
                Log.w("ExoPlayerWrapper", "Error releasing media item " + mediaItem, e);
            }
        }

        /* renamed from: a */
        public void m32155a(List<MediaItem> list) {
            int f = this.f7118e.m32774f();
            if (f > 1) {
                this.f7118e.m32780b(1, f);
                while (this.f7119f.size() > 1) {
                    m32156a(this.f7119f.removeLast());
                }
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (MediaItem mediaItem : list) {
                if (mediaItem == null) {
                    this.f7115b.mo32168b(null, 1);
                    return;
                }
                m32157a(mediaItem, this.f7119f, arrayList);
            }
            this.f7118e.m32783a((Collection<AbstractC1634r>) arrayList);
        }

        /* renamed from: a */
        public void m32154a(boolean z) {
            MediaItem b = m32153b();
            if (z && this.f7116c.m34053q() != 0) {
                this.f7115b.mo32165d(b);
            }
            int b2 = this.f7116c.mo34079b();
            if (b2 > 0) {
                if (z) {
                    this.f7115b.mo32167c(m32153b());
                }
                for (int i = 0; i < b2; i++) {
                    m32156a(this.f7119f.removeFirst());
                }
                if (z) {
                    this.f7115b.mo32161h(m32153b());
                }
                this.f7118e.m32780b(0, b2);
                this.f7122i = 0L;
                this.f7121h = -1L;
                if (this.f7116c.m34054p() == 3) {
                    m32148g();
                }
            }
        }

        /* renamed from: b */
        public MediaItem m32153b() {
            return this.f7119f.isEmpty() ? null : this.f7119f.peekFirst().f7111a;
        }

        /* renamed from: c */
        public long m32152c() {
            C1718b bVar = this.f7119f.peekFirst().f7112b;
            return bVar != null ? bVar.m32290d() : this.f7116c.getDuration();
        }

        /* renamed from: d */
        public boolean m32151d() {
            return !this.f7119f.isEmpty() && this.f7119f.peekFirst().f7113c;
        }

        /* renamed from: e */
        public boolean m32150e() {
            return this.f7118e.m32774f() == 0;
        }

        /* renamed from: f */
        public void m32149f() {
            MediaItem b = m32153b();
            this.f7115b.mo32167c(b);
            this.f7115b.mo32162g(b);
        }

        /* renamed from: g */
        public void m32148g() {
            if (this.f7121h == -1) {
                this.f7121h = System.nanoTime();
            }
        }

        /* renamed from: h */
        public void m32147h() {
            if (this.f7121h != -1) {
                this.f7122i += ((System.nanoTime() - this.f7121h) + 500) / 1000;
                this.f7121h = -1L;
            }
        }

        /* renamed from: i */
        public void m32146i() {
            this.f7116c.m34083a(this.f7118e);
        }

        /* renamed from: j */
        public void m32145j() {
            m32156a(this.f7119f.removeFirst());
            this.f7118e.m32801a(0);
        }
    }

    /* renamed from: b.s.c.g.e$g */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/e$g.class */
    public final class RunnableC1767g implements Runnable {
        public RunnableC1767g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1759e.this.m32239C();
        }
    }

    public C1759e(Context context, AbstractC1764d dVar, Looper looper) {
        this.f7085a = context.getApplicationContext();
        this.f7086b = dVar;
        this.f7087c = looper;
        this.f7088d = new Handler(looper);
    }

    /* renamed from: a */
    public static void m32232a(Handler handler, DefaultAudioSink defaultAudioSink, int i) {
        handler.post(new RunnableC1760a(defaultAudioSink, i));
    }

    /* renamed from: A */
    public void m32241A() {
        C1248m0 m0Var = this.f7091g;
        if (m0Var != null) {
            m0Var.m34081a(false);
            if (m32211i() != 1001) {
                this.f7086b.mo32171a(m32218d(), m32210j());
            }
            this.f7091g.m34051s();
            this.f7095k.m32159a();
        }
        C1761b bVar = new C1761b();
        this.f7093i = new DefaultAudioSink(C1274d.m33928a(this.f7085a), new AudioProcessor[0]);
        C1774j jVar = new C1774j(bVar);
        this.f7094j = new C1778k(jVar);
        Context context = this.f7085a;
        this.f7091g = C1233g.m34158a(context, new C1773i(context, this.f7093i, jVar), this.f7094j.m32114a(), new C1222d(), null, this.f7089e, new C1257a.C1258a(), this.f7087c);
        this.f7092h = new Handler(this.f7091g.m34055o());
        this.f7095k = new C1766f(this.f7085a, this.f7091g, this.f7086b);
        this.f7091g.m34096a((AbstractC1223d0.AbstractC1225b) bVar);
        this.f7091g.m34078b(bVar);
        this.f7091g.m34084a((AbstractC1519d) bVar);
        this.f7102r = 0;
        this.f7103s = 0;
        this.f7098n = false;
        this.f7099o = false;
        this.f7100p = false;
        this.f7101q = false;
        this.f7096l = false;
        this.f7097m = 0;
        C1711c.C1712a aVar = new C1711c.C1712a();
        aVar.m32299b(1.0f);
        aVar.m32301a(1.0f);
        aVar.m32300a(0);
        this.f7104t = aVar.m32302a();
    }

    /* renamed from: B */
    public void m32240B() {
        this.f7095k.m32145j();
    }

    /* renamed from: C */
    public void m32239C() {
        if (this.f7095k.m32151d()) {
            this.f7086b.mo32166c(m32218d(), this.f7091g.m34559a());
        }
        this.f7088d.removeCallbacks(this.f7090f);
        this.f7088d.postDelayed(this.f7090f, 1000L);
    }

    /* renamed from: a */
    public void m32238a() {
        if (this.f7091g != null) {
            this.f7088d.removeCallbacks(this.f7090f);
            this.f7091g.m34051s();
            this.f7091g = null;
            this.f7095k.m32159a();
            this.f7096l = false;
        }
    }

    /* renamed from: a */
    public void m32237a(float f) {
        this.f7091g.m34103a(f);
    }

    /* renamed from: a */
    public void m32236a(int i) {
        this.f7094j.m32113a(i);
    }

    /* renamed from: a */
    public void m32235a(int i, int i2) {
        this.f7094j.m32112a(i, i2);
        if (this.f7094j.m32107c()) {
            this.f7086b.mo32164e(m32218d());
        }
    }

    /* renamed from: a */
    public void m32234a(int i, int i2, float f) {
        if (f != 1.0f) {
            this.f7102r = (int) (f * i);
        } else {
            this.f7102r = i;
        }
        this.f7103s = i2;
        this.f7086b.mo32173a(this.f7095k.m32153b(), i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [b.s.b.a.m0, b.s.b.a.a] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m32233a(long r6, int r8) {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.m0 r0 = r0.f7091g
            r1 = r8
            b.s.b.a.l0 r1 = p012b.p076s.p112c.p114g.C1758d.m32248a(r1)
            r0.m34095a(r1)
            r0 = r5
            b.s.c.g.e$f r0 = r0.f7095k
            androidx.media2.common.MediaItem r0 = r0.m32153b()
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0065
            r0 = r9
            long r0 = r0.m38231j()
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0036
            r0 = r9
            long r0 = r0.m38234g()
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0036
            r0 = 1
            r12 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 0
            r12 = r0
        L_0x0039:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Requested seek position is out of range : "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            r1 = r13
            java.lang.String r1 = r1.toString()
            p012b.p042i.p053o.C0948h.m35439a(r0, r1)
            r0 = r6
            r1 = r9
            long r1 = r1.m38231j()
            long r0 = r0 - r1
            r10 = r0
        L_0x0065:
            r0 = r5
            b.s.b.a.m0 r0 = r0.f7091g
            r1 = r10
            r0.m34558a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1759e.m32233a(long, int):void");
    }

    /* renamed from: a */
    public void m32231a(Surface surface) {
        this.f7091g.m34100a(surface);
    }

    /* renamed from: a */
    public void m32230a(AudioAttributesCompat audioAttributesCompat) {
        this.f7096l = true;
        this.f7091g.m34086a(C1758d.m32246a(audioAttributesCompat));
        int i = this.f7097m;
        if (i != 0) {
            m32232a(this.f7092h, this.f7093i, i);
        }
    }

    /* renamed from: a */
    public void m32229a(MediaItem mediaItem) {
        C1766f fVar = this.f7095k;
        C0948h.m35442a(mediaItem);
        fVar.m32158a(mediaItem);
    }

    /* renamed from: a */
    public void m32228a(ExoPlaybackException exoPlaybackException) {
        this.f7086b.mo32171a(m32218d(), m32210j());
        this.f7086b.mo32168b(m32218d(), C1758d.m32245a(exoPlaybackException));
    }

    /* renamed from: a */
    public void m32227a(Metadata metadata) {
        int a = metadata.m38018a();
        for (int i = 0; i < a; i++) {
            ByteArrayFrame byteArrayFrame = (ByteArrayFrame) metadata.m38017a(i);
            this.f7086b.mo32170a(m32218d(), new C1713d(byteArrayFrame.f2153a, byteArrayFrame.f2154b));
        }
    }

    /* renamed from: a */
    public void m32226a(C1711c cVar) {
        this.f7104t = cVar;
        this.f7091g.m34097a(C1758d.m32242a(cVar));
        if (m32211i() == 1004) {
            this.f7086b.mo32171a(m32218d(), m32210j());
        }
    }

    /* renamed from: a */
    public void m32225a(boolean z, int i) {
        this.f7086b.mo32171a(m32218d(), m32210j());
        if (i != 3 || !z) {
            m32197w();
        } else {
            m32198v();
        }
        if (i == 3 || i == 2) {
            this.f7088d.post(this.f7090f);
        } else {
            this.f7088d.removeCallbacks(this.f7090f);
        }
        if (i == 1) {
            return;
        }
        if (i == 2) {
            m32201s();
        } else if (i == 3) {
            m32199u();
        } else if (i == 4) {
            m32200t();
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public void m32224a(byte[] bArr, long j) {
        int b = this.f7094j.m32108b(4);
        this.f7086b.mo32172a(m32218d(), b, new SubtitleData(j, 0L, bArr));
    }

    /* renamed from: b */
    public int m32222b(int i) {
        return this.f7094j.m32108b(i);
    }

    /* renamed from: b */
    public AudioAttributesCompat m32223b() {
        return this.f7096l ? C1758d.m32243a(this.f7091g.m34058l()) : null;
    }

    /* renamed from: b */
    public void m32221b(MediaItem mediaItem) {
        if (this.f7095k.m32150e()) {
            if (mediaItem instanceof FileMediaItem) {
                FileMediaItem fileMediaItem = (FileMediaItem) mediaItem;
                fileMediaItem.m38236o();
                fileMediaItem.m38240k();
            }
            throw new IllegalStateException();
        }
        this.f7095k.m32155a(Collections.singletonList(mediaItem));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m32220c() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.m32211i()
            r1 = 1001(0x3e9, float:1.403E-42)
            if (r0 == r1) goto L_0x000f
            r0 = 1
            r6 = r0
            goto L_0x0011
        L_0x000f:
            r0 = 0
            r6 = r0
        L_0x0011:
            r0 = r6
            p012b.p042i.p053o.C0948h.m35437b(r0)
            r0 = r5
            b.s.b.a.m0 r0 = r0.f7091g
            long r0 = r0.mo34072d()
            r7 = r0
            r0 = r5
            b.s.c.g.e$f r0 = r0.f7095k
            androidx.media2.common.MediaItem r0 = r0.m32153b()
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0037
            r0 = r7
            r1 = r9
            long r1 = r1.m38231j()
            long r0 = r0 + r1
            r10 = r0
        L_0x0037:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1759e.m32220c():long");
    }

    /* renamed from: c */
    public void m32219c(int i) {
        this.f7097m = i;
    }

    /* renamed from: d */
    public MediaItem m32218d() {
        return this.f7095k.m32153b();
    }

    /* renamed from: d */
    public void m32217d(int i) {
        this.f7086b.mo32171a(m32218d(), m32210j());
        this.f7095k.m32154a(i == 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m32216e() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.m32211i()
            r1 = 1001(0x3e9, float:1.403E-42)
            if (r0 == r1) goto L_0x000f
            r0 = 1
            r6 = r0
            goto L_0x0011
        L_0x000f:
            r0 = 0
            r6 = r0
        L_0x0011:
            r0 = r6
            p012b.p042i.p053o.C0948h.m35437b(r0)
            r0 = 0
            r1 = r5
            b.s.b.a.m0 r1 = r1.f7091g
            long r1 = r1.getCurrentPosition()
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r5
            b.s.c.g.e$f r0 = r0.f7095k
            androidx.media2.common.MediaItem r0 = r0.m32153b()
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x003b
            r0 = r7
            r1 = r9
            long r1 = r1.m38231j()
            long r0 = r0 + r1
            r10 = r0
        L_0x003b:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1759e.m32216e():long");
    }

    /* renamed from: e */
    public void m32215e(int i) {
        this.f7094j.m32106c(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m32214f() {
        /*
            r5 = this;
            r0 = r5
            b.s.c.g.e$f r0 = r0.f7095k
            long r0 = r0.m32152c()
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0016
            r0 = -1
            r8 = r0
        L_0x0016:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1759e.m32214f():long");
    }

    /* renamed from: g */
    public Looper m32213g() {
        return this.f7087c;
    }

    /* renamed from: h */
    public C1711c m32212h() {
        return this.f7104t;
    }

    /* renamed from: i */
    public int m32211i() {
        if (m32202r()) {
            return 1005;
        }
        if (this.f7099o) {
            return AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        }
        int p = this.f7091g.m34054p();
        boolean m = this.f7091g.m34057m();
        if (p == 1) {
            return AdError.NO_FILL_ERROR_CODE;
        }
        int i = 1003;
        if (p != 2) {
            if (p == 3) {
                i = 1003;
                if (m) {
                    i = 1004;
                }
            } else if (p == 4) {
                i = 1003;
            } else {
                throw new IllegalStateException();
            }
        }
        return i;
    }

    /* renamed from: j */
    public C1710b m32210j() {
        return new C1710b(this.f7091g.m34054p() == 1 ? 0L : C1220c.m34196a(m32216e()), System.nanoTime(), (this.f7091g.m34054p() != 3 || !this.f7091g.m34057m()) ? 0.0f : this.f7104t.m32303d().floatValue());
    }

    /* renamed from: k */
    public List<MediaPlayer2.AbstractC0410c> m32209k() {
        return this.f7094j.m32109b();
    }

    /* renamed from: l */
    public int m32208l() {
        return this.f7103s;
    }

    /* renamed from: m */
    public int m32207m() {
        return this.f7102r;
    }

    /* renamed from: n */
    public float m32206n() {
        return this.f7091g.m34052r();
    }

    /* renamed from: o */
    public void m32205o() {
        this.f7094j.m32111a(this.f7091g);
        if (this.f7094j.m32107c()) {
            this.f7086b.mo32164e(m32218d());
        }
    }

    /* renamed from: p */
    public void m32204p() {
        this.f7086b.mo32169b(this.f7095k.m32153b());
    }

    /* renamed from: q */
    public void m32203q() {
        if (m32218d() == null) {
            this.f7086b.mo32176a();
            return;
        }
        this.f7101q = true;
        if (this.f7091g.m34054p() == 3) {
            m32199u();
        }
    }

    /* renamed from: r */
    public boolean m32202r() {
        return this.f7091g.m34056n() != null;
    }

    /* renamed from: s */
    public final void m32201s() {
        if (this.f7098n && !this.f7100p) {
            this.f7100p = true;
            if (this.f7095k.m32151d()) {
                this.f7086b.mo32174a(m32218d(), (int) (this.f7089e.mo32365b() / 1000));
            }
            this.f7086b.mo32175a(m32218d());
        }
    }

    /* renamed from: t */
    public final void m32200t() {
        if (this.f7101q) {
            this.f7101q = false;
            this.f7086b.mo32176a();
        }
        if (this.f7091g.m34057m()) {
            this.f7095k.m32149f();
            this.f7091g.m34081a(false);
        }
    }

    /* renamed from: u */
    public final void m32199u() {
        MediaItem b = this.f7095k.m32153b();
        boolean z = this.f7098n;
        boolean z2 = this.f7101q;
        if (!z) {
            this.f7098n = true;
            this.f7099o = true;
            this.f7095k.m32154a(false);
            this.f7086b.mo32163f(b);
        } else if (z2) {
            this.f7101q = false;
            this.f7086b.mo32176a();
        }
        if (this.f7100p) {
            this.f7100p = false;
            if (this.f7095k.m32151d()) {
                this.f7086b.mo32174a(m32218d(), (int) (this.f7089e.mo32365b() / 1000));
            }
            this.f7086b.mo32160i(m32218d());
        }
    }

    /* renamed from: v */
    public final void m32198v() {
        this.f7095k.m32148g();
    }

    /* renamed from: w */
    public final void m32197w() {
        this.f7095k.m32147h();
    }

    /* renamed from: x */
    public void m32196x() {
        this.f7099o = false;
        this.f7091g.m34081a(false);
    }

    /* renamed from: y */
    public void m32195y() {
        this.f7099o = false;
        if (this.f7091g.m34054p() == 4) {
            this.f7091g.m34558a(0L);
        }
        this.f7091g.m34081a(true);
    }

    /* renamed from: z */
    public void m32194z() {
        C0948h.m35437b(!this.f7098n);
        this.f7095k.m32146i();
    }
}
