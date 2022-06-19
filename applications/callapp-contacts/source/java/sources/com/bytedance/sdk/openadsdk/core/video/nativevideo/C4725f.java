package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.C4801x;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4717b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.p158a.C4670a;
import com.bytedance.sdk.openadsdk.core.video.p161d.C4699d;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4708a;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b;
import com.bytedance.sdk.openadsdk.core.widget.C4781e;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p186m.C5064e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.explorestack.iab.vast.VastError;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f.class */
public class C4725f implements AbstractC4719c, AbstractC4723d, HandlerC5446ah.AbstractC5447a {

    /* renamed from: E */
    private WeakReference<AbstractC4719c.AbstractC4722c> f17235E;

    /* renamed from: F */
    private WeakReference<AbstractC4734a> f17236F;

    /* renamed from: G */
    private int f17237G;

    /* renamed from: H */
    private int f17238H;

    /* renamed from: T */
    private long f17250T;

    /* renamed from: V */
    private int f17252V;

    /* renamed from: b */
    private C4743h f17255b;

    /* renamed from: c */
    private final WeakReference<ViewGroup> f17256c;

    /* renamed from: g */
    private C4699d f17260g;

    /* renamed from: h */
    private AbstractC4719c.AbstractC4720a f17261h;

    /* renamed from: k */
    private long f17264k;

    /* renamed from: l */
    private List<Runnable> f17265l;

    /* renamed from: m */
    private boolean f17266m;

    /* renamed from: n */
    private final WeakReference<Context> f17267n;

    /* renamed from: o */
    private final boolean f17268o;

    /* renamed from: r */
    private final C4557i f17271r;

    /* renamed from: u */
    private String f17274u;

    /* renamed from: v */
    private boolean f17275v;

    /* renamed from: w */
    private boolean f17276w;

    /* renamed from: x */
    private WeakReference<AbstractC4724e> f17277x;

    /* renamed from: d */
    private final HandlerC5446ah f17257d = new HandlerC5446ah(this);

    /* renamed from: e */
    private long f17258e = 0;

    /* renamed from: f */
    private long f17259f = 0;

    /* renamed from: i */
    private long f17262i = 0;

    /* renamed from: j */
    private long f17263j = 0;

    /* renamed from: p */
    private boolean f17269p = false;

    /* renamed from: q */
    private boolean f17270q = false;

    /* renamed from: s */
    private boolean f17272s = true;

    /* renamed from: t */
    private boolean f17273t = false;

    /* renamed from: y */
    private long f17278y = 0;

    /* renamed from: z */
    private boolean f17279z = false;

    /* renamed from: A */
    private boolean f17231A = false;

    /* renamed from: B */
    private boolean f17232B = false;

    /* renamed from: C */
    private boolean f17233C = false;

    /* renamed from: D */
    private boolean f17234D = true;

    /* renamed from: I */
    private int f17239I = 0;

    /* renamed from: J */
    private boolean f17240J = false;

    /* renamed from: K */
    private boolean f17241K = true;

    /* renamed from: L */
    private final Runnable f17242L = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.3
        @Override // java.lang.Runnable
        public void run() {
            if (C4725f.this.f17260g != null) {
                C4725f.this.f17260g.m34425e();
            }
        }
    };

    /* renamed from: M */
    private final Runnable f17243M = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.4
        @Override // java.lang.Runnable
        public void run() {
            if (C4725f.this.f17261h != null) {
                C4725f.this.f17261h.mo34365a();
            }
        }
    };

    /* renamed from: N */
    private final Runnable f17244N = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.5
        @Override // java.lang.Runnable
        public void run() {
            if (C4725f.this.f17260g != null) {
                if (C4725f.this.f17264k <= 0) {
                    C4725f.this.f17260g.m34425e();
                }
                C4725f.this.f17260g.m34424f();
            }
            C4725f.this.f17257d.postDelayed(this, 200L);
        }
    };

    /* renamed from: O */
    private int f17245O = 0;

    /* renamed from: P */
    private long f17246P = 0;

    /* renamed from: a */
    Runnable f17254a = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.6
        @Override // java.lang.Runnable
        public void run() {
            if (C4725f.this.f17255b != null) {
                C4725f.this.f17255b.mo34224a(C4725f.this.f17271r, C4725f.this.f17267n, false);
                C4725f.this.f17255b.m34185w();
                C4725f.this.mo34280d(true);
                C5478q.m32106e("NativeVideoController", "出错后展示结果页、、、、、、、showAdCard");
            }
        }
    };

    /* renamed from: Q */
    private long f17247Q = 0;

    /* renamed from: R */
    private long f17248R = 0;

    /* renamed from: S */
    private boolean f17249S = false;

    /* renamed from: U */
    private final BroadcastReceiver f17251U = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                C4725f.this.mo34264i();
            } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            } else {
                C4725f.this.m34283d(context);
            }
        }
    };

    /* renamed from: W */
    private boolean f17253W = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.f$8 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f$8.class */
    static /* synthetic */ class C47338 {

        /* renamed from: a */
        static final /* synthetic */ int[] f17288a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[C4781e.EnumC4783a.values().length];
            f17288a = iArr;
            try {
                iArr[C4781e.EnumC4783a.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17288a[C4781e.EnumC4783a.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17288a[C4781e.EnumC4783a.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f$a.class */
    public interface AbstractC4734a {
        /* renamed from: a */
        void mo34242a(int i);

        /* renamed from: g */
        void mo34241g();
    }

    public C4725f(Context context, ViewGroup viewGroup, C4557i c4557i, String str, boolean z, boolean z2) {
        boolean z3 = false;
        this.f17274u = "embeded_ad";
        this.f17275v = false;
        this.f17276w = true;
        this.f17237G = 0;
        this.f17238H = 0;
        this.f17252V = 1;
        this.f17252V = C5482t.m32088c(context);
        try {
            this.f17237G = viewGroup.getWidth();
            this.f17238H = viewGroup.getHeight();
        } catch (Throwable th) {
        }
        this.f17256c = new WeakReference<>(viewGroup);
        this.f17274u = str;
        this.f17267n = new WeakReference<>(context);
        this.f17271r = c4557i;
        m34303b(context);
        this.f17268o = Build.VERSION.SDK_INT >= 17 ? true : z3;
        this.f17275v = z;
        this.f17276w = z2;
    }

    public C4725f(Context context, ViewGroup viewGroup, C4557i c4557i, String str, boolean z, boolean z2, boolean z3) {
        this.f17274u = "embeded_ad";
        this.f17275v = false;
        this.f17276w = true;
        this.f17237G = 0;
        this.f17238H = 0;
        this.f17252V = 1;
        this.f17252V = C5482t.m32088c(context);
        mo34295b(z);
        this.f17274u = str;
        try {
            this.f17237G = viewGroup.getWidth();
            this.f17238H = viewGroup.getHeight();
        } catch (Throwable th) {
        }
        this.f17256c = new WeakReference<>(viewGroup);
        this.f17267n = new WeakReference<>(context);
        this.f17271r = c4557i;
        m34303b(context);
        this.f17268o = Build.VERSION.SDK_INT >= 17;
        this.f17275v = z2;
        this.f17276w = z3;
    }

    /* renamed from: A */
    public void m34352A() {
        m34351B();
        this.f17257d.postDelayed(this.f17244N, 800L);
    }

    /* renamed from: B */
    private void m34351B() {
        this.f17257d.removeCallbacks(this.f17244N);
    }

    /* renamed from: C */
    private boolean m34350C() {
        WeakReference<Context> weakReference = this.f17267n;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* renamed from: D */
    private void m34349D() {
        List<Runnable> list = this.f17265l;
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it2 = new ArrayList(this.f17265l).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.f17265l.clear();
    }

    /* renamed from: E */
    private void m34348E() {
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34437a(false, this.f17262i, !this.f17273t);
            m34352A();
        }
        if (this.f17269p) {
            C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_continue", mo34254p(), mo34252r(), m34294c());
        }
    }

    /* renamed from: F */
    private void m34347F() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f17247Q;
        this.f17248R = elapsedRealtime;
        if (!this.f17269p) {
            Map<String, Object> m32310a = C5438af.m32310a(elapsedRealtime, this.f17271r, mo34249u());
            if (this.f17234D) {
                C4811e.m33868b(this.f17267n.get(), this.f17271r, this.f17274u, "feed_auto_play", m32310a);
            } else if (this.f17262i <= 0) {
                C4811e.m33868b(this.f17267n.get(), this.f17271r, this.f17274u, "feed_play", m32310a);
            }
            this.f17269p = true;
        }
    }

    /* renamed from: G */
    private void m34346G() {
        if (this.f17256c.get() == null || C4801x.m33911a(this.f17256c.get(), 20, 0)) {
            return;
        }
        C5478q.m32106e("NativeVideoController", "onStateError 出错后展示结果页、、、、、、、");
        this.f17255b.mo34224a(this.f17271r, this.f17267n, false);
        mo34280d(true);
        mo34257m();
    }

    /* renamed from: H */
    private void m34345H() {
        C5478q.m32112b("NativeVideoController", "before auseWhenInvisible、、、、、、、");
        if (this.f17256c.get() == null || C4801x.m33911a(this.f17256c.get(), 20, 0)) {
            return;
        }
        C5478q.m32112b("NativeVideoController", "in pauseWhenInvisible、、、、、、、");
        m34286d();
    }

    /* renamed from: I */
    private void m34344I() {
        C4699d c4699d;
        WeakReference<ViewGroup> weakReference;
        int i;
        int i2;
        C5478q.m32112b("ChangeVideoSize", "[step-0]  TAG is 'ChangeVideoSize' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>");
        try {
            WeakReference<Context> weakReference2 = this.f17267n;
            if (weakReference2 != null && weakReference2.get() != null && m34343J() != null && (c4699d = this.f17260g) != null && c4699d.m34455a() != null && (weakReference = this.f17256c) != null && weakReference.get() != null) {
                MediaPlayer m34455a = this.f17260g.m34455a();
                int videoWidth = m34455a.getVideoWidth();
                int videoHeight = m34455a.getVideoHeight();
                int width = this.f17256c.get().getWidth();
                int height = this.f17256c.get().getHeight();
                if (width <= 0 || height <= 0 || videoHeight <= 0 || videoWidth <= 0) {
                    C5478q.m32112b("ChangeVideoSize", " container or video exist size <= 0");
                    return;
                }
                if (videoWidth == videoHeight) {
                    i = width > height ? height : width;
                    i2 = i;
                } else if (videoWidth > videoHeight) {
                    i = (int) ((width * 1.0d) / ((videoWidth * 1.0f) / videoHeight));
                    i2 = width;
                } else {
                    i2 = (int) ((height * 1.0d) / ((videoHeight * 1.0f) / videoWidth));
                    i = height;
                }
                int i3 = height;
                if (i <= height) {
                    i3 = i <= 0 ? height : i;
                }
                int i4 = width;
                if (i2 <= width) {
                    i4 = i2 <= 0 ? width : i2;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i3);
                layoutParams.addRule(13);
                if (m34343J() instanceof TextureView) {
                    ((TextureView) m34343J()).setLayoutParams(layoutParams);
                    C5478q.m32112b("ChangeVideoSize", "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>");
                    return;
                } else if (!(m34343J() instanceof SurfaceView)) {
                    return;
                } else {
                    ((SurfaceView) m34343J()).setLayoutParams(layoutParams);
                    C5478q.m32112b("ChangeVideoSize", "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>");
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("[step-1] >>>>> mContextRef=");
            sb.append(this.f17267n);
            sb.append(",mContextRef.get()=");
            WeakReference<Context> weakReference3 = this.f17267n;
            sb.append(weakReference3 != null ? weakReference3.get() : null);
            sb.append(",getIRenderView() =");
            sb.append(m34343J());
            C5478q.m32112b("ChangeVideoSize", sb.toString());
            StringBuilder sb2 = new StringBuilder("[step-1] >>>>> mMediaPlayerProxy == null:");
            sb2.append(this.f17260g == null);
            sb2.append(",mMediaPlayerProxy.getMediaPlayer() == null:");
            C4699d c4699d2 = this.f17260g;
            sb2.append(c4699d2 != null && c4699d2.m34455a() == null);
            C5478q.m32112b("ChangeVideoSize", sb2.toString());
        } catch (Throwable th) {
            C5478q.m32112b("ChangeVideoSize", "[step-11] >>>>> changeVideoSize error !!!!! ：" + th.toString());
        }
    }

    /* renamed from: J */
    private AbstractC4751b m34343J() {
        C4743h c4743h;
        WeakReference<Context> weakReference = this.f17267n;
        if (weakReference == null || weakReference.get() == null || this.f17267n.get().getResources().getConfiguration().orientation != 1 || (c4743h = this.f17255b) == null) {
            return null;
        }
        return c4743h.m34193o();
    }

    /* renamed from: K */
    private void m34342K() {
        if (!m34350C()) {
            return;
        }
        m34265h(!this.f17249S);
        if (!(this.f17267n.get() instanceof Activity)) {
            C5478q.m32112b("NativeVideoController", "context is not activity, not support this function.");
            return;
        }
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34212b(this.f17256c.get());
            this.f17255b.mo34211b(false);
        }
        m34337a(1);
        WeakReference<AbstractC4724e> weakReference = this.f17277x;
        AbstractC4724e abstractC4724e = weakReference != null ? weakReference.get() : null;
        if (abstractC4724e == null) {
            return;
        }
        abstractC4724e.mo34353a(this.f17249S);
    }

    /* renamed from: L */
    private void m34341L() {
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34208c(0);
            this.f17255b.mo34218a(false, false);
            this.f17255b.mo34211b(false);
            this.f17255b.mo34216b();
            this.f17255b.mo34204d();
        }
    }

    /* renamed from: M */
    private void m34340M() {
        C4557i c4557i = this.f17271r;
        if (c4557i != null) {
            C4600n.m34806g().mo33138a(C5064e.m33132a(c4557i.m35235L(), true, this.f17271r));
        }
    }

    /* renamed from: N */
    private void m34339N() {
        C4811e.m33868b(this.f17267n.get(), this.f17271r, this.f17274u, "play_start", C5438af.m32310a(this.f17248R, this.f17271r, mo34249u()));
    }

    /* renamed from: a */
    private void m34334a(long j, long j2) {
        this.f17262i = j;
        this.f17264k = j2;
        this.f17255b.mo34229a(j, j2);
        this.f17255b.mo34233a(C4708a.m34402a(j, j2));
        try {
            AbstractC4719c.AbstractC4720a abstractC4720a = this.f17261h;
            if (abstractC4720a == null) {
                return;
            }
            abstractC4720a.mo34363a(j, j2);
        } catch (Throwable th) {
            C5478q.m32108c("NativeVideoController", "onProgressUpdate error: ", th);
        }
    }

    /* renamed from: a */
    private void m34333a(long j, boolean z) {
        if (this.f17260g == null) {
            return;
        }
        if (z) {
            m34341L();
        }
        this.f17260g.m34451a(j);
    }

    /* renamed from: a */
    private void m34331a(Context context, int i) {
        if (!m34350C() || context == null || this.f17252V == i) {
            return;
        }
        this.f17252V = i;
        if (i != 4 && i != 0) {
            this.f17231A = false;
        }
        if (!this.f17231A && !mo34247w() && this.f17275v) {
            m34285d(2);
        }
        WeakReference<AbstractC4734a> weakReference = this.f17236F;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17236F.get().mo34242a(this.f17252V);
    }

    /* renamed from: a */
    private void m34312a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!this.f17255b.mo34195k() || !this.f17266m) {
            m34296b(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: a */
    private void m34311a(String str) {
        C5478q.m32112b("tag_video_play", "[video] NativeVideoController#playVideo has invoke !");
        if (this.f17260g != null) {
            C4670a c4670a = new C4670a();
            c4670a.f17063a = str;
            C4557i c4557i = this.f17271r;
            if (c4557i != null) {
                if (c4557i.m35245B() != null) {
                    c4670a.f17066d = this.f17271r.m35245B().m35040k();
                }
                c4670a.f17064b = String.valueOf(C5438af.m32278d(this.f17271r.m35228S()));
            }
            c4670a.f17065c = 0;
            this.f17260g.m34448a(c4670a);
            C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy has setDataSource !");
        }
        this.f17258e = System.currentTimeMillis();
        if (!TextUtils.isEmpty(str)) {
            this.f17255b.m34203d(8);
            this.f17255b.m34203d(0);
            m34312a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.2
                @Override // java.lang.Runnable
                public void run() {
                    C4725f.this.f17258e = System.currentTimeMillis();
                    C4725f.this.f17255b.mo34208c(0);
                    if (C4725f.this.f17260g != null && C4725f.this.f17262i == 0) {
                        C4725f.this.f17260g.m34437a(true, 0L, !C4725f.this.f17273t);
                    } else if (C4725f.this.f17260g != null) {
                        C4725f.this.f17260g.m34437a(true, C4725f.this.f17262i, !C4725f.this.f17273t);
                    }
                    if (C4725f.this.f17257d != null) {
                        C4725f.this.f17257d.postDelayed(C4725f.this.f17242L, 100L);
                    }
                    C4725f.this.m34352A();
                }
            });
        }
        if (this.f17272s) {
            m34270g();
        }
    }

    /* renamed from: b */
    private void m34306b(int i) {
        C4743h c4743h;
        this.f17245O++;
        if (m34350C() && (c4743h = this.f17255b) != null) {
            c4743h.m34185w();
            AbstractC4719c.AbstractC4720a abstractC4720a = this.f17261h;
            if (abstractC4720a != null) {
                abstractC4720a.mo34364a(this.f17259f, C4708a.m34402a(this.f17262i, this.f17264k));
            }
            this.f17259f = System.currentTimeMillis() - this.f17258e;
            if (!C5438af.m32291b(this.f17271r) || this.f17245O >= 2) {
                this.f17255b.mo34224a(this.f17271r, this.f17267n, true);
            }
            if (!this.f17270q) {
                C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_over", mo34254p(), 100, m34294c());
                this.f17270q = true;
                long j = this.f17264k;
                m34334a(j, j);
                long j2 = this.f17264k;
                this.f17262i = j2;
                this.f17263j = j2;
            }
            if (!this.f17272s && this.f17249S) {
                mo34277e(this.f17255b, null);
            }
            this.f17232B = true;
            if (!C5438af.m32291b(this.f17271r) || this.f17245O >= 2) {
                return;
            }
            mo34267h();
        }
    }

    /* renamed from: b */
    private void m34305b(int i, int i2) {
        if (this.f17271r == null) {
            return;
        }
        boolean m34274f = m34274f();
        String str = m34274f ? "play_error" : "play_start_error";
        Map<String, Object> m32305a = C5438af.m32305a(this.f17271r, i, i2, mo34249u());
        if (m34274f) {
            m32305a.put(VastIconXmlManager.DURATION, Long.valueOf(mo34254p()));
            m32305a.put("percent", Integer.valueOf(mo34252r()));
            m32305a.put("buffers_time", Long.valueOf(mo34255o()));
        }
        C4811e.m33866c(this.f17267n.get(), this.f17271r, this.f17274u, str, m32305a);
    }

    /* renamed from: b */
    private void m34303b(Context context) {
        EnumSet noneOf = EnumSet.noneOf(AbstractC4717b.EnumC4718a.class);
        noneOf.add(AbstractC4717b.EnumC4718a.hideCloseBtn);
        noneOf.add(AbstractC4717b.EnumC4718a.hideBackBtn);
        View m34290c = this.f17272s ? m34290c(context) : LayoutInflater.from(context.getApplicationContext()).inflate(C5486x.m32065f(context, "tt_video_detail_layout"), (ViewGroup) null, false);
        if (m34290c == null) {
            return;
        }
        if (this.f17272s) {
            this.f17255b = new C4743h(context, m34290c, true, noneOf, this.f17271r, this, m34338a());
        } else {
            this.f17255b = new C4735g(context, m34290c, true, noneOf, this.f17271r, this, false);
        }
        this.f17255b.m34222a(this);
    }

    /* renamed from: b */
    private void m34296b(Runnable runnable) {
        if (this.f17265l == null) {
            this.f17265l = Collections.synchronizedList(new ArrayList());
        }
        this.f17265l.add(runnable);
    }

    /* renamed from: c */
    private View m34290c(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(C5486x.m32066e(context, "tt_root_view"));
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(C5486x.m32066e(context, "tt_video_loading_retry_layout"));
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        imageView.setId(C5486x.m32066e(context, "tt_video_loading_cover_image"));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(layoutParams2);
        relativeLayout2.addView(imageView);
        ProgressBar progressBar = new ProgressBar(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        progressBar.setId(C5486x.m32066e(context, "tt_video_loading_progress"));
        layoutParams3.addRule(13, -1);
        progressBar.setLayoutParams(layoutParams3);
        progressBar.setIndeterminateDrawable(C5486x.m32068c(context, "tt_video_loading_progress_bar"));
        relativeLayout2.addView(progressBar);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        imageView2.setId(C5486x.m32066e(context, "tt_video_play"));
        layoutParams4.addRule(13, -1);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        imageView2.setImageResource(C5486x.m32067d(context, "tt_play_movebar_textpage"));
        imageView2.setVisibility(8);
        imageView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView2);
        ProgressBar progressBar2 = new ProgressBar(context, null, C5486x.m32064g(context, "tt_Widget_ProgressBar_Horizontal"));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.5f, resources.getDisplayMetrics()));
        progressBar2.setMax(100);
        progressBar2.setId(C5486x.m32066e(context, "tt_video_progress"));
        progressBar2.setBackgroundColor(0);
        progressBar2.setIndeterminateDrawable(null);
        progressBar2.setProgressDrawable(C5486x.m32068c(context, "tt_video_progress_drawable"));
        progressBar2.setVisibility(8);
        layoutParams5.addRule(12, -1);
        progressBar2.setLayoutParams(layoutParams5);
        relativeLayout.addView(progressBar2);
        ViewStub viewStub = new ViewStub(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        viewStub.setId(C5486x.m32066e(context, "tt_video_ad_cover"));
        viewStub.setLayoutParams(layoutParams6);
        viewStub.setLayoutResource(C5486x.m32065f(context, "tt_video_ad_cover_layout"));
        relativeLayout.addView(viewStub);
        ViewStub viewStub2 = new ViewStub(context);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(13, -1);
        viewStub2.setId(C5486x.m32066e(context, "tt_video_draw_layout_viewStub"));
        viewStub2.setLayoutParams(layoutParams7);
        viewStub2.setLayoutResource(C5486x.m32065f(context, "tt_video_draw_btn_layout"));
        relativeLayout.addView(viewStub2);
        return relativeLayout;
    }

    /* renamed from: c */
    private boolean m34293c(int i) {
        return this.f17255b.mo34215b(i);
    }

    /* renamed from: c */
    private boolean m34292c(int i, int i2) {
        C5478q.m32112b("TTVideoLandingPage", "OnError - Error code: " + i + " Extra code: " + i2);
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        boolean z2 = true;
        if (i2 != 1) {
            z2 = true;
            if (i2 != 700) {
                z2 = true;
                if (i2 != 800) {
                    z2 = z;
                }
            }
        }
        return z2;
    }

    /* renamed from: d */
    public void m34283d(Context context) {
        int m32088c = C5482t.m32088c(context);
        m34331a(context, m32088c);
        if (m32088c == 4) {
            this.f17279z = false;
        }
    }

    /* renamed from: d */
    private boolean m34285d(int i) {
        C4557i c4557i;
        int m32088c = C5482t.m32088c(C4600n.m34815a());
        if (m32088c == 0) {
            mo34264i();
            this.f17279z = true;
            C4743h c4743h = this.f17255b;
            if (c4743h != null) {
                c4743h.mo34224a(this.f17271r, this.f17267n, false);
            }
        }
        if (m32088c == 4 || m32088c == 0) {
            if (m32088c != 4) {
                return true;
            }
            this.f17279z = false;
            C4743h c4743h2 = this.f17255b;
            if (c4743h2 == null) {
                return true;
            }
            c4743h2.m34191q();
            return true;
        }
        C4743h c4743h3 = this.f17255b;
        if (c4743h3 != null) {
            c4743h3.mo34201e();
        }
        mo34264i();
        this.f17279z = true;
        this.f17231A = false;
        C4743h c4743h4 = this.f17255b;
        if (c4743h4 != null && (c4557i = this.f17271r) != null) {
            return c4743h4.m34231a(i, c4557i.m35245B(), this.f17276w);
        }
        return true;
    }

    /* renamed from: h */
    private void m34265h(boolean z) {
        this.f17249S = z;
    }

    /* renamed from: z */
    private boolean m34244z() {
        C5478q.m32112b("NativeVideoController", "retryCount=" + this.f17239I);
        int i = this.f17239I;
        if (i > 0) {
            C4743h c4743h = this.f17255b;
            if (c4743h == null) {
                return false;
            }
            c4743h.m34185w();
            this.f17255b.mo34224a(this.f17271r, this.f17267n, false);
            return false;
        } else if (this.f17260g == null) {
            return false;
        } else {
            this.f17239I = i + 1;
            C5478q.m32112b("NativeVideoController", "isPlaying=" + this.f17260g.m34423g() + ",isPaused=" + this.f17260g.m34421i() + ",isPrepared=" + this.f17260g.m34419k() + ",isStarted=" + this.f17260g.m34422h());
            return !this.f17260g.m34423g() || !this.f17260g.m34421i() || !this.f17260g.m34419k() || !this.f17260g.m34422h();
        }
    }

    /* renamed from: a */
    public void m34337a(int i) {
        if (!m34350C()) {
            return;
        }
        boolean z = i == 0 || i == 8;
        Context context = this.f17267n.get();
        if (!(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        try {
            activity.setRequestedOrientation(i);
        } catch (Throwable th) {
        }
        if (!z) {
            activity.getWindow().setFlags(1024, 1024);
        } else {
            activity.getWindow().clearFlags(1024);
        }
    }

    /* renamed from: a */
    public void m34336a(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.f17237G = i;
        this.f17238H = i2;
        C5478q.m32112b("NativeVideoController", "width=" + i + "height=" + i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34335a(long j) {
        this.f17262i = j;
        ?? r0 = this.f17263j;
        char c = j;
        if (r0 > j) {
            c = r0;
        }
        this.f17263j = c;
    }

    /* renamed from: a */
    public void m34332a(Context context) {
        int m32088c = C5482t.m32088c(context);
        m34331a(context, m32088c);
        if (m32088c == 4) {
            this.f17279z = false;
            mo34260k();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        WeakReference<Context> weakReference;
        WeakReference<AbstractC4734a> weakReference2;
        if (this.f17255b == null || message == null || (weakReference = this.f17267n) == null || weakReference.get() == null) {
            return;
        }
        int i = message.what;
        if (i == 108) {
            if (!(message.obj instanceof Long) || ((Long) message.obj).longValue() <= 0) {
                return;
            }
            this.f17264k = ((Long) message.obj).longValue();
        } else if (i == 109) {
            if (!(message.obj instanceof Long)) {
                return;
            }
            ?? longValue = ((Long) message.obj).longValue();
            this.f17262i = longValue;
            char c = this.f17263j;
            if (c <= longValue) {
                c = longValue;
            }
            this.f17263j = c;
            m34334a((long) longValue, this.f17264k);
        } else if (i == 308) {
            C5478q.m32106e("NativeVideoController", "播放器状态出错 STAT_ERROR 200 、、、、、、、");
            m34346G();
            m34305b((int) StatusLine.HTTP_PERM_REDIRECT, 0);
        } else if (i == 309) {
            C5478q.m32109c("NativeVideoController", "SSMediaPlayerWrapper 释放了。。。。。");
        } else {
            switch (i) {
                case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                    m34306b(message.what);
                    return;
                case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                    int i2 = message.arg1;
                    int i3 = message.arg2;
                    m34305b(i2, i3);
                    C5478q.m32106e("NativeVideoController", "CALLBACK_ON_ERROR、、before isVideoPlaying、、、、、");
                    if (m34274f() && i3 != -1004) {
                        return;
                    }
                    C5478q.m32106e("NativeVideoController", "出错后 errorcode,extra、、、、、、、" + i2 + "," + i3);
                    if (m34292c(i2, i3)) {
                        C5478q.m32106e("NativeVideoController", "出错后展示结果页、、、、、、、");
                        this.f17255b.mo34224a(this.f17271r, this.f17267n, false);
                        mo34280d(true);
                        mo34257m();
                    }
                    C4743h c4743h = this.f17255b;
                    if (c4743h != null) {
                        c4743h.m34185w();
                    }
                    AbstractC4719c.AbstractC4720a abstractC4720a = this.f17261h;
                    if (abstractC4720a != null) {
                        abstractC4720a.mo34361b(this.f17259f, C4708a.m34402a(this.f17262i, this.f17264k));
                    }
                    WeakReference<AbstractC4719c.AbstractC4722c> weakReference3 = this.f17235E;
                    if (weakReference3 == null || weakReference3.get() == null || m34274f()) {
                        return;
                    }
                    this.f17235E.get().mo34355a(i2, i3);
                    return;
                case 304:
                    int i4 = message.arg1;
                    C4743h c4743h2 = this.f17255b;
                    if (c4743h2 != null) {
                        if (i4 == 3 || i4 == 702) {
                            c4743h2.m34185w();
                            this.f17257d.removeCallbacks(this.f17254a);
                            this.f17240J = false;
                        } else if (i4 == 701) {
                            c4743h2.m34188t();
                            this.f17257d.postDelayed(this.f17254a, 8000L);
                            this.f17240J = true;
                        }
                    }
                    if (this.f17268o && i4 == 3) {
                        if (this.f17272s && (weakReference2 = this.f17236F) != null && weakReference2.get() != null) {
                            this.f17236F.get().mo34241g();
                        }
                        m34340M();
                        this.f17257d.removeCallbacks(this.f17254a);
                    }
                    if (!this.f17268o || i4 != 3) {
                        return;
                    }
                    m34347F();
                    return;
                case 305:
                    WeakReference<AbstractC4719c.AbstractC4722c> weakReference4 = this.f17235E;
                    if (weakReference4 != null && weakReference4.get() != null) {
                        this.f17235E.get().mo34354f();
                    }
                    HandlerC5446ah handlerC5446ah = this.f17257d;
                    if (handlerC5446ah != null) {
                        handlerC5446ah.removeCallbacks(this.f17243M);
                    }
                    if (!this.f17268o) {
                        m34347F();
                    }
                    C4743h c4743h3 = this.f17255b;
                    if (c4743h3 != null) {
                        c4743h3.m34185w();
                    }
                    this.f17257d.removeCallbacks(this.f17254a);
                    return;
                case 306:
                    C4743h c4743h4 = this.f17255b;
                    if (c4743h4 == null) {
                        return;
                    }
                    c4743h4.m34185w();
                    return;
                default:
                    switch (i) {
                        case 311:
                            m34344I();
                            return;
                        case 312:
                            if (!m34244z()) {
                                C5478q.m32109c("NativeVideoController", "不满足条件，无法重试");
                                return;
                            }
                            C5478q.m32106e("NativeVideoController", "CALLBACK_ON_RETRY_VIDEO_TIME-....重试....");
                            mo34257m();
                            this.f17260g = null;
                            mo34310a(this.f17271r.m35245B().m35043h(), this.f17271r.m35231P(), this.f17237G, this.f17238H, null, this.f17271r.m35228S(), 0L, m34307b());
                            return;
                        case 313:
                            m34345H();
                            return;
                        case 314:
                            this.f17247Q = SystemClock.elapsedRealtime();
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    /* renamed from: a */
    public void m34330a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.m34225a(drawVideoListener);
        }
    }

    /* renamed from: a */
    public void m34329a(final NativeVideoTsView.AbstractC4715b abstractC4715b) {
        C4743h c4743h;
        if (!this.f17272s || (c4743h = this.f17255b) == null) {
            return;
        }
        c4743h.m34223a(new NativeVideoTsView.AbstractC4715b() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.1
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4715b
            /* renamed from: a */
            public void mo34243a(View view, int i) {
                NativeVideoTsView.AbstractC4715b abstractC4715b2 = abstractC4715b;
                if (abstractC4715b2 != null) {
                    abstractC4715b2.mo34243a(view, i);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34328a(AbstractC4717b abstractC4717b, int i) {
        if (this.f17260g == null) {
            return;
        }
        m34352A();
        m34333a(this.f17250T, m34293c(i));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34327a(AbstractC4717b abstractC4717b, int i, boolean z) {
        if (!m34350C()) {
            return;
        }
        long m32059l = (((float) (i * this.f17264k)) * 1.0f) / C5486x.m32059l(this.f17267n.get(), "tt_video_progress_max");
        if (this.f17264k > 0) {
            this.f17250T = (int) m32059l;
        } else {
            this.f17250T = 0L;
        }
        C4743h c4743h = this.f17255b;
        if (c4743h == null) {
            return;
        }
        c4743h.mo34230a(this.f17250T);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34326a(AbstractC4717b abstractC4717b, SurfaceTexture surfaceTexture) {
        this.f17266m = true;
        C4699d c4699d = this.f17260g;
        if (c4699d == null) {
            return;
        }
        c4699d.m34450a(surfaceTexture);
        m34349D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34325a(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder) {
        this.f17266m = true;
        C4699d c4699d = this.f17260g;
        if (c4699d == null) {
            return;
        }
        c4699d.m34449a(surfaceHolder);
        m34349D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34324a(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34323a(AbstractC4717b abstractC4717b, View view) {
        if (this.f17260g == null || !m34350C()) {
            return;
        }
        if (this.f17260g.m34423g()) {
            mo34264i();
            this.f17255b.m34210b(true, false);
            this.f17255b.mo34209c();
        } else if (this.f17260g.m34421i()) {
            m34268g(false);
            C4743h c4743h = this.f17255b;
            if (c4743h == null) {
                return;
            }
            c4743h.m34210b(false, false);
        } else {
            C4743h c4743h2 = this.f17255b;
            if (c4743h2 != null) {
                c4743h2.m34206c(this.f17256c.get());
            }
            m34284d(this.f17262i);
            C4743h c4743h3 = this.f17255b;
            if (c4743h3 == null) {
                return;
            }
            c4743h3.m34210b(false, false);
        }
    }

    /* renamed from: a */
    public void m34322a(AbstractC4717b abstractC4717b, View view, boolean z) {
        m34342K();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34321a(AbstractC4717b abstractC4717b, View view, boolean z, boolean z2) {
        if (this.f17272s) {
            mo34264i();
        }
        if (z && !this.f17272s && !m34279e()) {
            this.f17255b.m34210b(!m34274f(), false);
            this.f17255b.mo34217a(z2, true, false);
        }
        C4699d c4699d = this.f17260g;
        if (c4699d == null || !c4699d.m34423g()) {
            this.f17255b.mo34209c();
            return;
        }
        this.f17255b.mo34209c();
        this.f17255b.mo34216b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34320a(AbstractC4719c.AbstractC4720a abstractC4720a) {
        this.f17261h = abstractC4720a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34319a(AbstractC4719c.AbstractC4722c abstractC4722c) {
        this.f17235E = new WeakReference<>(abstractC4722c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34318a(AbstractC4724e abstractC4724e) {
        this.f17277x = new WeakReference<>(abstractC4724e);
    }

    /* renamed from: a */
    public void m34317a(AbstractC4734a abstractC4734a) {
        this.f17236F = new WeakReference<>(abstractC4734a);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4723d
    /* renamed from: a */
    public void mo34313a(C4781e.EnumC4783a enumC4783a, String str) {
        int i = C47338.f17288a[enumC4783a.ordinal()];
        if (i == 1) {
            mo34264i();
        } else if (i == 2) {
            mo34308a(true);
        } else if (i != 3) {
        } else {
            mo34260k();
            this.f17279z = false;
            this.f17231A = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34309a(Map<String, Object> map) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34308a(boolean z) {
        if (this.f17272s) {
            this.f17246P = mo34254p();
        }
        if (!this.f17270q && this.f17269p) {
            if (z) {
                C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_break", this.f17246P, mo34252r(), m34294c());
                this.f17270q = false;
            } else {
                C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_pause", this.f17246P, mo34252r(), m34294c());
            }
        }
        mo34257m();
    }

    /* renamed from: a */
    public boolean m34338a() {
        return this.f17272s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public boolean mo34310a(String str, String str2, int i, int i2, List<String> list, String str3, long j, boolean z) {
        C5478q.m32112b("tag_video_play", "[video] start NativeVideoController#playVideoUrl and video url is :\r\n".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            C5478q.m32106e("tag_video_play", "[video] play video stop , because no video info");
            return false;
        }
        m34339N();
        this.f17273t = z;
        this.f17262i = j;
        int i3 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i3 <= 0) {
            this.f17270q = false;
            this.f17269p = false;
        }
        if (i3 > 0) {
            this.f17262i = j;
            ?? r0 = this.f17263j;
            char c = j;
            if (r0 > j) {
                c = r0;
            }
            this.f17263j = c;
        }
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34201e();
            if (this.f17245O == 0) {
                this.f17255b.mo34204d();
            }
            this.f17255b.m34207c(i, i2);
            this.f17255b.m34206c(this.f17256c.get());
            this.f17255b.m34232a(i, i2);
        }
        if (this.f17260g == null) {
            this.f17260g = new C4699d(this.f17257d);
        }
        C5478q.m32112b("tag_video_play", "[video] new MediaPlayer");
        this.f17259f = 0L;
        try {
            m34311a(str);
            return true;
        } catch (Exception e) {
            C5478q.m32106e("tag_video_play", "[video] invoke NativeVideoController#playVideo cause exception :" + e.toString());
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: b */
    public void mo34304b(long j) {
        this.f17278y = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34302b(AbstractC4717b abstractC4717b, int i) {
        if (this.f17260g != null) {
            m34351B();
        }
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34209c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34301b(AbstractC4717b abstractC4717b, SurfaceTexture surfaceTexture) {
        this.f17266m = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34300b(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder) {
        this.f17266m = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34299b(AbstractC4717b abstractC4717b, View view) {
        m34298b(abstractC4717b, view, false, false);
    }

    /* renamed from: b */
    public void m34298b(AbstractC4717b abstractC4717b, View view, boolean z, boolean z2) {
        if (!m34350C()) {
            return;
        }
        m34265h(!this.f17249S);
        if (!(this.f17267n.get() instanceof Activity)) {
            C5478q.m32112b("NativeVideoController", "context is not activity, not support this function.");
            return;
        }
        if (this.f17249S) {
            m34337a(z ? 8 : 0);
            C4743h c4743h = this.f17255b;
            if (c4743h != null) {
                c4743h.mo34226a(this.f17256c.get());
                this.f17255b.mo34211b(false);
            }
        } else {
            m34337a(1);
            C4743h c4743h2 = this.f17255b;
            if (c4743h2 != null) {
                c4743h2.mo34212b(this.f17256c.get());
                this.f17255b.mo34211b(false);
            }
        }
        WeakReference<AbstractC4724e> weakReference = this.f17277x;
        AbstractC4724e abstractC4724e = weakReference != null ? weakReference.get() : null;
        if (abstractC4724e == null) {
            return;
        }
        abstractC4724e.mo34353a(this.f17249S);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: b */
    public void mo34295b(boolean z) {
        this.f17272s = z;
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.m34205c(z);
        }
    }

    /* renamed from: b */
    public boolean m34307b() {
        return this.f17273t;
    }

    /* renamed from: c */
    protected Map<String, Object> m34294c() {
        return C5438af.m32304a(this.f17271r, mo34255o(), mo34249u());
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: c */
    public void mo34291c(long j) {
        this.f17264k = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: c */
    public void mo34289c(AbstractC4717b abstractC4717b, View view) {
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34197g();
        }
        mo34308a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: c */
    public void mo34287c(boolean z) {
        this.f17273t = z;
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34438a(z);
        }
    }

    /* renamed from: d */
    public void m34286d() {
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34436b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: d */
    public void m34284d(long j) {
        this.f17262i = j;
        ?? r0 = this.f17263j;
        char c = j;
        if (r0 > j) {
            c = r0;
        }
        this.f17263j = c;
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34201e();
        }
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34437a(true, this.f17262i, !this.f17273t);
            m34352A();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: d */
    public void mo34282d(AbstractC4717b abstractC4717b, View view) {
        if (!this.f17249S) {
            mo34308a(true);
            return;
        }
        m34265h(false);
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34212b(this.f17256c.get());
        }
        m34337a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: d */
    public void mo34280d(boolean z) {
        this.f17232B = z;
    }

    /* renamed from: e */
    public void m34278e(long j) {
        this.f17246P = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: e */
    public void mo34277e(AbstractC4717b abstractC4717b, View view) {
        m34322a(abstractC4717b, view, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: e */
    public void mo34275e(boolean z) {
        this.f17234D = z;
    }

    /* renamed from: e */
    public boolean m34279e() {
        C4699d c4699d = this.f17260g;
        return c4699d == null || c4699d.m34418l();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: f */
    public void mo34273f(AbstractC4717b abstractC4717b, View view) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: f */
    public void mo34271f(boolean z) {
        this.f17241K = z;
    }

    /* renamed from: f */
    public boolean m34274f() {
        C4699d c4699d = this.f17260g;
        return c4699d != null && c4699d.m34423g();
    }

    /* renamed from: g */
    public void m34270g() {
        if (this.f17253W || !this.f17241K) {
            return;
        }
        Context applicationContext = C4600n.m34815a().getApplicationContext();
        this.f17253W = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            applicationContext.registerReceiver(this.f17251U, intentFilter);
        } catch (Exception e) {
        }
    }

    /* renamed from: g */
    public void m34268g(boolean z) {
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34201e();
        }
        C4743h c4743h2 = this.f17255b;
        if (c4743h2 != null && z) {
            c4743h2.m34187u();
        }
        m34348E();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: h */
    public void mo34267h() {
        if (C5482t.m32088c(C4600n.m34815a()) == 0) {
            return;
        }
        mo34257m();
        mo34310a(this.f17271r.m35245B().m35043h(), this.f17271r.m35231P(), this.f17237G, this.f17238H, null, this.f17271r.m35228S(), 0L, m34307b());
        mo34280d(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: i */
    public void mo34264i() {
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34436b();
        }
        if (this.f17270q || !this.f17269p) {
            return;
        }
        if (C5094b.m33091b()) {
            if (C5106a.m33039a("sp_multi_single_app_data_class", "IsCanLoadPauseLog", true)) {
                C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_pause", mo34254p(), mo34252r(), m34294c());
            }
            C5106a.m33045a("sp_multi_single_app_data_class", "IsCanLoadPauseLog", Boolean.TRUE);
            return;
        }
        if (C4651t.m34621a().m34615b()) {
            C4811e.m33880a(this.f17267n.get(), this.f17271r, this.f17274u, "feed_pause", mo34254p(), mo34252r(), m34294c());
        }
        C4651t.m34621a().m34616a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: j */
    public void mo34262j() {
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34426d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: k */
    public void mo34260k() {
        C4743h c4743h = this.f17255b;
        if (c4743h != null) {
            c4743h.mo34201e();
        }
        C4743h c4743h2 = this.f17255b;
        if (c4743h2 != null) {
            c4743h2.m34187u();
        }
        m34348E();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: l */
    public void mo34258l() {
        mo34308a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: m */
    public void mo34257m() {
        C4699d c4699d = this.f17260g;
        if (c4699d != null) {
            c4699d.m34429c();
            this.f17260g = null;
        }
        if (!C5438af.m32291b(this.f17271r) || this.f17245O == 2) {
            this.f17255b.mo34224a(this.f17271r, this.f17267n, true);
        }
        HandlerC5446ah handlerC5446ah = this.f17257d;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacks(this.f17244N);
            this.f17257d.removeCallbacks(this.f17243M);
            this.f17257d.removeCallbacks(this.f17242L);
            this.f17257d.removeCallbacksAndMessages(null);
        }
        m34351B();
        List<Runnable> list = this.f17265l;
        if (list != null) {
            list.clear();
        }
        if (this.f17272s) {
            m34245y();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: n */
    public long mo34256n() {
        return this.f17262i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: o */
    public long mo34255o() {
        if (mo34249u() == null) {
            return 0L;
        }
        return mo34249u().m34416n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: p */
    public long mo34254p() {
        C4699d c4699d = this.f17260g;
        if (c4699d == null) {
            return 0L;
        }
        return c4699d.m34415o() + this.f17278y;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: q */
    public long mo34253q() {
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: r */
    public int mo34252r() {
        return C4708a.m34402a(this.f17263j, this.f17264k);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: s */
    public long mo34251s() {
        return this.f17264k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: t */
    public boolean mo34250t() {
        return this.f17279z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: u */
    public C4699d mo34249u() {
        return this.f17260g;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: v */
    public C4743h mo34248v() {
        return this.f17255b;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: w */
    public boolean mo34247w() {
        return this.f17232B;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: x */
    public boolean mo34246x() {
        return this.f17240J;
    }

    /* renamed from: y */
    public void m34245y() {
        if (!this.f17253W || !this.f17241K) {
            return;
        }
        Context applicationContext = C4600n.m34815a().getApplicationContext();
        this.f17253W = false;
        try {
            applicationContext.unregisterReceiver(this.f17251U);
        } catch (Exception e) {
        }
    }
}
