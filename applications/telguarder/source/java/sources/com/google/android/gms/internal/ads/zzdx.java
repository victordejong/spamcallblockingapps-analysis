package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzcb;
import com.google.android.gms.internal.ads.zzcf;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdx.class */
public abstract class zzdx implements zzdy {
    protected static volatile zzfc zzwc;
    protected MotionEvent zzwh;
    protected double zzwq;
    private double zzwr;
    private double zzws;
    protected float zzwt;
    protected float zzwu;
    protected float zzwv;
    protected float zzww;
    protected DisplayMetrics zzwz;
    protected LinkedList<MotionEvent> zzwi = new LinkedList<>();
    protected long zzwj = 0;
    protected long zzwk = 0;
    protected long zzwl = 0;
    protected long zzwm = 0;
    protected long zzwn = 0;
    protected long zzwo = 0;
    protected long zzwp = 0;
    private boolean zzwx = false;
    protected boolean zzwy = false;

    public zzdx(Context context) {
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
                zzda.zzbo();
            } else {
                zzff.zzb(zzwc);
            }
            this.zzwz = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    private final String zza(Context context, String str, int i, View view, Activity activity, byte[] bArr) {
        zzdw zzdwVar;
        String str2;
        zzcf.zza.zzb zzbVar;
        String str3;
        int i2;
        zzcf.zza.zzb zzbVar2;
        long currentTimeMillis = System.currentTimeMillis();
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrx)).booleanValue();
        if (booleanValue) {
            zzdw zzcl = zzwc != null ? zzwc.zzcl() : null;
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
                str2 = "be";
                zzdwVar = zzcl;
            } else {
                str2 = "te";
                zzdwVar = zzcl;
            }
        } else {
            zzdwVar = null;
            str2 = null;
        }
        zzcf.zza.zzb zzbVar3 = null;
        try {
            if (i == zzew.zzyl) {
                zzbVar2 = zzb(context, view, activity);
                this.zzwx = true;
                i2 = 1002;
            } else if (i == zzew.zzyk) {
                zzbVar2 = zzc(context, view, activity);
                i2 = 1008;
            } else {
                zzbVar2 = zza(context, null);
                i2 = 1000;
            }
            zzbVar = zzbVar2;
            if (booleanValue) {
                zzbVar = zzbVar2;
                if (zzdwVar != null) {
                    zzbVar3 = zzbVar2;
                    zzdwVar.zza(i2, -1, System.currentTimeMillis() - currentTimeMillis, str2);
                    zzbVar = zzbVar2;
                }
            }
        } catch (Exception e) {
            zzbVar = zzbVar3;
            if (booleanValue) {
                zzbVar = zzbVar3;
                if (zzdwVar != null) {
                    zzdwVar.zza(i == zzew.zzyl ? 1003 : i == zzew.zzyk ? 1009 : i == zzew.zzyj ? 1001 : -1, -1, System.currentTimeMillis() - currentTimeMillis, str2, e);
                    zzbVar = zzbVar3;
                }
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (zzbVar != null) {
            try {
            } catch (Exception e2) {
                String num = Integer.toString(7);
                str3 = num;
                if (booleanValue) {
                    str3 = num;
                    if (zzdwVar != null) {
                        zzdwVar.zza(i == zzew.zzyl ? 1007 : i == zzew.zzyk ? 1011 : i == zzew.zzyj ? 1005 : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2, e2);
                        str3 = num;
                    }
                }
            }
            if (((zzcf.zza) ((zzelb) zzbVar.zzbiw())).zzbik() != 0) {
                String zzj = zzda.zzj((zzcf.zza) ((zzelb) zzbVar.zzbiw()), str);
                str3 = zzj;
                if (booleanValue) {
                    str3 = zzj;
                    if (zzdwVar != null) {
                        zzdwVar.zza(i == zzew.zzyl ? 1006 : i == zzew.zzyk ? 1010 : i == zzew.zzyj ? 1004 : -1, -1, System.currentTimeMillis() - currentTimeMillis2, str2);
                        str3 = zzj;
                    }
                }
                return str3;
            }
        }
        str3 = Integer.toString(5);
        return str3;
    }

    private final void zzbx() {
        this.zzwn = 0L;
        this.zzwj = 0L;
        this.zzwk = 0L;
        this.zzwl = 0L;
        this.zzwm = 0L;
        this.zzwo = 0L;
        this.zzwp = 0L;
        if (this.zzwi.size() > 0) {
            Iterator<MotionEvent> it = this.zzwi.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.zzwi.clear();
        } else {
            MotionEvent motionEvent = this.zzwh;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzwh = null;
    }

    protected abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzev;

    protected abstract zzcf.zza.zzb zza(Context context, zzcb.zza zzaVar);

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zza(Context context, View view, Activity activity) {
        return zza(context, null, zzew.zzyk, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public final String zza(Context context, String str, View view) {
        return zza(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zza(Context context, String str, View view, Activity activity) {
        return zza(context, str, zzew.zzyl, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zza(int i, int i2, int i3) {
        if (this.zzwh != null) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrv)).booleanValue()) {
                zzbx();
            } else {
                this.zzwh.recycle();
            }
        }
        DisplayMetrics displayMetrics = this.zzwz;
        if (displayMetrics != null) {
            this.zzwh = MotionEvent.obtain(0L, i3, 1, i * displayMetrics.density, this.zzwz.density * i2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
        } else {
            this.zzwh = null;
        }
        this.zzwy = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zza(MotionEvent motionEvent) {
        if (this.zzwx) {
            zzbx();
            this.zzwx = false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.zzwq = 0.0d;
            this.zzwr = motionEvent.getRawX();
            this.zzws = motionEvent.getRawY();
        } else if (action == 1 || action == 2) {
            double rawX = motionEvent.getRawX();
            double rawY = motionEvent.getRawY();
            double d = rawX - this.zzwr;
            double d2 = rawY - this.zzws;
            this.zzwq += Math.sqrt((d * d) + (d2 * d2));
            this.zzwr = rawX;
            this.zzws = rawY;
        }
        int action2 = motionEvent.getAction();
        if (action2 != 0) {
            try {
                if (action2 == 1) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    this.zzwh = obtain;
                    this.zzwi.add(obtain);
                    if (this.zzwi.size() > 6) {
                        this.zzwi.remove().recycle();
                    }
                    this.zzwl++;
                    this.zzwn = zza(new Throwable().getStackTrace());
                } else if (action2 == 2) {
                    this.zzwk += motionEvent.getHistorySize() + 1;
                    zzfi zzb = zzb(motionEvent);
                    if ((zzb == null || zzb.zzzu == null || zzb.zzzx == null) ? false : true) {
                        this.zzwo += zzb.zzzu.longValue() + zzb.zzzx.longValue();
                    }
                    boolean z = false;
                    if (this.zzwz != null) {
                        z = false;
                        if (zzb != null) {
                            z = false;
                            if (zzb.zzzv != null) {
                                z = false;
                                if (zzb.zzzy != null) {
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z) {
                        this.zzwp += zzb.zzzv.longValue() + zzb.zzzy.longValue();
                    }
                } else if (action2 == 3) {
                    this.zzwm++;
                }
            } catch (zzev e) {
            }
        } else {
            this.zzwt = motionEvent.getX();
            this.zzwu = motionEvent.getY();
            this.zzwv = motionEvent.getRawX();
            this.zzww = motionEvent.getRawY();
            this.zzwj++;
        }
        this.zzwy = true;
    }

    protected abstract zzcf.zza.zzb zzb(Context context, View view, Activity activity);

    public abstract zzfi zzb(MotionEvent motionEvent) throws zzev;

    @Override // com.google.android.gms.internal.ads.zzdy
    public String zzb(Context context) {
        if (!zzfh.isMainThread()) {
            return zza(context, null, zzew.zzyj, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    public void zzb(View view) {
    }

    protected abstract zzcf.zza.zzb zzc(Context context, View view, Activity activity);
}
