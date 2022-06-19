package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.internal.ads.d7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d7.class */
public final class C6393d7 extends AbstractC7019u2 implements AbstractC6764n6 {

    /* renamed from: A */
    private float f21504A;

    /* renamed from: B */
    private boolean f21505B;

    /* renamed from: C */
    private List f21506C;

    /* renamed from: D */
    private boolean f21507D;

    /* renamed from: E */
    private boolean f21508E;

    /* renamed from: F */
    private C6427e3 f21509F;

    /* renamed from: G */
    private z04 f21510G;

    /* renamed from: b */
    protected final AbstractC6986t6[] f21511b;

    /* renamed from: c */
    private final C6321b9 f21512c;

    /* renamed from: d */
    private final Context f21513d;

    /* renamed from: e */
    private final C6428e4 f21514e;

    /* renamed from: f */
    private final SurfaceHolder$CallbackC6282a7 f21515f;

    /* renamed from: g */
    private final C6319b7 f21516g;

    /* renamed from: h */
    private final CopyOnWriteArraySet<AbstractC6616j6> f21517h;

    /* renamed from: i */
    private final rz0 f21518i;

    /* renamed from: j */
    private final C6834p2 f21519j;

    /* renamed from: k */
    private final C6982t2 f21520k;

    /* renamed from: l */
    private final C6579i7 f21521l;

    /* renamed from: m */
    private final C6876q7 f21522m;

    /* renamed from: n */
    private final C6913r7 f21523n;

    /* renamed from: o */
    private C7021u4 f21524o;

    /* renamed from: p */
    private C7021u4 f21525p;

    /* renamed from: q */
    private AudioTrack f21526q;

    /* renamed from: r */
    private Object f21527r;

    /* renamed from: s */
    private Surface f21528s;

    /* renamed from: t */
    private int f21529t;

    /* renamed from: u */
    private int f21530u;

    /* renamed from: v */
    private int f21531v;

    /* renamed from: w */
    private C6780nm f21532w;

    /* renamed from: x */
    private C6780nm f21533x;

    /* renamed from: y */
    private int f21534y;

    /* renamed from: z */
    private h83 f21535z;

    public C6393d7(C7208z6 c7208z6) {
        Throwable th;
        Context context;
        rz0 rz0Var;
        h83 h83Var;
        Looper looper;
        AbstractC7097w6 abstractC7097w6;
        fn3 fn3Var;
        xk3 xk3Var;
        AbstractC7095w4 abstractC7095w4;
        on3 on3Var;
        C7134x6 c7134x6;
        C7204z2 c7204z2;
        AbstractC7210z8 abstractC7210z8;
        Looper looper2;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        C6321b9 c6321b9 = new C6321b9(AbstractC7210z8.f32839a);
        this.f21512c = c6321b9;
        try {
            context = c7208z6.f32816a;
            Context applicationContext = context.getApplicationContext();
            this.f21513d = applicationContext;
            rz0Var = c7208z6.f32823h;
            this.f21518i = rz0Var;
            h83Var = c7208z6.f32825j;
            this.f21535z = h83Var;
            this.f21529t = 1;
            this.f21505B = false;
            SurfaceHolder$CallbackC6282a7 surfaceHolder$CallbackC6282a7 = new SurfaceHolder$CallbackC6282a7(this, null);
            this.f21515f = surfaceHolder$CallbackC6282a7;
            C6319b7 c6319b7 = new C6319b7(null);
            this.f21516g = c6319b7;
            this.f21517h = new CopyOnWriteArraySet<>();
            looper = c7208z6.f32824i;
            Handler handler = new Handler(looper);
            abstractC7097w6 = c7208z6.f32817b;
            AbstractC6986t6[] mo9775a = abstractC7097w6.mo9775a(handler, surfaceHolder$CallbackC6282a7, surfaceHolder$CallbackC6282a7, surfaceHolder$CallbackC6282a7, surfaceHolder$CallbackC6282a7);
            this.f21511b = mo9775a;
            this.f21504A = 1.0f;
            if (C7101wa.f31475a < 21) {
                AudioTrack audioTrack = this.f21526q;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.f21526q.release();
                    this.f21526q = null;
                }
                if (this.f21526q == null) {
                    this.f21526q = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.f21534y = this.f21526q.getAudioSessionId();
            } else {
                this.f21534y = C7130x2.m9367c(applicationContext);
            }
            this.f21506C = Collections.emptyList();
            this.f21507D = true;
            C6467f6 c6467f6 = new C6467f6();
            try {
                c6467f6.m15308c(20, 21, 22, 23, 24, 25, 26, 27);
                C6504g6 m15306e = c6467f6.m15306e();
                fn3Var = c7208z6.f32819d;
                xk3Var = c7208z6.f32820e;
                abstractC7095w4 = c7208z6.f32821f;
                on3Var = c7208z6.f32822g;
                c7134x6 = c7208z6.f32826k;
                c7204z2 = c7208z6.f32828m;
                abstractC7210z8 = c7208z6.f32818c;
                looper2 = c7208z6.f32824i;
                C6428e4 c6428e4 = new C6428e4(mo9775a, fn3Var, xk3Var, abstractC7095w4, on3Var, rz0Var, true, c7134x6, 5000L, 15000L, c7204z2, 500L, false, abstractC7210z8, looper2, this, m15306e, null);
                try {
                    this.f21514e = c6428e4;
                    c6428e4.m15590A(surfaceHolder$CallbackC6282a7);
                    c6428e4.m15589B(surfaceHolder$CallbackC6282a7);
                    context2 = c7208z6.f32816a;
                    this.f21519j = new C6834p2(context2, handler, surfaceHolder$CallbackC6282a7);
                    context3 = c7208z6.f32816a;
                    this.f21520k = new C6982t2(context3, handler, surfaceHolder$CallbackC6282a7);
                    C7101wa.m9720H(null, null);
                    context4 = c7208z6.f32816a;
                    C6579i7 c6579i7 = new C6579i7(context4, handler, surfaceHolder$CallbackC6282a7);
                    this.f21521l = c6579i7;
                    int i = this.f21535z.f23827c;
                    c6579i7.m14482b(3);
                    context5 = c7208z6.f32816a;
                    this.f21522m = new C6876q7(context5);
                    context6 = c7208z6.f32816a;
                    this.f21523n = new C6913r7(context6);
                    this.f21509F = m15914S(c6579i7);
                    this.f21510G = z04.f32747a;
                    m15915R(1, 10, Integer.valueOf(this.f21534y));
                    m15915R(2, 10, Integer.valueOf(this.f21534y));
                    m15915R(1, 3, this.f21535z);
                    m15915R(2, 4, Integer.valueOf(this.f21529t));
                    m15915R(2, 5, 0);
                    m15915R(1, 9, Boolean.valueOf(this.f21505B));
                    m15915R(2, 7, c6319b7);
                    m15915R(6, 8, c6319b7);
                    c6321b9.m16429a();
                } catch (Throwable th2) {
                    th = th2;
                    this.f21512c.m16429a();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: C */
    public static /* synthetic */ void m15925C(C6393d7 c6393d7) {
        c6393d7.f21518i.mo11221m(c6393d7.f21505B);
        Iterator<AbstractC6616j6> it = c6393d7.f21517h.iterator();
        while (it.hasNext()) {
            it.next().mo11221m(c6393d7.f21505B);
        }
    }

    /* renamed from: E */
    public static /* synthetic */ void m15923E(C6393d7 c6393d7) {
        int m15896h = c6393d7.m15896h();
        if (m15896h == 2 || m15896h == 3) {
            c6393d7.m15916Q();
            c6393d7.f21514e.m15565x();
            c6393d7.m15891l();
            c6393d7.m15891l();
        }
    }

    /* renamed from: F */
    public static /* synthetic */ C6427e3 m15922F(C6579i7 c6579i7) {
        return m15914S(c6579i7);
    }

    /* renamed from: I */
    public final void m15920I(Object obj) {
        boolean z;
        boolean z2;
        ArrayList<C6875q6> arrayList = new ArrayList();
        AbstractC6986t6[] abstractC6986t6Arr = this.f21511b;
        int length = abstractC6986t6Arr.length;
        for (int i = 0; i < 2; i++) {
            AbstractC6986t6 abstractC6986t6 = abstractC6986t6Arr[i];
            if (abstractC6986t6.mo10121O() == 2) {
                C6875q6 m15581O = this.f21514e.m15581O(abstractC6986t6);
                m15581O.m12026b(1);
                m15581O.m12024d(obj);
                m15581O.m12021g();
                arrayList.add(m15581O);
            }
        }
        Object obj2 = this.f21527r;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                for (C6875q6 c6875q6 : arrayList) {
                    c6875q6.m12018j(2000L);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException e2) {
                z2 = true;
            }
            z2 = false;
            Object obj3 = this.f21527r;
            Surface surface = this.f21528s;
            z = z2;
            if (obj3 == surface) {
                surface.release();
                this.f21528s = null;
                z = z2;
            }
        }
        this.f21527r = obj;
        if (z) {
            this.f21514e.m15583I(false, zzaeg.zzc(new zzafr(3), 1003));
        }
    }

    /* renamed from: N */
    public final void m15919N(int i, int i2) {
        if (i == this.f21530u && i2 == this.f21531v) {
            return;
        }
        this.f21530u = i;
        this.f21531v = i2;
        this.f21518i.mo11220o(i, i2);
        Iterator<AbstractC6616j6> it = this.f21517h.iterator();
        while (it.hasNext()) {
            it.next().mo11220o(i, i2);
        }
    }

    /* renamed from: O */
    public final void m15918O() {
        m15915R(1, 2, Float.valueOf(this.f21504A * this.f21520k.m10859a()));
    }

    /* renamed from: P */
    public final void m15917P(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        this.f21514e.m15585F(z2, (!z2 || i == 1) ? 0 : 1, i2);
    }

    /* renamed from: Q */
    private final void m15916Q() {
        this.f21512c.m16426d();
        if (Thread.currentThread() != this.f21514e.m15564y().getThread()) {
            String m9700a0 = C7101wa.m9700a0("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.f21514e.m15564y().getThread().getName());
            if (this.f21507D) {
                throw new IllegalStateException(m9700a0);
            }
            C6952s9.m11099a("SimpleExoPlayer", m9700a0, this.f21508E ? null : new IllegalStateException());
            this.f21508E = true;
        }
    }

    /* renamed from: R */
    private final void m15915R(int i, int i2, Object obj) {
        AbstractC6986t6[] abstractC6986t6Arr = this.f21511b;
        int length = abstractC6986t6Arr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            AbstractC6986t6 abstractC6986t6 = abstractC6986t6Arr[i3];
            if (abstractC6986t6.mo10121O() == i) {
                C6875q6 m15581O = this.f21514e.m15581O(abstractC6986t6);
                m15581O.m12026b(i2);
                m15581O.m12024d(obj);
                m15581O.m12021g();
            }
        }
    }

    /* renamed from: S */
    public static C6427e3 m15914S(C6579i7 c6579i7) {
        return new C6427e3(0, c6579i7.m14481c(), c6579i7.m14480d());
    }

    /* renamed from: T */
    public static int m15913T(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    /* renamed from: U */
    public static /* synthetic */ CopyOnWriteArraySet m15912U(C6393d7 c6393d7) {
        return c6393d7.f21517h;
    }

    /* renamed from: W */
    public static /* synthetic */ C6579i7 m15910W(C6393d7 c6393d7) {
        return c6393d7.f21521l;
    }

    /* renamed from: e0 */
    public static /* synthetic */ C6427e3 m15901e0(C6393d7 c6393d7) {
        return c6393d7.f21509F;
    }

    /* renamed from: f0 */
    public static /* synthetic */ C6427e3 m15899f0(C6393d7 c6393d7, C6427e3 c6427e3) {
        c6393d7.f21509F = c6427e3;
        return c6427e3;
    }

    /* renamed from: x */
    public static /* synthetic */ void m15885x(C6393d7 c6393d7, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        c6393d7.m15920I(surface);
        c6393d7.f21528s = surface;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: H */
    public final long mo13002H() {
        m15916Q();
        return this.f21514e.mo13002H();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: J */
    public final long mo13001J() {
        m15916Q();
        return this.f21514e.mo13001J();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: K */
    public final int mo13000K() {
        m15916Q();
        return this.f21514e.mo13000K();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: L */
    public final void mo12999L(int i, long j) {
        m15916Q();
        this.f21518i.m11226S();
        this.f21514e.mo12999L(i, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    @Deprecated
    /* renamed from: M */
    public final void mo12998M(boolean z) {
        m15916Q();
        this.f21520k.m10858b(m15891l(), 1);
        this.f21514e.m15583I(false, null);
        this.f21506C = Collections.emptyList();
    }

    /* renamed from: e */
    public final void m15902e(float f) {
        m15916Q();
        float m9692e0 = C7101wa.m9692e0(f, 0.0f, 1.0f);
        if (this.f21504A == m9692e0) {
            return;
        }
        this.f21504A = m9692e0;
        m15918O();
        this.f21518i.mo11217t(m9692e0);
        Iterator<AbstractC6616j6> it = this.f21517h.iterator();
        while (it.hasNext()) {
            it.next().mo11217t(m9692e0);
        }
    }

    /* renamed from: f */
    public final void m15900f(u11 u11Var) {
        this.f21518i.m11237H(u11Var);
    }

    /* renamed from: g */
    public final void m15898g(u11 u11Var) {
        this.f21518i.m11230O(u11Var);
    }

    /* renamed from: h */
    public final int m15896h() {
        m15916Q();
        return this.f21514e.m15588C();
    }

    /* renamed from: h0 */
    public final void m15895h0(Surface surface) {
        m15916Q();
        m15920I(surface);
        int i = surface == null ? 0 : -1;
        m15919N(i, i);
    }

    /* renamed from: i */
    public final void m15894i() {
        m15916Q();
        boolean m15891l = m15891l();
        int m10858b = this.f21520k.m10858b(m15891l, 2);
        m15917P(m15891l, m10858b, m15913T(m15891l, m10858b));
        this.f21514e.m15587D();
    }

    /* renamed from: j */
    public final void m15893j(ok3 ok3Var) {
        m15916Q();
        this.f21514e.m15586E(Collections.singletonList(ok3Var), true);
    }

    /* renamed from: k */
    public final void m15892k(boolean z) {
        m15916Q();
        int m10858b = this.f21520k.m10858b(z, m15896h());
        m15917P(z, m10858b, m15913T(z, m10858b));
    }

    /* renamed from: l */
    public final boolean m15891l() {
        m15916Q();
        return this.f21514e.m15584G();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: m */
    public final int mo12997m() {
        m15916Q();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: n */
    public final boolean mo12996n() {
        m15916Q();
        return false;
    }

    /* renamed from: o */
    public final void m15890o() {
        AudioTrack audioTrack;
        m15916Q();
        if (C7101wa.f31475a < 21 && (audioTrack = this.f21526q) != null) {
            audioTrack.release();
            this.f21526q = null;
        }
        this.f21521l.m14479e();
        this.f21520k.m10857c();
        this.f21514e.m15582N();
        this.f21518i.m11228Q();
        Surface surface = this.f21528s;
        if (surface != null) {
            surface.release();
            this.f21528s = null;
        }
        this.f21506C = Collections.emptyList();
    }

    /* renamed from: p */
    public final int m15889p() {
        m15916Q();
        this.f21514e.m15578e();
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: q */
    public final long mo12995q() {
        m15916Q();
        return this.f21514e.mo12995q();
    }

    /* renamed from: r */
    public final long m15888r() {
        m15916Q();
        return this.f21514e.m15580P();
    }

    /* renamed from: s */
    public final long m15887s() {
        m15916Q();
        return this.f21514e.m15579Q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: t */
    public final int mo12994t() {
        m15916Q();
        return this.f21514e.mo12994t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: u */
    public final boolean mo12993u() {
        m15916Q();
        return this.f21514e.mo12993u();
    }

    @Deprecated
    /* renamed from: v */
    public final void m15886v(boolean z) {
        this.f21507D = false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: w */
    public final int mo12992w() {
        m15916Q();
        return this.f21514e.mo12992w();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    /* renamed from: z */
    public final AbstractC6839p7 mo12991z() {
        m15916Q();
        return this.f21514e.mo12991z();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6764n6
    public final int zzu() {
        m15916Q();
        return this.f21514e.zzu();
    }
}
