package com.bytedance.sdk.openadsdk.core.video.c;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.d;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.e;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.h;
import com.bytedance.sdk.openadsdk.core.video.renderview.b;
import com.bytedance.sdk.openadsdk.core.widget.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/c/a.class */
public abstract class a implements c, d, ah.a {
    private WeakReference<e> D;
    private int E;
    private long L;
    private int N;

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference<Context> f9173a;

    /* renamed from: b  reason: collision with root package name */
    public final i f9174b;

    /* renamed from: c  reason: collision with root package name */
    public long f9175c;
    public long i;
    private h j;
    private final ViewGroup k;
    private com.bytedance.sdk.openadsdk.core.video.d.d o;
    private c.a p;
    private ArrayList<Runnable> s;
    private boolean t;
    private final boolean u;
    private final ah l = new ah(this);
    private long m = 0;
    private long n = 0;
    private long q = 0;
    private long r = 0;
    private boolean v = false;
    private boolean w = false;
    private boolean x = true;
    private boolean y = false;
    private long z = 0;
    private boolean A = false;
    private boolean B = false;
    private boolean C = false;

    /* renamed from: d  reason: collision with root package name */
    protected Map<String, Object> f9176d = null;
    protected long e = 0;
    protected long f = 0;
    protected boolean g = false;
    protected boolean h = false;
    private boolean F = false;
    private boolean G = true;
    private final Runnable H = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.2
        @Override // java.lang.Runnable
        public void run() {
            if (a.this.o != null) {
                a.this.o.e();
            }
        }
    };
    private final Runnable I = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.3
        @Override // java.lang.Runnable
        public void run() {
            if (a.this.p != null) {
                a.this.p.a();
            }
        }
    };
    private final Runnable J = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.4
        @Override // java.lang.Runnable
        public void run() {
            if (a.this.o != null) {
                if (a.this.f9175c <= 0) {
                    a.this.o.e();
                }
                a.this.o.f();
            }
            a.this.l.postDelayed(this, 200L);
        }
    };
    private boolean K = false;
    private final BroadcastReceiver M = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                a.this.i();
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                a.this.b(context);
            }
        }
    };
    private boolean O = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.c.a$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/c/a$6.class */
    static /* synthetic */ class AnonymousClass6 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9182a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[e.a.values().length];
            f9182a = iArr;
            try {
                iArr[e.a.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9182a[e.a.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9182a[e.a.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public a(Context context, ViewGroup viewGroup, i iVar) {
        boolean z = false;
        this.N = 1;
        this.N = t.c(context);
        this.k = viewGroup;
        this.f9173a = new WeakReference<>(context);
        this.f9174b = iVar;
        a(context);
        this.E = af.d(iVar.S());
        this.u = Build.VERSION.SDK_INT >= 17 ? true : z;
    }

    private void D() {
        int a2 = a();
        int t = (a2 == 2 || a2 == 1) ? n.h().t() * 1000 : a2 == 3 ? n.h().f(String.valueOf(this.E)) : 5;
        this.l.removeCallbacks(this.I);
        this.l.postDelayed(this.I, t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        F();
        this.l.postDelayed(this.J, 800L);
    }

    private void F() {
        this.l.removeCallbacks(this.J);
    }

    private boolean G() {
        WeakReference<Context> weakReference = this.f9173a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    private void H() {
        ArrayList<Runnable> arrayList = this.s;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = new ArrayList(this.s).iterator();
            while (it2.hasNext()) {
                ((Runnable) it2.next()).run();
            }
            this.s.clear();
        }
    }

    private void I() {
        i iVar = this.f9174b;
        if (iVar != null) {
            n.g().a(com.bytedance.sdk.openadsdk.m.e.a(iVar.L(), true, this.f9174b));
        }
    }

    private boolean J() throws Throwable {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar;
        i iVar;
        WeakReference<Context> weakReference = this.f9173a;
        return weakReference == null || weakReference.get() == null || M() == null || (dVar = this.o) == null || dVar.a() == null || (iVar = this.f9174b) == null || iVar.z() != null || this.f9174b.l() == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01f4 A[Catch: all -> 0x02a1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x02a1, blocks: (B:2:0x0000, B:5:0x0029, B:11:0x0065, B:15:0x007f, B:19:0x009e, B:22:0x00c3, B:35:0x01c5, B:37:0x01f4, B:40:0x022a, B:42:0x0237, B:44:0x024b, B:46:0x0255, B:47:0x0263, B:49:0x026d, B:51:0x0279, B:53:0x0284, B:55:0x029a), top: B:60:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x024b A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:2:0x0000, B:5:0x0029, B:11:0x0065, B:15:0x007f, B:19:0x009e, B:22:0x00c3, B:35:0x01c5, B:37:0x01f4, B:40:0x022a, B:42:0x0237, B:44:0x024b, B:46:0x0255, B:47:0x0263, B:49:0x026d, B:51:0x0279, B:53:0x0284, B:55:0x029a), top: B:60:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void K() {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.K():void");
    }

    private void L() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar;
        i iVar;
        try {
            WeakReference<Context> weakReference = this.f9173a;
            if (weakReference != null && weakReference.get() != null && M() != null && (dVar = this.o) != null && dVar.a() != null && (iVar = this.f9174b) != null) {
                boolean z = iVar.T() == 15;
                int[] b2 = ag.b(n.a());
                float f = b2[0];
                float f2 = b2[1];
                MediaPlayer a2 = this.o.a();
                a(f, f2, a2.getVideoWidth(), a2.getVideoHeight(), z);
                q.b("changeVideoSize", "changeSize=end");
            }
        } catch (Throwable th) {
            q.a("changeVideoSize", "changeSize error", th);
        }
    }

    private b M() {
        h hVar;
        WeakReference<Context> weakReference = this.f9173a;
        if (weakReference == null || weakReference.get() == null || (hVar = this.j) == null) {
            return null;
        }
        return hVar.o();
    }

    private void N() {
        h hVar = this.j;
        if (hVar != null) {
            hVar.c(0);
            this.j.a(false, false);
            this.j.b(false);
            this.j.b();
            this.j.d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x006f, code lost:
        if (r8 <= com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L_0x0072;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(float r5, float r6, float r7, float r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.a(float, float, float, float, boolean):void");
    }

    private void a(long j, long j2) {
        this.q = j;
        this.f9175c = j2;
        this.j.a(j, j2);
        this.j.a(com.bytedance.sdk.openadsdk.core.video.e.a.a(j, j2));
        try {
            c.a aVar = this.p;
            if (aVar != null) {
                aVar.a(j, j2);
            }
        } catch (Throwable th) {
            q.c("BaseVideoController", "onProgressUpdate error: ", th);
        }
    }

    private void a(long j, boolean z) {
        if (this.o != null) {
            if (z) {
                N();
            }
            this.o.a(j);
        }
    }

    private void a(Context context) {
        EnumSet noneOf = EnumSet.noneOf(b.a.class);
        noneOf.add(b.a.hideCloseBtn);
        noneOf.add(b.a.hideBackBtn);
        h hVar = new h(context.getApplicationContext(), LayoutInflater.from(context.getApplicationContext()).inflate(x.f(context, "tt_video_play_layout_for_live"), (ViewGroup) null, false), true, noneOf, this.f9174b, this);
        this.j = hVar;
        hVar.a(this);
    }

    private void a(Runnable runnable) {
        if (runnable != null) {
            if (!this.j.k() || !this.t) {
                b(runnable);
            } else {
                runnable.run();
            }
        }
    }

    private void a(String str) throws Exception {
        if (this.o != null) {
            com.bytedance.sdk.openadsdk.core.video.a.a aVar = new com.bytedance.sdk.openadsdk.core.video.a.a();
            aVar.f9150a = str;
            i iVar = this.f9174b;
            if (iVar != null) {
                if (iVar.B() != null) {
                    aVar.f9153d = this.f9174b.B().k();
                }
                aVar.f9151b = String.valueOf(af.d(this.f9174b.S()));
            }
            aVar.f9152c = 1;
            this.o.a(aVar);
        }
        this.m = System.currentTimeMillis();
        if (!TextUtils.isEmpty(str)) {
            this.j.d(8);
            this.j.d(0);
            a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.m = System.currentTimeMillis();
                    a.this.j.c(0);
                    if (a.this.o != null && a.this.q == 0) {
                        a.this.o.a(true, 0L, !a.this.y);
                    } else if (a.this.o != null) {
                        a.this.o.a(true, a.this.q, !a.this.y);
                    }
                    if (a.this.l != null) {
                        a.this.l.postDelayed(a.this.H, 100L);
                    }
                    a.this.E();
                }
            });
        }
    }

    private void b(int i) {
        if (G() && this.j != null) {
            this.l.removeCallbacks(this.I);
            this.j.w();
            long currentTimeMillis = System.currentTimeMillis() - this.m;
            this.n = currentTimeMillis;
            c.a aVar = this.p;
            if (aVar != null) {
                aVar.a(currentTimeMillis, com.bytedance.sdk.openadsdk.core.video.e.a.a(this.q, this.f9175c));
            }
            if (af.c(this.f9174b)) {
                this.j.a(this.f9174b, this.f9173a, true);
            }
            if (!this.w) {
                b();
                this.w = true;
                long j = this.f9175c;
                a(j, j);
                long j2 = this.f9175c;
                this.q = j2;
                this.r = j2;
            }
            this.C = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        int c2;
        if (G() && this.N != (c2 = t.c(context))) {
            if (!this.B) {
                d(2);
            }
            this.N = c2;
        }
    }

    private void b(Runnable runnable) {
        if (this.s == null) {
            this.s = new ArrayList<>();
        }
        this.s.add(runnable);
    }

    private boolean c(int i) {
        return this.j.b(i);
    }

    private boolean d(int i) {
        i iVar;
        int c2 = t.c(n.a());
        if (c2 != 4 && c2 != 0) {
            i();
            this.A = true;
            this.B = false;
            h hVar = this.j;
            if (hVar == null || (iVar = this.f9174b) == null) {
                return true;
            }
            return hVar.a(i, iVar.B(), true);
        } else if (c2 != 4) {
            return true;
        } else {
            this.A = false;
            h hVar2 = this.j;
            if (hVar2 == null) {
                return true;
            }
            hVar2.q();
            return true;
        }
    }

    private void g(boolean z) {
        this.K = z;
    }

    public boolean A() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        return dVar != null && dVar.g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, Object> B() {
        HashMap hashMap = new HashMap();
        Map<String, Object> map = this.f9176d;
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Map<String, Object> a2 = af.a(this.f, this.f9174b, u());
        if (a2 != null) {
            for (Map.Entry<String, Object> entry2 : a2.entrySet()) {
                hashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, Object> C() {
        HashMap hashMap = new HashMap();
        Map<String, Object> a2 = af.a(this.f9174b, o(), u());
        if (a2 != null) {
            for (Map.Entry<String, Object> entry : a2.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Map<String, Object> map = this.f9176d;
        if (map != null) {
            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                hashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        return hashMap;
    }

    protected abstract int a();

    public void a(int i) {
        if (G()) {
            boolean z = i == 0 || i == 8;
            Context context = this.f9173a.get();
            if (context instanceof Activity) {
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
        }
    }

    protected abstract void a(int i, int i2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.q = r1
            r0 = r5
            long r0 = r0.r
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r8
            r10 = r0
        L_0x0016:
            r0 = r5
            r1 = r10
            r0.r = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.a(long):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.bytedance.sdk.openadsdk.core.video.c.a] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Message r9) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.a(android.os.Message):void");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, int i) {
        if (this.o != null) {
            E();
            a(this.L, c(i));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, int i, boolean z) {
        if (G()) {
            long l = (((float) (i * this.f9175c)) * 1.0f) / x.l(this.f9173a.get(), "tt_video_progress_max");
            if (this.f9175c > 0) {
                this.L = (int) l;
            } else {
                this.L = 0L;
            }
            h hVar = this.j;
            if (hVar != null) {
                hVar.a(this.L);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, SurfaceTexture surfaceTexture) {
        this.t = true;
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.a(surfaceTexture);
            H();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, SurfaceHolder surfaceHolder) {
        this.t = true;
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.a(surfaceHolder);
            H();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
        if (this.o != null && G()) {
            if (this.o.g()) {
                i();
                this.j.b(true, false);
                this.j.c();
            } else if (!this.o.i()) {
                h hVar = this.j;
                if (hVar != null) {
                    hVar.c(this.k);
                }
                d(this.q);
                h hVar2 = this.j;
                if (hVar2 != null) {
                    hVar2.b(false, false);
                }
            } else {
                k();
                h hVar3 = this.j;
                if (hVar3 != null) {
                    hVar3.b(false, false);
                }
            }
        }
    }

    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view, boolean z, boolean z2) {
        if (this.x) {
            i();
        }
        if (z && !this.x && !z()) {
            this.j.b(!A(), false);
            this.j.a(z2, true, false);
        }
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar == null || !dVar.g()) {
            this.j.c();
            return;
        }
        this.j.c();
        this.j.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(c.a aVar) {
        this.p = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(c.AbstractC0169c cVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar) {
        this.D = new WeakReference<>(eVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.d
    public void a(e.a aVar, String str) {
        int i = AnonymousClass6.f9182a[aVar.ordinal()];
        if (i == 1) {
            i();
        } else if (i == 2) {
            a(true);
        } else if (i == 3) {
            k();
            this.A = false;
            this.B = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(Map<String, Object> map) {
        this.f9176d = map;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(boolean z) {
        l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r6, java.lang.String r7, int r8, int r9, java.util.List<java.lang.String> r10, java.lang.String r11, long r12, boolean r14) {
        /*
            r5 = this;
            java.lang.String r0 = "BaseVideoController"
            java.lang.String r1 = "video local url "
            r2 = r6
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            com.bytedance.sdk.openadsdk.utils.q.b(r0, r1)
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0022
            java.lang.String r0 = "BaseVideoController"
            java.lang.String r1 = "No video info"
            com.bytedance.sdk.openadsdk.utils.q.e(r0, r1)
            r0 = 0
            return r0
        L_0x0022:
            r0 = r5
            r0.f()
            r0 = r5
            r1 = r6
            java.lang.String r2 = "http"
            boolean r1 = r1.startsWith(r2)
            r2 = 1
            r1 = r1 ^ r2
            r0.g = r1
            r0 = r5
            r1 = r14
            r0.y = r1
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0062
            r0 = r5
            r1 = r12
            r0.q = r1
            r0 = r5
            long r0 = r0.r
            r15 = r0
            r0 = r12
            r17 = r0
            r0 = r15
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x005c
            r0 = r15
            r17 = r0
        L_0x005c:
            r0 = r5
            r1 = r17
            r0.r = r1
        L_0x0062:
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.j
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x008b
            r0 = r7
            r0.e()
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.j
            r0.d()
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.j
            r1 = r8
            r2 = r9
            r0.c(r1, r2)
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.j
            r1 = r5
            android.view.ViewGroup r1 = r1.k
            r0.c(r1)
        L_0x008b:
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.d.d r0 = r0.o
            if (r0 != 0) goto L_0x00a1
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.d.d r1 = new com.bytedance.sdk.openadsdk.core.video.d.d
            r2 = r1
            r3 = r5
            com.bytedance.sdk.openadsdk.utils.ah r3 = r3.l
            r2.<init>(r3)
            r0.o = r1
        L_0x00a1:
            r0 = r5
            r1 = 0
            r0.n = r1
            r0 = r5
            r1 = r6
            r0.a(r1)     // Catch: Exception -> 0x00ad
            r0 = 1
            return r0
        L_0x00ad:
            r6 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.a(java.lang.String, java.lang.String, int, int, java.util.List, java.lang.String, long, boolean):boolean");
    }

    protected abstract void b();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void b(long j) {
        this.z = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, int i) {
        if (this.o != null) {
            F();
        }
        h hVar = this.j;
        if (hVar != null) {
            hVar.c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, SurfaceTexture surfaceTexture) {
        this.t = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, SurfaceHolder surfaceHolder) {
        this.t = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
        b(bVar, view, false, false);
    }

    public void b(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view, boolean z, boolean z2) {
        if (G()) {
            g(!this.K);
            if (!(this.f9173a.get() instanceof Activity)) {
                q.b("BaseVideoController", "context is not activity, not support this function.");
                return;
            }
            if (this.K) {
                a(z ? 8 : 0);
                h hVar = this.j;
                if (hVar != null) {
                    hVar.a(this.k);
                    this.j.b(false);
                }
            } else {
                a(1);
                h hVar2 = this.j;
                if (hVar2 != null) {
                    hVar2.b(this.k);
                    this.j.b(false);
                }
            }
            WeakReference<com.bytedance.sdk.openadsdk.core.video.nativevideo.e> weakReference = this.D;
            com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = weakReference != null ? weakReference.get() : null;
            if (eVar != null) {
                eVar.a(this.K);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void b(boolean z) {
        this.x = z;
        this.j.c(z);
    }

    protected abstract void c();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void c(long j) {
        this.f9175c = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void c(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
        h hVar = this.j;
        if (hVar != null) {
            hVar.g();
        }
        a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void c(boolean z) {
        this.y = z;
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.a(z);
        }
    }

    protected abstract void d();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(long r8) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r0.q = r1
            r0 = r7
            long r0 = r0.r
            r10 = r0
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r10
            r12 = r0
        L_0x0016:
            r0 = r7
            r1 = r12
            r0.r = r1
            r0 = r7
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.j
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x002c
            r0 = r14
            r0.e()
        L_0x002c:
            r0 = r7
            com.bytedance.sdk.openadsdk.core.video.d.d r0 = r0.o
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004b
            r0 = r14
            r1 = 1
            r2 = r7
            long r2 = r2.q
            r3 = r7
            boolean r3 = r3.y
            r4 = 1
            r3 = r3 ^ r4
            r0.a(r1, r2, r3)
            r0 = r7
            r0.E()
        L_0x004b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.c.a.d(long):void");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void d(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
        if (this.K) {
            g(false);
            h hVar = this.j;
            if (hVar != null) {
                hVar.b(this.k);
            }
            a(1);
            return;
        }
        a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void d(boolean z) {
        this.C = z;
    }

    protected abstract void e();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void e(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
        a(bVar, view, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void e(boolean z) {
    }

    protected abstract void f();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void f(com.bytedance.sdk.openadsdk.core.video.nativevideo.b bVar, View view) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void f(boolean z) {
        this.G = z;
    }

    protected abstract void g();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void h() {
        h hVar = this.j;
        if (hVar != null) {
            hVar.b();
            this.j.e();
        }
        h hVar2 = this.j;
        if (hVar2 != null) {
            hVar2.u();
        }
        d(-1L);
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.m();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void i() {
        this.i = p();
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.b();
        }
        if (!this.w && this.v) {
            c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void j() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void k() {
        h hVar = this.j;
        if (hVar != null) {
            hVar.e();
            this.j.q();
            this.j.u();
        }
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.a(false, this.q, !this.y);
            E();
        }
        if (!this.w && this.v) {
            d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void l() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar != null) {
            dVar.c();
            this.o = null;
        }
        h hVar = this.j;
        if (hVar != null) {
            hVar.g();
        }
        ah ahVar = this.l;
        if (ahVar != null) {
            ahVar.removeCallbacks(this.I);
            this.l.removeCallbacks(this.H);
            this.l.removeCallbacksAndMessages(null);
            F();
        }
        this.p = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void m() {
        l();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long n() {
        return this.q;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long o() {
        if (u() == null) {
            return 0L;
        }
        return u().n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long p() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar == null) {
            return 0L;
        }
        return dVar.o() + this.z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long q() {
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.o;
        if (dVar == null) {
            return 0L;
        }
        return dVar.p() + this.z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public int r() {
        return com.bytedance.sdk.openadsdk.core.video.e.a.a(this.r, this.f9175c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long s() {
        return this.f9175c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean t() {
        return this.A;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public com.bytedance.sdk.openadsdk.core.video.d.d u() {
        return this.o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public h v() {
        return this.j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean w() {
        return this.C;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean x() {
        return this.F;
    }

    public void y() {
        if (!this.w && this.v) {
            d();
        }
    }

    public boolean z() {
        return this.o.l();
    }
}
