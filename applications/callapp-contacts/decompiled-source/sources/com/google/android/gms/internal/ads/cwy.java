package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.beb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwy.class */
public abstract class cwy implements cxx {

    /* renamed from: a  reason: collision with root package name */
    protected static volatile dtg f26521a;

    /* renamed from: b  reason: collision with root package name */
    protected MotionEvent f26522b;
    protected double k;
    protected float l;
    protected float m;
    protected float n;
    protected float o;
    protected DisplayMetrics q;
    private double r;
    private double s;

    /* renamed from: c  reason: collision with root package name */
    protected LinkedList<MotionEvent> f26523c = new LinkedList<>();

    /* renamed from: d  reason: collision with root package name */
    protected long f26524d = 0;
    protected long e = 0;
    protected long f = 0;
    protected long g = 0;
    protected long h = 0;
    protected long i = 0;
    protected long j = 0;
    private boolean t = false;
    protected boolean p = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public cwy(Context context) {
        try {
            if (((Boolean) ekb.e().a(aq.bF)).booleanValue()) {
                bzp.a();
            } else {
                dtj.a(f26521a);
            }
            this.q = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    private final String a(Context context, String str, int i, View view, Activity activity) {
        cwd cwdVar;
        String str2;
        beb.a.b bVar;
        String str3;
        int i2;
        beb.a.b bVar2;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) ekb.e().a(aq.bw)).booleanValue();
        if (booleanValue) {
            cwd cwdVar2 = f26521a != null ? f26521a.h : null;
            if (((Boolean) ekb.e().a(aq.bF)).booleanValue()) {
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
        beb.a.b bVar3 = null;
        try {
            if (i == dta.f27174c) {
                i2 = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
                bVar2 = a(context, view, activity);
                this.t = true;
            } else if (i == dta.f27173b) {
                i2 = 1008;
                bVar2 = b(context, view, activity);
            } else {
                i2 = 1000;
                bVar2 = a(context);
            }
            bVar = bVar2;
            if (booleanValue) {
                bVar = bVar2;
                if (cwdVar != null) {
                    bVar3 = bVar2;
                    cwdVar.a(i2, System.currentTimeMillis() - currentTimeMillis, str2);
                    bVar = bVar2;
                }
            }
        } catch (Exception e) {
            bVar = bVar3;
            if (booleanValue) {
                bVar = bVar3;
                if (cwdVar != null) {
                    cwdVar.a(i == dta.f27174c ? 1003 : i == dta.f27173b ? 1009 : i == dta.f27172a ? 1001 : -1, -1, System.currentTimeMillis() - currentTimeMillis, str2, e);
                    bVar = bVar3;
                }
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (bVar != null) {
            try {
            } catch (Exception e2) {
                String num = Integer.toString(7);
                str3 = num;
                if (booleanValue) {
                    str3 = num;
                    if (cwdVar != null) {
                        cwdVar.a(i == dta.f27174c ? 1007 : i == dta.f27173b ? 1011 : i == dta.f27172a ? WebSocketProtocol.CLOSE_NO_STATUS_CODE : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2, e2);
                        str3 = num;
                    }
                }
            }
            if (bVar.f().l() != 0) {
                String a2 = bzp.a(bVar.f(), str);
                str3 = a2;
                if (booleanValue) {
                    str3 = a2;
                    if (cwdVar != null) {
                        cwdVar.a(i == dta.f27174c ? 1006 : i == dta.f27173b ? 1010 : i == dta.f27172a ? 1004 : -1, System.currentTimeMillis() - currentTimeMillis2, str2);
                        str3 = a2;
                    }
                }
                return str3;
            }
        }
        str3 = Integer.toString(5);
        return str3;
    }

    private final void a() {
        this.h = 0L;
        this.f26524d = 0L;
        this.e = 0L;
        this.f = 0L;
        this.g = 0L;
        this.i = 0L;
        this.j = 0L;
        if (this.f26523c.size() > 0) {
            Iterator<MotionEvent> it2 = this.f26523c.iterator();
            while (it2.hasNext()) {
                it2.next().recycle();
            }
            this.f26523c.clear();
        } else {
            MotionEvent motionEvent = this.f26522b;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f26522b = null;
    }

    protected abstract long a(StackTraceElement[] stackTraceElementArr) throws zzev;

    protected abstract beb.a.b a(Context context);

    protected abstract beb.a.b a(Context context, View view, Activity activity);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract dtm a(MotionEvent motionEvent) throws zzev;

    protected abstract beb.a.b b(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.cxx
    public String zza(Context context, View view, Activity activity) {
        return a(context, null, dta.f27173b, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public String zza(Context context, String str, View view, Activity activity) {
        return a(context, str, dta.f27174c, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zza(int i, int i2, int i3) {
        if (this.f26522b != null) {
            if (((Boolean) ekb.e().a(aq.bu)).booleanValue()) {
                a();
            } else {
                this.f26522b.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.q;
        if (displayMetrics != null) {
            this.f26522b = MotionEvent.obtain(0L, i3, 1, i * displayMetrics.density, this.q.density * i2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0, 0);
        } else {
            this.f26522b = null;
        }
        this.p = false;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zza(MotionEvent motionEvent) {
        if (this.t) {
            a();
            this.t = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.k = 0.0d;
            this.r = motionEvent.getRawX();
            this.s = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d2 = rawX - this.r;
            double d3 = rawY - this.s;
            this.k += Math.sqrt((d2 * d2) + (d3 * d3));
            this.r = rawX;
            this.s = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    this.f26522b = obtain;
                    this.f26523c.add(obtain);
                    if (this.f26523c.size() > 6) {
                        this.f26523c.remove().recycle();
                    }
                    this.f++;
                    this.h = a(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.e += motionEvent.getHistorySize() + 1;
                    dtm a2 = a(motionEvent);
                    if ((a2.f27204d == null || a2.g == null) ? false : true) {
                        this.i += a2.f27204d.longValue() + a2.g.longValue();
                    }
                    boolean z = false;
                    if (this.q != null) {
                        z = false;
                        if (a2.e != null) {
                            z = false;
                            if (a2.h != null) {
                                z = true;
                            }
                        }
                    }
                    if (z) {
                        this.j += a2.e.longValue() + a2.h.longValue();
                    }
                } else if (action2 == 3) {
                    this.g++;
                }
            } catch (zzev e) {
            }
        } else {
            this.l = motionEvent.getX();
            this.m = motionEvent.getY();
            this.n = motionEvent.getRawX();
            this.o = motionEvent.getRawY();
            this.f26524d++;
        }
        this.p = true;
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public String zzb(Context context) {
        if (!dtl.a()) {
            return a(context, null, dta.f27172a, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.cxx
    public void zzb(View view) {
    }
}
