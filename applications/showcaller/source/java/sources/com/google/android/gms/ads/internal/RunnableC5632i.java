package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.internal.ads.AbstractC6868q;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C6757n;
import com.google.android.gms.internal.ads.C6979t;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.et2;
import com.google.android.gms.internal.ads.mr2;
import com.google.android.gms.internal.ads.ps2;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.xh0;
import com.google.android.gms.internal.ads.zzcgz;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.ads.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/i.class */
public final class RunnableC5632i implements Runnable, AbstractC6868q {

    /* renamed from: g */
    private final boolean f18295g;

    /* renamed from: j */
    private final Executor f18298j;

    /* renamed from: k */
    private final mr2 f18299k;

    /* renamed from: l */
    private Context f18300l;

    /* renamed from: m */
    private final Context f18301m;

    /* renamed from: n */
    private zzcgz f18302n;

    /* renamed from: o */
    private final zzcgz f18303o;

    /* renamed from: p */
    private final boolean f18304p;

    /* renamed from: r */
    private int f18306r;

    /* renamed from: d */
    private final List<Object[]> f18292d = new Vector();

    /* renamed from: e */
    private final AtomicReference<AbstractC6868q> f18293e = new AtomicReference<>();

    /* renamed from: f */
    private final AtomicReference<AbstractC6868q> f18294f = new AtomicReference<>();

    /* renamed from: q */
    final CountDownLatch f18305q = new CountDownLatch(1);

    /* renamed from: h */
    private final boolean f18296h = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25808u1)).booleanValue();

    /* renamed from: i */
    private final boolean f18297i = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25848z1)).booleanValue();

    public RunnableC5632i(Context context, zzcgz zzcgzVar) {
        this.f18300l = context;
        this.f18301m = context;
        this.f18302n = zzcgzVar;
        this.f18303o = zzcgzVar;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.f18298j = newCachedThreadPool;
        boolean booleanValue = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25840y1)).booleanValue();
        this.f18304p = booleanValue;
        mr2 m13102a = mr2.m13102a(context, newCachedThreadPool, booleanValue);
        this.f18299k = m13102a;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25832x1)).booleanValue()) {
            this.f18306r = 2;
        } else {
            this.f18306r = 1;
        }
        Context context2 = this.f18300l;
        C5631h c5631h = new C5631h(this);
        this.f18295g = new et2(this.f18300l, ps2.m12158b(context2, m13102a), c5631h, ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25816v1)).booleanValue()).m15382d(1);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25589T1)).booleanValue()) {
            qi0.f28495a.execute(this);
            return;
        }
        C7118wr.m9485a();
        if (xh0.m9164n()) {
            qi0.f28495a.execute(this);
        } else {
            run();
        }
    }

    /* renamed from: l */
    private final void m18212l() {
        AbstractC6868q m18210n = m18210n();
        if (this.f18292d.isEmpty() || m18210n == null) {
            return;
        }
        for (Object[] objArr : this.f18292d) {
            int length = objArr.length;
            if (length == 1) {
                m18210n.mo11746g((MotionEvent) objArr[0]);
            } else if (length == 3) {
                m18210n.mo11747f(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.f18292d.clear();
    }

    /* renamed from: m */
    private final void m18211m(boolean z) {
        this.f18293e.set(C6979t.m10871w(this.f18302n.f33854d, m18209o(this.f18300l), z, this.f18306r));
    }

    /* renamed from: n */
    private final AbstractC6868q m18210n() {
        return m18213k() == 2 ? this.f18294f.get() : this.f18293e.get();
    }

    /* renamed from: o */
    private static final Context m18209o(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: a */
    public final String mo11751a(Context context) {
        String str;
        AbstractC6868q m18210n;
        if (!m18215i() || (m18210n = m18210n()) == null) {
            str = "";
        } else {
            m18212l();
            str = m18210n.mo11751a(m18209o(context));
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: b */
    public final String mo11750b(Context context, String str, View view) {
        return mo11748e(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: c */
    public final void mo11198c(View view) {
        AbstractC6868q m18210n = m18210n();
        if (m18210n != null) {
            m18210n.mo11198c(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: d */
    public final String mo11749d(Context context, View view, Activity activity) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25602U6)).booleanValue()) {
            AbstractC6868q m18210n = m18210n();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25610V6)).booleanValue()) {
                C5667s.m18160d();
                C5679c2.m18062m(view, 2, null);
            }
            return m18210n != null ? m18210n.mo11749d(context, view, null) : "";
        } else if (!m18215i()) {
            return "";
        } else {
            AbstractC6868q m18210n2 = m18210n();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25610V6)).booleanValue()) {
                C5667s.m18160d();
                C5679c2.m18062m(view, 2, null);
            }
            return m18210n2 != null ? m18210n2.mo11749d(context, view, null) : "";
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: e */
    public final String mo11748e(Context context, String str, View view, Activity activity) {
        if (m18215i()) {
            AbstractC6868q m18210n = m18210n();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25610V6)).booleanValue()) {
                C5667s.m18160d();
                C5679c2.m18062m(view, 4, null);
            }
            if (m18210n == null) {
                return "";
            }
            m18212l();
            return m18210n.mo11748e(m18209o(context), str, view, activity);
        }
        return "";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: f */
    public final void mo11747f(int i, int i2, int i3) {
        AbstractC6868q m18210n = m18210n();
        if (m18210n == null) {
            this.f18292d.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        m18212l();
        m18210n.mo11747f(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: g */
    public final void mo11746g(MotionEvent motionEvent) {
        AbstractC6868q m18210n = m18210n();
        if (m18210n == null) {
            this.f18292d.add(new Object[]{motionEvent});
            return;
        }
        m18212l();
        m18210n.mo11746g(motionEvent);
    }

    /* renamed from: i */
    public final boolean m18215i() {
        try {
            this.f18305q.await();
            return true;
        } catch (InterruptedException e) {
            ei0.m15463g("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    /* renamed from: j */
    public final /* synthetic */ void m18214j(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            C6757n.m13030m(this.f18303o.f33854d, m18209o(this.f18301m), z, this.f18304p).m13026q();
        } catch (NullPointerException e) {
            this.f18299k.m13100c(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    /* renamed from: k */
    protected final int m18213k() {
        if (!this.f18296h || this.f18295g) {
            return this.f18306r;
        }
        return 1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.f18302n.f33857g;
            boolean z2 = false;
            if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25492H0)).booleanValue()) {
                z2 = false;
                if (z) {
                    z2 = true;
                }
            }
            if (m18213k() == 1) {
                m18211m(z2);
                if (this.f18306r == 2) {
                    this.f18298j.execute(new Runnable(this, z2) { // from class: com.google.android.gms.ads.internal.g

                        /* renamed from: d */
                        private final RunnableC5632i f18289d;

                        /* renamed from: e */
                        private final boolean f18290e;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f18289d = this;
                            this.f18290e = z2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f18289d.m18214j(this.f18290e);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    C6757n m13030m = C6757n.m13030m(this.f18302n.f33854d, m18209o(this.f18300l), z2, this.f18304p);
                    this.f18294f.set(m13030m);
                    if (this.f18297i && !m13030m.m13029n()) {
                        this.f18306r = 1;
                        m18211m(z2);
                    }
                } catch (NullPointerException e) {
                    this.f18306r = 1;
                    m18211m(z2);
                    this.f18299k.m13100c(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.f18305q.countDown();
            this.f18300l = null;
            this.f18302n = null;
        }
    }
}
