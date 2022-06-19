package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.internal.ads.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r.class */
public abstract class AbstractC6905r implements AbstractC6868q {

    /* renamed from: d */
    protected static volatile C6869q0 f28696d;

    /* renamed from: e */
    protected MotionEvent f28697e;

    /* renamed from: n */
    protected double f28706n;

    /* renamed from: o */
    private double f28707o;

    /* renamed from: p */
    private double f28708p;

    /* renamed from: q */
    protected float f28709q;

    /* renamed from: r */
    protected float f28710r;

    /* renamed from: s */
    protected float f28711s;

    /* renamed from: t */
    protected float f28712t;

    /* renamed from: w */
    protected DisplayMetrics f28715w;

    /* renamed from: f */
    protected final LinkedList<MotionEvent> f28698f = new LinkedList<>();

    /* renamed from: g */
    protected long f28699g = 0;

    /* renamed from: h */
    protected long f28700h = 0;

    /* renamed from: i */
    protected long f28701i = 0;

    /* renamed from: j */
    protected long f28702j = 0;

    /* renamed from: k */
    protected long f28703k = 0;

    /* renamed from: l */
    protected long f28704l = 0;

    /* renamed from: m */
    protected long f28705m = 0;

    /* renamed from: u */
    private boolean f28713u = false;

    /* renamed from: v */
    protected boolean f28714v = false;

    public AbstractC6905r(Context context) {
        try {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25573R1)).booleanValue()) {
                t24.m10851b();
            } else {
                C6906r0.m11743a(f28696d);
            }
            this.f28715w = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    /* renamed from: m */
    private final void m11745m() {
        this.f28703k = 0L;
        this.f28699g = 0L;
        this.f28700h = 0L;
        this.f28701i = 0L;
        this.f28702j = 0L;
        this.f28704l = 0L;
        this.f28705m = 0L;
        if (this.f28698f.size() > 0) {
            Iterator<MotionEvent> it = this.f28698f.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f28698f.clear();
        } else {
            MotionEvent motionEvent = this.f28697e;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f28697e = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String m11744n(android.content.Context r9, java.lang.String r10, int r11, android.view.View r12, android.app.Activity r13, byte[] r14) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC6905r.m11744n(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: a */
    public final String mo11751a(Context context) {
        if (!C6980t0.m10865f()) {
            return m11744n(context, null, 1, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: b */
    public final String mo11750b(Context context, String str, View view) {
        return m11744n(context, str, 3, view, null, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: d */
    public final String mo11749d(Context context, View view, Activity activity) {
        return m11744n(context, null, 2, view, null, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: e */
    public final String mo11748e(Context context, String str, View view, Activity activity) {
        return m11744n(context, str, 3, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: f */
    public final void mo11747f(int i, int i2, int i3) {
        synchronized (this) {
            if (this.f28697e != null) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25469E1)).booleanValue()) {
                    m11745m();
                } else {
                    this.f28697e.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.f28715w;
            if (displayMetrics != null) {
                long j = i3;
                float f = i;
                float f2 = displayMetrics.density;
                this.f28697e = MotionEvent.obtain(0L, j, 1, f * f2, i2 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.f28697e = null;
            }
            this.f28714v = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6868q
    /* renamed from: g */
    public final void mo11746g(MotionEvent motionEvent) {
        Long l;
        synchronized (this) {
            if (this.f28713u) {
                m11745m();
                this.f28713u = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f28706n = 0.0d;
                this.f28707o = motionEvent.getRawX();
                this.f28708p = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = rawX - this.f28707o;
                double d2 = rawY - this.f28708p;
                this.f28706n += Math.sqrt((d * d) + (d2 * d2));
                this.f28707o = rawX;
                this.f28708p = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.f28697e = obtain;
                        this.f28698f.add(obtain);
                        if (this.f28698f.size() > 6) {
                            this.f28698f.remove().recycle();
                        }
                        this.f28701i++;
                        this.f28703k = mo11193l(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.f28700h += motionEvent.getHistorySize() + 1;
                        C6943s0 mo11194k = mo11194k(motionEvent);
                        Long l2 = mo11194k.f29342e;
                        if (l2 != null && mo11194k.f29345h != null) {
                            this.f28704l += l2.longValue() + mo11194k.f29345h.longValue();
                        }
                        if (this.f28715w != null && (l = mo11194k.f29343f) != null && mo11194k.f29346i != null) {
                            this.f28705m += l.longValue() + mo11194k.f29346i.longValue();
                        }
                    } else if (action2 == 3) {
                        this.f28702j++;
                    }
                } catch (zzabi e) {
                }
            } else {
                this.f28709q = motionEvent.getX();
                this.f28710r = motionEvent.getY();
                this.f28711s = motionEvent.getRawX();
                this.f28712t = motionEvent.getRawY();
                this.f28699g++;
            }
            this.f28714v = true;
        }
    }

    /* renamed from: h */
    protected abstract j14 mo11197h(Context context, c14 c14Var);

    /* renamed from: i */
    protected abstract j14 mo11196i(Context context, View view, Activity activity);

    /* renamed from: j */
    protected abstract j14 mo11195j(Context context, View view, Activity activity);

    /* renamed from: k */
    protected abstract C6943s0 mo11194k(MotionEvent motionEvent);

    /* renamed from: l */
    protected abstract long mo11193l(StackTraceElement[] stackTraceElementArr);
}
