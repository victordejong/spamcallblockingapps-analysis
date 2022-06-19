package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalq.class */
public abstract class zzalq implements zzalp {
    public static volatile zzams zza;
    public MotionEvent zzb;
    public double zzk;
    public float zzl;
    public float zzm;
    public float zzn;
    public float zzo;
    public DisplayMetrics zzq;
    private double zzr;
    private double zzs;
    public final LinkedList<MotionEvent> zzc = new LinkedList<>();
    public long zzd = 0;
    public long zze = 0;
    public long zzf = 0;
    public long zzg = 0;
    public long zzh = 0;
    public long zzi = 0;
    public long zzj = 0;
    private boolean zzt = false;
    public boolean zzp = false;

    public zzalq(Context context) {
        try {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbX)).booleanValue()) {
                zzaki.zzd();
            } else {
                zzamt.zza(zza);
            }
            this.zzq = context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
        }
    }

    private final void zzj() {
        this.zzh = 0L;
        this.zzd = 0L;
        this.zze = 0L;
        this.zzf = 0L;
        this.zzg = 0L;
        this.zzi = 0L;
        this.zzj = 0L;
        if (this.zzc.size() > 0) {
            Iterator<MotionEvent> it2 = this.zzc.iterator();
            while (it2.hasNext()) {
                it2.next().recycle();
            }
            this.zzc.clear();
        } else {
            MotionEvent motionEvent = this.zzb;
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        this.zzb = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x014a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzm(android.content.Context r9, java.lang.String r10, int r11, android.view.View r12, android.app.Activity r13, byte[] r14) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalq.zzm(android.content.Context, java.lang.String, int, android.view.View, android.app.Activity, byte[]):java.lang.String");
    }

    public abstract long zza(StackTraceElement[] stackTraceElementArr) throws zzamj;

    public abstract zzaiz zzb(Context context, View view, Activity activity);

    public abstract zzaiz zzc(Context context, zzais zzaisVar);

    public abstract zzaiz zzd(Context context, View view, Activity activity);

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zze(Context context, String str, View view) {
        return zzm(context, str, 3, view, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzf(Context context, String str, View view, Activity activity) {
        return zzm(context, str, 3, view, activity, null);
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzg(Context context) {
        if (!zzamv.zzf()) {
            return zzm(context, null, 1, null, null, null);
        }
        throw new IllegalStateException("The caller must not be called from the UI thread.");
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final String zzh(Context context, View view, Activity activity) {
        return zzm(context, null, 2, view, null, null);
    }

    public abstract zzamu zzi(MotionEvent motionEvent) throws zzamj;

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzk(MotionEvent motionEvent) {
        Long l;
        synchronized (this) {
            if (this.zzt) {
                zzj();
                this.zzt = false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                this.zzk = 0.0d;
                this.zzr = motionEvent.getRawX();
                this.zzs = motionEvent.getRawY();
            } else if (action == 1 || action == 2) {
                double rawX = motionEvent.getRawX();
                double rawY = motionEvent.getRawY();
                double d = rawX - this.zzr;
                double d2 = rawY - this.zzs;
                this.zzk += Math.sqrt((d2 * d2) + (d * d));
                this.zzr = rawX;
                this.zzs = rawY;
            }
            int action2 = motionEvent.getAction();
            if (action2 != 0) {
                try {
                    if (action2 == 1) {
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        this.zzb = obtain;
                        this.zzc.add(obtain);
                        if (this.zzc.size() > 6) {
                            this.zzc.remove().recycle();
                        }
                        this.zzf++;
                        this.zzh = zza(new Throwable().getStackTrace());
                    } else if (action2 == 2) {
                        this.zze += motionEvent.getHistorySize() + 1;
                        zzamu zzi = zzi(motionEvent);
                        Long l2 = zzi.zzd;
                        if (l2 != null && zzi.zzg != null) {
                            this.zzi = l2.longValue() + zzi.zzg.longValue() + this.zzi;
                        }
                        if (this.zzq != null && (l = zzi.zze) != null && zzi.zzh != null) {
                            this.zzj = l.longValue() + zzi.zzh.longValue() + this.zzj;
                        }
                    } else if (action2 == 3) {
                        this.zzg++;
                    }
                } catch (zzamj e) {
                }
            } else {
                this.zzl = motionEvent.getX();
                this.zzm = motionEvent.getY();
                this.zzn = motionEvent.getRawX();
                this.zzo = motionEvent.getRawY();
                this.zzd++;
            }
            this.zzp = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzl(int i, int i2, int i3) {
        synchronized (this) {
            if (this.zzb != null) {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbK)).booleanValue()) {
                    zzj();
                } else {
                    this.zzb.recycle();
                }
            }
            DisplayMetrics displayMetrics = this.zzq;
            if (displayMetrics != null) {
                long j = i3;
                float f = i;
                float f2 = displayMetrics.density;
                this.zzb = MotionEvent.obtain(0L, j, 1, f * f2, i2 * f2, 0.0f, 0.0f, 0, 0.0f, 0.0f, 0, 0);
            } else {
                this.zzb = null;
            }
            this.zzp = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public void zzn(View view) {
    }
}
