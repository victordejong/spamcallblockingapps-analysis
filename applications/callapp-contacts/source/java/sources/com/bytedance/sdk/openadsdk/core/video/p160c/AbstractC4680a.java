package com.bytedance.sdk.openadsdk.core.video.p160c;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4717b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4723d;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4724e;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h;
import com.bytedance.sdk.openadsdk.core.video.p158a.C4670a;
import com.bytedance.sdk.openadsdk.core.video.p161d.C4699d;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4708a;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b;
import com.bytedance.sdk.openadsdk.core.widget.C4781e;
import com.bytedance.sdk.openadsdk.p186m.C5064e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.explorestack.iab.vast.VastError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http.StatusLine;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/c/a.class */
public abstract class AbstractC4680a implements AbstractC4719c, AbstractC4723d, HandlerC5446ah.AbstractC5447a {

    /* renamed from: D */
    private WeakReference<AbstractC4724e> f17094D;

    /* renamed from: E */
    private int f17095E;

    /* renamed from: L */
    private long f17102L;

    /* renamed from: N */
    private int f17104N;

    /* renamed from: a */
    public final WeakReference<Context> f17106a;

    /* renamed from: b */
    public final C4557i f17107b;

    /* renamed from: c */
    public long f17108c;

    /* renamed from: i */
    public long f17114i;

    /* renamed from: j */
    private C4743h f17115j;

    /* renamed from: k */
    private final ViewGroup f17116k;

    /* renamed from: o */
    private C4699d f17120o;

    /* renamed from: p */
    private AbstractC4719c.AbstractC4720a f17121p;

    /* renamed from: s */
    private ArrayList<Runnable> f17124s;

    /* renamed from: t */
    private boolean f17125t;

    /* renamed from: u */
    private final boolean f17126u;

    /* renamed from: l */
    private final HandlerC5446ah f17117l = new HandlerC5446ah(this);

    /* renamed from: m */
    private long f17118m = 0;

    /* renamed from: n */
    private long f17119n = 0;

    /* renamed from: q */
    private long f17122q = 0;

    /* renamed from: r */
    private long f17123r = 0;

    /* renamed from: v */
    private boolean f17127v = false;

    /* renamed from: w */
    private boolean f17128w = false;

    /* renamed from: x */
    private boolean f17129x = true;

    /* renamed from: y */
    private boolean f17130y = false;

    /* renamed from: z */
    private long f17131z = 0;

    /* renamed from: A */
    private boolean f17091A = false;

    /* renamed from: B */
    private boolean f17092B = false;

    /* renamed from: C */
    private boolean f17093C = false;

    /* renamed from: d */
    protected Map<String, Object> f17109d = null;

    /* renamed from: e */
    protected long f17110e = 0;

    /* renamed from: f */
    protected long f17111f = 0;

    /* renamed from: g */
    protected boolean f17112g = false;

    /* renamed from: h */
    protected boolean f17113h = false;

    /* renamed from: F */
    private boolean f17096F = false;

    /* renamed from: G */
    private boolean f17097G = true;

    /* renamed from: H */
    private final Runnable f17098H = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.2
        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC4680a.this.f17120o != null) {
                AbstractC4680a.this.f17120o.m34425e();
            }
        }
    };

    /* renamed from: I */
    private final Runnable f17099I = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.3
        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC4680a.this.f17121p != null) {
                AbstractC4680a.this.f17121p.mo34365a();
            }
        }
    };

    /* renamed from: J */
    private final Runnable f17100J = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.4
        @Override // java.lang.Runnable
        public void run() {
            if (AbstractC4680a.this.f17120o != null) {
                if (AbstractC4680a.this.f17108c <= 0) {
                    AbstractC4680a.this.f17120o.m34425e();
                }
                AbstractC4680a.this.f17120o.m34424f();
            }
            AbstractC4680a.this.f17117l.postDelayed(this, 200L);
        }
    };

    /* renamed from: K */
    private boolean f17101K = false;

    /* renamed from: M */
    private final BroadcastReceiver f17103M = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                AbstractC4680a.this.mo34264i();
            } else if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            } else {
                AbstractC4680a.this.m34522b(context);
            }
        }
    };

    /* renamed from: O */
    private boolean f17105O = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.c.a$6 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/c/a$6.class */
    static /* synthetic */ class C46866 {

        /* renamed from: a */
        static final /* synthetic */ int[] f17137a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[C4781e.EnumC4783a.values().length];
            f17137a = iArr;
            try {
                iArr[C4781e.EnumC4783a.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17137a[C4781e.EnumC4783a.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17137a[C4781e.EnumC4783a.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public AbstractC4680a(Context context, ViewGroup viewGroup, C4557i c4557i) {
        boolean z = false;
        this.f17104N = 1;
        this.f17104N = C5482t.m32088c(context);
        this.f17116k = viewGroup;
        this.f17106a = new WeakReference<>(context);
        this.f17107b = c4557i;
        m34531a(context);
        this.f17095E = C5438af.m32278d(c4557i.m35228S());
        this.f17126u = Build.VERSION.SDK_INT >= 17 ? true : z;
    }

    /* renamed from: D */
    private void m34548D() {
        int mo34537a = mo34537a();
        int m34861t = (mo34537a == 2 || mo34537a == 1) ? C4600n.m34805h().m34861t() * 1000 : mo34537a == 3 ? C4600n.m34805h().m34889f(String.valueOf(this.f17095E)) : 5;
        this.f17117l.removeCallbacks(this.f17099I);
        this.f17117l.postDelayed(this.f17099I, m34861t);
    }

    /* renamed from: E */
    public void m34547E() {
        m34546F();
        this.f17117l.postDelayed(this.f17100J, 800L);
    }

    /* renamed from: F */
    private void m34546F() {
        this.f17117l.removeCallbacks(this.f17100J);
    }

    /* renamed from: G */
    private boolean m34545G() {
        WeakReference<Context> weakReference = this.f17106a;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    /* renamed from: H */
    private void m34544H() {
        ArrayList<Runnable> arrayList = this.f17124s;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        Iterator it2 = new ArrayList(this.f17124s).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.f17124s.clear();
    }

    /* renamed from: I */
    private void m34543I() {
        C4557i c4557i = this.f17107b;
        if (c4557i != null) {
            C4600n.m34806g().mo33138a(C5064e.m33132a(c4557i.m35235L(), true, this.f17107b));
        }
    }

    /* renamed from: J */
    private boolean m34542J() throws Throwable {
        C4699d c4699d;
        C4557i c4557i;
        WeakReference<Context> weakReference = this.f17106a;
        return weakReference == null || weakReference.get() == null || m34539M() == null || (c4699d = this.f17120o) == null || c4699d.m34455a() == null || (c4557i = this.f17107b) == null || c4557i.m35134z() != null || this.f17107b.m35157l() == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x01f4 A[Catch: all -> 0x02a1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x02a1, blocks: (B:2:0x0000, B:5:0x0029, B:11:0x0065, B:15:0x007f, B:19:0x009e, B:22:0x00c3, B:35:0x01c5, B:37:0x01f4, B:40:0x022a, B:42:0x0237, B:44:0x024b, B:46:0x0255, B:47:0x0263, B:49:0x026d, B:51:0x0279, B:53:0x0284, B:55:0x029a), top: B:60:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x024b A[Catch: all -> 0x02a1, TryCatch #0 {all -> 0x02a1, blocks: (B:2:0x0000, B:5:0x0029, B:11:0x0065, B:15:0x007f, B:19:0x009e, B:22:0x00c3, B:35:0x01c5, B:37:0x01f4, B:40:0x022a, B:42:0x0237, B:44:0x024b, B:46:0x0255, B:47:0x0263, B:49:0x026d, B:51:0x0279, B:53:0x0284, B:55:0x029a), top: B:60:0x0000 }] */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m34541K() {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a.m34541K():void");
    }

    /* renamed from: L */
    private void m34540L() {
        C4699d c4699d;
        C4557i c4557i;
        try {
            WeakReference<Context> weakReference = this.f17106a;
            if (weakReference == null || weakReference.get() == null || m34539M() == null || (c4699d = this.f17120o) == null || c4699d.m34455a() == null || (c4557i = this.f17107b) == null) {
                return;
            }
            boolean z = c4557i.m35227T() == 15;
            int[] m32222b = C5443ag.m32222b(C4600n.m34815a());
            float f = m32222b[0];
            float f2 = m32222b[1];
            MediaPlayer m34455a = this.f17120o.m34455a();
            m34536a(f, f2, m34455a.getVideoWidth(), m34455a.getVideoHeight(), z);
            C5478q.m32112b("changeVideoSize", "changeSize=end");
        } catch (Throwable th) {
            C5478q.m32117a("changeVideoSize", "changeSize error", th);
        }
    }

    /* renamed from: M */
    private AbstractC4751b m34539M() {
        C4743h c4743h;
        WeakReference<Context> weakReference = this.f17106a;
        if (weakReference == null || weakReference.get() == null || (c4743h = this.f17115j) == null) {
            return null;
        }
        return c4743h.m34193o();
    }

    /* renamed from: N */
    private void m34538N() {
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34208c(0);
            this.f17115j.mo34218a(false, false);
            this.f17115j.mo34211b(false);
            this.f17115j.mo34216b();
            this.f17115j.mo34204d();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x006f, code lost:
        if (r8 <= com.google.android.gms.maps.model.BitmapDescriptorFactory.HUE_RED) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m34536a(float r5, float r6, float r7, float r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a.m34536a(float, float, float, float, boolean):void");
    }

    /* renamed from: a */
    private void m34533a(long j, long j2) {
        this.f17122q = j;
        this.f17108c = j2;
        this.f17115j.mo34229a(j, j2);
        this.f17115j.mo34233a(C4708a.m34402a(j, j2));
        try {
            AbstractC4719c.AbstractC4720a abstractC4720a = this.f17121p;
            if (abstractC4720a == null) {
                return;
            }
            abstractC4720a.mo34363a(j, j2);
        } catch (Throwable th) {
            C5478q.m32108c("BaseVideoController", "onProgressUpdate error: ", th);
        }
    }

    /* renamed from: a */
    private void m34532a(long j, boolean z) {
        if (this.f17120o == null) {
            return;
        }
        if (z) {
            m34538N();
        }
        this.f17120o.m34451a(j);
    }

    /* renamed from: a */
    private void m34531a(Context context) {
        EnumSet noneOf = EnumSet.noneOf(AbstractC4717b.EnumC4718a.class);
        noneOf.add(AbstractC4717b.EnumC4718a.hideCloseBtn);
        noneOf.add(AbstractC4717b.EnumC4718a.hideBackBtn);
        C4743h c4743h = new C4743h(context.getApplicationContext(), LayoutInflater.from(context.getApplicationContext()).inflate(C5486x.m32065f(context, "tt_video_play_layout_for_live"), (ViewGroup) null, false), true, noneOf, this.f17107b, this);
        this.f17115j = c4743h;
        c4743h.m34222a(this);
    }

    /* renamed from: a */
    private void m34526a(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!this.f17115j.mo34195k() || !this.f17125t) {
            m34519b(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: a */
    private void m34525a(String str) throws Exception {
        if (this.f17120o != null) {
            C4670a c4670a = new C4670a();
            c4670a.f17063a = str;
            C4557i c4557i = this.f17107b;
            if (c4557i != null) {
                if (c4557i.m35245B() != null) {
                    c4670a.f17066d = this.f17107b.m35245B().m35040k();
                }
                c4670a.f17064b = String.valueOf(C5438af.m32278d(this.f17107b.m35228S()));
            }
            c4670a.f17065c = 1;
            this.f17120o.m34448a(c4670a);
        }
        this.f17118m = System.currentTimeMillis();
        if (!TextUtils.isEmpty(str)) {
            this.f17115j.m34203d(8);
            this.f17115j.m34203d(0);
            m34526a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC4680a.this.f17118m = System.currentTimeMillis();
                    AbstractC4680a.this.f17115j.mo34208c(0);
                    if (AbstractC4680a.this.f17120o != null && AbstractC4680a.this.f17122q == 0) {
                        AbstractC4680a.this.f17120o.m34437a(true, 0L, !AbstractC4680a.this.f17130y);
                    } else if (AbstractC4680a.this.f17120o != null) {
                        AbstractC4680a.this.f17120o.m34437a(true, AbstractC4680a.this.f17122q, !AbstractC4680a.this.f17130y);
                    }
                    if (AbstractC4680a.this.f17117l != null) {
                        AbstractC4680a.this.f17117l.postDelayed(AbstractC4680a.this.f17098H, 100L);
                    }
                    AbstractC4680a.this.m34547E();
                }
            });
        }
    }

    /* renamed from: b */
    private void m34523b(int i) {
        if (m34545G() && this.f17115j != null) {
            this.f17117l.removeCallbacks(this.f17099I);
            this.f17115j.m34185w();
            long currentTimeMillis = System.currentTimeMillis() - this.f17118m;
            this.f17119n = currentTimeMillis;
            AbstractC4719c.AbstractC4720a abstractC4720a = this.f17121p;
            if (abstractC4720a != null) {
                abstractC4720a.mo34364a(currentTimeMillis, C4708a.m34402a(this.f17122q, this.f17108c));
            }
            if (C5438af.m32285c(this.f17107b)) {
                this.f17115j.mo34224a(this.f17107b, this.f17106a, true);
            }
            if (!this.f17128w) {
                mo34524b();
                this.f17128w = true;
                long j = this.f17108c;
                m34533a(j, j);
                long j2 = this.f17108c;
                this.f17122q = j2;
                this.f17123r = j2;
            }
            this.f17093C = true;
        }
    }

    /* renamed from: b */
    public void m34522b(Context context) {
        int m32088c;
        if (m34545G() && this.f17104N != (m32088c = C5482t.m32088c(context))) {
            if (!this.f17092B) {
                m34514d(2);
            }
            this.f17104N = m32088c;
        }
    }

    /* renamed from: b */
    private void m34519b(Runnable runnable) {
        if (this.f17124s == null) {
            this.f17124s = new ArrayList<>();
        }
        this.f17124s.add(runnable);
    }

    /* renamed from: c */
    private boolean m34517c(int i) {
        return this.f17115j.mo34215b(i);
    }

    /* renamed from: d */
    private boolean m34514d(int i) {
        C4557i c4557i;
        int m32088c = C5482t.m32088c(C4600n.m34815a());
        if (m32088c == 4 || m32088c == 0) {
            if (m32088c != 4) {
                return true;
            }
            this.f17091A = false;
            C4743h c4743h = this.f17115j;
            if (c4743h == null) {
                return true;
            }
            c4743h.m34191q();
            return true;
        }
        mo34264i();
        this.f17091A = true;
        this.f17092B = false;
        C4743h c4743h2 = this.f17115j;
        if (c4743h2 != null && (c4557i = this.f17107b) != null) {
            return c4743h2.m34231a(i, c4557i.m35245B(), true);
        }
        return true;
    }

    /* renamed from: g */
    private void m34505g(boolean z) {
        this.f17101K = z;
    }

    /* renamed from: A */
    public boolean m34551A() {
        C4699d c4699d = this.f17120o;
        return c4699d != null && c4699d.m34423g();
    }

    /* renamed from: B */
    public Map<String, Object> m34550B() {
        HashMap hashMap = new HashMap();
        Map<String, Object> map = this.f17109d;
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Map<String, Object> m32310a = C5438af.m32310a(this.f17111f, this.f17107b, mo34249u());
        if (m32310a != null) {
            for (Map.Entry<String, Object> entry2 : m32310a.entrySet()) {
                hashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        return hashMap;
    }

    /* renamed from: C */
    public Map<String, Object> m34549C() {
        HashMap hashMap = new HashMap();
        Map<String, Object> m32304a = C5438af.m32304a(this.f17107b, mo34255o(), mo34249u());
        if (m32304a != null) {
            for (Map.Entry<String, Object> entry : m32304a.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Map<String, Object> map = this.f17109d;
        if (map != null) {
            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                hashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    protected abstract int mo34537a();

    /* renamed from: a */
    public void m34535a(int i) {
        if (!m34545G()) {
            return;
        }
        boolean z = i == 0 || i == 8;
        Context context = this.f17106a.get();
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
    protected abstract void mo34534a(int i, int i2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34335a(long j) {
        this.f17122q = j;
        ?? r0 = this.f17123r;
        char c = j;
        if (r0 > j) {
            c = r0;
        }
        this.f17123r = c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        WeakReference<Context> weakReference;
        if (this.f17115j == null || message == null || (weakReference = this.f17106a) == null || weakReference.get() == null) {
            return;
        }
        int i = message.what;
        if (i == 108) {
            if (!(message.obj instanceof Long) || ((Long) message.obj).longValue() <= 0) {
                return;
            }
            this.f17108c = ((Long) message.obj).longValue();
        } else if (i == 109) {
            if (!(message.obj instanceof Long)) {
                return;
            }
            ?? longValue = ((Long) message.obj).longValue();
            this.f17122q = longValue;
            char c = this.f17123r;
            if (c <= longValue) {
                c = longValue;
            }
            this.f17123r = c;
            m34533a((long) longValue, this.f17108c);
        } else if (i == 308) {
            mo34534a((int) StatusLine.HTTP_PERM_REDIRECT, 0);
        } else if (i == 311) {
            C4557i c4557i = this.f17107b;
            if (c4557i == null || c4557i.m35163j() != 0) {
                m34541K();
            } else {
                m34540L();
            }
        } else if (i == 314) {
            this.f17110e = SystemClock.elapsedRealtime();
        } else {
            switch (i) {
                case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                    m34523b(message.what);
                    return;
                case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                    mo34534a(message.arg1, message.arg2);
                    this.f17117l.removeCallbacks(this.f17099I);
                    C4743h c4743h = this.f17115j;
                    if (c4743h != null) {
                        c4743h.m34185w();
                    }
                    AbstractC4719c.AbstractC4720a abstractC4720a = this.f17121p;
                    if (abstractC4720a == null) {
                        return;
                    }
                    abstractC4720a.mo34361b(this.f17119n, C4708a.m34402a(this.f17122q, this.f17108c));
                    return;
                case 304:
                    int i2 = message.arg1;
                    C4743h c4743h2 = this.f17115j;
                    if (c4743h2 != null) {
                        if (i2 == 3 || i2 == 702) {
                            c4743h2.m34185w();
                            this.f17117l.removeCallbacks(this.f17099I);
                            this.f17096F = false;
                        } else if (i2 == 701) {
                            c4743h2.m34188t();
                            m34548D();
                            this.f17096F = true;
                        }
                    }
                    if (!this.f17126u || i2 != 3 || this.f17127v) {
                        return;
                    }
                    this.f17111f = SystemClock.elapsedRealtime() - this.f17110e;
                    AbstractC4719c.AbstractC4720a abstractC4720a2 = this.f17121p;
                    if (abstractC4720a2 != null) {
                        abstractC4720a2.mo34362b();
                    }
                    mo34511e();
                    m34543I();
                    this.f17127v = true;
                    this.f17113h = true;
                    return;
                case 305:
                    HandlerC5446ah handlerC5446ah = this.f17117l;
                    if (handlerC5446ah != null) {
                        handlerC5446ah.removeCallbacks(this.f17099I);
                    }
                    if (!this.f17126u && !this.f17127v) {
                        this.f17111f = SystemClock.elapsedRealtime() - this.f17110e;
                        mo34507g();
                        this.f17127v = true;
                    }
                    C4743h c4743h3 = this.f17115j;
                    if (c4743h3 == null) {
                        return;
                    }
                    c4743h3.m34185w();
                    return;
                case 306:
                    this.f17117l.removeCallbacks(this.f17099I);
                    C4743h c4743h4 = this.f17115j;
                    if (c4743h4 == null) {
                        return;
                    }
                    c4743h4.m34185w();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34328a(AbstractC4717b abstractC4717b, int i) {
        if (this.f17120o == null) {
            return;
        }
        m34547E();
        m34532a(this.f17102L, m34517c(i));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34327a(AbstractC4717b abstractC4717b, int i, boolean z) {
        if (!m34545G()) {
            return;
        }
        long m32059l = (((float) (i * this.f17108c)) * 1.0f) / C5486x.m32059l(this.f17106a.get(), "tt_video_progress_max");
        if (this.f17108c > 0) {
            this.f17102L = (int) m32059l;
        } else {
            this.f17102L = 0L;
        }
        C4743h c4743h = this.f17115j;
        if (c4743h == null) {
            return;
        }
        c4743h.mo34230a(this.f17102L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34326a(AbstractC4717b abstractC4717b, SurfaceTexture surfaceTexture) {
        this.f17125t = true;
        C4699d c4699d = this.f17120o;
        if (c4699d == null) {
            return;
        }
        c4699d.m34450a(surfaceTexture);
        m34544H();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34325a(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder) {
        this.f17125t = true;
        C4699d c4699d = this.f17120o;
        if (c4699d == null) {
            return;
        }
        c4699d.m34449a(surfaceHolder);
        m34544H();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34324a(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34323a(AbstractC4717b abstractC4717b, View view) {
        if (this.f17120o == null || !m34545G()) {
            return;
        }
        if (this.f17120o.m34423g()) {
            mo34264i();
            this.f17115j.m34210b(true, false);
            this.f17115j.mo34209c();
        } else if (this.f17120o.m34421i()) {
            mo34260k();
            C4743h c4743h = this.f17115j;
            if (c4743h == null) {
                return;
            }
            c4743h.m34210b(false, false);
        } else {
            C4743h c4743h2 = this.f17115j;
            if (c4743h2 != null) {
                c4743h2.m34206c(this.f17116k);
            }
            m34513d(this.f17122q);
            C4743h c4743h3 = this.f17115j;
            if (c4743h3 == null) {
                return;
            }
            c4743h3.m34210b(false, false);
        }
    }

    /* renamed from: a */
    public void m34527a(AbstractC4717b abstractC4717b, View view, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: a */
    public void mo34321a(AbstractC4717b abstractC4717b, View view, boolean z, boolean z2) {
        if (this.f17129x) {
            mo34264i();
        }
        if (z && !this.f17129x && !m34502z()) {
            this.f17115j.m34210b(!m34551A(), false);
            this.f17115j.mo34217a(z2, true, false);
        }
        C4699d c4699d = this.f17120o;
        if (c4699d == null || !c4699d.m34423g()) {
            this.f17115j.mo34209c();
            return;
        }
        this.f17115j.mo34209c();
        this.f17115j.mo34216b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34320a(AbstractC4719c.AbstractC4720a abstractC4720a) {
        this.f17121p = abstractC4720a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34319a(AbstractC4719c.AbstractC4722c abstractC4722c) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34318a(AbstractC4724e abstractC4724e) {
        this.f17094D = new WeakReference<>(abstractC4724e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4723d
    /* renamed from: a */
    public void mo34313a(C4781e.EnumC4783a enumC4783a, String str) {
        int i = C46866.f17137a[enumC4783a.ordinal()];
        if (i == 1) {
            mo34264i();
        } else if (i == 2) {
            mo34308a(true);
        } else if (i != 3) {
        } else {
            mo34260k();
            this.f17091A = false;
            this.f17092B = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34309a(Map<String, Object> map) {
        this.f17109d = map;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public void mo34308a(boolean z) {
        mo34258l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: a */
    public boolean mo34310a(String str, String str2, int i, int i2, List<String> list, String str3, long j, boolean z) {
        C5478q.m32112b("BaseVideoController", "video local url ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            C5478q.m32106e("BaseVideoController", "No video info");
            return false;
        }
        mo34509f();
        this.f17112g = !str.startsWith("http");
        this.f17130y = z;
        if (j > 0) {
            this.f17122q = j;
            ?? r0 = this.f17123r;
            char c = j;
            if (r0 > j) {
                c = r0;
            }
            this.f17123r = c;
        }
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34201e();
            this.f17115j.mo34204d();
            this.f17115j.m34207c(i, i2);
            this.f17115j.m34206c(this.f17116k);
        }
        if (this.f17120o == null) {
            this.f17120o = new C4699d(this.f17117l);
        }
        this.f17119n = 0L;
        try {
            m34525a(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: b */
    protected abstract void mo34524b();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: b */
    public void mo34304b(long j) {
        this.f17131z = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34302b(AbstractC4717b abstractC4717b, int i) {
        if (this.f17120o != null) {
            m34546F();
        }
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34209c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34301b(AbstractC4717b abstractC4717b, SurfaceTexture surfaceTexture) {
        this.f17125t = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34300b(AbstractC4717b abstractC4717b, SurfaceHolder surfaceHolder) {
        this.f17125t = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: b */
    public void mo34299b(AbstractC4717b abstractC4717b, View view) {
        m34520b(abstractC4717b, view, false, false);
    }

    /* renamed from: b */
    public void m34520b(AbstractC4717b abstractC4717b, View view, boolean z, boolean z2) {
        if (!m34545G()) {
            return;
        }
        m34505g(!this.f17101K);
        if (!(this.f17106a.get() instanceof Activity)) {
            C5478q.m32112b("BaseVideoController", "context is not activity, not support this function.");
            return;
        }
        if (this.f17101K) {
            m34535a(z ? 8 : 0);
            C4743h c4743h = this.f17115j;
            if (c4743h != null) {
                c4743h.mo34226a(this.f17116k);
                this.f17115j.mo34211b(false);
            }
        } else {
            m34535a(1);
            C4743h c4743h2 = this.f17115j;
            if (c4743h2 != null) {
                c4743h2.mo34212b(this.f17116k);
                this.f17115j.mo34211b(false);
            }
        }
        WeakReference<AbstractC4724e> weakReference = this.f17094D;
        AbstractC4724e abstractC4724e = weakReference != null ? weakReference.get() : null;
        if (abstractC4724e == null) {
            return;
        }
        abstractC4724e.mo34353a(this.f17101K);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: b */
    public void mo34295b(boolean z) {
        this.f17129x = z;
        this.f17115j.m34205c(z);
    }

    /* renamed from: c */
    protected abstract void mo34518c();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: c */
    public void mo34291c(long j) {
        this.f17108c = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: c */
    public void mo34289c(AbstractC4717b abstractC4717b, View view) {
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34197g();
        }
        mo34308a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: c */
    public void mo34287c(boolean z) {
        this.f17130y = z;
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34438a(z);
        }
    }

    /* renamed from: d */
    protected abstract void mo34515d();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: d */
    public void m34513d(long j) {
        this.f17122q = j;
        ?? r0 = this.f17123r;
        char c = j;
        if (r0 > j) {
            c = r0;
        }
        this.f17123r = c;
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34201e();
        }
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34437a(true, this.f17122q, !this.f17130y);
            m34547E();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: d */
    public void mo34282d(AbstractC4717b abstractC4717b, View view) {
        if (!this.f17101K) {
            mo34308a(true);
            return;
        }
        m34505g(false);
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34212b(this.f17116k);
        }
        m34535a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: d */
    public void mo34280d(boolean z) {
        this.f17093C = z;
    }

    /* renamed from: e */
    protected abstract void mo34511e();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: e */
    public void mo34277e(AbstractC4717b abstractC4717b, View view) {
        m34527a(abstractC4717b, view, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: e */
    public void mo34275e(boolean z) {
    }

    /* renamed from: f */
    protected abstract void mo34509f();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: f */
    public void mo34273f(AbstractC4717b abstractC4717b, View view) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: f */
    public void mo34271f(boolean z) {
        this.f17097G = z;
    }

    /* renamed from: g */
    protected abstract void mo34507g();

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a
    /* renamed from: h */
    public void mo34267h() {
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34216b();
            this.f17115j.mo34201e();
        }
        C4743h c4743h2 = this.f17115j;
        if (c4743h2 != null) {
            c4743h2.m34187u();
        }
        m34513d(-1L);
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34417m();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: i */
    public void mo34264i() {
        this.f17114i = mo34254p();
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34436b();
        }
        if (this.f17128w || !this.f17127v) {
            return;
        }
        mo34518c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: j */
    public void mo34262j() {
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34426d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: k */
    public void mo34260k() {
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34201e();
            this.f17115j.m34191q();
            this.f17115j.m34187u();
        }
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34437a(false, this.f17122q, !this.f17130y);
            m34547E();
        }
        if (this.f17128w || !this.f17127v) {
            return;
        }
        mo34515d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: l */
    public void mo34258l() {
        C4699d c4699d = this.f17120o;
        if (c4699d != null) {
            c4699d.m34429c();
            this.f17120o = null;
        }
        C4743h c4743h = this.f17115j;
        if (c4743h != null) {
            c4743h.mo34197g();
        }
        HandlerC5446ah handlerC5446ah = this.f17117l;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacks(this.f17099I);
            this.f17117l.removeCallbacks(this.f17098H);
            this.f17117l.removeCallbacksAndMessages(null);
            m34546F();
        }
        this.f17121p = null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: m */
    public void mo34257m() {
        mo34258l();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: n */
    public long mo34256n() {
        return this.f17122q;
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
        C4699d c4699d = this.f17120o;
        if (c4699d == null) {
            return 0L;
        }
        return c4699d.m34415o() + this.f17131z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: q */
    public long mo34253q() {
        C4699d c4699d = this.f17120o;
        if (c4699d == null) {
            return 0L;
        }
        return c4699d.m34414p() + this.f17131z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: r */
    public int mo34252r() {
        return C4708a.m34402a(this.f17123r, this.f17108c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: s */
    public long mo34251s() {
        return this.f17108c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: t */
    public boolean mo34250t() {
        return this.f17091A;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: u */
    public C4699d mo34249u() {
        return this.f17120o;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: v */
    public C4743h mo34248v() {
        return this.f17115j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: w */
    public boolean mo34247w() {
        return this.f17093C;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c
    /* renamed from: x */
    public boolean mo34246x() {
        return this.f17096F;
    }

    /* renamed from: y */
    public void m34503y() {
        if (this.f17128w || !this.f17127v) {
            return;
        }
        mo34515d();
    }

    /* renamed from: z */
    public boolean m34502z() {
        return this.f17120o.m34418l();
    }
}
