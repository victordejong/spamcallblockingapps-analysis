package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzby;
import com.google.android.gms.internal.ads.zzcf;
import java.util.Iterator;
import java.util.LinkedList;
import p131c.p161d.p170b.p224d.p252g.p253a.C3364aq;
import p131c.p161d.p170b.p224d.p252g.p253a.jb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdv.class */
public abstract class zzdv implements zzdw {

    /* renamed from: t */
    public static volatile zzex f27865t;

    /* renamed from: a */
    public MotionEvent f27866a;

    /* renamed from: j */
    public double f27875j;

    /* renamed from: k */
    public double f27876k;

    /* renamed from: l */
    public double f27877l;

    /* renamed from: m */
    public float f27878m;

    /* renamed from: n */
    public float f27879n;

    /* renamed from: o */
    public float f27880o;

    /* renamed from: p */
    public float f27881p;

    /* renamed from: s */
    public DisplayMetrics f27884s;

    /* renamed from: b */
    public LinkedList<MotionEvent> f27867b = new LinkedList<>();

    /* renamed from: c */
    public long f27868c = 0;

    /* renamed from: d */
    public long f27869d = 0;

    /* renamed from: e */
    public long f27870e = 0;

    /* renamed from: f */
    public long f27871f = 0;

    /* renamed from: g */
    public long f27872g = 0;

    /* renamed from: h */
    public long f27873h = 0;

    /* renamed from: i */
    public long f27874i = 0;

    /* renamed from: q */
    public boolean f27882q = false;

    /* renamed from: r */
    public boolean f27883r = false;

    public zzdv(Context context) {
        try {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23846l1)).booleanValue()) {
                C3364aq.m27191a();
            } else {
                jb0.m26738a(f27865t);
            }
            this.f27884s = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public abstract long mo13013a(StackTraceElement[] stackTraceElementArr) throws zzeu;

    /* renamed from: a */
    public abstract zzcf.zza.C10493zza mo13022a(Context context, zzby.zza zzaVar);

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public String mo13024a(Context context) {
        if (!zzfg.m12143a()) {
            return m13133a(context, null, zzcw.f26616d, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public String mo13023a(Context context, View view, Activity activity) {
        return m13133a(context, null, zzcw.f26617e, view, activity, null);
    }

    /* renamed from: a */
    public final String m13133a(Context context, String str, int i, View view, Activity activity, byte[] bArr) {
        zzdu zzduVar;
        String str2;
        zzcf.zza.C10493zza zzaVar;
        String str3;
        int i2;
        zzcf.zza.C10493zza zzaVar2;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23786b1)).booleanValue();
        if (booleanValue) {
            zzdu j = f27865t != null ? f27865t.m12155j() : null;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23846l1)).booleanValue()) {
                str2 = "be";
                zzduVar = j;
            } else {
                str2 = "te";
                zzduVar = j;
            }
        } else {
            zzduVar = null;
            str2 = null;
        }
        zzcf.zza.C10493zza zzaVar3 = null;
        try {
            if (i == zzcw.f26618f) {
                zzaVar2 = mo13011b(context, view, activity);
                this.f27882q = true;
                i2 = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
            } else if (i == zzcw.f26617e) {
                zzaVar2 = mo13007c(context, view, activity);
                i2 = 1008;
            } else {
                zzaVar2 = mo13022a(context, null);
                i2 = 1000;
            }
            zzaVar = zzaVar2;
            if (booleanValue) {
                zzaVar = zzaVar2;
                if (zzduVar != null) {
                    zzaVar3 = zzaVar2;
                    zzduVar.m13180a(i2, -1, System.currentTimeMillis() - currentTimeMillis, str2);
                    zzaVar = zzaVar2;
                }
            }
        } catch (Exception e) {
            zzaVar = zzaVar3;
            if (booleanValue) {
                zzaVar = zzaVar3;
                if (zzduVar != null) {
                    zzduVar.m13179a(i == zzcw.f26618f ? 1003 : i == zzcw.f26617e ? 1009 : i == zzcw.f26616d ? AdError.NO_FILL_ERROR_CODE : -1, -1, System.currentTimeMillis() - currentTimeMillis, str2, e);
                    zzaVar = zzaVar3;
                }
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (zzaVar != null) {
            try {
            } catch (Exception e2) {
                String num = Integer.toString(7);
                str3 = num;
                if (booleanValue) {
                    str3 = num;
                    if (zzduVar != null) {
                        zzduVar.m13179a(i == zzcw.f26618f ? 1007 : i == zzcw.f26617e ? 1011 : i == zzcw.f26616d ? 1005 : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2, e2);
                        str3 = num;
                    }
                }
            }
            if (((zzcf.zza) ((zzejz) zzaVar.mo12342K())).mo12345k() != 0) {
                String a = C3364aq.m27189a((zzcf.zza) ((zzejz) zzaVar.mo12342K()), str);
                str3 = a;
                if (booleanValue) {
                    str3 = a;
                    if (zzduVar != null) {
                        zzduVar.m13180a(i == zzcw.f26618f ? 1006 : i == zzcw.f26617e ? 1010 : i == zzcw.f26616d ? 1004 : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2);
                        str3 = a;
                    }
                }
                return str3;
            }
        }
        str3 = Integer.toString(5);
        return str3;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public final String mo13100a(Context context, String str, View view) {
        return mo13021a(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public String mo13021a(Context context, String str, View view, Activity activity) {
        return m13133a(context, str, zzcw.f26618f, view, activity, null);
    }

    /* renamed from: a */
    public final void m13134a() {
        this.f27872g = 0L;
        this.f27868c = 0L;
        this.f27869d = 0L;
        this.f27870e = 0L;
        this.f27871f = 0L;
        this.f27873h = 0L;
        this.f27874i = 0L;
        if (this.f27867b.size() > 0) {
            Iterator<MotionEvent> it = this.f27867b.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.f27867b.clear();
        } else {
            MotionEvent motionEvent = this.f27866a;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.f27866a = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public void mo13025a(int i, int i2, int i3) {
        if (this.f27866a != null) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23774Z0)).booleanValue()) {
                m13134a();
            } else {
                this.f27866a.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.f27884s;
        if (displayMetrics != null) {
            float f = displayMetrics.density;
            this.f27866a = MotionEvent.obtain(0L, i3, 1, i * f, i2 * f, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.f27866a = null;
        }
        this.f27883r = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public void mo13019a(MotionEvent motionEvent) {
        if (this.f27882q) {
            m13134a();
            this.f27882q = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f27875j = 0.0d;
            this.f27876k = motionEvent.getRawX();
            this.f27877l = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d = this.f27876k;
            Double.isNaN(rawX);
            double d2 = rawX - d;
            double d3 = this.f27877l;
            Double.isNaN(rawY);
            double d4 = rawY - d3;
            this.f27875j += Math.sqrt((d2 * d2) + (d4 * d4));
            this.f27876k = rawX;
            this.f27877l = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    this.f27866a = obtain;
                    this.f27867b.add(obtain);
                    if (this.f27867b.size() > 6) {
                        this.f27867b.remove().recycle();
                    }
                    this.f27870e++;
                    this.f27872g = mo13013a(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.f27869d += motionEvent.getHistorySize() + 1;
                    zzfd b = mo13009b(motionEvent);
                    if ((b == null || b.f28179e == null || b.f28182h == null) ? false : true) {
                        this.f27873h += b.f28179e.longValue() + b.f28182h.longValue();
                    }
                    boolean z = false;
                    if (this.f27884s != null) {
                        z = false;
                        if (b != null) {
                            z = false;
                            if (b.f28180f != null) {
                                z = false;
                                if (b.f28183i != null) {
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z) {
                        this.f27874i += b.f28180f.longValue() + b.f28183i.longValue();
                    }
                } else if (action2 == 3) {
                    this.f27871f++;
                }
            } catch (zzeu e) {
            }
        } else {
            this.f27878m = motionEvent.getX();
            this.f27879n = motionEvent.getY();
            this.f27880o = motionEvent.getRawX();
            this.f27881p = motionEvent.getRawY();
            this.f27868c++;
        }
        this.f27883r = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    /* renamed from: a */
    public void mo13018a(View view) {
    }

    /* renamed from: b */
    public abstract zzcf.zza.C10493zza mo13011b(Context context, View view, Activity activity);

    /* renamed from: b */
    public abstract zzfd mo13009b(MotionEvent motionEvent) throws zzeu;

    /* renamed from: c */
    public abstract zzcf.zza.C10493zza mo13007c(Context context, View view, Activity activity);
}
