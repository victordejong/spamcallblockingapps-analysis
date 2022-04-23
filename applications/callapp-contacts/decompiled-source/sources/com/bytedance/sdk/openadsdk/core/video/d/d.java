package com.bytedance.sdk.openadsdk.core.video.d;

import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseIntArray;
import android.view.SurfaceHolder;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.a.a;
import com.bytedance.sdk.openadsdk.core.video.d.c;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.explorestack.iab.vast.VastError;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal.http.StatusLine;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/d.class */
public class d implements c.a, c.b, c.AbstractC0167c, c.d, c.e, c.f, c.g, ah.a {
    private static boolean m = false;
    private static final SparseIntArray o = new SparseIntArray();

    /* renamed from: a  reason: collision with root package name */
    private c f9193a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9194b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9195c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9196d;
    private boolean e;
    private int f;
    private long g;
    private final Handler h;
    private Handler i;
    private ArrayList<Runnable> j;
    private int k;
    private int l;
    private String n;
    private boolean p;
    private final Object q;
    private StringBuilder r;
    private boolean s;
    private long t;
    private long u;
    private long v;
    private long w;
    private boolean x;

    public d(Handler handler) {
        this(handler, -1);
    }

    public d(Handler handler, int i) {
        this.f9193a = null;
        boolean z = false;
        this.f9194b = false;
        this.f9195c = false;
        this.f = 201;
        this.g = -1L;
        this.k = 0;
        this.n = "0";
        this.q = new Object();
        this.r = null;
        this.s = false;
        this.t = 0L;
        this.u = 0L;
        this.v = 0L;
        this.w = 0L;
        this.x = false;
        this.k = 0;
        this.i = handler;
        HandlerThread handlerThread = new HandlerThread("tt_pangle_thread__VideoManager");
        handlerThread.start();
        this.h = new ah(handlerThread.getLooper(), this);
        this.x = Build.VERSION.SDK_INT >= 17 ? true : z;
        q();
    }

    private int A() {
        AudioManager audioManager = (AudioManager) n.a().getSystemService("audio");
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return -1;
    }

    private void B() {
        if (m) {
            a(this.l, false);
            m = false;
        }
    }

    private void C() {
        if (this.u <= 0) {
            this.u = System.currentTimeMillis();
        }
    }

    private void D() {
        if (this.u > 0) {
            this.t += System.currentTimeMillis() - this.u;
            this.u = 0L;
        }
    }

    private void a(int i, Object obj) {
        if (i == 309) {
            B();
        }
        Handler handler = this.i;
        if (handler != null) {
            handler.obtainMessage(i, obj).sendToTarget();
        }
    }

    private void a(int i, boolean z) {
        int A;
        if (z && (A = A()) != i) {
            m = true;
            this.l = A;
        }
        AudioManager audioManager = (AudioManager) n.a().getSystemService("audio");
        if (audioManager != null) {
            audioManager.setStreamVolume(3, i, 0);
        }
    }

    private void a(Runnable runnable) {
        if (this.j == null) {
            this.j = new ArrayList<>();
        }
        this.j.add(runnable);
    }

    private void a(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.f9193a.a(fileInputStream.getFD());
        fileInputStream.close();
    }

    private boolean a(int i, int i2) {
        q.b("SSMediaPlayeWrapper", "OnError - Error code: " + i + " Extra code: " + i2);
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        z = true;
        if (i2 != 1) {
            z = true;
            if (i2 != 700) {
                z = true;
                if (i2 != 800) {
                }
            }
        }
        return z;
    }

    private void b(int i, int i2) {
        if (i == 701) {
            D();
            this.v = SystemClock.elapsedRealtime();
        } else if (i == 702) {
            if (this.u <= 0) {
                this.u = System.currentTimeMillis();
            }
            if (this.v > 0) {
                this.w += SystemClock.elapsedRealtime() - this.v;
                this.v = 0L;
            }
        } else if (this.x && i == 3 && this.u <= 0) {
            this.u = System.currentTimeMillis();
        }
    }

    private void b(Runnable runnable) {
        if (runnable != null) {
            if (!this.e) {
                runnable.run();
            } else {
                a(runnable);
            }
        }
    }

    private void b(String str) {
        Handler handler = this.h;
        if (handler != null) {
            handler.removeMessages(201);
        }
        synchronized (this.q) {
            if (this.r != null) {
                this.r = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.f9193a == null) {
            q.b("SSMediaPlayeWrapper", "SSMediaPlayerWrapper use System Mediaplayer");
            b bVar = new b();
            this.f9193a = bVar;
            this.n = "0";
            bVar.a((c.e) this);
            this.f9193a.a((c.b) this);
            this.f9193a.a((c.AbstractC0167c) this);
            this.f9193a.a((c.a) this);
            this.f9193a.a((c.f) this);
            this.f9193a.a((c.d) this);
            this.f9193a.a((c.g) this);
            try {
                this.f9193a.b(this.f9194b);
            } catch (Throwable th) {
                q.a("SSMediaPlayeWrapper", "setLooping error: ", th);
            }
            this.f9195c = false;
        }
    }

    private void r() {
        q.b("tag_video_play", "[video] MediaPlayerProxy#start first play prepare invoke !");
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.h != null) {
                    d.this.h.sendEmptyMessage(104);
                    q.b("tag_video_play", "[video] MediaPlayerProxy#start first play prepare invoke ! sendMsg --> OP_PREPARE_ASYNC");
                }
            }
        });
    }

    private void s() {
        c cVar = this.f9193a;
        if (cVar != null) {
            try {
                cVar.l();
            } catch (Throwable th) {
                q.a("SSMediaPlayeWrapper", "releaseMediaplayer error1: ", th);
            }
            this.f9193a.a((c.b) null);
            this.f9193a.a((c.g) null);
            this.f9193a.a((c.a) null);
            this.f9193a.a((c.d) null);
            this.f9193a.a((c.AbstractC0167c) null);
            this.f9193a.a((c.e) null);
            this.f9193a.a((c.f) null);
            try {
                this.f9193a.k();
            } catch (Throwable th2) {
                q.a("SSMediaPlayeWrapper", "releaseMediaplayer error2: ", th2);
            }
        }
    }

    private void t() {
        Handler handler = this.h;
        if (handler != null && handler.getLooper() != null) {
            try {
                q.b("SSMediaPlayeWrapper", "onDestory............");
                this.h.getLooper().quit();
            } catch (Throwable th) {
                q.a("SSMediaPlayeWrapper", "onDestroy error: ", th);
            }
        }
    }

    private void u() {
        SparseIntArray sparseIntArray = o;
        Integer valueOf = Integer.valueOf(sparseIntArray.get(this.k));
        if (valueOf == null) {
            sparseIntArray.put(this.k, 1);
        } else {
            sparseIntArray.put(this.k, valueOf.intValue() + 1);
        }
    }

    private void v() {
        if (!this.x && this.u <= 0) {
            this.u = System.currentTimeMillis();
        }
    }

    private void w() {
        if (!this.f9196d) {
            this.f9196d = true;
            Iterator it2 = new ArrayList(this.j).iterator();
            while (it2.hasNext()) {
                ((Runnable) it2.next()).run();
            }
            this.j.clear();
            this.f9196d = false;
        }
    }

    private void x() {
        ArrayList<Runnable> arrayList = this.j;
        if (arrayList != null && !arrayList.isEmpty()) {
            w();
        }
    }

    private void y() {
        ArrayList<Runnable> arrayList = this.j;
        if (arrayList == null || arrayList.isEmpty()) {
            t();
        } else {
            w();
        }
    }

    private void z() {
        ArrayList<Runnable> arrayList = this.j;
        if (arrayList != null && !arrayList.isEmpty()) {
            this.j.clear();
        }
    }

    public MediaPlayer a() throws Throwable {
        c cVar = this.f9193a;
        if (cVar != null) {
            return ((b) cVar).e();
        }
        return null;
    }

    public void a(final long j) {
        D();
        int i = this.f;
        if (i == 207 || i == 206 || i == 209) {
            b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.4
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.h != null) {
                        d.this.h.obtainMessage(106, Long.valueOf(j)).sendToTarget();
                    }
                }
            });
        }
    }

    public void a(final SurfaceTexture surfaceTexture) {
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.5
            @Override // java.lang.Runnable
            public void run() {
                d.this.q();
                if (d.this.h != null) {
                    d.this.h.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x014d, code lost:
        if (r0 == 207) goto L_0x0150;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:148:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0299 A[Catch: all -> 0x02a6, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x02a6, blocks: (B:43:0x018d, B:46:0x01a4, B:48:0x01ae, B:51:0x01ba, B:53:0x01e0, B:55:0x01ea, B:56:0x01fc, B:58:0x0219, B:60:0x021f, B:62:0x0229, B:63:0x025a, B:64:0x0267, B:66:0x026d, B:68:0x0277, B:69:0x027f, B:71:0x028a, B:73:0x0299), top: B:160:0x018d }] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 1248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.d.d.a(android.os.Message):void");
    }

    public void a(final SurfaceHolder surfaceHolder) {
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.6
            @Override // java.lang.Runnable
            public void run() {
                d.this.q();
                if (d.this.h != null) {
                    d.this.h.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    public void a(final a aVar) {
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.7
            @Override // java.lang.Runnable
            public void run() {
                d.this.q();
                if (d.this.h != null) {
                    d.this.h.obtainMessage(107, aVar).sendToTarget();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.b
    public void a(c cVar) {
        this.f = !this.f9194b ? LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE : LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE;
        o.delete(this.k);
        Handler handler = this.i;
        if (handler != null) {
            handler.obtainMessage(VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT).sendToTarget();
        }
        b("completion");
        D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.a
    public void a(c cVar, int i) {
        Handler handler;
        if (this.f9193a == cVar && (handler = this.i) != null) {
            handler.obtainMessage(VastError.ERROR_CODE_BAD_URI, Integer.valueOf(i)).sendToTarget();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.g
    public void a(c cVar, int i, int i2, int i3, int i4) {
        Handler handler = this.i;
        if (handler != null) {
            handler.obtainMessage(311, i, i2).sendToTarget();
        }
    }

    public void a(boolean z) {
        try {
            if (z) {
                this.f9193a.a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else {
                this.f9193a.a(1.0f, 1.0f);
            }
        } catch (Throwable th) {
            q.a("SSMediaPlayeWrapper", "setQuietPlay error: ", th);
        }
    }

    public void a(boolean z, long j, boolean z2) {
        q.b("tag_video_play", "[video] MediaPlayerProxy#start firstSeekToPosition=" + j + ",firstPlay :" + z + ",isPauseOtherMusicVolume=" + z2);
        this.p = false;
        if (!z2) {
            if (this.f9193a != null) {
                a(true);
            }
        } else if (this.f9193a != null) {
            a(false);
        }
        if (z) {
            r();
            this.g = j;
            return;
        }
        C();
        c cVar = this.f9193a;
        if (cVar != null) {
            try {
                if (j <= cVar.i()) {
                    j = this.f9193a.i();
                }
                this.g = j;
            } catch (Throwable th) {
                q.b("tag_video_play", "[video] MediaPlayerProxy#start  error: getCurrentPosition :" + th.toString());
            }
        }
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.h.sendEmptyMessageDelayed(100, 0L);
                q.b("tag_video_play", "[video] MediaPlayerProxy#start not first play ! sendMsg --> OP_START , video start to play !");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.AbstractC0167c
    public boolean a(c cVar, int i, int i2) {
        q.e("SSMediaPlayeWrapper", "what=" + i + "extra=" + i2);
        u();
        this.f = 200;
        Handler handler = this.i;
        if (handler != null) {
            handler.obtainMessage(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, i, i2).sendToTarget();
        }
        Handler handler2 = this.h;
        if (handler2 != null) {
            handler2.removeMessages(108);
            this.h.removeMessages(109);
        }
        if (!this.f9195c) {
            a(StatusLine.HTTP_PERM_REDIRECT, Integer.valueOf(i));
            this.f9195c = true;
        }
        if (!a(i, i2)) {
            return true;
        }
        t();
        return true;
    }

    public void b() {
        this.h.removeMessages(100);
        this.p = true;
        this.h.sendEmptyMessage(101);
        D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.e
    public void b(c cVar) {
        this.f = LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE;
        if (this.p) {
            this.h.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.this.f9193a.h();
                        d.this.f = LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE;
                        d.this.p = false;
                    } catch (Throwable th) {
                        q.a("SSMediaPlayeWrapper", "onPrepared error: ", th);
                    }
                }
            });
        } else {
            Handler handler = this.h;
            handler.sendMessage(handler.obtainMessage(100, -1, -1));
        }
        o.delete(this.k);
        Handler handler2 = this.i;
        if (handler2 != null) {
            handler2.sendEmptyMessage(305);
        }
        v();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.d
    public boolean b(c cVar, int i, int i2) {
        q.e("SSMediaPlayeWrapper", "what,extra:" + i + "," + i2);
        if (this.f9193a != cVar) {
            return false;
        }
        Handler handler = this.i;
        if (handler != null) {
            handler.obtainMessage(304, i, i2).sendToTarget();
            if (i2 == -1004) {
                this.i.obtainMessage(VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD, i, i2).sendToTarget();
            }
        }
        b(i, i2);
        return false;
    }

    public void c() {
        this.f = LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE;
        D();
        z();
        if (this.h != null) {
            try {
                b("release");
                this.h.removeCallbacksAndMessages(null);
                if (this.f9193a != null) {
                    this.e = true;
                    this.h.sendEmptyMessage(103);
                }
            } catch (Throwable th) {
                t();
                q.a("SSMediaPlayeWrapper", "release error: ", th);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c.f
    public void c(c cVar) {
        Handler handler = this.i;
        if (handler != null) {
            handler.sendEmptyMessage(306);
        }
    }

    public void d() {
        b(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.h != null) {
                    d.this.h.sendEmptyMessage(105);
                }
            }
        });
    }

    public void e() {
        Handler handler = this.h;
        if (handler != null) {
            handler.obtainMessage(108).sendToTarget();
        }
    }

    public void f() {
        Handler handler = this.h;
        if (handler != null) {
            handler.obtainMessage(109).sendToTarget();
        }
    }

    public boolean g() {
        return (this.f == 206 || this.h.hasMessages(100)) && !this.p;
    }

    public boolean h() {
        return k() || g() || i();
    }

    public boolean i() {
        return (this.f == 207 || this.p) && !this.h.hasMessages(100);
    }

    public boolean j() {
        return this.f == 203;
    }

    public boolean k() {
        return this.f == 205;
    }

    public boolean l() {
        return this.f == 209;
    }

    public void m() {
        this.t = 0L;
        this.u = System.currentTimeMillis();
    }

    public long n() {
        return this.w;
    }

    public long o() {
        D();
        return this.t;
    }

    public long p() {
        if (this.u > 0) {
            this.t += System.currentTimeMillis() - this.u;
            this.u = System.currentTimeMillis();
        }
        return this.t;
    }
}
