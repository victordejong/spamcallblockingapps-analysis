package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzchg;
import com.google.android.gms.internal.ads.zzdxy;
import com.google.android.gms.internal.ads.zzdyc;
import com.google.android.gms.internal.ads.zzfsn;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzav.class */
public final class zzav {
    private final Context zza;
    private final zzdyc zzb;
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

    public zzav(Context context) {
        this.zzg = 0;
        this.zzl = new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzaf
            private final zzav zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzr();
            }
        };
        this.zza = context;
        this.zzh = ViewConfiguration.get(context).getScaledTouchSlop();
        zzt.zzq().zza();
        this.zzk = zzt.zzq().zzb();
        this.zzb = zzt.zzm().zzb();
    }

    public zzav(Context context, String str) {
        this(context);
        this.zzc = str;
    }

    private final boolean zzs(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzi.x - f) < ((float) this.zzh) && Math.abs(this.zzi.y - f2) < ((float) this.zzh) && Math.abs(this.zzj.x - f3) < ((float) this.zzh) && Math.abs(this.zzj.y - f4) < ((float) this.zzh);
    }

    private final void zzt(Context context) {
        ArrayList arrayList = new ArrayList();
        int zzu = zzu(arrayList, "None", true);
        int zzu2 = zzu(arrayList, "Shake", true);
        int zzu3 = zzu(arrayList, "Flick", true);
        zzdxy zzdxyVar = zzdxy.NONE;
        int ordinal = this.zzb.zzf().ordinal();
        if (ordinal == 1) {
            zzu = zzu2;
        } else if (ordinal == 2) {
            zzu = zzu3;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context, zzt.zze().zzm());
        AtomicInteger atomicInteger = new AtomicInteger(zzu);
        builder.setTitle("Setup gesture");
        builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), zzu, new DialogInterface.OnClickListener(atomicInteger) { // from class: com.google.android.gms.ads.internal.util.zzan
            private final AtomicInteger zza;

            {
                this.zza = atomicInteger;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.zza.set(i);
            }
        });
        builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener(this) { // from class: com.google.android.gms.ads.internal.util.zzao
            private final zzav zza;

            {
                this.zza = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.zza.zzb();
            }
        });
        builder.setPositiveButton("Save", new DialogInterface.OnClickListener(this, atomicInteger, zzu, zzu2, zzu3) { // from class: com.google.android.gms.ads.internal.util.zzap
            private final zzav zza;
            private final AtomicInteger zzb;
            private final int zzc;
            private final int zzd;
            private final int zze;

            {
                this.zza = this;
                this.zzb = atomicInteger;
                this.zzc = zzu;
                this.zzd = zzu2;
                this.zze = zzu3;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.zza.zzp(this.zzb, this.zzc, this.zzd, this.zze, dialogInterface, i2);
            }
        });
        builder.setOnCancelListener(new DialogInterface.OnCancelListener(this) { // from class: com.google.android.gms.ads.internal.util.zzaq
            private final zzav zza;

            {
                this.zza = this;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.zza.zzb();
            }
        });
        builder.create().show();
    }

    private static final int zzu(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    public final String toString() {
        StringBuilder m8554x = C22128a.m8554x(100, "{Dialog: ");
        m8554x.append(this.zzc);
        m8554x.append(",DebugSignal: ");
        m8554x.append(this.zzf);
        m8554x.append(",AFMA Version: ");
        m8554x.append(this.zze);
        m8554x.append(",Ad Unit ID: ");
        return C22128a.m8618h(m8554x, this.zzd, "}");
    }

    public final void zza(MotionEvent motionEvent) {
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
            this.zzk.postDelayed(this.zzl, ((Long) zzbet.zzc().zzc(zzbjl.zzdc)).longValue());
        } else if (i == 5) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i2 = 0; i2 < historySize; i2++) {
                    z |= !zzs(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                }
                if (zzs(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                    return;
                }
            }
            this.zzg = -1;
            this.zzk.removeCallbacks(this.zzl);
        }
    }

    public final void zzb() {
        try {
            if (!(this.zza instanceof Activity)) {
                zzcgt.zzh("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(zzt.zzm().zzi())) {
                str = "Creative preview";
            }
            String str2 = "Troubleshooting (enabled)";
            if (true != zzt.zzm().zzm()) {
                str2 = "Troubleshooting";
            }
            ArrayList arrayList = new ArrayList();
            int zzu = zzu(arrayList, "Ad information", true);
            int zzu2 = zzu(arrayList, str, true);
            int zzu3 = zzu(arrayList, str2, true);
            boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzgE)).booleanValue();
            int zzu4 = zzu(arrayList, "Open ad inspector", booleanValue);
            int zzu5 = zzu(arrayList, "Ad inspector settings", booleanValue);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zza, zzt.zze().zzm());
            builder.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, zzu, zzu2, zzu3, zzu4, zzu5) { // from class: com.google.android.gms.ads.internal.util.zzam
                private final zzav zza;
                private final int zzb;
                private final int zzc;
                private final int zzd;
                private final int zze;
                private final int zzf;

                {
                    this.zza = this;
                    this.zzb = zzu;
                    this.zzc = zzu2;
                    this.zzd = zzu3;
                    this.zze = zzu4;
                    this.zzf = zzu5;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zza.zzq(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb("", e);
        }
    }

    public final void zzc(String str) {
        this.zzd = str;
    }

    public final void zzd(String str) {
        this.zze = str;
    }

    public final void zze(String str) {
        this.zzc = str;
    }

    public final void zzf(String str) {
        this.zzf = str;
    }

    public final /* synthetic */ void zzg() {
        zzaz zzm = zzt.zzm();
        Context context = this.zza;
        String str = this.zzd;
        String str2 = this.zze;
        String str3 = this.zzf;
        boolean zzm2 = zzm.zzm();
        zzm.zzl(zzm.zze(context, str, str2));
        if (!zzm.zzm()) {
            zzm.zzf(context, str, str2);
            return;
        }
        if (!zzm2 && !TextUtils.isEmpty(str3)) {
            zzm.zzh(context, str2, str3, str);
        }
        zzcgt.zzd("Device is linked for debug signals.");
        zzm.zzn(context, "The device is successfully linked for troubleshooting.", false, true);
    }

    public final /* synthetic */ void zzh() {
        zzaz zzm = zzt.zzm();
        Context context = this.zza;
        String str = this.zzd;
        String str2 = this.zze;
        if (!zzm.zzd(context, str, str2)) {
            zzm.zzn(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(zzm.zza)) {
            zzcgt.zzd("Creative is not pushed for this device.");
            zzm.zzn(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(zzm.zza)) {
            zzcgt.zzd("The app is not linked for creative preview.");
            zzm.zzf(context, str, str2);
        } else if (!DtbConstants.NETWORK_TYPE_UNKNOWN.equals(zzm.zza)) {
        } else {
            zzcgt.zzd("Device is linked for in app preview.");
            zzm.zzn(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final /* synthetic */ void zzi(zzfsn zzfsnVar) {
        if (!zzt.zzm().zze(this.zza, this.zzd, this.zze)) {
            zzt.zzm().zzf(this.zza, this.zzd, this.zze);
        } else {
            zzfsnVar.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzak
                private final zzav zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzj();
                }
            });
        }
    }

    public final /* synthetic */ void zzj() {
        zzt(this.zza);
    }

    public final /* synthetic */ void zzk() {
        zzt(this.zza);
    }

    public final /* synthetic */ void zzl(zzfsn zzfsnVar) {
        if (!zzt.zzm().zze(this.zza, this.zzd, this.zze)) {
            zzt.zzm().zzf(this.zza, this.zzd, this.zze);
        } else {
            zzfsnVar.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzal
                private final zzav zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzm();
                }
            });
        }
    }

    public final /* synthetic */ void zzm() {
        zzt.zzm().zzc(this.zza);
    }

    public final /* synthetic */ void zzn() {
        zzt.zzm().zzc(this.zza);
    }

    public final /* synthetic */ void zzo(String str, DialogInterface dialogInterface, int i) {
        zzt.zzc();
        zzs.zzP(this.zza, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public final /* synthetic */ void zzp(AtomicInteger atomicInteger, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        if (atomicInteger.get() != i) {
            if (atomicInteger.get() == i2) {
                this.zzb.zze(zzdxy.SHAKE);
            } else if (atomicInteger.get() == i3) {
                this.zzb.zze(zzdxy.FLICK);
            } else {
                this.zzb.zze(zzdxy.NONE);
            }
        }
        zzb();
    }

    public final /* synthetic */ void zzq(int i, int i2, int i3, int i4, int i5, DialogInterface dialogInterface, int i6) {
        if (i6 != i) {
            if (i6 == i2) {
                zzcgt.zzd("Debug mode [Creative Preview] selected.");
                zzchg.zza.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzai
                    private final zzav zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzh();
                    }
                });
            } else if (i6 == i3) {
                zzcgt.zzd("Debug mode [Troubleshooting] selected.");
                zzchg.zza.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzaj
                    private final zzav zza;

                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzg();
                    }
                });
            } else if (i6 == i4) {
                zzfsn zzfsnVar = zzchg.zze;
                zzfsn zzfsnVar2 = zzchg.zza;
                if (this.zzb.zzn()) {
                    zzfsnVar.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzat
                        private final zzav zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzn();
                        }
                    });
                } else {
                    zzfsnVar2.execute(new Runnable(this, zzfsnVar) { // from class: com.google.android.gms.ads.internal.util.zzau
                        private final zzav zza;
                        private final zzfsn zzb;

                        {
                            this.zza = this;
                            this.zzb = zzfsnVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzl(this.zzb);
                        }
                    });
                }
            } else if (i6 == i5) {
                zzfsn zzfsnVar3 = zzchg.zze;
                zzfsn zzfsnVar4 = zzchg.zza;
                if (this.zzb.zzn()) {
                    zzfsnVar3.execute(new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzag
                        private final zzav zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzk();
                        }
                    });
                } else {
                    zzfsnVar4.execute(new Runnable(this, zzfsnVar3) { // from class: com.google.android.gms.ads.internal.util.zzah
                        private final zzav zza;
                        private final zzfsn zzb;

                        {
                            this.zza = this;
                            this.zzb = zzfsnVar3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzi(this.zzb);
                        }
                    });
                }
            }
        } else if (!(this.zza instanceof Activity)) {
            zzcgt.zzh("Can not create dialog without Activity Context");
        } else {
            String str = this.zzc;
            String str2 = "No debug information";
            if (!TextUtils.isEmpty(str)) {
                Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
                StringBuilder sb = new StringBuilder();
                zzt.zzc();
                Map<String, String> zzR = zzs.zzR(build);
                for (String str3 : zzR.keySet()) {
                    sb.append(str3);
                    sb.append(" = ");
                    sb.append(zzR.get(str3));
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
            builder.setPositiveButton("Share", new DialogInterface.OnClickListener(this, str2) { // from class: com.google.android.gms.ads.internal.util.zzar
                private final zzav zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str2;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface2, int i7) {
                    this.zza.zzo(this.zzb, dialogInterface2, i7);
                }
            });
            builder.setNegativeButton("Close", zzas.zza);
            builder.create().show();
        }
    }

    public final /* synthetic */ void zzr() {
        this.zzg = 4;
        zzb();
    }
}
