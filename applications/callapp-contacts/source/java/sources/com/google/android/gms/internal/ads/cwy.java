package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.beb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwy.class */
public abstract class cwy implements cxx {

    /* renamed from: a */
    protected static volatile dtg f46696a;

    /* renamed from: b */
    protected MotionEvent f46697b;

    /* renamed from: k */
    protected double f46706k;

    /* renamed from: l */
    protected float f46707l;

    /* renamed from: m */
    protected float f46708m;

    /* renamed from: n */
    protected float f46709n;

    /* renamed from: o */
    protected float f46710o;

    /* renamed from: q */
    protected DisplayMetrics f46712q;

    /* renamed from: r */
    private double f46713r;

    /* renamed from: s */
    private double f46714s;

    /* renamed from: c */
    protected LinkedList<MotionEvent> f46698c = new LinkedList<>();

    /* renamed from: d */
    protected long f46699d = 0;

    /* renamed from: e */
    protected long f46700e = 0;

    /* renamed from: f */
    protected long f46701f = 0;

    /* renamed from: g */
    protected long f46702g = 0;

    /* renamed from: h */
    protected long f46703h = 0;

    /* renamed from: i */
    protected long f46704i = 0;

    /* renamed from: j */
    protected long f46705j = 0;

    /* renamed from: t */
    private boolean f46715t = false;

    /* renamed from: p */
    protected boolean f46711p = false;

    public cwy(Context context) {
        try {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42696bF)).booleanValue()) {
                bzp.m17544a();
            } else {
                dtj.m15725a(f46696a);
            }
            this.f46712q = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private final String m17087a(Context context, String str, int i, View view, Activity activity) {
        cwd cwdVar;
        String str2;
        beb.C12217a.C12219b c12219b;
        String str3;
        int i2;
        beb.C12217a.C12219b c12219b2;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42739bw)).booleanValue();
        if (booleanValue) {
            cwd cwdVar2 = f46696a != null ? f46696a.f47554h : null;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42696bF)).booleanValue()) {
                str2 = "be";
                cwdVar = cwdVar2;
            } else {
                str2 = "te";
                cwdVar = cwdVar2;
            }
        } else {
            cwdVar = null;
            str2 = null;
        }
        beb.C12217a.C12219b c12219b3 = null;
        try {
            if (i == dta.f47530c) {
                i2 = 1002;
                c12219b2 = mo16987a(context, view, activity);
                this.f46715t = true;
            } else if (i == dta.f47529b) {
                i2 = 1008;
                c12219b2 = mo16978b(context, view, activity);
            } else {
                i2 = 1000;
                c12219b2 = mo16988a(context);
            }
            c12219b = c12219b2;
            if (booleanValue) {
                c12219b = c12219b2;
                if (cwdVar != null) {
                    c12219b3 = c12219b2;
                    cwdVar.m17140a(i2, System.currentTimeMillis() - currentTimeMillis, str2);
                    c12219b = c12219b2;
                }
            }
        } catch (Exception e) {
            c12219b = c12219b3;
            if (booleanValue) {
                c12219b = c12219b3;
                if (cwdVar != null) {
                    cwdVar.m17141a(i == dta.f47530c ? 1003 : i == dta.f47529b ? 1009 : i == dta.f47528a ? 1001 : -1, -1, System.currentTimeMillis() - currentTimeMillis, str2, e);
                    c12219b = c12219b3;
                }
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (c12219b != null) {
            try {
            } catch (Exception e2) {
                String num = Integer.toString(7);
                str3 = num;
                if (booleanValue) {
                    str3 = num;
                    if (cwdVar != null) {
                        cwdVar.m17141a(i == dta.f47530c ? 1007 : i == dta.f47529b ? 1011 : i == dta.f47528a ? 1005 : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2, e2);
                        str3 = num;
                    }
                }
            }
            if (c12219b.mo16259f().mo16255l() != 0) {
                String m17542a = bzp.m17542a(c12219b.mo16259f(), str);
                str3 = m17542a;
                if (booleanValue) {
                    str3 = m17542a;
                    if (cwdVar != null) {
                        cwdVar.m17140a(i == dta.f47530c ? 1006 : i == dta.f47529b ? 1010 : i == dta.f47528a ? 1004 : -1, System.currentTimeMillis() - currentTimeMillis2, str2);
                        str3 = m17542a;
                    }
                }
                return str3;
            }
        }
        str3 = Integer.toString(5);
        return str3;
    }

    /* renamed from: a */
    private final void m17088a() {
        this.f46703h = 0L;
        this.f46699d = 0L;
        this.f46700e = 0L;
        this.f46701f = 0L;
        this.f46702g = 0L;
        this.f46704i = 0L;
        this.f46705j = 0L;
        if (this.f46698c.size() > 0) {
            Iterator<MotionEvent> it2 = this.f46698c.iterator();
            while (it2.hasNext()) {
                it2.next().recycle();
            }
            this.f46698c.clear();
        } else {
            MotionEvent motionEvent = this.f46697b;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f46697b = null;
    }

    /* renamed from: a */
    protected abstract long mo16980a(StackTraceElement[] stackTraceElementArr) throws zzev;

    /* renamed from: a */
    protected abstract beb.C12217a.C12219b mo16988a(Context context);

    /* renamed from: a */
    protected abstract beb.C12217a.C12219b mo16987a(Context context, View view, Activity activity);

    /* renamed from: a */
    public abstract dtm mo16985a(MotionEvent motionEvent) throws zzev;

    /* renamed from: b */
    protected abstract beb.C12217a.C12219b mo16978b(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.cxx
    public String zza(Context context, View view, Activity activity) {
        return m17087a(context, null, dta.f47529b, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public String zza(Context context, String str, View view, Activity activity) {
        return m17087a(context, str, dta.f47530c, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zza(int i, int i2, int i3) {
        if (this.f46697b != null) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42737bu)).booleanValue()) {
                m17088a();
            } else {
                this.f46697b.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.f46712q;
        if (displayMetrics != null) {
            this.f46697b = MotionEvent.obtain(0L, i3, 1, i * displayMetrics.density, this.f46712q.density * i2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, 0);
        } else {
            this.f46697b = null;
        }
        this.f46711p = false;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zza(MotionEvent motionEvent) {
        if (this.f46715t) {
            m17088a();
            this.f46715t = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46706k = 0.0d;
            this.f46713r = motionEvent.getRawX();
            this.f46714s = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d = rawX - this.f46713r;
            double d2 = rawY - this.f46714s;
            this.f46706k += Math.sqrt((d * d) + (d2 * d2));
            this.f46713r = rawX;
            this.f46714s = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    this.f46697b = obtain;
                    this.f46698c.add(obtain);
                    if (this.f46698c.size() > 6) {
                        this.f46698c.remove().recycle();
                    }
                    this.f46701f++;
                    this.f46703h = mo16980a(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.f46700e += motionEvent.getHistorySize() + 1;
                    dtm mo16985a = mo16985a(motionEvent);
                    if ((mo16985a.f47574d == null || mo16985a.f47577g == null) ? false : true) {
                        this.f46704i += mo16985a.f47574d.longValue() + mo16985a.f47577g.longValue();
                    }
                    boolean z = false;
                    if (this.f46712q != null) {
                        z = false;
                        if (mo16985a.f47575e != null) {
                            z = false;
                            if (mo16985a.f47578h != null) {
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        this.f46705j += mo16985a.f47575e.longValue() + mo16985a.f47578h.longValue();
                    }
                } else if (action2 == 3) {
                    this.f46702g++;
                }
            } catch (zzev e) {
            }
        } else {
            this.f46707l = motionEvent.getX();
            this.f46708m = motionEvent.getY();
            this.f46709n = motionEvent.getRawX();
            this.f46710o = motionEvent.getRawY();
            this.f46699d++;
        }
        this.f46711p = true;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public String zzb(Context context) {
        if (!dtl.m15724a()) {
            return m17087a(context, null, dta.f47528a, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zzb(View view) {
    }
}
