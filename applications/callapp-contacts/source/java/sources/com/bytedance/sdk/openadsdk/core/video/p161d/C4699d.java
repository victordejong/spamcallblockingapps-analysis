package com.bytedance.sdk.openadsdk.core.video.p161d;

import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseIntArray;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.video.p158a.C4670a;
import com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.explorestack.iab.vast.VastError;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.d.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/d.class */
public class C4699d implements AbstractC4691c.AbstractC4692a, AbstractC4691c.AbstractC4693b, AbstractC4691c.AbstractC4694c, AbstractC4691c.AbstractC4695d, AbstractC4691c.AbstractC4696e, AbstractC4691c.AbstractC4697f, AbstractC4691c.AbstractC4698g, HandlerC5446ah.AbstractC5447a {

    /* renamed from: m */
    private static boolean f17153m = false;

    /* renamed from: o */
    private static final SparseIntArray f17154o = new SparseIntArray();

    /* renamed from: a */
    private AbstractC4691c f17155a;

    /* renamed from: b */
    private boolean f17156b;

    /* renamed from: c */
    private boolean f17157c;

    /* renamed from: d */
    private boolean f17158d;

    /* renamed from: e */
    private boolean f17159e;

    /* renamed from: f */
    private int f17160f;

    /* renamed from: g */
    private long f17161g;

    /* renamed from: h */
    private final Handler f17162h;

    /* renamed from: i */
    private Handler f17163i;

    /* renamed from: j */
    private ArrayList<Runnable> f17164j;

    /* renamed from: k */
    private int f17165k;

    /* renamed from: l */
    private int f17166l;

    /* renamed from: n */
    private String f17167n;

    /* renamed from: p */
    private boolean f17168p;

    /* renamed from: q */
    private final Object f17169q;

    /* renamed from: r */
    private StringBuilder f17170r;

    /* renamed from: s */
    private boolean f17171s;

    /* renamed from: t */
    private long f17172t;

    /* renamed from: u */
    private long f17173u;

    /* renamed from: v */
    private long f17174v;

    /* renamed from: w */
    private long f17175w;

    /* renamed from: x */
    private boolean f17176x;

    public C4699d(Handler handler) {
        this(handler, -1);
    }

    public C4699d(Handler handler, int i) {
        this.f17155a = null;
        boolean z = false;
        this.f17156b = false;
        this.f17157c = false;
        this.f17160f = 201;
        this.f17161g = -1L;
        this.f17165k = 0;
        this.f17167n = "0";
        this.f17169q = new Object();
        this.f17170r = null;
        this.f17171s = false;
        this.f17172t = 0L;
        this.f17173u = 0L;
        this.f17174v = 0L;
        this.f17175w = 0L;
        this.f17176x = false;
        this.f17165k = 0;
        this.f17163i = handler;
        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread__VideoManager");
        handlerThread.start();
        this.f17162h = new HandlerC5446ah(handlerThread.getLooper(), this);
        this.f17176x = Build.VERSION.SDK_INT >= 17 ? true : z;
        m34413q();
    }

    /* renamed from: A */
    private int m34459A() {
        AudioManager audioManager = (AudioManager) C4600n.m34815a().getSystemService("audio");
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }

    /* renamed from: B */
    private void m34458B() {
        if (f17153m) {
            m34452a(this.f17166l, false);
            f17153m = false;
        }
    }

    /* renamed from: C */
    private void m34457C() {
        if (this.f17173u <= 0) {
            this.f17173u = System.currentTimeMillis();
        }
    }

    /* renamed from: D */
    private void m34456D() {
        if (this.f17173u > 0) {
            this.f17172t += System.currentTimeMillis() - this.f17173u;
            this.f17173u = 0L;
        }
    }

    /* renamed from: a */
    private void m34453a(int i, Object obj) {
        if (i == 309) {
            m34458B();
        }
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.obtainMessage(i, obj).sendToTarget();
        }
    }

    /* renamed from: a */
    private void m34452a(int i, boolean z) {
        int m34459A;
        if (z && (m34459A = m34459A()) != i) {
            f17153m = true;
            this.f17166l = m34459A;
        }
        AudioManager audioManager = (AudioManager) C4600n.m34815a().getSystemService("audio");
        if (audioManager != null) {
            audioManager.setStreamVolume(3, i, 0);
        }
    }

    /* renamed from: a */
    private void m34440a(Runnable runnable) {
        if (this.f17164j == null) {
            this.f17164j = new ArrayList<>();
        }
        this.f17164j.add(runnable);
    }

    /* renamed from: a */
    private void m34439a(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.f17155a.mo34471a(fileInputStream.getFD());
        fileInputStream.close();
    }

    /* renamed from: a */
    private boolean m34454a(int i, int i2) {
        C5478q.m32112b("SSMediaPlayeWrapper", "OnError - Error code: " + i + " Extra code: " + i2);
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

    /* renamed from: b */
    private void m34435b(int i, int i2) {
        if (i == 701) {
            m34456D();
            this.f17174v = SystemClock.elapsedRealtime();
        } else if (i != 702) {
            if (!this.f17176x || i != 3 || this.f17173u > 0) {
                return;
            }
            this.f17173u = System.currentTimeMillis();
        } else {
            if (this.f17173u <= 0) {
                this.f17173u = System.currentTimeMillis();
            }
            if (this.f17174v <= 0) {
                return;
            }
            this.f17175w += SystemClock.elapsedRealtime() - this.f17174v;
            this.f17174v = 0L;
        }
    }

    /* renamed from: b */
    private void m34431b(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!this.f17159e) {
            runnable.run();
        } else {
            m34440a(runnable);
        }
    }

    /* renamed from: b */
    private void m34430b(String str) {
        Handler handler = this.f17162h;
        if (handler != null) {
            handler.removeMessages(201);
        }
        synchronized (this.f17169q) {
            if (this.f17170r != null) {
                this.f17170r = null;
            }
        }
    }

    /* renamed from: q */
    public void m34413q() {
        if (this.f17155a == null) {
            C5478q.m32112b("SSMediaPlayeWrapper", "SSMediaPlayerWrapper use System Mediaplayer");
            C4689b c4689b = new C4689b();
            this.f17155a = c4689b;
            this.f17167n = "0";
            c4689b.mo34474a((AbstractC4691c.AbstractC4696e) this);
            this.f17155a.mo34477a((AbstractC4691c.AbstractC4693b) this);
            this.f17155a.mo34476a((AbstractC4691c.AbstractC4694c) this);
            this.f17155a.mo34478a((AbstractC4691c.AbstractC4692a) this);
            this.f17155a.mo34473a((AbstractC4691c.AbstractC4697f) this);
            this.f17155a.mo34475a((AbstractC4691c.AbstractC4695d) this);
            this.f17155a.mo34472a((AbstractC4691c.AbstractC4698g) this);
            try {
                this.f17155a.mo34467b(this.f17156b);
            } catch (Throwable th) {
                C5478q.m32117a("SSMediaPlayeWrapper", "setLooping error: ", th);
            }
            this.f17157c = false;
        }
    }

    /* renamed from: r */
    private void m34412r() {
        C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy#start first play prepare invoke !");
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (C4699d.this.f17162h != null) {
                    C4699d.this.f17162h.sendEmptyMessage(104);
                    C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy#start first play prepare invoke ! sendMsg --> OP_PREPARE_ASYNC");
                }
            }
        });
    }

    /* renamed from: s */
    private void m34411s() {
        AbstractC4691c abstractC4691c = this.f17155a;
        if (abstractC4691c == null) {
            return;
        }
        try {
            abstractC4691c.mo34460l();
        } catch (Throwable th) {
            C5478q.m32117a("SSMediaPlayeWrapper", "releaseMediaplayer error1: ", th);
        }
        this.f17155a.mo34477a((AbstractC4691c.AbstractC4693b) null);
        this.f17155a.mo34472a((AbstractC4691c.AbstractC4698g) null);
        this.f17155a.mo34478a((AbstractC4691c.AbstractC4692a) null);
        this.f17155a.mo34475a((AbstractC4691c.AbstractC4695d) null);
        this.f17155a.mo34476a((AbstractC4691c.AbstractC4694c) null);
        this.f17155a.mo34474a((AbstractC4691c.AbstractC4696e) null);
        this.f17155a.mo34473a((AbstractC4691c.AbstractC4697f) null);
        try {
            this.f17155a.mo34461k();
        } catch (Throwable th2) {
            C5478q.m32117a("SSMediaPlayeWrapper", "releaseMediaplayer error2: ", th2);
        }
    }

    /* renamed from: t */
    private void m34410t() {
        Handler handler = this.f17162h;
        if (handler == null || handler.getLooper() == null) {
            return;
        }
        try {
            C5478q.m32112b("SSMediaPlayeWrapper", "onDestory............");
            this.f17162h.getLooper().quit();
        } catch (Throwable th) {
            C5478q.m32117a("SSMediaPlayeWrapper", "onDestroy error: ", th);
        }
    }

    /* renamed from: u */
    private void m34409u() {
        SparseIntArray sparseIntArray = f17154o;
        Integer valueOf = Integer.valueOf(sparseIntArray.get(this.f17165k));
        if (valueOf == null) {
            sparseIntArray.put(this.f17165k, 1);
        } else {
            sparseIntArray.put(this.f17165k, valueOf.intValue() + 1);
        }
    }

    /* renamed from: v */
    private void m34408v() {
        if (this.f17176x || this.f17173u > 0) {
            return;
        }
        this.f17173u = System.currentTimeMillis();
    }

    /* renamed from: w */
    private void m34407w() {
        if (this.f17158d) {
            return;
        }
        this.f17158d = true;
        Iterator it2 = new ArrayList(this.f17164j).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.f17164j.clear();
        this.f17158d = false;
    }

    /* renamed from: x */
    private void m34406x() {
        ArrayList<Runnable> arrayList = this.f17164j;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        m34407w();
    }

    /* renamed from: y */
    private void m34405y() {
        ArrayList<Runnable> arrayList = this.f17164j;
        if (arrayList == null || arrayList.isEmpty()) {
            m34410t();
        } else {
            m34407w();
        }
    }

    /* renamed from: z */
    private void m34404z() {
        ArrayList<Runnable> arrayList = this.f17164j;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.f17164j.clear();
    }

    /* renamed from: a */
    public MediaPlayer m34455a() throws Throwable {
        AbstractC4691c abstractC4691c = this.f17155a;
        if (abstractC4691c != null) {
            return ((C4689b) abstractC4691c).m34487e();
        }
        return null;
    }

    /* renamed from: a */
    public void m34451a(final long j) {
        m34456D();
        int i = this.f17160f;
        if (i == 207 || i == 206 || i == 209) {
            m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.4
                @Override // java.lang.Runnable
                public void run() {
                    if (C4699d.this.f17162h != null) {
                        C4699d.this.f17162h.obtainMessage(106, Long.valueOf(j)).sendToTarget();
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public void m34450a(final SurfaceTexture surfaceTexture) {
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.5
            @Override // java.lang.Runnable
            public void run() {
                C4699d.this.m34413q();
                if (C4699d.this.f17162h != null) {
                    C4699d.this.f17162h.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x014d, code lost:
        if (r0 == 207) goto L176;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0299 A[Catch: all -> 0x02a6, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x02a6, blocks: (B:43:0x018d, B:46:0x01a4, B:48:0x01ae, B:51:0x01ba, B:53:0x01e0, B:55:0x01ea, B:56:0x01fc, B:58:0x0219, B:60:0x021f, B:62:0x0229, B:63:0x025a, B:64:0x0267, B:66:0x026d, B:68:0x0277, B:69:0x027f, B:71:0x028a, B:73:0x0299), top: B:160:0x018d }] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v198, types: [long] */
    /* JADX WARN: Type inference failed for: r0v199, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v24, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v5 */
    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32205a(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 1248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.p161d.C4699d.mo32205a(android.os.Message):void");
    }

    /* renamed from: a */
    public void m34449a(final SurfaceHolder surfaceHolder) {
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.6
            @Override // java.lang.Runnable
            public void run() {
                C4699d.this.m34413q();
                if (C4699d.this.f17162h != null) {
                    C4699d.this.f17162h.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    /* renamed from: a */
    public void m34448a(final C4670a c4670a) {
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.7
            @Override // java.lang.Runnable
            public void run() {
                C4699d.this.m34413q();
                if (C4699d.this.f17162h != null) {
                    C4699d.this.f17162h.obtainMessage(107, c4670a).sendToTarget();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4693b
    /* renamed from: a */
    public void mo34447a(AbstractC4691c abstractC4691c) {
        this.f17160f = !this.f17156b ? 209 : 206;
        f17154o.delete(this.f17165k);
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.obtainMessage(VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT).sendToTarget();
        }
        m34430b("completion");
        m34456D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4692a
    /* renamed from: a */
    public void mo34446a(AbstractC4691c abstractC4691c, int i) {
        Handler handler;
        if (this.f17155a == abstractC4691c && (handler = this.f17163i) != null) {
            handler.obtainMessage(VastError.ERROR_CODE_BAD_URI, Integer.valueOf(i)).sendToTarget();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4698g
    /* renamed from: a */
    public void mo34444a(AbstractC4691c abstractC4691c, int i, int i2, int i3, int i4) {
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.obtainMessage(311, i, i2).sendToTarget();
        }
    }

    /* renamed from: a */
    public void m34438a(boolean z) {
        try {
            if (z) {
                this.f17155a.mo34483a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else {
                this.f17155a.mo34483a(1.0f, 1.0f);
            }
        } catch (Throwable th) {
            C5478q.m32117a("SSMediaPlayeWrapper", "setQuietPlay error: ", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: a */
    public void m34437a(boolean z, long j, boolean z2) {
        C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy#start firstSeekToPosition=" + j + ",firstPlay :" + z + ",isPauseOtherMusicVolume=" + z2);
        this.f17168p = false;
        if (!z2) {
            if (this.f17155a != null) {
                m34438a(true);
            }
        } else if (this.f17155a != null) {
            m34438a(false);
        }
        if (z) {
            m34412r();
            this.f17161g = j;
            return;
        }
        m34457C();
        AbstractC4691c abstractC4691c = this.f17155a;
        if (abstractC4691c != null) {
            try {
                this.f17161g = j > abstractC4691c.mo34463i() ? j : this.f17155a.mo34463i();
            } catch (Throwable th) {
                C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy#start  error: getCurrentPosition :" + th.toString());
            }
        }
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                C4699d.this.f17162h.sendEmptyMessageDelayed(100, 0L);
                C5478q.m32112b("tag_video_play", "[video] MediaPlayerProxy#start not first play ! sendMsg --> OP_START , video start to play !");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4694c
    /* renamed from: a */
    public boolean mo34445a(AbstractC4691c abstractC4691c, int i, int i2) {
        C5478q.m32106e("SSMediaPlayeWrapper", "what=" + i + "extra=" + i2);
        m34409u();
        this.f17160f = 200;
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.obtainMessage(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, i, i2).sendToTarget();
        }
        Handler handler2 = this.f17162h;
        if (handler2 != null) {
            handler2.removeMessages(108);
            this.f17162h.removeMessages(109);
        }
        if (!this.f17157c) {
            m34453a(StatusLine.HTTP_PERM_REDIRECT, Integer.valueOf(i));
            this.f17157c = true;
        }
        if (m34454a(i, i2)) {
            m34410t();
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public void m34436b() {
        this.f17162h.removeMessages(100);
        this.f17168p = true;
        this.f17162h.sendEmptyMessage(101);
        m34456D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4696e
    /* renamed from: b */
    public void mo34434b(AbstractC4691c abstractC4691c) {
        this.f17160f = LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE;
        if (this.f17168p) {
            this.f17162h.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C4699d.this.f17155a.mo34464h();
                        C4699d.this.f17160f = LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE;
                        C4699d.this.f17168p = false;
                    } catch (Throwable th) {
                        C5478q.m32117a("SSMediaPlayeWrapper", "onPrepared error: ", th);
                    }
                }
            });
        } else {
            Handler handler = this.f17162h;
            handler.sendMessage(handler.obtainMessage(100, -1, -1));
        }
        f17154o.delete(this.f17165k);
        Handler handler2 = this.f17163i;
        if (handler2 != null) {
            handler2.sendEmptyMessage(305);
        }
        m34408v();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4695d
    /* renamed from: b */
    public boolean mo34433b(AbstractC4691c abstractC4691c, int i, int i2) {
        C5478q.m32106e("SSMediaPlayeWrapper", "what,extra:" + i + "," + i2);
        if (this.f17155a != abstractC4691c) {
            return false;
        }
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.obtainMessage(304, i, i2).sendToTarget();
            if (i2 == -1004) {
                this.f17163i.obtainMessage(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, i, i2).sendToTarget();
            }
        }
        m34435b(i, i2);
        return false;
    }

    /* renamed from: c */
    public void m34429c() {
        this.f17160f = LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE;
        m34456D();
        m34404z();
        if (this.f17162h != null) {
            try {
                m34430b("release");
                this.f17162h.removeCallbacksAndMessages(null);
                if (this.f17155a == null) {
                    return;
                }
                this.f17159e = true;
                this.f17162h.sendEmptyMessage(103);
            } catch (Throwable th) {
                m34410t();
                C5478q.m32117a("SSMediaPlayeWrapper", "release error: ", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c.AbstractC4697f
    /* renamed from: c */
    public void mo34428c(AbstractC4691c abstractC4691c) {
        Handler handler = this.f17163i;
        if (handler != null) {
            handler.sendEmptyMessage(306);
        }
    }

    /* renamed from: d */
    public void m34426d() {
        m34431b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (C4699d.this.f17162h != null) {
                    C4699d.this.f17162h.sendEmptyMessage(105);
                }
            }
        });
    }

    /* renamed from: e */
    public void m34425e() {
        Handler handler = this.f17162h;
        if (handler != null) {
            handler.obtainMessage(108).sendToTarget();
        }
    }

    /* renamed from: f */
    public void m34424f() {
        Handler handler = this.f17162h;
        if (handler != null) {
            handler.obtainMessage(109).sendToTarget();
        }
    }

    /* renamed from: g */
    public boolean m34423g() {
        return (this.f17160f == 206 || this.f17162h.hasMessages(100)) && !this.f17168p;
    }

    /* renamed from: h */
    public boolean m34422h() {
        return m34419k() || m34423g() || m34421i();
    }

    /* renamed from: i */
    public boolean m34421i() {
        return (this.f17160f == 207 || this.f17168p) && !this.f17162h.hasMessages(100);
    }

    /* renamed from: j */
    public boolean m34420j() {
        return this.f17160f == 203;
    }

    /* renamed from: k */
    public boolean m34419k() {
        return this.f17160f == 205;
    }

    /* renamed from: l */
    public boolean m34418l() {
        return this.f17160f == 209;
    }

    /* renamed from: m */
    public void m34417m() {
        this.f17172t = 0L;
        this.f17173u = System.currentTimeMillis();
    }

    /* renamed from: n */
    public long m34416n() {
        return this.f17175w;
    }

    /* renamed from: o */
    public long m34415o() {
        m34456D();
        return this.f17172t;
    }

    /* renamed from: p */
    public long m34414p() {
        if (this.f17173u > 0) {
            this.f17172t += System.currentTimeMillis() - this.f17173u;
            this.f17173u = System.currentTimeMillis();
        }
        return this.f17172t;
    }
}
