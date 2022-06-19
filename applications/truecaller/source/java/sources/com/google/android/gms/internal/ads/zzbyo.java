package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.truecaller.account.network.TokenResponseDto;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyo.class */
public final class zzbyo extends zzbyp implements zzbpr<zzcml> {
    public DisplayMetrics zza;
    public int zzb = -1;
    public int zzc = -1;
    public int zzd = -1;
    public int zze = -1;
    public int zzf = -1;
    public int zzg = -1;
    private final zzcml zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbiv zzk;
    private float zzl;
    private int zzm;

    public zzbyo(zzcml zzcmlVar, Context context, zzbiv zzbivVar) {
        super(zzcmlVar, "");
        this.zzh = zzcmlVar;
        this.zzi = context;
        this.zzk = zzbivVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        zzber.zza();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = zzcgm.zzq(displayMetrics, displayMetrics.widthPixels);
        zzber.zza();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = zzcgm.zzq(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzj = this.zzh.zzj();
        if (zzj == null || zzj.getWindow() == null) {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        } else {
            zzt.zzc();
            int[] zzT = zzs.zzT(zzj);
            zzber.zza();
            this.zzd = zzcgm.zzq(this.zza, zzT[0]);
            zzber.zza();
            this.zze = zzcgm.zzq(this.zza, zzT[1]);
        }
        if (this.zzh.zzP().zzg()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            this.zzh.measure(0, 0);
        }
        zzk(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbyn zzbynVar = new zzbyn();
        zzbiv zzbivVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbynVar.zzg(zzbivVar.zzc(intent));
        zzbiv zzbivVar2 = this.zzk;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbynVar.zzf(zzbivVar2.zzc(intent2));
        zzbynVar.zzh(this.zzk.zzb());
        zzbynVar.zzi(this.zzk.zza());
        zzbynVar.zzj(true);
        z = zzbynVar.zza;
        z2 = zzbynVar.zzb;
        z3 = zzbynVar.zzc;
        z4 = zzbynVar.zzd;
        z5 = zzbynVar.zze;
        zzcml zzcmlVar2 = this.zzh;
        try {
            jSONObject = new JSONObject().put(TokenResponseDto.METHOD_SMS, z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            zzcgt.zzg("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcmlVar2.zzd("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        this.zzh.getLocationOnScreen(iArr);
        zzb(zzber.zza().zza(this.zzi, iArr[0]), zzber.zza().zza(this.zzi, iArr[1]));
        if (zzcgt.zzm(2)) {
            zzcgt.zzh("Dispatching Ready Event.");
        }
        zzg(this.zzh.zzt().zza);
    }

    public final void zzb(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.zzi instanceof Activity) {
            zzt.zzc();
            i3 = zzs.zzV((Activity) this.zzi)[0];
        } else {
            i3 = 0;
        }
        if (this.zzh.zzP() == null || !this.zzh.zzP().zzg()) {
            int width = this.zzh.getWidth();
            int height = this.zzh.getHeight();
            int i6 = width;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzM)).booleanValue()) {
                int i7 = width;
                if (width == 0) {
                    i7 = this.zzh.zzP() != null ? this.zzh.zzP().zzb : 0;
                }
                i6 = i7;
                if (height == 0) {
                    i4 = 0;
                    i5 = i7;
                    if (this.zzh.zzP() != null) {
                        i4 = this.zzh.zzP().zza;
                        i5 = i7;
                    }
                    this.zzf = zzber.zza().zza(this.zzi, i5);
                    this.zzg = zzber.zza().zza(this.zzi, i4);
                }
            }
            i5 = i6;
            i4 = height;
            this.zzf = zzber.zza().zza(this.zzi, i5);
            this.zzg = zzber.zza().zza(this.zzi, i4);
        }
        zzi(i, i2 - i3, this.zzf, this.zzg);
        this.zzh.zzR().zzE(i, i2);
    }
}
