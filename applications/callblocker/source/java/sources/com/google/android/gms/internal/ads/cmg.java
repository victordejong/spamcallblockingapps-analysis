package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.amp;
import com.google.android.gms.internal.ads.atw;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmg.class */
public abstract class cmg implements cjd {

    /* renamed from: b */
    protected static volatile din f13333b = null;

    /* renamed from: a */
    private double f13334a;

    /* renamed from: c */
    protected MotionEvent f13335c;

    /* renamed from: l */
    protected double f13344l;

    /* renamed from: m */
    protected float f13345m;

    /* renamed from: n */
    protected float f13346n;

    /* renamed from: o */
    protected float f13347o;

    /* renamed from: p */
    protected float f13348p;

    /* renamed from: r */
    protected DisplayMetrics f13350r;

    /* renamed from: s */
    private double f13351s;

    /* renamed from: d */
    protected LinkedList<MotionEvent> f13336d = new LinkedList<>();

    /* renamed from: e */
    protected long f13337e = 0;

    /* renamed from: f */
    protected long f13338f = 0;

    /* renamed from: g */
    protected long f13339g = 0;

    /* renamed from: h */
    protected long f13340h = 0;

    /* renamed from: i */
    protected long f13341i = 0;

    /* renamed from: j */
    protected long f13342j = 0;

    /* renamed from: k */
    protected long f13343k = 0;

    /* renamed from: t */
    private boolean f13352t = false;

    /* renamed from: q */
    protected boolean f13349q = false;

    public cmg(Context context) {
        try {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16427bg)).booleanValue()) {
                bml.m11773a();
            } else {
                diq.m9392a(f13333b);
            }
            this.f13350r = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String m11050a(android.content.Context r9, java.lang.String r10, int r11, android.view.View r12, android.app.Activity r13, byte[] r14) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cmg.m11050a(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    /* renamed from: a */
    private final void m11055a() {
        this.f13341i = 0L;
        this.f13337e = 0L;
        this.f13338f = 0L;
        this.f13339g = 0L;
        this.f13340h = 0L;
        this.f13342j = 0L;
        this.f13343k = 0L;
        if (this.f13336d.size() > 0) {
            Iterator<MotionEvent> it = this.f13336d.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f13336d.clear();
        } else if (this.f13335c != null) {
            this.f13335c.recycle();
        }
        this.f13335c = null;
    }

    /* renamed from: a */
    protected abstract long mo11045a(StackTraceElement[] stackTraceElementArr);

    /* renamed from: a */
    protected abstract atw.C2798a.C2799a mo11051a(Context context, amp.C2781a c2781a);

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public String mo11053a(Context context) {
        if (dis.m9391a()) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16429bi)).booleanValue()) {
                throw new IllegalStateException("The caller must not be called from the UI thread.");
            }
        }
        return m11050a(context, null, blk.f11482d, null, null, null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public String mo11052a(Context context, View view, Activity activity) {
        return m11050a(context, null, blk.f11483e, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public final String mo11049a(Context context, String str, View view) {
        return mo11048a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public String mo11048a(Context context, String str, View view, Activity activity) {
        return m11050a(context, str, blk.f11484f, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public void mo11054a(int i, int i2, int i3) {
        if (this.f13335c != null) {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16361aT)).booleanValue()) {
                m11055a();
            } else {
                this.f13335c.recycle();
            }
        }
        if (this.f13350r != null) {
            this.f13335c = MotionEvent.obtain(0L, i3, 1, i * this.f13350r.density, i2 * this.f13350r.density, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f13335c = null;
        }
        this.f13349q = false;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public void mo11047a(MotionEvent motionEvent) {
        if (this.f13352t) {
            m11055a();
            this.f13352t = false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.f13344l = 0.0d;
                this.f13334a = motionEvent.getRawX();
                this.f13351s = motionEvent.getRawY();
                break;
            case 1:
            case 2:
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = rawX - this.f13334a;
                double d2 = rawY - this.f13351s;
                this.f13344l = Math.sqrt((d * d) + (d2 * d2)) + this.f13344l;
                this.f13334a = rawX;
                this.f13351s = rawY;
                break;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.f13345m = motionEvent.getX();
                this.f13346n = motionEvent.getY();
                this.f13347o = motionEvent.getRawX();
                this.f13348p = motionEvent.getRawY();
                this.f13337e++;
                break;
            case 1:
                this.f13335c = MotionEvent.obtain(motionEvent);
                this.f13336d.add(this.f13335c);
                if (this.f13336d.size() > 6) {
                    this.f13336d.remove().recycle();
                }
                this.f13339g++;
                try {
                    this.f13341i = mo11045a(new Throwable().getStackTrace());
                    break;
                } catch (zzeh e) {
                    break;
                }
            case 2:
                this.f13338f += motionEvent.getHistorySize() + 1;
                try {
                    dit mo11043b = mo11043b(motionEvent);
                    if ((mo11043b == null || mo11043b.f14437d == null || mo11043b.f14440g == null) ? false : true) {
                        this.f13342j += mo11043b.f14437d.longValue() + mo11043b.f14440g.longValue();
                    }
                    boolean z = false;
                    if (this.f13350r != null) {
                        z = false;
                        if (mo11043b != null) {
                            z = false;
                            if (mo11043b.f14438e != null) {
                                z = false;
                                if (mo11043b.f14441h != null) {
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z) {
                        this.f13343k = mo11043b.f14441h.longValue() + mo11043b.f14438e.longValue() + this.f13343k;
                        break;
                    }
                } catch (zzeh e2) {
                    break;
                }
                break;
            case 3:
                this.f13340h++;
                break;
        }
        this.f13349q = true;
    }

    @Override // com.google.android.gms.internal.ads.cjd
    /* renamed from: a */
    public void mo11046a(View view) {
    }

    /* renamed from: b */
    protected abstract atw.C2798a.C2799a mo11044b(Context context, View view, Activity activity);

    /* renamed from: b */
    public abstract dit mo11043b(MotionEvent motionEvent);

    /* renamed from: c */
    protected abstract atw.C2798a.C2799a mo11042c(Context context, View view, Activity activity);
}
