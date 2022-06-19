package p1727n3.p1874y.p1906c;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.PlaybackParams;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import n3.y.b.a.k0;
import n3.y.b.a.t0.j;
import n3.y.b.a.w0.n;
import n3.y.b.a.w0.q;
import p1727n3.p1874y.p1876b.p1877a.AbstractC27068a;
import p1727n3.p1874y.p1876b.p1877a.C27073c;
import p1727n3.p1874y.p1876b.p1877a.k0$b;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27121g;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27115d;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27142u;
import p1727n3.p1874y.p1876b.p1877a.p1895t0.AbstractC27371t;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27405h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.AbstractC27415a;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p1727n3.p1874y.p1906c.C27470d1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.c.j0 */
/* loaded from: classes-dex2jar.jar:n3/y/c/j0.class */
public final class C27477j0 {

    /* renamed from: a */
    public final Context f77343a;

    /* renamed from: b */
    public final AbstractC27479c f77344b;

    /* renamed from: c */
    public final Looper f77345c;

    /* renamed from: d */
    public final Handler f77346d;

    /* renamed from: e */
    public final n f77347e = new n((Context) null, new SparseArray(), 2000, AbstractC27415a.f77151a, false);

    /* renamed from: f */
    public final Runnable f77348f = new RunnableC27482f();

    /* renamed from: g */
    public k0 f77349g;

    /* renamed from: h */
    public Handler f77350h;

    /* renamed from: i */
    public C27142u f77351i;

    /* renamed from: j */
    public C27470d1 f77352j;

    /* renamed from: k */
    public C27481e f77353k;

    /* renamed from: l */
    public boolean f77354l;

    /* renamed from: m */
    public int f77355m;

    /* renamed from: n */
    public boolean f77356n;

    /* renamed from: o */
    public boolean f77357o;

    /* renamed from: p */
    public boolean f77358p;

    /* renamed from: q */
    public boolean f77359q;

    /* renamed from: r */
    public int f77360r;

    /* renamed from: s */
    public int f77361s;

    /* renamed from: t */
    public C27494z0 f77362t;

    /* renamed from: n3.y.c.j0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/c/j0$b.class */
    public static final class C27478b {

        /* renamed from: a */
        public final Map<FileDescriptor, Object> f77363a = new HashMap();
    }

    /* renamed from: n3.y.c.j0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/c/j0$c.class */
    public interface AbstractC27479c {
    }

    /* renamed from: n3.y.c.j0$d */
    /* loaded from: classes-dex2jar.jar:n3/y/c/j0$d.class */
    public static final class C27480d {

        /* renamed from: a */
        public final MediaItem f77364a;

        /* renamed from: b */
        public final boolean f77365b;

        public C27480d(MediaItem mediaItem, boolean z) {
            this.f77364a = mediaItem;
            this.f77365b = z;
        }
    }

    /* renamed from: n3.y.c.j0$e */
    /* loaded from: classes-dex2jar.jar:n3/y/c/j0$e.class */
    public static final class C27481e {

        /* renamed from: a */
        public final Context f77366a;

        /* renamed from: b */
        public final AbstractC27479c f77367b;

        /* renamed from: c */
        public final k0 f77368c;

        /* renamed from: d */
        public final AbstractC27405h.AbstractC27406a f77369d;

        /* renamed from: e */
        public final j f77370e;

        /* renamed from: f */
        public final ArrayDeque<C27480d> f77371f;

        /* renamed from: g */
        public final C27478b f77372g;

        /* renamed from: h */
        public long f77373h;

        /* renamed from: i */
        public long f77374i;

        public C27481e(Context context, k0 k0Var, AbstractC27479c abstractC27479c) {
            String str;
            this.f77366a = context;
            this.f77368c = k0Var;
            this.f77367b = abstractC27479c;
            int i = C27445x.f77229a;
            try {
                str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                str = "?";
            }
            String str2 = Build.VERSION.RELEASE;
            this.f77369d = new q(context, C22128a.m8610j(C22128a.m8736A(C22128a.m8623f2(str2, C22128a.m8623f2(str, "MediaPlayer2".length() + 38)), "MediaPlayer2", StringConstant.SLASH, str, " (Linux;Android "), str2, ") ", "ExoPlayerLib/2.10.4"));
            this.f77370e = new j(new AbstractC27371t[0]);
            this.f77371f = new ArrayDeque<>();
            this.f77372g = new C27478b();
            this.f77373h = -1L;
        }

        /* renamed from: a */
        public void m221a() {
            while (!this.f77371f.isEmpty()) {
                m217e(this.f77371f.remove());
            }
        }

        /* renamed from: b */
        public MediaItem m220b() {
            return this.f77371f.isEmpty() ? null : this.f77371f.peekFirst().f77364a;
        }

        /* renamed from: c */
        public boolean m219c() {
            return !this.f77371f.isEmpty() && this.f77371f.peekFirst().f77365b;
        }

        /* renamed from: d */
        public void m218d(boolean z) {
            m220b();
            if (z) {
                k0 k0Var = this.f77368c;
                k0Var.n();
                Objects.requireNonNull(k0Var.c);
            }
            int currentWindowIndex = this.f77368c.getCurrentWindowIndex();
            if (currentWindowIndex > 0) {
                if (z) {
                    C22128a.m8569t0(this.f77367b, m220b(), 5, 0);
                }
                for (int i = 0; i < currentWindowIndex; i++) {
                    m217e(this.f77371f.removeFirst());
                }
                if (z) {
                    C22128a.m8569t0(this.f77367b, m220b(), 2, 0);
                }
                this.f77370e.D(0, currentWindowIndex);
                this.f77374i = 0L;
                this.f77373h = -1L;
                if (this.f77368c.e() != 3 || this.f77373h != -1) {
                    return;
                }
                this.f77373h = System.nanoTime();
            }
        }

        /* renamed from: e */
        public final void m217e(C27480d c27480d) {
            CallbackMediaItem callbackMediaItem = c27480d.f77364a;
            try {
                if (callbackMediaItem instanceof FileMediaItem) {
                    Objects.requireNonNull((FileMediaItem) callbackMediaItem);
                    throw null;
                } else if (!(callbackMediaItem instanceof CallbackMediaItem)) {
                } else {
                    Objects.requireNonNull(callbackMediaItem);
                    throw null;
                }
            } catch (IOException e) {
                String str = "Error releasing media item " + callbackMediaItem;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:73:0x037b, code lost:
            if (r0 != 576460752303423487L) goto L74;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x01a1  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0372  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x038b  */
        /* JADX WARN: Type inference failed for: r0v160, types: [boolean] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r17v2, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v45, types: [boolean] */
        /* JADX WARN: Type inference failed for: r38v0 */
        /* JADX WARN: Type inference failed for: r38v1 */
        /* JADX WARN: Type inference failed for: r38v2 */
        /* JADX WARN: Type inference failed for: r4v1, types: [long] */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m216f(java.util.List<androidx.media2.common.MediaItem> r15) {
            /*
                Method dump skipped, instructions count: 1051
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1906c.C27477j0.C27481e.m216f(java.util.List):void");
        }
    }

    /* renamed from: n3.y.c.j0$f */
    /* loaded from: classes-dex2jar.jar:n3/y/c/j0$f.class */
    public final class RunnableC27482f implements Runnable {
        public RunnableC27482f() {
            C27477j0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C27477j0 c27477j0 = C27477j0.this;
            if (c27477j0.f77353k.m219c()) {
                m mVar = c27477j0.f77344b;
                MediaItem m230a = c27477j0.m230a();
                k0 k0Var = c27477j0.f77349g;
                long b = k0Var.b();
                long c = k0Var.c();
                int i = 100;
                if (b == -9223372036854775807L || c == -9223372036854775807L) {
                    i = 0;
                } else if (c != 0) {
                    i = C27445x.m280g((int) ((b * 100) / c), 0, 100);
                }
                C22128a.m8569t0(mVar, m230a, 704, i);
            }
            c27477j0.f77346d.removeCallbacks(c27477j0.f77348f);
            c27477j0.f77346d.postDelayed(c27477j0.f77348f, 1000L);
        }
    }

    public C27477j0(Context context, AbstractC27479c abstractC27479c, Looper looper) {
        this.f77343a = context.getApplicationContext();
        this.f77344b = abstractC27479c;
        this.f77345c = looper;
        this.f77346d = new Handler(looper);
    }

    /* renamed from: a */
    public MediaItem m230a() {
        return this.f77353k.m220b();
    }

    /* renamed from: b */
    public long m229b() {
        MediaSessionCompat.m43187x(m228c() != 1001, null);
        return Math.max(0L, this.f77349g.getCurrentPosition());
    }

    /* renamed from: c */
    public int m228c() {
        k0 k0Var = this.f77349g;
        k0Var.n();
        if (k0Var.c.s.f75679f != null) {
            return 1005;
        }
        if (this.f77357o) {
            return 1002;
        }
        int e = this.f77349g.e();
        boolean d = this.f77349g.d();
        if (e == 1) {
            return 1001;
        }
        int i = 1003;
        if (e != 2) {
            if (e == 3) {
                i = 1003;
                if (d) {
                    i = 1004;
                }
            } else if (e != 4) {
                throw new IllegalStateException();
            } else {
                i = 1003;
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* renamed from: d */
    public C27493y0 m227d() {
        return new C27493y0(this.f77349g.e() == 1 ? (char) 0 : C27073c.m948a(m229b()), System.nanoTime(), (this.f77349g.e() != 3 || !this.f77349g.d()) ? 0.0f : this.f77362t.m199a().floatValue());
    }

    /* renamed from: e */
    public List<SessionPlayer.TrackInfo> m226e() {
        C27470d1 c27470d1 = this.f77352j;
        Objects.requireNonNull(c27470d1);
        ArrayList arrayList = new ArrayList();
        for (SparseArray sparseArray : Arrays.asList(c27470d1.f77325e, c27470d1.f77326f, c27470d1.f77327g, c27470d1.f77328h)) {
            for (int i = 0; i < sparseArray.size(); i++) {
                arrayList.add(((C27470d1.C27471b) sparseArray.valueAt(i)).f77336b);
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public void m225f(int i, int i2, float f) {
        int i3 = i;
        if (f != 1.0f) {
            i3 = (int) (f * i);
        }
        if (this.f77360r == i3 && this.f77361s == i2) {
            return;
        }
        this.f77360r = i3;
        this.f77361s = i2;
        m mVar = this.f77344b;
        m mVar2 = mVar;
        mVar2.h(new x(mVar2, this.f77353k.m220b(), i3, i2));
    }

    /* renamed from: g */
    public boolean m224g() {
        k0 k0Var = this.f77349g;
        k0Var.n();
        return k0Var.c.s.f75679f != null;
    }

    /* renamed from: h */
    public final void m223h() {
        MediaItem m220b = this.f77353k.m220b();
        boolean z = this.f77356n;
        boolean z2 = this.f77359q;
        if (!z) {
            this.f77356n = true;
            this.f77357o = true;
            this.f77353k.m218d(false);
            m mVar = this.f77344b;
            C22128a.m8569t0(mVar, m220b, 100, 0);
            synchronized (mVar.d) {
                m$k m_k = mVar.e;
                if (m_k != null && m_k.f77390a == 6 && Objects.equals(m_k.f77392c, m220b)) {
                    m$k m_k2 = mVar.e;
                    if (m_k2.f77391b) {
                        m_k2.m213b(0);
                        mVar.e = null;
                        mVar.l();
                    }
                }
            }
        } else if (z2) {
            this.f77359q = false;
            this.f77344b.k();
        }
        if (this.f77358p) {
            this.f77358p = false;
            if (this.f77353k.m219c()) {
                C22128a.m8569t0(this.f77344b, m230a(), 703, (int) (this.f77347e.c() / 1000));
            }
            C22128a.m8569t0(this.f77344b, m230a(), 702, 0);
        }
    }

    /* renamed from: i */
    public void m222i() {
        k0 k0Var = this.f77349g;
        if (k0Var != null) {
            k0Var.k(false);
            if (m228c() != 1001) {
                this.f77344b.j(m230a(), m227d());
            }
            this.f77349g.g();
            this.f77353k.m221a();
        }
        a aVar = new a(this);
        Context context = this.f77343a;
        C27115d c27115d = C27115d.f75824c;
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        this.f77351i = new C27142u((!(C27445x.f77229a >= 17 && "Amazon".equals(C27445x.f77231c)) || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? C27115d.f75824c : new C27115d(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : C27115d.f75825d, new AbstractC27121g[0]);
        b1 b1Var = new b1(aVar);
        C27465a1 c27465a1 = new C27465a1(this.f77343a, this.f77351i, b1Var);
        this.f77352j = new C27470d1(b1Var);
        k0$b k0_b = new k0$b(this.f77343a, c27465a1);
        DefaultTrackSelector defaultTrackSelector = this.f77352j.f77324d;
        MediaSessionCompat.m43184y(!k0_b.f75734i);
        k0_b.f75729d = defaultTrackSelector;
        n nVar = this.f77347e;
        MediaSessionCompat.m43184y(!k0_b.f75734i);
        k0_b.f75731f = nVar;
        Looper looper = this.f77345c;
        MediaSessionCompat.m43184y(!k0_b.f75734i);
        k0_b.f75733h = looper;
        MediaSessionCompat.m43184y(!k0_b.f75734i);
        k0_b.f75734i = true;
        this.f77349g = new k0(k0_b.f75726a, k0_b.f75727b, k0_b.f75729d, k0_b.f75730e, k0_b.f75731f, k0_b.f75732g, k0_b.f75728c, k0_b.f75733h);
        this.f77350h = new Handler(this.f77349g.c.f.h.getLooper());
        this.f77353k = new C27481e(this.f77343a, this.f77349g, this.f77344b);
        k0 k0Var2 = this.f77349g;
        k0Var2.n();
        k0Var2.c.h.addIfAbsent(new AbstractC27068a.C27069a(aVar));
        k0 k0Var3 = this.f77349g;
        k0Var3.i.retainAll(Collections.singleton(k0Var3.l));
        k0Var3.i.add(aVar);
        this.f77349g.h.add(aVar);
        this.f77360r = 0;
        this.f77361s = 0;
        this.f77356n = false;
        this.f77357o = false;
        this.f77358p = false;
        this.f77359q = false;
        this.f77354l = false;
        this.f77355m = 0;
        PlaybackParams playbackParams = new PlaybackParams();
        playbackParams.setSpeed(1.0f);
        playbackParams.setPitch(1.0f);
        playbackParams.setAudioFallbackMode(0);
        this.f77362t = new C27494z0(playbackParams);
    }
}
