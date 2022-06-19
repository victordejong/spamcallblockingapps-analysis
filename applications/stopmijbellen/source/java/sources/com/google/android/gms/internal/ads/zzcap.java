package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcap.class */
public final class zzcap extends zzcaq implements zzbrt<zzcop> {
    public DisplayMetrics zza;
    public int zzb = -1;
    public int zzc = -1;
    public int zzd = -1;
    public int zze = -1;
    public int zzf = -1;
    public int zzg = -1;
    private final zzcop zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbkt zzk;
    private float zzl;
    private int zzm;

    public zzcap(zzcop zzcopVar, Context context, zzbkt zzbktVar) {
        super(zzcopVar, "");
        this.zzh = zzcopVar;
        this.zzi = context;
        this.zzk = zzbktVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final /* synthetic */ void zza(zzcop zzcopVar, Map map) {
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
        zzbgo.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = zzcis.zzq(displayMetrics, displayMetrics.widthPixels);
        zzbgo.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = zzcis.zzq(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzk = this.zzh.zzk();
        if (zzk == null || zzk.getWindow() == null) {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        } else {
            zzt.zzp();
            int[] zzU = com.google.android.gms.ads.internal.util.zzt.zzU(zzk);
            zzbgo.zzb();
            this.zzd = zzcis.zzq(this.zza, zzU[0]);
            zzbgo.zzb();
            this.zze = zzcis.zzq(this.zza, zzU[1]);
        }
        if (this.zzh.zzQ().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            this.zzh.measure(0, 0);
        }
        zzi(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzcao zzcaoVar = new zzcao();
        zzbkt zzbktVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzcaoVar.zze(zzbktVar.zza(intent));
        zzbkt zzbktVar2 = this.zzk;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzcaoVar.zzc(zzbktVar2.zza(intent2));
        zzcaoVar.zza(this.zzk.zzb());
        zzcaoVar.zzd(this.zzk.zzc());
        zzcaoVar.zzb(true);
        z = zzcaoVar.zza;
        z2 = zzcaoVar.zzb;
        z3 = zzcaoVar.zzc;
        z4 = zzcaoVar.zzd;
        z5 = zzcaoVar.zze;
        zzcop zzcopVar2 = this.zzh;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            zzciz.zzh("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcopVar2.zze("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        this.zzh.getLocationOnScreen(iArr);
        zzb(zzbgo.zzb().zzb(this.zzi, iArr[0]), zzbgo.zzb().zzb(this.zzi, iArr[1]));
        if (zzciz.zzm(2)) {
            zzciz.zzi("Dispatching Ready Event.");
        }
        zzh(this.zzh.zzp().zza);
    }

    public final void zzb(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.zzi instanceof Activity) {
            zzt.zzp();
            i3 = com.google.android.gms.ads.internal.util.zzt.zzW((Activity) this.zzi)[0];
        } else {
            i3 = 0;
        }
        if (this.zzh.zzQ() == null || !this.zzh.zzQ().zzi()) {
            int width = this.zzh.getWidth();
            int height = this.zzh.getHeight();
            int i6 = width;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzM)).booleanValue()) {
                int i7 = width;
                if (width == 0) {
                    i7 = this.zzh.zzQ() != null ? this.zzh.zzQ().zzb : 0;
                }
                i6 = i7;
                if (height == 0) {
                    i4 = 0;
                    i5 = i7;
                    if (this.zzh.zzQ() != null) {
                        i4 = this.zzh.zzQ().zza;
                        i5 = i7;
                    }
                    this.zzf = zzbgo.zzb().zzb(this.zzi, i5);
                    this.zzg = zzbgo.zzb().zzb(this.zzi, i4);
                }
            }
            i5 = i6;
            i4 = height;
            this.zzf = zzbgo.zzb().zzb(this.zzi, i5);
            this.zzg = zzbgo.zzb().zzb(this.zzi, i4);
        }
        zzf(i, i2 - i3, this.zzf, this.zzg);
        this.zzh.zzP().zzA(i, i2);
    }
}
