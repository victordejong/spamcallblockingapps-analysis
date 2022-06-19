package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdu.class */
public final class zzcdu {
    private int zzA;
    private final String zzB;
    private boolean zzC;
    private int zza;
    private boolean zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private String zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;
    private int zzl;
    private double zzm;
    private boolean zzn;
    private String zzo;
    private String zzp;
    private final boolean zzq;
    private final boolean zzr;
    private final String zzs;
    private final boolean zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final String zzw;
    private final String zzx;
    private float zzy;
    private int zzz;

    /* JADX WARN: Can't wrap try/catch for region: R(15:2|(1:4)(1:5)|6|(1:8)(1:9)|10|(3:35|15|(9:17|18|19|37|20|21|(1:23)|26|(2:32|33)(1:31)))|12|18|19|37|20|21|(0)|26|(1:28)(3:29|32|33)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0144, code lost:
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0106 A[Catch: Exception -> 0x0143, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0143, blocks: (B:20:0x00f2, B:23:0x0106), top: B:37:0x00f2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcdu(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdu.<init>(android.content.Context):void");
    }

    public zzcdu(Context context, zzcdv zzcdvVar) {
        zzc(context);
        zze(context);
        zzd(context);
        this.zzo = Build.FINGERPRINT;
        this.zzp = Build.DEVICE;
        boolean z = false;
        if (PlatformVersion.isAtLeastIceCreamSandwichMR1()) {
            z = false;
            if (zzbmh.zzg(context)) {
                z = true;
            }
        }
        this.zzC = z;
        this.zzq = zzcdvVar.zza;
        this.zzr = zzcdvVar.zzb;
        this.zzs = zzcdvVar.zzd;
        this.zzt = zzcdvVar.zze;
        this.zzu = zzcdvVar.zzf;
        this.zzv = zzcdvVar.zzg;
        this.zzw = zzcdvVar.zzh;
        this.zzx = zzcdvVar.zzi;
        this.zzB = zzcdvVar.zzj;
        this.zzy = zzcdvVar.zzm;
        this.zzz = zzcdvVar.zzn;
        this.zzA = zzcdvVar.zzo;
    }

    private static ResolveInfo zzb(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            zzt.zzo().zzs(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    private final void zzc(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.zza = audioManager.getMode();
                this.zzb = audioManager.isMusicActive();
                this.zzc = audioManager.isSpeakerphoneOn();
                this.zzd = audioManager.getStreamVolume(3);
                this.zze = audioManager.getRingerMode();
                this.zzf = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                zzt.zzo().zzs(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.zza = -2;
        this.zzb = false;
        this.zzc = false;
        this.zzd = 0;
        this.zze = 2;
        this.zzf = 0;
    }

    private final void zzd(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            this.zzm = -1.0d;
            this.zzn = false;
            return;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        this.zzm = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        this.zzn = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    @android.annotation.TargetApi(16)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zze(android.content.Context r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r5 = r0
            r0 = r4
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r6 = r0
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.getNetworkOperator()
            r0.zzg = r1
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastR()
            if (r0 == 0) goto L40
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzgl
            r7 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r7
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L40
            r0 = 0
            r8 = r0
            goto L46
        L40:
            r0 = r5
            int r0 = r0.getNetworkType()
            r8 = r0
        L46:
            r0 = r3
            r1 = r8
            r0.zzi = r1
            r0 = r3
            r1 = r5
            int r1 = r1.getPhoneType()
            r0.zzj = r1
            r0 = r3
            r1 = -2
            r0.zzh = r1
            r0 = r3
            r1 = 0
            r0.zzk = r1
            r0 = r3
            r1 = -1
            r0.zzl = r1
            com.google.android.gms.ads.internal.util.zzt r0 = com.google.android.gms.ads.internal.zzt.zzp()
            r0 = r4
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = com.google.android.gms.ads.internal.util.zzt.zzF(r0, r1)
            if (r0 == 0) goto L9e
            r0 = r6
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L91
            r0 = r3
            r1 = r4
            int r1 = r1.getType()
            r0.zzh = r1
            r0 = r3
            r1 = r4
            android.net.NetworkInfo$DetailedState r1 = r1.getDetailedState()
            int r1 = r1.ordinal()
            r0.zzl = r1
            goto L96
        L91:
            r0 = r3
            r1 = -1
            r0.zzh = r1
        L96:
            r0 = r3
            r1 = r6
            boolean r1 = r1.isActiveNetworkMetered()
            r0.zzk = r1
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdu.zze(android.content.Context):void");
    }

    public final zzcdv zza() {
        return new zzcdv(this.zza, this.zzq, this.zzr, this.zzg, this.zzs, this.zzt, this.zzu, this.zzv, this.zzb, this.zzc, this.zzw, this.zzx, this.zzB, this.zzd, this.zzh, this.zzi, this.zzj, this.zze, this.zzf, this.zzy, this.zzz, this.zzA, this.zzm, this.zzn, this.zzk, this.zzl, this.zzo, this.zzC, this.zzp);
    }
}
