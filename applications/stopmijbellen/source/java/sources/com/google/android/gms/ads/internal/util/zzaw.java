package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzebp;
import com.google.android.gms.internal.ads.zzebt;
import com.google.android.gms.internal.ads.zzfxb;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaw.class */
public final class zzaw {
    private final Context zza;
    private final zzebt zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    private int zzg;
    private int zzh;
    private PointF zzi;
    private PointF zzj;
    private Handler zzk;
    private Runnable zzl;

    public zzaw(Context context) {
        this.zzg = 0;
        this.zzl = new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzai
            @Override // java.lang.Runnable
            public final void run() {
                zzaw.this.zzg();
            }
        };
        this.zza = context;
        this.zzh = ViewConfiguration.get(context).getScaledTouchSlop();
        zzt.zzt().zzb();
        this.zzk = zzt.zzt().zza();
        this.zzb = zzt.zzs().zza();
    }

    public zzaw(Context context, String str) {
        this(context);
        this.zzc = str;
    }

    private final void zzs(Context context) {
        ArrayList arrayList = new ArrayList();
        int zzu = zzu(arrayList, "None", true);
        final int zzu2 = zzu(arrayList, "Shake", true);
        final int zzu3 = zzu(arrayList, "Flick", true);
        zzebp zzebpVar = zzebp.NONE;
        int ordinal = this.zzb.zza().ordinal();
        if (ordinal == 1) {
            zzu = zzu2;
        } else if (ordinal == 2) {
            zzu = zzu3;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, zzt.zzq().zzk());
        final AtomicInteger atomicInteger = new AtomicInteger(zzu);
        builder.setTitle("Setup gesture");
        builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), zzu, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzar
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                atomicInteger.set(i);
            }
        });
        builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzan
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzaw.this.zzr();
            }
        });
        final int i = zzu;
        builder.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzaq
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzaw.this.zzh(atomicInteger, i, zzu2, zzu3, dialogInterface, i2);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.ads.internal.util.zzag
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzaw.this.zzr();
            }
        });
        builder.create().show();
    }

    private final boolean zzt(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzi.x - f) < ((float) this.zzh) && Math.abs(this.zzi.y - f2) < ((float) this.zzh) && Math.abs(this.zzj.x - f3) < ((float) this.zzh) && Math.abs(this.zzj.y - f4) < ((float) this.zzh);
    }

    private static final int zzu(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.zzc);
        sb.append(",DebugSignal: ");
        sb.append(this.zzf);
        sb.append(",AFMA Version: ");
        sb.append(this.zze);
        sb.append(",Ad Unit ID: ");
        return C0082b.m8754h(sb, this.zzd, "}");
    }

    public final /* synthetic */ void zza() {
        zzs(this.zza);
    }

    public final /* synthetic */ void zzb() {
        zzs(this.zza);
    }

    public final /* synthetic */ void zzc(zzfxb zzfxbVar) {
        if (!zzt.zzs().zzj(this.zza, this.zzd, this.zze)) {
            zzt.zzs().zzd(this.zza, this.zzd, this.zze);
        } else {
            zzfxbVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzau
                @Override // java.lang.Runnable
                public final void run() {
                    zzaw.this.zzb();
                }
            });
        }
    }

    public final /* synthetic */ void zzd(zzfxb zzfxbVar) {
        if (!zzt.zzs().zzj(this.zza, this.zzd, this.zze)) {
            zzt.zzs().zzd(this.zza, this.zzd, this.zze);
        } else {
            zzfxbVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzah
                @Override // java.lang.Runnable
                public final void run() {
                    zzaw.this.zzf();
                }
            });
        }
    }

    public final /* synthetic */ void zze() {
        zzt.zzs().zzc(this.zza);
    }

    public final /* synthetic */ void zzf() {
        zzt.zzs().zzc(this.zza);
    }

    public final /* synthetic */ void zzg() {
        this.zzg = 4;
        zzr();
    }

    public final /* synthetic */ void zzh(AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                this.zzb.zzj(zzebp.SHAKE);
            } else if (atomicInteger.get() == i3) {
                this.zzb.zzj(zzebp.FLICK);
            } else {
                this.zzb.zzj(zzebp.NONE);
            }
        }
        zzr();
    }

    public final /* synthetic */ void zzi(String str, DialogInterface dialogInterface, int i) {
        zzt.zzp();
        zzt.zzQ(this.zza, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public final /* synthetic */ void zzj(int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        if (i6 != i) {
            if (i6 == i2) {
                zzciz.zze("Debug mode [Creative Preview] selected.");
                zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzak
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzaw.this.zzl();
                    }
                });
            } else if (i6 == i3) {
                zzciz.zze("Debug mode [Troubleshooting] selected.");
                zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaj
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzaw.this.zzk();
                    }
                });
            } else if (i6 == i4) {
                final zzfxb zzfxbVar = zzcjm.zze;
                zzfxb zzfxbVar2 = zzcjm.zza;
                if (this.zzb.zzm()) {
                    zzfxbVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzav
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzaw.this.zze();
                        }
                    });
                } else {
                    zzfxbVar2.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzam
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzaw.this.zzd(zzfxbVar);
                        }
                    });
                }
            } else if (i6 == i5) {
                final zzfxb zzfxbVar3 = zzcjm.zze;
                zzfxb zzfxbVar4 = zzcjm.zza;
                if (this.zzb.zzm()) {
                    zzfxbVar3.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzat
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzaw.this.zza();
                        }
                    });
                } else {
                    zzfxbVar4.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzal
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzaw.this.zzc(zzfxbVar3);
                        }
                    });
                }
            }
        } else if (!(this.zza instanceof Activity)) {
            zzciz.zzi("Can not create dialog without Activity Context");
        } else {
            String str = this.zzc;
            String str2 = "No debug information";
            if (!TextUtils.isEmpty(str)) {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
                StringBuilder sb = new StringBuilder();
                zzt.zzp();
                Map<String, String> zzS = zzt.zzS(build);
                for (String str3 : zzS.keySet()) {
                    sb.append(str3);
                    sb.append(" = ");
                    sb.append(zzS.get(str3));
                    sb.append("\n\n");
                }
                String trim = sb.toString().trim();
                if (!TextUtils.isEmpty(trim)) {
                    str2 = trim;
                }
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zza);
            builder.setMessage(str2);
            builder.setTitle("Ad Information");
            final String str4 = str2;
            builder.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzap
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                    zzaw.this.zzi(str4, dialogInterface2, i7);
                }
            });
            builder.setNegativeButton("Close", zzas.zza);
            builder.create().show();
        }
    }

    public final /* synthetic */ void zzk() {
        zzba zzs = zzt.zzs();
        Context context = this.zza;
        String str = this.zzd;
        String str2 = this.zze;
        String str3 = this.zzf;
        boolean zzm = zzs.zzm();
        zzs.zzh(zzs.zzj(context, str, str2));
        if (!zzs.zzm()) {
            zzs.zzd(context, str, str2);
            return;
        }
        if (!zzm && !TextUtils.isEmpty(str3)) {
            zzs.zze(context, str2, str3, str);
        }
        zzciz.zze("Device is linked for debug signals.");
        zzs.zzi(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final /* synthetic */ void zzl() {
        zzba zzs = zzt.zzs();
        Context context = this.zza;
        String str = this.zzd;
        String str2 = this.zze;
        if (!zzs.zzk(context, str, str2)) {
            zzs.zzi(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(zzs.zza)) {
            zzciz.zze("Creative is not pushed for this device.");
            zzs.zzi(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(zzs.zza)) {
            zzciz.zze("The app is not linked for creative preview.");
            zzs.zzd(context, str, str2);
        } else if (!"0".equals(zzs.zza)) {
        } else {
            zzciz.zze("Device is linked for in app preview.");
            zzs.zzi(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final void zzm(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.zzg = 0;
            this.zzi = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.zzg;
        if (i == -1) {
            return;
        }
        if (i == 0) {
            if (actionMasked != 5) {
                return;
            }
            this.zzg = 5;
            this.zzj = new PointF(motionEvent.getX(1), motionEvent.getY(1));
            this.zzk.postDelayed(this.zzl, ((Long) zzbgq.zzc().zzb(zzblj.zzdj)).longValue());
        } else if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !zzt(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (zzt(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.zzg = -1;
            this.zzk.removeCallbacks(this.zzl);
        }
    }

    public final void zzn(String str) {
        this.zzd = str;
    }

    public final void zzo(String str) {
        this.zze = str;
    }

    public final void zzp(String str) {
        this.zzc = str;
    }

    public final void zzq(String str) {
        this.zzf = str;
    }

    public final void zzr() {
        try {
            if (!(this.zza instanceof Activity)) {
                zzciz.zzi("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(zzt.zzs().zzb())) {
                str = "Creative preview";
            }
            String str2 = "Troubleshooting (enabled)";
            if (true != zzt.zzs().zzm()) {
                str2 = "Troubleshooting";
            }
            ArrayList arrayList = new ArrayList();
            final int zzu = zzu(arrayList, "Ad information", true);
            final int zzu2 = zzu(arrayList, str, true);
            final int zzu3 = zzu(arrayList, str2, true);
            boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzgP)).booleanValue();
            final int zzu4 = zzu(arrayList, "Open ad inspector", booleanValue);
            final int zzu5 = zzu(arrayList, "Ad inspector settings", booleanValue);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zza, zzt.zzq().zzk());
            builder.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzao
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzaw.this.zzj(zzu, zzu2, zzu3, zzu4, zzu5, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb("", e);
        }
    }
}
